

-- ****************************************************************************
-- *  DEFINE: Library                                                         *
-- ****************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.ALL;




-- ****************************************************************************
-- *  DEFINE: Entity                                                          *
-- ****************************************************************************

entity top is
   port (
	--
	-- Input clock
	--
	CLOCK_50    : in  std_logic;
	  
	--
	-- Keys
	--
	KEY         : in  std_logic_vector(1 downto 0);

	--
	-- JTAG TAP
	--
	nTRST_i     : in  std_logic;
	TCK_i       : in  std_logic;
	TDI_i       : in  std_logic;
	TDO_o       : out std_logic;
	TMS_i       : in  std_logic;
	
	--
	-- EXTERNAL PIN
	--
	addr_bus 	: in std_logic_vector(2 downto 0);
	data_bus 	: in std_logic_vector(15 downto 0);
	pixel_stb  	: in std_logic; 
	cmd_stb  	: in std_logic;
	busy    	: out std_logic;
	--
	-- SDRAM interface,
	--
	SDRAM_CLK   : out   std_logic;                        -- Master Clock
	SDRAM_CKE   : out   std_logic;                        -- Clock Enable
	SDRAM_CS_N  : out   std_logic;                        -- Chip Select
	SDRAM_RAS_N : out   std_logic;                        -- Row Address Strobe
	SDRAM_CAS_N : out   std_logic;                        -- Column Address Strobe
	SDRAM_WE_N  : out   std_logic;                        -- Write Enable
	SDRAM_DQ    : inout std_logic_vector(15 downto 0);    -- Data I/O (16 bits)
	SDRAM_DQML  : out   std_logic;                        -- Output Disable / Write Mask (low)
	SDRAM_DQMU  : out   std_logic;                        -- Output Disable / Write Mask (high)
	SDRAM_ADDR  : out   std_logic_vector(12 downto 0);    -- Address Input (12 bits)
	SDRAM_BA_0  : out   std_logic;                        -- Bank Address 0
	SDRAM_BA_1  : out   std_logic;                        -- Bank Address 1


	-- DAC 565 
	VGA_R        	: out std_logic_vector(4 downto 0);
	VGA_G        	: out std_logic_vector(5 downto 0);
	VGA_B        	: out std_logic_vector(4 downto 0);
	VGA_HSYNC   	: out std_logic;
	VGA_VSYNC   	: out std_logic
   );
end entity top;


-- ****************************************************************************
-- *  DEFINE: Architecture                                                    *
-- ****************************************************************************

architecture syn of top is


   --------------------------------------------------------
   -- Define all components which are included here
   --------------------------------------------------------

   --
   -- PLL
   --

	component pll_vga
      port (
        inclk0 : in  std_logic := '0';
        c0     : out std_logic;
        c1     : out std_logic;
		c2     : out std_logic;
		locked : out std_logic
      );
   end component pll_vga;






   --------------------------------------------------------
   -- Define all local signals here
   --------------------------------------------------------
	SIGNAL CLOCK_PIXEL 		: STD_LOGIC := '0';
	SIGNAL CLOCK_SYNC 		: STD_LOGIC := '0';
	SIGNAL CLOCK_VGA 			: STD_LOGIC := '0';

	signal rstn_i           : std_logic;
	signal fpga_reset		: std_logic;
	signal pll_locked		: std_logic;
	-- SDRAM
	signal sdram_ba         : std_logic_vector(1 downto 0);
	signal sdram_dqm        : std_logic_vector(1 downto 0);

	signal gpio             : std_ulogic_vector(31 downto 0);


	
	signal vga_bus_adr : std_logic_vector(2 downto 0);
	signal vga_bus_dat : std_logic_vector(15 downto 0);
	signal vga_bus_we  : std_logic;
	signal vga_busy    : std_logic;
	signal vga_st_cmd  : std_logic;
	

begin

	
   --
   -- PLL
   --

		
   inst_pll_vga : pll_vga
	port map (
		inclk0 => CLOCK_50,
		c0     => CLOCK_SYNC,
		c1     => CLOCK_VGA,
		c2 	   => CLOCK_PIXEL,
		locked => pll_locked
		);
		


   --
   -- In general it is a bad idea to use an asynchhronous Reset signal.
   -- But it is only a bad idea in case of asynchhronous deasserting.
   -- Therefore the deasserting of the Reset signal must be synchronized.
   --

   -- Asynchronous assert
   fpga_reset <= '1' when ((KEY(1) = '0') OR (KEY(0) = '0')) else '0';
   rstn_i      <= '1' when ((fpga_reset = '1') OR (pll_locked = '0')) else '0';





	 inst_vga_subsystem: entity work.vga_subsystem_top
    port map (
		-- --- Clock e Reset ---
		clk_sync 		=> CLOCK_SYNC,
		clk_vga 		=> CLOCK_VGA,
		clk_pixel 	=> CLOCK_PIXEL,
		rst_n        => not rstn_i,            -- Reset Generale (Attivo Basso)

		-- --- INTERFACCIA DAI PIN ---
		vga_data_i   => vga_bus_dat,
		vga_cmd_i    => vga_bus_adr,
		vga_st_i     => vga_bus_we,
		vga_st_cmd_i => vga_st_cmd,
		vga_busy_o   => vga_busy,

			--- Interfaccia Fisica SDRAM ---
            dram_clk     => open, -- Pilotato dal PLL fuori da qui
            dram_cke     => SDRAM_CKE,
            dram_cs_n    => SDRAM_CS_N,
            dram_ras_n   => SDRAM_RAS_N,
            dram_cas_n   => SDRAM_CAS_N,
            dram_we_n    => SDRAM_WE_N,
            
            -- Mappatura Bank Address (Split)
            dram_ba(1)   => SDRAM_BA_1,
            dram_ba(0)   => SDRAM_BA_0,
            
            -- Conversione Address (da unsigned a std_logic_vector)
            std_logic_vector(dram_addr) => SDRAM_ADDR,
            
            -- Mappatura Mask (Split)
            dram_dqm(1)  => SDRAM_DQMU,
            dram_dqm(0)  => SDRAM_DQML,
            
            -- Conversione Dati Inout
            std_logic_vector(dram_dq) => SDRAM_DQ,

        -- --- Uscite VGA Fisiche (Standard RGB565) ---
			vga_r        => VGA_R,
			vga_g        => VGA_G,
			vga_b        => VGA_B,
			vga_hsync    => VGA_HSYNC,
			vga_vsync    => VGA_VSYNC
    );
	 
	 u_dram_clk_gen: entity work.DCLK_BUF
		port map (
    datain_h(0) => '1',      -- Valore da mandare sul fronte di salita
    datain_l(0) => '0',      -- Valore da mandare sul fronte di discesa
    outclock    => CLOCK_PIXEL, -- Il segnale di clock che esce dal PLL (es. quello a 114MHz sfasato)
    dataout(0)  => SDRAM_CLK  -- Il pin fisico che va verso il chip SDRAM
);

	
	vga_bus_adr <= addr_bus;    -- L'indirizzo ricevuto pilota il bus interno
	vga_bus_dat <= data_bus;    -- Il dato ricevuto viene presentato al registro
	vga_bus_we  <= pixel_stb;   -- Lo strobe pixel diventa il Write Enable per la memoria
	vga_st_cmd  <= cmd_stb;     -- Lo strobe comando attiva la logica dei registri
	busy    	<= vga_busy;        -- Il busy interno viene inviato indietro verso il trasmettitore


end architecture syn;

-- *** EOF ***

