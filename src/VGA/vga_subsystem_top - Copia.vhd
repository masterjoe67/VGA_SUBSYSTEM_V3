library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_subsystem_top is
    port (
        -- Clock originali
        clk_cpu      : in std_logic;    -- 60.00 MHz
        clk_sync     : in std_logic;    -- 114.54 MHz
        clk_vga      : in std_logic;    -- 25.2 MHz
        clk_pixel    : in std_logic;    -- 114.54 MHz
        rst_n        : in std_logic;    -- Reset (ex reset_n)

        -- Interfaccia NEORV32 Gateway
        vga_data_i   : in  std_logic_vector(15 downto 0);
        vga_cmd_i    : in  std_logic_vector(2 downto 0);  
        vga_st_i     : in  std_logic; -- TRIGGER FISICO
        vga_busy_o   : out std_logic;

        -- Pin Fisici (Identici all'originale)
        vga_hsync    : out std_logic;
        vga_vsync    : out std_logic;
        vga_r        : out std_logic_vector(4 downto 0);
        vga_g        : out std_logic_vector(5 downto 0);
        vga_b        : out std_logic_vector(4 downto 0);
        dram_clk     : out std_logic;
        dram_cke     : out std_logic;
        dram_cs_n    : out std_logic;
        dram_ras_n   : out std_logic;
        dram_cas_n   : out std_logic;
        dram_we_n    : out std_logic;
        dram_ba      : out std_logic_vector(1 downto 0);
        dram_addr    : out unsigned(12 downto 0);
        dram_dqm     : out std_logic_vector(1 downto 0);
        dram_dq      : inout unsigned(15 downto 0)
    );
end vga_subsystem_top;

architecture rtl of vga_subsystem_top is

    -- I tuoi segnali originali (Intoccati)
    signal reg_x               : unsigned(9 downto 0) := (others => '0');
    signal reg_y               : unsigned(9 downto 0) := (others => '0');
    --signal reg_data_low        : std_logic_vector(7 downto 0) := (others => '0');
    signal video_active_reg    : std_logic := '0'; 
    signal scanline_reg        : std_logic := '1';
    signal reg_read_page       : std_logic_vector(4 downto 0) := (others => '0');
    signal reg_write_page      : std_logic_vector(4 downto 0) := (others => '0');
    signal pending_pixel_wr    : std_logic := '0';
    signal pending_fifo_data   : std_logic_vector(39 downto 0) := (others => '0');
	 
	 signal reg_color           : std_logic_vector(15 downto 0) := (others => '0');

    -- Segnali FIFO e SDRAM (Intoccati)
    signal fifo_wr_data        : std_logic_vector(39 downto 0);
    signal fifo_rd_data        : std_logic_vector(39 downto 0);
    signal fifo_wr_req         : std_logic := '0';
    signal fifo_rd_req         : std_logic := '0';
    signal fifo_empty          : std_logic;
    signal fifo_full           : std_logic;
    signal sdr_pixel_out       : unsigned(15 downto 0);
    signal sdr_col_wr_addr     : unsigned(9 downto 0);
    signal vga_row_req_addr    : unsigned(9 downto 0);
    signal vga_col_req_addr    : unsigned(9 downto 0);
    signal vga_bus_internal    : unsigned(17 downto 0);
    signal sdr_load_req        : std_logic;
    signal sdr_load_ack        : std_logic;
    signal wren_sdr_to_ram2    : std_logic;
    signal ram2_q_vec          : std_logic_vector(15 downto 0);
	 signal vga_st_prev         : std_logic := '0';

begin

    -- Busy identico all'originale
    vga_busy_o <= fifo_full or pending_pixel_wr;

    ------------------------------------------------------------------
    -- LOGICA DI GESTIONE REGISTRI (Adattata al Gateway)
    ------------------------------------------------------------------
process(clk_cpu, rst_n)
    variable addr_temp : unsigned(23 downto 0);
begin
    if rst_n = '0' then
        reg_x <= (others => '0'); 
        reg_y <= (others => '0');
        reg_color <= (others => '0'); -- REGISTRO COLORE 16 BIT
        reg_read_page <= (others => '0');
        reg_write_page <= (others => '0');
        pending_pixel_wr <= '0';
        fifo_wr_req <= '0';
    elsif rising_edge(clk_cpu) then
        fifo_wr_req <= '0'; 

        
            -- 1. AGGIORNAMENTO REGISTRI
            case vga_cmd_i is
                when "001" => reg_x <= unsigned(vga_data_i(9 downto 0));
                when "010" => reg_y <= unsigned(vga_data_i(9 downto 0));
                when "011" => reg_color <= vga_data_i; -- SALVA IL COLORE 16-BIT
                when "100" => reg_write_page <= vga_data_i(4 downto 0);
                when "101" => reg_read_page <= vga_data_i(4 downto 0);
                when others => null; -- L'indirizzo 0x18 (110) non cambia i registri
            end case;

				if vga_st_i = '1' then
					-- 2. IL GRILLETTO (Spara sempre usando il colore salvato o quello attuale)
					if reg_x <= 319 then
						 addr_temp := unsigned(reg_write_page) & '0' & reg_y(8 downto 0) & reg_x(8 downto 0);
					else
						 addr_temp := unsigned(reg_write_page) & '1' & reg_y(8 downto 0) & unsigned(reg_x - 320)(8 downto 0);
					end if;
					
				
					pending_fifo_data <= std_logic_vector(addr_temp) & reg_color; -- Colore preso dal registro salvato
					pending_pixel_wr <= '1';
				end if;

        -- 3. SMALTIMENTO FIFO
        if pending_pixel_wr = '1' and fifo_full = '0' then
            fifo_wr_data <= pending_fifo_data;
            fifo_wr_req  <= '1';
            pending_pixel_wr <= '0'; 
        end if;
    end if;
end process;

    ------------------------------------------------------------------
    -- ISTANZE ORIGINALI (Intoccate)
    ------------------------------------------------------------------
    pixel_fifo : entity work.vga_fifo
        port map (
            aclr => not rst_n, data => fifo_wr_data, wrclk => clk_cpu,
            wrreq => fifo_wr_req, rdclk => clk_pixel, rdreq => fifo_rd_req,
            q => fifo_rd_data, rdempty => fifo_empty, wrfull => fifo_full
        );

    sdram_ctrl : entity work.sdram
        generic map ( page0 => 320, page1 => 320 )
        port map (
            clk => clk_pixel, 
				pixelOut => sdr_pixel_out, 
				read_page => reg_read_page,
            rowLoadNr => vga_row_req_addr, 
				rowLoadReq => sdr_load_req, 
				rowLoadAck => sdr_load_ack,
            colLoadNr => sdr_col_wr_addr, 
				wren_sdr => wren_sdr_to_ram2,
            addrDirect => unsigned(fifo_rd_data(39 downto 16)),
            pixelDirectIn => unsigned(fifo_rd_data(15 downto 0)),
            directWriteReq => not fifo_empty, 
				directAck => fifo_rd_req, 
            pMemClk => dram_clk, 
				pMemCke => dram_cke, 
				pMemCs_n => dram_cs_n,
            pMemRas_n => dram_ras_n, 
				pMemCas_n => dram_cas_n, 
				pMemWe_n => dram_we_n,
            pMemUdq => dram_dqm(1), 
				pMemLdq => dram_dqm(0),
            pMemBa1 => dram_ba(1), 
				pMemBa0 => dram_ba(0),
            pMemAdr => dram_addr, 
				pMemDat => dram_dq
        );

    read_buffer : entity work.ram2
        port map (
            data => std_logic_vector(sdr_pixel_out), 
				wraddress => std_logic_vector(sdr_col_wr_addr),
            wrclock =>  clk_sync, 
				--wrclock => not clk_pixel,
				wren => wren_sdr_to_ram2, 
            rdaddress => std_logic_vector(vga_col_req_addr), 
				rdclock => clk_vga, 
				q => ram2_q_vec
        );

    vga_engine : entity work.vgaout
        port map (
            clock_vga => clk_vga, 
				clock_dram => clk_pixel, 
				video_active => '0',
				pixel_in => unsigned(ram2_q_vec), 
            load_req => sdr_load_req, 
				load_ack => sdr_load_ack, 
            row_number => vga_row_req_addr, 
				col_number => vga_col_req_addr,
            vga_out => vga_bus_internal
        );

    -- Mapping Uscite (Ripristinato 16-bit come volevi)
    vga_hsync <= std_logic(vga_bus_internal(1));
    vga_vsync <= std_logic(vga_bus_internal(0));
    vga_r <= std_logic_vector(vga_bus_internal(15 downto 11));
    vga_g <= std_logic_vector(vga_bus_internal(10 downto 5));
    vga_b <= std_logic_vector(vga_bus_internal(4 downto 0));

end rtl;