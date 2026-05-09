library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_subsystem_top is
    port (
        -- Clock interni al VGS (Vita propria)
        clk_sync     : in std_logic;    -- 114.54 MHz (Sistema/Interfaccia)
        clk_vga      : in std_logic;    -- 25.175 MHz (Scansione VGA)
        clk_pixel    : in std_logic;    -- 114.54 MHz (Accesso SDRAM)
        rst_n        : in std_logic;    -- Reset asincrono

        -- Interfaccia "Chip Video" (Asincrona rispetto a clk_sync)
        vga_data_i   : in  std_logic_vector(15 downto 0);
        vga_cmd_i    : in  std_logic_vector(2 downto 0);  
        vga_st_i     : in  std_logic; -- STROBE PIXEL
        vga_st_cmd_i : in  std_logic; -- STROBE COMANDO
  
        vga_busy_o   : out std_logic;

        -- Pin Fisici SDRAM e VGA
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

    -- Registri interni (Stabili nel dominio clk_sync)
    signal reg_x, reg_y        : unsigned(9 downto 0) := (others => '0');
    signal reg_color           : std_logic_vector(15 downto 0) := (others => '0');
    signal reg_read_page       : std_logic_vector(4 downto 0) := (others => '0');
    signal reg_write_page      : std_logic_vector(4 downto 0) := (others => '0');
    
    -- Sincronizzatori e Edge Detection (3-bit per 2 stadi di sync + 1 per edge)
    signal sync_st_pix         : std_logic_vector(2 downto 0) := "000";
    signal sync_st_cmd         : std_logic_vector(2 downto 0) := "000";

    -- Segnali FIFO
    signal fifo_wr_data        : std_logic_vector(39 downto 0);
    signal fifo_rd_data        : std_logic_vector(39 downto 0);
    signal fifo_wr_req         : std_logic := '0';
    signal fifo_rd_req         : std_logic := '0';
    signal fifo_empty          : std_logic;
    signal fifo_full           : std_logic;
    
    -- Segnali interni SDRAM/VGA
    signal sdr_pixel_out       : unsigned(15 downto 0);
    signal sdr_col_wr_addr     : unsigned(9 downto 0);
    signal vga_row_req_addr    : unsigned(9 downto 0);
    signal vga_col_req_addr    : unsigned(9 downto 0);
    signal vga_bus_internal    : unsigned(17 downto 0);
    signal sdr_load_req        : std_logic;
    signal sdr_load_ack        : std_logic;
    signal wren_sdr_to_ram2    : std_logic;
    signal ram2_q_vec          : std_logic_vector(15 downto 0);
	
	signal reg_mode : std_logic_vector(15 downto 0) := (others => '0');
	signal vga_scale_h : std_logic;
	signal vga_scale_v : std_logic;

begin

    -- Busy attivo se la FIFO è piena
    vga_busy_o <= fifo_full;
	vga_scale_h <= reg_mode(1);
	vga_scale_v <= reg_mode(2);

    ------------------------------------------------------------------
    -- LOGICA DI INTERFACCIA (Dominio clk_sync)
    ------------------------------------------------------------------
    process(clk_sync, rst_n)
        variable addr_temp : unsigned(23 downto 0);
    begin
        if rst_n = '0' then
            sync_st_pix  <= "000";
            sync_st_cmd  <= "000";
            reg_x        <= (others => '0');
            reg_y        <= (others => '0');
            reg_color    <= (others => '0');
            reg_read_page  <= (others => '0');
            reg_write_page <= (others => '0');
            fifo_wr_req  <= '0';
        elsif rising_edge(clk_sync) then
            -- Sincronizzazione degli strobe provenienti dalla CPU
            sync_st_pix <= sync_st_pix(1 downto 0) & vga_st_i;
            sync_st_cmd <= sync_st_cmd(1 downto 0) & vga_st_cmd_i;
            
            -- Default: nessun impulso di scrittura FIFO
            fifo_wr_req <= '0';

            -- 1. AGGIORNAMENTO REGISTRI (Fronte saliente dello strobe comando)
            if sync_st_cmd(2 downto 1) = "01" then
                case vga_cmd_i is
                    when "001" => reg_x <= unsigned(vga_data_i(9 downto 0));
                    when "010" => reg_y <= unsigned(vga_data_i(9 downto 0));
                    when "011" => reg_color <= vga_data_i;
                    when "100" => reg_write_page <= vga_data_i(4 downto 0);
                    when "101" => reg_read_page <= vga_data_i(4 downto 0);
					when "111" => reg_mode <= vga_data_i; -- Associato all'indirizzo 0x1C
                    when others => null;
                end case;
            end if;

            -- 2. TRIGGER SCRITTURA PIXEL (Fronte saliente dello strobe pixel)
			if sync_st_pix(2 downto 1) = "01" then
				-- Calcolo indirizzo SDRAM (usiamo la tua logica esistente)
				if reg_x <= 319 then
					 addr_temp := unsigned(reg_write_page) & '0' & reg_y(8 downto 0) & reg_x(8 downto 0);
				else
					 addr_temp := unsigned(reg_write_page) & '1' & reg_y(8 downto 0) & unsigned(reg_x - 320)(8 downto 0);
				end if;
				
				if fifo_full = '0' then
					fifo_wr_data <= std_logic_vector(addr_temp) & reg_color;
					fifo_wr_req  <= '1';
					
					-- GESTIONE AUTO-INCREMENTO
					if reg_mode(0) = '1' then
						if reg_x < 639 then
							reg_x <= reg_x + 1;
						else
							reg_x <= (others => '0'); -- Reset a fine riga
							-- Opzionale: incremento automatico di reg_y? 
							-- Per ora lo lasciamo manuale per dare controllo alla CPU
						end if;
					end if;
				end if;
			end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- COMPONENTI INTERNI
    ------------------------------------------------------------------
    
    -- FIFO: Bridge tra logica di interfaccia (clk_sync) e SDRAM (clk_pixel)
    pixel_fifo : entity work.vga_fifo
        port map (
            aclr    => not rst_n,
            data    => fifo_wr_data,
            wrclk   => clk_sync,    -- 114 MHz
            wrreq   => fifo_wr_req,
            rdclk   => clk_pixel,   -- 114 MHz
            rdreq   => fifo_rd_req,
            q       => fifo_rd_data,
            rdempty => fifo_empty,
            wrfull  => fifo_full
        );

    -- Controller SDRAM
    sdram_ctrl : entity work.sdram
        generic map ( page0 => 320, page1 => 320 )
        port map (
            clk            => clk_pixel,
            pixelOut       => sdr_pixel_out,
            read_page      => reg_read_page,
            rowLoadNr      => vga_row_req_addr,
            rowLoadReq     => sdr_load_req,
            rowLoadAck     => sdr_load_ack,
            colLoadNr      => sdr_col_wr_addr,
            wren_sdr       => wren_sdr_to_ram2,
            addrDirect     => unsigned(fifo_rd_data(39 downto 16)),
            pixelDirectIn  => unsigned(fifo_rd_data(15 downto 0)),
            directWriteReq => not fifo_empty,
            directAck      => fifo_rd_req,
            pMemClk        => dram_clk,
            pMemCke        => dram_cke,
            pMemCs_n       => dram_cs_n,
            pMemRas_n      => dram_ras_n,
            pMemCas_n      => dram_cas_n,
            pMemWe_n       => dram_we_n,
            pMemUdq        => dram_dqm(1),
            pMemLdq        => dram_dqm(0),
            pMemBa1        => dram_ba(1),
            pMemBa0        => dram_ba(0),
            pMemAdr        => dram_addr,
            pMemDat        => dram_dq
        );

    -- Buffer di riga per il Core VGA
    read_buffer : entity work.ram2
        port map (
            data      => std_logic_vector(sdr_pixel_out),
            wraddress => std_logic_vector(sdr_col_wr_addr),
            wrclock   => clk_pixel,
            wren      => wren_sdr_to_ram2,
            rdaddress => std_logic_vector(vga_col_req_addr),
            rdclock   => clk_vga,
            q         => ram2_q_vec
        );

    -- Generatore di segnali VGA
    vga_engine : entity work.vgaout
        port map (
            clock_vga    => clk_vga,
            clock_dram   => clk_pixel,
            video_active => '0',
            pixel_in     => unsigned(ram2_q_vec),
			scaling_h_i => vga_scale_h,
			scaling_v_i => vga_scale_v,
            load_req     => sdr_load_req,
            load_ack     => sdr_load_ack,
            row_number   => vga_row_req_addr,
            col_number   => vga_col_req_addr,
            vga_out      => vga_bus_internal
        );

    -- Mappatura segnali video in uscita
    vga_hsync <= std_logic(vga_bus_internal(1));
    vga_vsync <= std_logic(vga_bus_internal(0));
    vga_r     <= std_logic_vector(vga_bus_internal(17 downto 13));
    vga_g     <= std_logic_vector(vga_bus_internal(12 downto 7));
    vga_b     <= std_logic_vector(vga_bus_internal(6 downto 2));

end rtl;