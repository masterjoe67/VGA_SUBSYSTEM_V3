-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Standard Edition"

-- DATE "05/03/2026 23:41:09"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	nTRST_i : IN std_logic;
	TCK_i : IN std_logic;
	TDI_i : IN std_logic;
	TDO_o : BUFFER std_logic;
	TMS_i : IN std_logic;
	addr_bus : IN std_logic_vector(2 DOWNTO 0);
	data_bus : IN std_logic_vector(15 DOWNTO 0);
	pixel_stb : IN std_logic;
	cmd_stb : IN std_logic;
	busy : BUFFER std_logic;
	SDRAM_CLK : BUFFER std_logic;
	SDRAM_CKE : BUFFER std_logic;
	SDRAM_CS_N : BUFFER std_logic;
	SDRAM_RAS_N : BUFFER std_logic;
	SDRAM_CAS_N : BUFFER std_logic;
	SDRAM_WE_N : BUFFER std_logic;
	SDRAM_DQ : BUFFER std_logic_vector(15 DOWNTO 0);
	SDRAM_DQML : BUFFER std_logic;
	SDRAM_DQMU : BUFFER std_logic;
	SDRAM_ADDR : BUFFER std_logic_vector(12 DOWNTO 0);
	SDRAM_BA_0 : BUFFER std_logic;
	SDRAM_BA_1 : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(4 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(5 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(4 DOWNTO 0);
	VGA_HSYNC : BUFFER std_logic;
	VGA_VSYNC : BUFFER std_logic
	);
END top;

-- Design Ports Information
-- nTRST_i	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TCK_i	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TDI_i	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TDO_o	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TMS_i	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CLK	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CKE	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CS_N	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_RAS_N	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CAS_N	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_WE_N	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQML	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQMU	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[0]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[1]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[2]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[3]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[4]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[6]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[7]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[8]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[9]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[10]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[11]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[12]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_BA_0	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_BA_1	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- VGA_R[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- VGA_R[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- VGA_R[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- VGA_R[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- VGA_G[0]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HSYNC	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VSYNC	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[0]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[1]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[2]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[3]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[5]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[6]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[7]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[8]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[9]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[10]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[11]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[12]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[13]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[14]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DQ[15]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_bus[0]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_bus[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_bus[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[2]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[4]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[0]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pixel_stb	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cmd_stb	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[5]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[7]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[9]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[8]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[6]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[10]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[11]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[12]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[13]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[14]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_bus[15]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_nTRST_i : std_logic;
SIGNAL ww_TCK_i : std_logic;
SIGNAL ww_TDI_i : std_logic;
SIGNAL ww_TDO_o : std_logic;
SIGNAL ww_TMS_i : std_logic;
SIGNAL ww_addr_bus : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pixel_stb : std_logic;
SIGNAL ww_cmd_stb : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_SDRAM_CLK : std_logic;
SIGNAL ww_SDRAM_CKE : std_logic;
SIGNAL ww_SDRAM_CS_N : std_logic;
SIGNAL ww_SDRAM_RAS_N : std_logic;
SIGNAL ww_SDRAM_CAS_N : std_logic;
SIGNAL ww_SDRAM_WE_N : std_logic;
SIGNAL ww_SDRAM_DQ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SDRAM_DQML : std_logic;
SIGNAL ww_SDRAM_DQMU : std_logic;
SIGNAL ww_SDRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_SDRAM_BA_0 : std_logic;
SIGNAL ww_SDRAM_BA_1 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_VGA_HSYNC : std_logic;
SIGNAL ww_VGA_VSYNC : std_logic;
SIGNAL \inst_pll_vga|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \rstn_i~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nTRST_i~input_o\ : std_logic;
SIGNAL \TCK_i~input_o\ : std_logic;
SIGNAL \TDI_i~input_o\ : std_logic;
SIGNAL \TMS_i~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \rstn_i~0_combout\ : std_logic;
SIGNAL \rstn_i~0clkctrl_outclk\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[3]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_RTM0113_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_NEW_REG110_RTM0112_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~13_OTERM55\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~12_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~12_OTERM67\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~0_OTERM47\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~10_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~10_OTERM121\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal14~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal9~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal9~0_OTERM53\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\ : std_logic;
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~1\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~3\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~5\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~7\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal2~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal0~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~9\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~10_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|hcount~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~11\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~12_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~13\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~14_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~15\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~16_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|hcount~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal0~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~17\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~18_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|hcount~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~19\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~20_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~21\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add1~22_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|LessThan5~0_RTM07_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal0~0_RTM03_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal0~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal0~1_OTERM9\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal2~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|load_req~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|rowLoadAck~q\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|load_req~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector20~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|rowLoadAck~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal13~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal13~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[8]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[6]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector19~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector19~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector19~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~33\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~2_OTERM17\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine~10_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector21~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~3_RTM061_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|directAck~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|directAck~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[3]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\ : std_logic;
SIGNAL \pixel_stb~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|sync_st_pix[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sync_st_pix[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[6]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[6]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[8]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[8]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[16]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_req~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ : std_logic;
SIGNAL \data_bus[0]~input_o\ : std_logic;
SIGNAL \addr_bus[2]~input_o\ : std_logic;
SIGNAL \cmd_stb~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|sync_st_cmd[1]~feeder_combout\ : std_logic;
SIGNAL \addr_bus[1]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~4_combout\ : std_logic;
SIGNAL \addr_bus[0]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[16]~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ : std_logic;
SIGNAL \data_bus[1]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[1]~feeder_combout\ : std_logic;
SIGNAL \data_bus[2]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[2]~feeder_combout\ : std_logic;
SIGNAL \data_bus[3]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[3]~feeder_combout\ : std_logic;
SIGNAL \data_bus[4]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[4]~feeder_combout\ : std_logic;
SIGNAL \data_bus[5]~input_o\ : std_logic;
SIGNAL \data_bus[6]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[6]~feeder_combout\ : std_logic;
SIGNAL \data_bus[7]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[7]~feeder_combout\ : std_logic;
SIGNAL \data_bus[8]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[8]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[8]~feeder_combout\ : std_logic;
SIGNAL \data_bus[9]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[9]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[9]~feeder_combout\ : std_logic;
SIGNAL \data_bus[10]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[10]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[10]~feeder_combout\ : std_logic;
SIGNAL \data_bus[11]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[11]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[11]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[16]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_x[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[17]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[18]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[19]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[20]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_x[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[21]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_x[6]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_x[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|addr_temp~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|addr_temp~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|addr_temp~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_y[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[25]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_y[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_y[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_y[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[29]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_y[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[30]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[31]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_y[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[32]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[33]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[35]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_write_page[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_write_page[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[37]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_write_page[3]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[38]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_write_page[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[39]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~9_RTM071_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~9_OTERM69\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[3]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[6]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[8]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[9]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[10]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[11]~feeder_combout\ : std_logic;
SIGNAL \data_bus[12]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[12]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[12]~feeder_combout\ : std_logic;
SIGNAL \data_bus[13]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|reg_color[13]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[13]~feeder_combout\ : std_logic;
SIGNAL \data_bus[14]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[14]~feeder_combout\ : std_logic;
SIGNAL \data_bus[15]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|fifo_wr_data[15]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[12]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[13]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[14]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s[15]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~5_RTM045_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~6_OTERM77\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~7_OTERM35\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal11~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~7_RTM075_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~9_RTM0125_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal11~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal11~4_OTERM11\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal3~0_RTM0117_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal3~0_OTERM115\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal2~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal2~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector0~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector0~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal12~0_RTM087_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector1~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector1~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector2~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector2~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrCmd~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector2~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~1\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~3\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vcount~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~5\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vcount~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~7\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~9\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~10_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~11\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~12_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~13\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~14_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal1~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~15\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~16_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~17\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Add0~18_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vcount~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal1~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vcount~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow[0]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector15~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow[1]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow[2]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector13~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector13~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector13~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector13~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector13~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector13~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector12~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow[3]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector12~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector12~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector12~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector12~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector12~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow[4]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector11~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector11~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector11~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector11~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector11~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector11~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow[5]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector10~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector10~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector10~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector10~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector10~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector10~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector9~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector9~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector9~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector9~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector9~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector8~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[7]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector8~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector8~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector8~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector8~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|row_number[8]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector7~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector7~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector7~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector7~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector7~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|Mux38~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector6~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector6~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector6~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector6~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector6~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector5~9_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector4~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector4~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector4~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector4~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector3~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector3~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector3~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector16~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector16~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector16~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector16~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector16~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAddress[19]~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|Selector17~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|wren_sdr~feeder_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|wren_sdr~q\ : std_logic;
SIGNAL \SDRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~13_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_OTERM119\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr~16_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~18_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~20_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~22_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~24_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~26_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~28_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~30_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~32_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~33\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr[9]~34_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|LessThan5~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~8_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~9_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~10_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~12_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~13_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|col_number~11_combout\ : std_logic;
SIGNAL \SDRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|LessThan6~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~5_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~6_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~7_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~8_combout\ : std_logic;
SIGNAL \SDRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \SDRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~9_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~10_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~11_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~12_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~13_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~14_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out~15_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|Equal0~0_OTERM1\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|process_1~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|process_1~1_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|process_1~2_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|hsync_reg~q\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out[1]~16_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|process_1~3_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|process_1~4_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vsync_reg~q\ : std_logic;
SIGNAL \inst_vga_subsystem|vga_engine|vga_out[0]~17_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_vga_subsystem|vga_engine|row_number\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|colLoadNr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_dram_clk_gen|ALTDDIO_OUT_component|auto_generated|dataout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_vga_subsystem|vga_engine|hcount\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst_vga_subsystem|reg_color\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_vga_subsystem|reg_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrCmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|pixelOut\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_vga_subsystem|vga_engine|vga_out\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst_vga_subsystem|reg_read_page\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAddress\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst_vga_subsystem|vga_engine|vcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|curRow\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sync_st_pix\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sync_st_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrDat_s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_vga_subsystem|vga_engine|col_number\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_vga_subsystem|fifo_wr_data\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_vga_subsystem|reg_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_vga_subsystem|reg_write_page\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_rstn_i~0clkctrl_outclk\ : std_logic;
SIGNAL \inst_vga_subsystem|sdram_ctrl|ALT_INV_rowLoadAck~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe13a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_vga_subsystem|sdram_ctrl|ALT_INV_SdrRoutine.SdrRoutine_DirectWrite~q\ : std_logic;
SIGNAL \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_wrfull~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_nTRST_i <= nTRST_i;
ww_TCK_i <= TCK_i;
ww_TDI_i <= TDI_i;
TDO_o <= ww_TDO_o;
ww_TMS_i <= TMS_i;
ww_addr_bus <= addr_bus;
ww_data_bus <= data_bus;
ww_pixel_stb <= pixel_stb;
ww_cmd_stb <= cmd_stb;
busy <= ww_busy;
SDRAM_CLK <= ww_SDRAM_CLK;
SDRAM_CKE <= ww_SDRAM_CKE;
SDRAM_CS_N <= ww_SDRAM_CS_N;
SDRAM_RAS_N <= ww_SDRAM_RAS_N;
SDRAM_CAS_N <= ww_SDRAM_CAS_N;
SDRAM_WE_N <= ww_SDRAM_WE_N;
SDRAM_DQ <= ww_SDRAM_DQ;
SDRAM_DQML <= ww_SDRAM_DQML;
SDRAM_DQMU <= ww_SDRAM_DQMU;
SDRAM_ADDR <= ww_SDRAM_ADDR;
SDRAM_BA_0 <= ww_SDRAM_BA_0;
SDRAM_BA_1 <= ww_SDRAM_BA_1;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HSYNC <= ww_VGA_HSYNC;
VGA_VSYNC <= ww_VGA_VSYNC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_pll_vga|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ <= (\inst_vga_subsystem|sdram_ctrl|pixelOut\(15) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(14) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(13) & 
\inst_vga_subsystem|sdram_ctrl|pixelOut\(12) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(11) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(8) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(7) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(6) & 
\inst_vga_subsystem|sdram_ctrl|pixelOut\(5));

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(9) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(8) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(7) & 
\inst_vga_subsystem|sdram_ctrl|colLoadNr\(6) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(5) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(4) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(3) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(2) & 
\inst_vga_subsystem|sdram_ctrl|colLoadNr\(1) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(0));

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst_vga_subsystem|vga_engine|col_number\(9) & \inst_vga_subsystem|vga_engine|col_number\(8) & \inst_vga_subsystem|vga_engine|col_number\(7) & 
\inst_vga_subsystem|vga_engine|col_number\(6) & \inst_vga_subsystem|vga_engine|col_number\(5) & \inst_vga_subsystem|vga_engine|col_number\(4) & \inst_vga_subsystem|vga_engine|col_number\(3) & \inst_vga_subsystem|vga_engine|col_number\(2) & 
\inst_vga_subsystem|vga_engine|col_number\(1) & \inst_vga_subsystem|vga_engine|col_number\(0));

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(5) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(6) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(1);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(7) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(2);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(8) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(3);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(11) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(4);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(12) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(5);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(13) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(6);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(14) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(7);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(15) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(8);

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \inst_vga_subsystem|sdram_ctrl|pixelOut\(10) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(9) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(4)
& \inst_vga_subsystem|sdram_ctrl|pixelOut\(3) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(2) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(1) & \inst_vga_subsystem|sdram_ctrl|pixelOut\(0));

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(9) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(8) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(7) & 
\inst_vga_subsystem|sdram_ctrl|colLoadNr\(6) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(5) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(4) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(3) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(2) & 
\inst_vga_subsystem|sdram_ctrl|colLoadNr\(1) & \inst_vga_subsystem|sdram_ctrl|colLoadNr\(0));

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst_vga_subsystem|vga_engine|col_number\(9) & \inst_vga_subsystem|vga_engine|col_number\(8) & \inst_vga_subsystem|vga_engine|col_number\(7) & 
\inst_vga_subsystem|vga_engine|col_number\(6) & \inst_vga_subsystem|vga_engine|col_number\(5) & \inst_vga_subsystem|vga_engine|col_number\(4) & \inst_vga_subsystem|vga_engine|col_number\(3) & \inst_vga_subsystem|vga_engine|col_number\(2) & 
\inst_vga_subsystem|vga_engine|col_number\(1) & \inst_vga_subsystem|vga_engine|col_number\(0));

\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(0) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(1) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(2) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(3) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(4) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(9) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(10) <= \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\ <= (\inst_vga_subsystem|fifo_wr_data\(39) & \inst_vga_subsystem|fifo_wr_data\(38) & \inst_vga_subsystem|fifo_wr_data\(37) & 
\inst_vga_subsystem|fifo_wr_data\(36) & \inst_vga_subsystem|fifo_wr_data\(35) & \inst_vga_subsystem|fifo_wr_data\(34) & \inst_vga_subsystem|fifo_wr_data\(33) & \inst_vga_subsystem|fifo_wr_data\(32) & \inst_vga_subsystem|fifo_wr_data\(31) & 
\inst_vga_subsystem|fifo_wr_data\(30) & \inst_vga_subsystem|fifo_wr_data\(29) & \inst_vga_subsystem|fifo_wr_data\(28) & \inst_vga_subsystem|fifo_wr_data\(27) & \inst_vga_subsystem|fifo_wr_data\(26) & \inst_vga_subsystem|fifo_wr_data\(25) & 
\inst_vga_subsystem|fifo_wr_data\(24) & \inst_vga_subsystem|fifo_wr_data\(23) & \inst_vga_subsystem|fifo_wr_data\(22) & \inst_vga_subsystem|fifo_wr_data\(21) & \inst_vga_subsystem|fifo_wr_data\(20) & \inst_vga_subsystem|fifo_wr_data\(19) & 
\inst_vga_subsystem|fifo_wr_data\(18) & \inst_vga_subsystem|fifo_wr_data\(17) & \inst_vga_subsystem|fifo_wr_data\(16) & \inst_vga_subsystem|fifo_wr_data\(11) & \inst_vga_subsystem|fifo_wr_data\(10) & \inst_vga_subsystem|fifo_wr_data\(9) & 
\inst_vga_subsystem|fifo_wr_data\(8) & \inst_vga_subsystem|fifo_wr_data\(7) & \inst_vga_subsystem|fifo_wr_data\(6) & \inst_vga_subsystem|fifo_wr_data\(5) & \inst_vga_subsystem|fifo_wr_data\(4) & \inst_vga_subsystem|fifo_wr_data\(3) & 
\inst_vga_subsystem|fifo_wr_data\(2) & \inst_vga_subsystem|fifo_wr_data\(1) & \inst_vga_subsystem|fifo_wr_data\(0));

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\ <= (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_a\(7) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0));

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\ <= (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_b\(7) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(0);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(1);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(2);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(3);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(4);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(5);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(6);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(7);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(8);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(9);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(10);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(11);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(16) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(12);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(17) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(13);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(18) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(14);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(19) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(15);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(20) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(16);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(21) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(17);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(22) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(18);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(23) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(19);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(24) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(20);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(25) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(21);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(26) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(22);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(27) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(23);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(28) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(24);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(29) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(25);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(30) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(26);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(31) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(27);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(32) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(28);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(33) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(29);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(34) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(30);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(35) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(31);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(36) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(32);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(37) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(33);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(38) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(34);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(39) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\(35);

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst_vga_subsystem|fifo_wr_data\(15) & \inst_vga_subsystem|fifo_wr_data\(14) & \inst_vga_subsystem|fifo_wr_data\(13) & \inst_vga_subsystem|fifo_wr_data\(12));

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\ <= (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_a\(7) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0));

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\ <= (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_b\(7) & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & 
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(0);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(1);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(2);
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15) <= \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\(3);

\rstn_i~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rstn_i~0_combout\);

\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk\(1));
\ALT_INV_rstn_i~0clkctrl_outclk\ <= NOT \rstn_i~0clkctrl_outclk\;
\inst_vga_subsystem|sdram_ctrl|ALT_INV_rowLoadAck~q\ <= NOT \inst_vga_subsystem|sdram_ctrl|rowLoadAck~q\;
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\ <= NOT \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\;
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe13a\(0) <= NOT \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0);
\inst_vga_subsystem|sdram_ctrl|ALT_INV_SdrRoutine.SdrRoutine_DirectWrite~q\ <= NOT \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\;
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_wrfull~0_combout\ <= NOT \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\;

-- Location: IOOBUF_X9_Y34_N23
\TDO_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_TDO_o);

-- Location: IOOBUF_X51_Y34_N23
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_wrfull~0_combout\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X5_Y0_N23
\SDRAM_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_dram_clk_gen|ALTDDIO_OUT_component|auto_generated|dataout\(0),
	devoe => ww_devoe,
	o => ww_SDRAM_CLK);

-- Location: IOOBUF_X16_Y0_N23
\SDRAM_CKE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SDRAM_CKE);

-- Location: IOOBUF_X11_Y0_N23
\SDRAM_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_CS_N);

-- Location: IOOBUF_X0_Y11_N2
\SDRAM_RAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrCmd\(2),
	devoe => ww_devoe,
	o => ww_SDRAM_RAS_N);

-- Location: IOOBUF_X0_Y11_N9
\SDRAM_CAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrCmd\(1),
	devoe => ww_devoe,
	o => ww_SDRAM_CAS_N);

-- Location: IOOBUF_X0_Y27_N2
\SDRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrCmd\(0),
	devoe => ww_devoe,
	o => ww_SDRAM_WE_N);

-- Location: IOOBUF_X14_Y0_N9
\SDRAM_DQML~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_DQML);

-- Location: IOOBUF_X14_Y0_N16
\SDRAM_DQMU~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_DQMU);

-- Location: IOOBUF_X0_Y4_N16
\SDRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(0),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(0));

-- Location: IOOBUF_X5_Y0_N9
\SDRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(1),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(1));

-- Location: IOOBUF_X5_Y0_N2
\SDRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(2),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(2));

-- Location: IOOBUF_X20_Y0_N9
\SDRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(3),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(3));

-- Location: IOOBUF_X25_Y0_N16
\SDRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(4),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(4));

-- Location: IOOBUF_X18_Y0_N23
\SDRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(5),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(5));

-- Location: IOOBUF_X20_Y0_N2
\SDRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(6),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(6));

-- Location: IOOBUF_X14_Y0_N2
\SDRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(7),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(7));

-- Location: IOOBUF_X0_Y5_N23
\SDRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(8),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(8));

-- Location: IOOBUF_X0_Y4_N23
\SDRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(9),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(9));

-- Location: IOOBUF_X0_Y8_N23
\SDRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(10),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(10));

-- Location: IOOBUF_X0_Y7_N2
\SDRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(11),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(11));

-- Location: IOOBUF_X0_Y6_N16
\SDRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(12),
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(12));

-- Location: IOOBUF_X11_Y0_N16
\SDRAM_BA_0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_BA_0);

-- Location: IOOBUF_X7_Y0_N9
\SDRAM_BA_1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_BA_1);

-- Location: IOOBUF_X53_Y20_N23
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(13),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X53_Y21_N16
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(14),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X47_Y34_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(15),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X51_Y34_N2
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(16),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X53_Y30_N2
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(17),
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X34_Y0_N2
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(7),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X34_Y0_N23
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(8),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X29_Y0_N2
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(9),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X53_Y26_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(10),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X53_Y22_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(11),
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X53_Y24_N23
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(12),
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X34_Y0_N16
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X36_Y0_N9
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X53_Y22_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(4),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X53_Y30_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(5),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X53_Y25_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(6),
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X51_Y34_N9
\VGA_HSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(1),
	devoe => ww_devoe,
	o => ww_VGA_HSYNC);

-- Location: IOOBUF_X53_Y20_N16
\VGA_VSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|vga_engine|vga_out\(0),
	devoe => ww_devoe,
	o => ww_VGA_VSYNC);

-- Location: IOOBUF_X0_Y23_N16
\SDRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(0),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(0));

-- Location: IOOBUF_X0_Y23_N23
\SDRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(1),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(1));

-- Location: IOOBUF_X18_Y0_N9
\SDRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(2),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(2));

-- Location: IOOBUF_X0_Y7_N9
\SDRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(3),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(3));

-- Location: IOOBUF_X0_Y12_N2
\SDRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(4),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(4));

-- Location: IOOBUF_X0_Y15_N2
\SDRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(5),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(5));

-- Location: IOOBUF_X0_Y15_N9
\SDRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(6),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(6));

-- Location: IOOBUF_X16_Y0_N16
\SDRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(7),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(7));

-- Location: IOOBUF_X5_Y0_N16
\SDRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(8),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(8));

-- Location: IOOBUF_X3_Y0_N2
\SDRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(9),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(9));

-- Location: IOOBUF_X1_Y0_N2
\SDRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(10),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(10));

-- Location: IOOBUF_X1_Y0_N9
\SDRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(11),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(11));

-- Location: IOOBUF_X14_Y0_N23
\SDRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(12),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(12));

-- Location: IOOBUF_X1_Y0_N16
\SDRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(13),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(13));

-- Location: IOOBUF_X1_Y0_N23
\SDRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(14),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(14));

-- Location: IOOBUF_X0_Y12_N9
\SDRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(15),
	oe => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\,
	devoe => ww_devoe,
	o => ww_SDRAM_DQ(15));

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_4
\inst_pll_vga|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 5,
	c1_initial => 2,
	c1_low => 4,
	c1_mode => "odd",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 25,
	c2_initial => 1,
	c2_low => 25,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 14,
	clk0_phase_shift => "0",
	clk1_counter => "c2",
	clk1_divide_by => 125,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 63,
	clk1_phase_shift => "0",
	clk2_counter => "c1",
	clk2_divide_by => 5,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 14,
	clk2_phase_shift => "794",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 126,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 769,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 1666,
	vco_min => 769,
	vco_multiply_by => 0,
	vco_phase_shift_step => 99,
	vco_post_scale => 1)
-- pragma translate_on
PORT MAP (
	fbin => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst_pll_vga|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst_pll_vga|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G19
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G18
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y13_N22
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X52_Y14_N18
\rstn_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rstn_i~0_combout\ = ((!\KEY[0]~input_o\) # (!\inst_pll_vga|altpll_component|auto_generated|wire_pll1_locked\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \KEY[0]~input_o\,
	combout => \rstn_i~0_combout\);

-- Location: CLKCTRL_G8
\rstn_i~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rstn_i~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rstn_i~0clkctrl_outclk\);

-- Location: FF_X20_Y13_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a[0]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a\(0));

-- Location: FF_X20_Y13_N21
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe12a\(0),
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0));

-- Location: LCCOMB_X20_Y14_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\);

-- Location: FF_X20_Y14_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~2_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\);

-- Location: LCCOMB_X20_Y14_N4
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\);

-- Location: FF_X20_Y14_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\);

-- Location: LCCOMB_X20_Y14_N8
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\);

-- Location: LCCOMB_X20_Y14_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\);

-- Location: FF_X20_Y14_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\);

-- Location: LCCOMB_X20_Y14_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\);

-- Location: LCCOMB_X20_Y14_N18
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~4_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\);

-- Location: FF_X20_Y14_N19
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\);

-- Location: LCCOMB_X20_Y14_N24
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\);

-- Location: FF_X19_Y14_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\);

-- Location: LCCOMB_X19_Y14_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ $ 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\);

-- Location: FF_X19_Y14_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\);

-- Location: LCCOMB_X19_Y14_N24
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ $ (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\);

-- Location: FF_X19_Y14_N25
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~6_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1));

-- Location: LCCOMB_X19_Y14_N8
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~3_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\);

-- Location: FF_X19_Y14_N9
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\);

-- Location: FF_X19_Y14_N19
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2));

-- Location: LCCOMB_X20_Y14_N22
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\);

-- Location: FF_X20_Y14_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~7_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0));

-- Location: LCCOMB_X19_Y14_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1) $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2) $ (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(1),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(2),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|sub_parity10a\(0),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\);

-- Location: LCCOMB_X20_Y14_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~5_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~feeder_combout\);

-- Location: FF_X20_Y14_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\);

-- Location: LCCOMB_X20_Y14_N20
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|parity9~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\);

-- Location: LCCOMB_X20_Y14_N16
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~1_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\);

-- Location: FF_X20_Y14_N17
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\);

-- Location: LCCOMB_X20_Y14_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|_~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\);

-- Location: FF_X20_Y14_N1
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\);

-- Location: LCCOMB_X17_Y13_N18
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a[0]~feeder_combout\);

-- Location: FF_X17_Y13_N19
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a[0]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a\(0));

-- Location: LCCOMB_X17_Y13_N16
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a[0]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe12a\(0),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a[0]~feeder_combout\);

-- Location: FF_X17_Y13_N17
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a[0]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0));

-- Location: FF_X17_Y13_N9
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(1));

-- Location: LCCOMB_X18_Y14_N16
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\);

-- Location: LCCOMB_X18_Y14_N22
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ $ 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\);

-- Location: FF_X18_Y14_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\);

-- Location: LCCOMB_X18_Y14_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\);

-- Location: FF_X18_Y14_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\);

-- Location: LCCOMB_X19_Y13_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\);

-- Location: FF_X19_Y13_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[4]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(4));

-- Location: FF_X19_Y14_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4));

-- Location: LCCOMB_X19_Y13_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\);

-- Location: FF_X19_Y13_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[4]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4));

-- Location: LCCOMB_X18_Y13_N14
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[4]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(4),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[4]~feeder_combout\);

-- Location: FF_X18_Y13_N15
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[4]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(4));

-- Location: FF_X18_Y13_N3
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(4),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4));

-- Location: LCCOMB_X20_Y14_N6
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\);

-- Location: FF_X20_Y14_N7
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[2]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2));

-- Location: LCCOMB_X19_Y13_N22
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\);

-- Location: FF_X19_Y13_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[2]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2));

-- Location: LCCOMB_X18_Y13_N4
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[2]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(2),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[2]~feeder_combout\);

-- Location: FF_X18_Y13_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[2]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(2));

-- Location: FF_X18_Y13_N25
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(2),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2));

-- Location: LCCOMB_X18_Y13_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(4) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(2) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(4) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(2) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(4),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(2),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: FF_X20_Y14_N15
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1));

-- Location: LCCOMB_X19_Y13_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\);

-- Location: FF_X19_Y13_N11
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[1]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1));

-- Location: LCCOMB_X18_Y13_N8
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[1]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(1),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[1]~feeder_combout\);

-- Location: FF_X18_Y13_N9
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[1]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(1));

-- Location: FF_X18_Y13_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(1),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(1));

-- Location: LCCOMB_X18_Y13_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(1))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(1) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(1),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(1),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(2),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(4),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X20_Y14_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\);

-- Location: FF_X20_Y14_N11
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[3]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3));

-- Location: FF_X19_Y13_N7
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3));

-- Location: LCCOMB_X17_Y13_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[3]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(3),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[3]~feeder_combout\);

-- Location: FF_X17_Y13_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[3]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(3));

-- Location: FF_X17_Y13_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(3),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3));

-- Location: LCCOMB_X20_Y14_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\ = !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\);

-- Location: FF_X20_Y14_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[0]~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0));

-- Location: LCCOMB_X19_Y13_N8
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\);

-- Location: FF_X19_Y13_N9
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[0]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0));

-- Location: FF_X17_Y13_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(0),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(0));

-- Location: FF_X17_Y13_N11
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(0),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0));

-- Location: LCCOMB_X17_Y13_N4
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: FF_X18_Y13_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(3));

-- Location: LCCOMB_X17_Y13_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\ = !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\);

-- Location: FF_X17_Y13_N7
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[0]~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(0));

-- Location: LCCOMB_X17_Y13_N6
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(0) $ (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0))))) 
-- # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3) & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(3) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(0) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(3),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(3),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(0),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(0),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y13_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\))) # 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X18_Y13_N18
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\ $ 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\)))) # 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~1_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~5_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: FF_X18_Y13_N19
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_mux|result_node[0]~6_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\);

-- Location: LCCOMB_X20_Y8_N2
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_RTM0113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_RTM0113_combout\ = !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_RTM0113_combout\);

-- Location: LCCOMB_X20_Y8_N12
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_NEW_REG110_RTM0112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_NEW_REG110_RTM0112_combout\ = !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_NEW_REG110_RTM0112_combout\);

-- Location: FF_X19_Y8_N25
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_NEW_REG110_RTM0112_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0));

-- Location: LCCOMB_X18_Y8_N0
\inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\) # ((\inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	datac => \inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057_combout\);

-- Location: FF_X18_Y8_N19
\inst_vga_subsystem|sdram_ctrl|process_0~13_NEW_REG54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|process_0~13_OTERM55\);

-- Location: LCCOMB_X18_Y8_N2
\inst_vga_subsystem|sdram_ctrl|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~12_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ $ 
-- (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~12_combout\);

-- Location: FF_X18_Y8_N3
\inst_vga_subsystem|sdram_ctrl|process_0~12_NEW_REG66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|process_0~12_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|process_0~12_OTERM67\);

-- Location: LCCOMB_X18_Y8_N8
\inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\);

-- Location: FF_X18_Y8_N9
\inst_vga_subsystem|sdram_ctrl|Equal5~0_NEW_REG46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal5~0_OTERM47\);

-- Location: LCCOMB_X18_Y8_N10
\inst_vga_subsystem|sdram_ctrl|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~10_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\) # 
-- (\inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~13_RTM057_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~10_combout\);

-- Location: FF_X18_Y8_N11
\inst_vga_subsystem|sdram_ctrl|process_0~10_NEW_REG120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|process_0~10_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|process_0~10_OTERM121\);

-- Location: LCCOMB_X18_Y8_N4
\inst_vga_subsystem|sdram_ctrl|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\ = ((\inst_vga_subsystem|sdram_ctrl|process_0~10_OTERM121\) # ((!\inst_vga_subsystem|sdram_ctrl|process_0~13_OTERM55\ & !\inst_vga_subsystem|sdram_ctrl|Equal5~0_OTERM47\))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|process_0~12_OTERM67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|process_0~13_OTERM55\,
	datab => \inst_vga_subsystem|sdram_ctrl|process_0~12_OTERM67\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal5~0_OTERM47\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~10_OTERM121\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\);

-- Location: FF_X17_Y8_N17
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(7));

-- Location: FF_X17_Y8_N19
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(5));

-- Location: LCCOMB_X20_Y8_N18
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~feeder_combout\ = \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~feeder_combout\);

-- Location: FF_X20_Y8_N19
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~feeder_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9));

-- Location: LCCOMB_X17_Y8_N18
\inst_vga_subsystem|sdram_ctrl|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal14~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(7) & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(5) & \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(7),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(5),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal14~0_combout\);

-- Location: LCCOMB_X16_Y8_N0
\inst_vga_subsystem|sdram_ctrl|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal9~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal9~0_combout\);

-- Location: FF_X17_Y8_N5
\inst_vga_subsystem|sdram_ctrl|Equal9~0_NEW_REG52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal9~0_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal9~0_OTERM53\);

-- Location: FF_X17_Y8_N7
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4));

-- Location: LCCOMB_X17_Y8_N4
\inst_vga_subsystem|sdram_ctrl|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\ & (\inst_vga_subsystem|sdram_ctrl|Equal14~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|Equal9~0_OTERM53\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal14~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal9~0_OTERM53\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\);

-- Location: CLKCTRL_G17
\inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y8_N0
\inst_vga_subsystem|vga_engine|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~0_combout\ = \inst_vga_subsystem|vga_engine|hcount\(0) $ (VCC)
-- \inst_vga_subsystem|vga_engine|Add1~1\ = CARRY(\inst_vga_subsystem|vga_engine|hcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(0),
	datad => VCC,
	combout => \inst_vga_subsystem|vga_engine|Add1~0_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~1\);

-- Location: FF_X24_Y8_N1
\inst_vga_subsystem|vga_engine|hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(0));

-- Location: LCCOMB_X24_Y8_N2
\inst_vga_subsystem|vga_engine|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~2_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(1) & (!\inst_vga_subsystem|vga_engine|Add1~1\)) # (!\inst_vga_subsystem|vga_engine|hcount\(1) & ((\inst_vga_subsystem|vga_engine|Add1~1\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add1~3\ = CARRY((!\inst_vga_subsystem|vga_engine|Add1~1\) # (!\inst_vga_subsystem|vga_engine|hcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(1),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~1\,
	combout => \inst_vga_subsystem|vga_engine|Add1~2_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~3\);

-- Location: FF_X24_Y8_N29
\inst_vga_subsystem|vga_engine|hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|Add1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(1));

-- Location: LCCOMB_X24_Y8_N4
\inst_vga_subsystem|vga_engine|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~4_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(2) & (\inst_vga_subsystem|vga_engine|Add1~3\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|hcount\(2) & (!\inst_vga_subsystem|vga_engine|Add1~3\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add1~5\ = CARRY((\inst_vga_subsystem|vga_engine|hcount\(2) & !\inst_vga_subsystem|vga_engine|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(2),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~3\,
	combout => \inst_vga_subsystem|vga_engine|Add1~4_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~5\);

-- Location: FF_X24_Y8_N25
\inst_vga_subsystem|vga_engine|hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|Add1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(2));

-- Location: LCCOMB_X24_Y8_N6
\inst_vga_subsystem|vga_engine|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~6_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(3) & (!\inst_vga_subsystem|vga_engine|Add1~5\)) # (!\inst_vga_subsystem|vga_engine|hcount\(3) & ((\inst_vga_subsystem|vga_engine|Add1~5\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add1~7\ = CARRY((!\inst_vga_subsystem|vga_engine|Add1~5\) # (!\inst_vga_subsystem|vga_engine|hcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(3),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~5\,
	combout => \inst_vga_subsystem|vga_engine|Add1~6_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~7\);

-- Location: FF_X24_Y8_N7
\inst_vga_subsystem|vga_engine|hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(3));

-- Location: LCCOMB_X24_Y8_N8
\inst_vga_subsystem|vga_engine|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~8_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(4) & (\inst_vga_subsystem|vga_engine|Add1~7\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|hcount\(4) & (!\inst_vga_subsystem|vga_engine|Add1~7\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add1~9\ = CARRY((\inst_vga_subsystem|vga_engine|hcount\(4) & !\inst_vga_subsystem|vga_engine|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(4),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~7\,
	combout => \inst_vga_subsystem|vga_engine|Add1~8_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~9\);

-- Location: FF_X24_Y8_N9
\inst_vga_subsystem|vga_engine|hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(4));

-- Location: LCCOMB_X24_Y8_N28
\inst_vga_subsystem|vga_engine|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal2~1_combout\ = (!\inst_vga_subsystem|vga_engine|hcount\(4) & !\inst_vga_subsystem|vga_engine|hcount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(4),
	datad => \inst_vga_subsystem|vga_engine|hcount\(3),
	combout => \inst_vga_subsystem|vga_engine|Equal2~1_combout\);

-- Location: FF_X24_Y8_N23
\inst_vga_subsystem|vga_engine|hcount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(11));

-- Location: LCCOMB_X25_Y8_N26
\inst_vga_subsystem|vga_engine|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal0~2_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(4) & (\inst_vga_subsystem|vga_engine|hcount\(1) & (\inst_vga_subsystem|vga_engine|hcount\(3) & \inst_vga_subsystem|vga_engine|hcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(4),
	datab => \inst_vga_subsystem|vga_engine|hcount\(1),
	datac => \inst_vga_subsystem|vga_engine|hcount\(3),
	datad => \inst_vga_subsystem|vga_engine|hcount\(2),
	combout => \inst_vga_subsystem|vga_engine|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y8_N10
\inst_vga_subsystem|vga_engine|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~10_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(5) & (!\inst_vga_subsystem|vga_engine|Add1~9\)) # (!\inst_vga_subsystem|vga_engine|hcount\(5) & ((\inst_vga_subsystem|vga_engine|Add1~9\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add1~11\ = CARRY((!\inst_vga_subsystem|vga_engine|Add1~9\) # (!\inst_vga_subsystem|vga_engine|hcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(5),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~9\,
	combout => \inst_vga_subsystem|vga_engine|Add1~10_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~11\);

-- Location: LCCOMB_X23_Y8_N28
\inst_vga_subsystem|vga_engine|hcount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|hcount~2_combout\ = (!\inst_vga_subsystem|vga_engine|Equal0~3_combout\ & \inst_vga_subsystem|vga_engine|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	datac => \inst_vga_subsystem|vga_engine|Add1~10_combout\,
	combout => \inst_vga_subsystem|vga_engine|hcount~2_combout\);

-- Location: FF_X23_Y8_N29
\inst_vga_subsystem|vga_engine|hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|hcount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(5));

-- Location: LCCOMB_X24_Y8_N12
\inst_vga_subsystem|vga_engine|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~12_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(6) & (\inst_vga_subsystem|vga_engine|Add1~11\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|hcount\(6) & (!\inst_vga_subsystem|vga_engine|Add1~11\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add1~13\ = CARRY((\inst_vga_subsystem|vga_engine|hcount\(6) & !\inst_vga_subsystem|vga_engine|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(6),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~11\,
	combout => \inst_vga_subsystem|vga_engine|Add1~12_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~13\);

-- Location: FF_X24_Y8_N13
\inst_vga_subsystem|vga_engine|hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(6));

-- Location: LCCOMB_X24_Y8_N14
\inst_vga_subsystem|vga_engine|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~14_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(7) & (!\inst_vga_subsystem|vga_engine|Add1~13\)) # (!\inst_vga_subsystem|vga_engine|hcount\(7) & ((\inst_vga_subsystem|vga_engine|Add1~13\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add1~15\ = CARRY((!\inst_vga_subsystem|vga_engine|Add1~13\) # (!\inst_vga_subsystem|vga_engine|hcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(7),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~13\,
	combout => \inst_vga_subsystem|vga_engine|Add1~14_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~15\);

-- Location: FF_X24_Y8_N15
\inst_vga_subsystem|vga_engine|hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(7));

-- Location: LCCOMB_X24_Y8_N16
\inst_vga_subsystem|vga_engine|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~16_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(8) & (\inst_vga_subsystem|vga_engine|Add1~15\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|hcount\(8) & (!\inst_vga_subsystem|vga_engine|Add1~15\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add1~17\ = CARRY((\inst_vga_subsystem|vga_engine|hcount\(8) & !\inst_vga_subsystem|vga_engine|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(8),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~15\,
	combout => \inst_vga_subsystem|vga_engine|Add1~16_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~17\);

-- Location: LCCOMB_X25_Y8_N8
\inst_vga_subsystem|vga_engine|hcount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|hcount~0_combout\ = (\inst_vga_subsystem|vga_engine|Add1~16_combout\ & !\inst_vga_subsystem|vga_engine|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|Add1~16_combout\,
	datad => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	combout => \inst_vga_subsystem|vga_engine|hcount~0_combout\);

-- Location: FF_X24_Y8_N27
\inst_vga_subsystem|vga_engine|hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|hcount~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(8));

-- Location: LCCOMB_X23_Y8_N26
\inst_vga_subsystem|vga_engine|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal0~3_combout\ = (\inst_vga_subsystem|vga_engine|Equal0~1_OTERM9\ & (\inst_vga_subsystem|vga_engine|Equal0~2_combout\ & (\inst_vga_subsystem|vga_engine|hcount\(8) & !\inst_vga_subsystem|vga_engine|hcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Equal0~1_OTERM9\,
	datab => \inst_vga_subsystem|vga_engine|Equal0~2_combout\,
	datac => \inst_vga_subsystem|vga_engine|hcount\(8),
	datad => \inst_vga_subsystem|vga_engine|hcount\(7),
	combout => \inst_vga_subsystem|vga_engine|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst_vga_subsystem|vga_engine|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~18_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(9) & (!\inst_vga_subsystem|vga_engine|Add1~17\)) # (!\inst_vga_subsystem|vga_engine|hcount\(9) & ((\inst_vga_subsystem|vga_engine|Add1~17\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add1~19\ = CARRY((!\inst_vga_subsystem|vga_engine|Add1~17\) # (!\inst_vga_subsystem|vga_engine|hcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(9),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~17\,
	combout => \inst_vga_subsystem|vga_engine|Add1~18_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~19\);

-- Location: LCCOMB_X23_Y8_N30
\inst_vga_subsystem|vga_engine|hcount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|hcount~1_combout\ = (!\inst_vga_subsystem|vga_engine|Equal0~3_combout\ & \inst_vga_subsystem|vga_engine|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	datad => \inst_vga_subsystem|vga_engine|Add1~18_combout\,
	combout => \inst_vga_subsystem|vga_engine|hcount~1_combout\);

-- Location: FF_X23_Y8_N31
\inst_vga_subsystem|vga_engine|hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|hcount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(9));

-- Location: LCCOMB_X24_Y8_N20
\inst_vga_subsystem|vga_engine|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~20_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(10) & (\inst_vga_subsystem|vga_engine|Add1~19\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|hcount\(10) & (!\inst_vga_subsystem|vga_engine|Add1~19\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add1~21\ = CARRY((\inst_vga_subsystem|vga_engine|hcount\(10) & !\inst_vga_subsystem|vga_engine|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(10),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add1~19\,
	combout => \inst_vga_subsystem|vga_engine|Add1~20_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add1~21\);

-- Location: FF_X24_Y8_N21
\inst_vga_subsystem|vga_engine|hcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hcount\(10));

-- Location: LCCOMB_X24_Y8_N22
\inst_vga_subsystem|vga_engine|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add1~22_combout\ = \inst_vga_subsystem|vga_engine|Add1~21\ $ (\inst_vga_subsystem|vga_engine|hcount\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|hcount\(11),
	cin => \inst_vga_subsystem|vga_engine|Add1~21\,
	combout => \inst_vga_subsystem|vga_engine|Add1~22_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst_vga_subsystem|vga_engine|LessThan5~0_RTM07\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|LessThan5~0_RTM07_combout\ = (\inst_vga_subsystem|vga_engine|Add1~22_combout\) # (\inst_vga_subsystem|vga_engine|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Add1~22_combout\,
	datad => \inst_vga_subsystem|vga_engine|Add1~20_combout\,
	combout => \inst_vga_subsystem|vga_engine|LessThan5~0_RTM07_combout\);

-- Location: LCCOMB_X23_Y8_N18
\inst_vga_subsystem|vga_engine|Equal0~0_RTM03\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal0~0_RTM03_combout\ = (\inst_vga_subsystem|vga_engine|Add1~12_combout\) # (\inst_vga_subsystem|vga_engine|hcount~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|Add1~12_combout\,
	datad => \inst_vga_subsystem|vga_engine|hcount~2_combout\,
	combout => \inst_vga_subsystem|vga_engine|Equal0~0_RTM03_combout\);

-- Location: LCCOMB_X23_Y8_N10
\inst_vga_subsystem|vga_engine|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal0~1_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan5~0_RTM07_combout\ & (\inst_vga_subsystem|vga_engine|hcount~1_combout\ & (!\inst_vga_subsystem|vga_engine|hcount\(0) & 
-- !\inst_vga_subsystem|vga_engine|Equal0~0_RTM03_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan5~0_RTM07_combout\,
	datab => \inst_vga_subsystem|vga_engine|hcount~1_combout\,
	datac => \inst_vga_subsystem|vga_engine|hcount\(0),
	datad => \inst_vga_subsystem|vga_engine|Equal0~0_RTM03_combout\,
	combout => \inst_vga_subsystem|vga_engine|Equal0~1_combout\);

-- Location: FF_X23_Y8_N11
\inst_vga_subsystem|vga_engine|Equal0~1_NEW_REG8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|Equal0~1_OTERM9\);

-- Location: LCCOMB_X24_Y8_N24
\inst_vga_subsystem|vga_engine|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal2~0_combout\ = (!\inst_vga_subsystem|vga_engine|hcount\(8) & (\inst_vga_subsystem|vga_engine|hcount\(7) & (!\inst_vga_subsystem|vga_engine|hcount\(2) & !\inst_vga_subsystem|vga_engine|hcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(8),
	datab => \inst_vga_subsystem|vga_engine|hcount\(7),
	datac => \inst_vga_subsystem|vga_engine|hcount\(2),
	datad => \inst_vga_subsystem|vga_engine|hcount\(1),
	combout => \inst_vga_subsystem|vga_engine|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst_vga_subsystem|vga_engine|load_req~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|load_req~0_combout\ = (\inst_vga_subsystem|vga_engine|load_req~q\) # ((\inst_vga_subsystem|vga_engine|Equal2~1_combout\ & (\inst_vga_subsystem|vga_engine|Equal0~1_OTERM9\ & \inst_vga_subsystem|vga_engine|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Equal2~1_combout\,
	datab => \inst_vga_subsystem|vga_engine|Equal0~1_OTERM9\,
	datac => \inst_vga_subsystem|vga_engine|load_req~q\,
	datad => \inst_vga_subsystem|vga_engine|Equal2~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|load_req~0_combout\);

-- Location: FF_X17_Y8_N11
\inst_vga_subsystem|sdram_ctrl|rowLoadAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|rowLoadAck~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|rowLoadAck~q\);

-- Location: FF_X24_Y8_N31
\inst_vga_subsystem|vga_engine|load_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|load_req~0_combout\,
	clrn => \inst_vga_subsystem|sdram_ctrl|ALT_INV_rowLoadAck~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|load_req~q\);

-- Location: LCCOMB_X18_Y9_N26
\inst_vga_subsystem|sdram_ctrl|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & \inst_vga_subsystem|vga_engine|load_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datad => \inst_vga_subsystem|vga_engine|load_req~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst_vga_subsystem|sdram_ctrl|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector20~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((!\inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector20~1_combout\);

-- Location: FF_X17_Y8_N21
\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\);

-- Location: LCCOMB_X17_Y8_N10
\inst_vga_subsystem|sdram_ctrl|rowLoadAck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|rowLoadAck~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (\inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\ & \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal14~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|rowLoadAck~0_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\);

-- Location: LCCOMB_X18_Y8_N20
\inst_vga_subsystem|sdram_ctrl|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal13~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ & \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal13~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst_vga_subsystem|sdram_ctrl|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal13~1_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\ & (!\inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal13~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal13~1_combout\);

-- Location: FF_X18_Y8_N29
\inst_vga_subsystem|sdram_ctrl|Equal13~1_NEW_REG82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal13~1_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\);

-- Location: LCCOMB_X16_Y9_N30
\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\) # ((\inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~0_combout\);

-- Location: FF_X16_Y9_N31
\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\);

-- Location: LCCOMB_X18_Y14_N6
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\);

-- Location: LCCOMB_X18_Y14_N8
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~4_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\);

-- Location: FF_X18_Y14_N9
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\);

-- Location: LCCOMB_X18_Y14_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ $ 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\);

-- Location: FF_X18_Y14_N1
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\);

-- Location: LCCOMB_X18_Y14_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\);

-- Location: FF_X18_Y14_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\);

-- Location: FF_X18_Y14_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(7));

-- Location: FF_X19_Y14_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8));

-- Location: FF_X19_Y14_N1
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8));

-- Location: FF_X18_Y14_N3
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(8),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(8));

-- Location: LCCOMB_X18_Y14_N14
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[8]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(8),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[8]~feeder_combout\);

-- Location: FF_X18_Y14_N15
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[8]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8));

-- Location: LCCOMB_X18_Y14_N4
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~3_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\);

-- Location: FF_X18_Y14_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\);

-- Location: FF_X18_Y14_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(8));

-- Location: FF_X19_Y14_N15
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7));

-- Location: FF_X19_Y14_N7
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7));

-- Location: LCCOMB_X18_Y14_N24
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[7]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[7]~feeder_combout\);

-- Location: FF_X18_Y14_N25
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[7]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(7));

-- Location: LCCOMB_X18_Y14_N20
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[7]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[7]~feeder_combout\);

-- Location: FF_X18_Y14_N21
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[7]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7));

-- Location: LCCOMB_X18_Y14_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(8))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(7) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(7),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(8),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\);

-- Location: FF_X19_Y13_N3
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[5]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(5));

-- Location: LCCOMB_X19_Y14_N4
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\);

-- Location: FF_X19_Y14_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[5]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5));

-- Location: FF_X19_Y13_N25
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5));

-- Location: LCCOMB_X18_Y13_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[5]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(5),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[5]~feeder_combout\);

-- Location: FF_X18_Y13_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[5]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(5));

-- Location: FF_X18_Y13_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(5),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5));

-- Location: FF_X19_Y14_N17
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6));

-- Location: FF_X19_Y13_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6));

-- Location: LCCOMB_X18_Y13_N22
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[6]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|delayed_wrptr_g\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[6]~feeder_combout\);

-- Location: FF_X18_Y13_N23
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a[6]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(6));

-- Location: FF_X18_Y13_N7
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe15a\(6),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6));

-- Location: FF_X19_Y13_N19
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(6));

-- Location: LCCOMB_X18_Y13_N6
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(6))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(5) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(5),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y14_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(8),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y13_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(5),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rs_dgwp|dffpipe14|dffe16a\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~0_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~1_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\ = (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\ & 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\)) # 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~3_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~4_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~2_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: FF_X18_Y13_N17
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_mux|result_node[0]~5_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\);

-- Location: LCCOMB_X18_Y9_N2
\inst_vga_subsystem|sdram_ctrl|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector19~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & (!\inst_vga_subsystem|vga_engine|load_req~q\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\ 
-- & !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|vga_engine|load_req~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector19~0_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst_vga_subsystem|sdram_ctrl|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector19~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector19~0_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9) & (\inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9),
	datab => \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector19~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector19~1_combout\);

-- Location: LCCOMB_X17_Y9_N14
\inst_vga_subsystem|sdram_ctrl|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector19~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|rowLoadAck~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector19~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|rowLoadAck~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector19~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector19~2_combout\);

-- Location: FF_X17_Y9_N15
\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\);

-- Location: FF_X20_Y8_N3
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_NEW_REG110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_RTM0113_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\);

-- Location: LCCOMB_X16_Y8_N4
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\ = CARRY(!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~12_OTERM111\,
	datad => VCC,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\);

-- Location: LCCOMB_X16_Y8_N6
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\)) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ & 
-- ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[0]~13\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\);

-- Location: FF_X16_Y8_N7
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_NEW_REG108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\);

-- Location: LCCOMB_X16_Y8_N8
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\ = CARRY((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~15\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\);

-- Location: FF_X16_Y8_N9
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_NEW_REG106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\);

-- Location: LCCOMB_X16_Y8_N10
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\)) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\ & 
-- ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~17\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\);

-- Location: FF_X16_Y8_N11
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_NEW_REG104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\);

-- Location: LCCOMB_X16_Y8_N12
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\ & 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\ = CARRY((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~19\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\);

-- Location: FF_X16_Y8_N13
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_NEW_REG102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\);

-- Location: LCCOMB_X16_Y8_N14
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\)) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\ & 
-- ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~21\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\);

-- Location: FF_X16_Y8_N15
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_NEW_REG100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\);

-- Location: LCCOMB_X16_Y8_N16
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ & 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\ = CARRY((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~23\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\);

-- Location: FF_X16_Y8_N17
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_NEW_REG98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\);

-- Location: LCCOMB_X16_Y8_N18
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\)) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\ & 
-- ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~25\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\);

-- Location: FF_X16_Y8_N19
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_NEW_REG96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\);

-- Location: LCCOMB_X16_Y8_N20
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ & 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\ = CARRY((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~27\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\);

-- Location: FF_X16_Y8_N21
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_NEW_REG94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\);

-- Location: LCCOMB_X16_Y8_N22
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\)) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ & 
-- ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~29\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\);

-- Location: FF_X16_Y8_N23
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_NEW_REG92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\);

-- Location: LCCOMB_X16_Y8_N24
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\ 
-- & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~33\ = CARRY((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\ & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\,
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~31\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~33\);

-- Location: FF_X16_Y8_N25
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_NEW_REG90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\);

-- Location: LCCOMB_X16_Y8_N26
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_combout\ = \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\ $ (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\,
	cin => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~33\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_combout\);

-- Location: FF_X16_Y8_N27
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_NEW_REG88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\);

-- Location: LCCOMB_X19_Y8_N24
\inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\);

-- Location: FF_X17_Y8_N23
\inst_vga_subsystem|sdram_ctrl|Equal5~1_NEW_REG30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\);

-- Location: FF_X17_Y8_N15
\inst_vga_subsystem|sdram_ctrl|Equal5~2_NEW_REG16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal5~2_OTERM17\);

-- Location: FF_X17_Y8_N9
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3));

-- Location: FF_X17_Y8_N31
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2));

-- Location: FF_X17_Y8_N29
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1));

-- Location: LCCOMB_X17_Y8_N12
\inst_vga_subsystem|sdram_ctrl|SdrRoutine~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine~10_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3) & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2) & \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutine~10_combout\);

-- Location: LCCOMB_X17_Y8_N14
\inst_vga_subsystem|sdram_ctrl|SdrRoutine~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\ & (!\inst_vga_subsystem|sdram_ctrl|Equal5~0_OTERM47\ & (!\inst_vga_subsystem|sdram_ctrl|Equal5~2_OTERM17\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~0_OTERM47\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal5~2_OTERM17\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine~10_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\);

-- Location: LCCOMB_X18_Y9_N22
\inst_vga_subsystem|sdram_ctrl|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & (!\inst_vga_subsystem|vga_engine|load_req~q\ & 
-- ((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\) # (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|vga_engine|load_req~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\inst_vga_subsystem|sdram_ctrl|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector21~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\ & \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine~11_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector21~1_combout\);

-- Location: FF_X19_Y8_N19
\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\);

-- Location: LCCOMB_X18_Y8_N30
\inst_vga_subsystem|sdram_ctrl|Equal5~3_RTM061\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal5~3_RTM061_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\) # ((\inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\) # 
-- (\inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~2_RTM019_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal5~1_RTM033_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal5~3_RTM061_combout\);

-- Location: FF_X18_Y8_N31
\inst_vga_subsystem|sdram_ctrl|Equal5~3_NEW_REG58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal5~3_RTM061_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\);

-- Location: LCCOMB_X14_Y8_N28
\inst_vga_subsystem|sdram_ctrl|directAck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|directAck~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	combout => \inst_vga_subsystem|sdram_ctrl|directAck~0_combout\);

-- Location: FF_X18_Y13_N1
\inst_vga_subsystem|sdram_ctrl|directAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|directAck~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|directAck~q\);

-- Location: LCCOMB_X18_Y13_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0) & (\inst_vga_subsystem|sdram_ctrl|directAck~q\ & 
-- ((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\) # (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_lsb_aeb~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|directAck~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdemp_eq_comp_msb_aeb~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\);

-- Location: FF_X17_Y13_N15
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\);

-- Location: LCCOMB_X17_Y13_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ $ (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a3~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\);

-- Location: FF_X17_Y13_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~7_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(0));

-- Location: FF_X17_Y13_N21
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(2));

-- Location: LCCOMB_X18_Y13_N20
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\ $ (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a6~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a4~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\);

-- Location: FF_X18_Y13_N21
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~6_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(1));

-- Location: LCCOMB_X17_Y13_N24
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(0) $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(2) $ (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(0),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(2),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|sub_parity7a\(1),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\);

-- Location: FF_X17_Y13_N25
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~5_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\);

-- Location: LCCOMB_X17_Y13_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\);

-- Location: FF_X17_Y13_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~2_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\);

-- Location: LCCOMB_X17_Y13_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\ & 
-- !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a1~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|parity6~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\);

-- Location: LCCOMB_X17_Y13_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|_~1_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\);

-- Location: FF_X17_Y13_N1
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~0_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\);

-- Location: LCCOMB_X17_Y13_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a2~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\);

-- Location: FF_X17_Y13_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g[2]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|dffe13a\(0),
	ena => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_rdreq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(2));

-- Location: LCCOMB_X20_Y13_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[2]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(2),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[2]~feeder_combout\);

-- Location: FF_X20_Y13_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[2]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(2));

-- Location: FF_X20_Y13_N25
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(2),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2));

-- Location: LCCOMB_X20_Y13_N4
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[4]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(4),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[4]~feeder_combout\);

-- Location: FF_X20_Y13_N5
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[4]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(4));

-- Location: FF_X20_Y13_N19
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(4),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4));

-- Location: LCCOMB_X20_Y13_N24
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a4~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a2~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X20_Y13_N8
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[3]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(3),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[3]~feeder_combout\);

-- Location: FF_X20_Y13_N9
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[3]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(3));

-- Location: FF_X20_Y13_N3
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(3),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3));

-- Location: FF_X20_Y13_N15
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(0),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(0));

-- Location: FF_X20_Y13_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(0),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0));

-- Location: LCCOMB_X20_Y13_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a0~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a3~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X20_Y13_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(0),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(3),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(0),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(3),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y13_N6
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\))) # 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~2_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~3_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~4_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\);

-- Location: LCCOMB_X20_Y13_N18
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(2),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(4),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(4),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(2),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y13_N30
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[1]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(1),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[1]~feeder_combout\);

-- Location: FF_X20_Y13_N31
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[1]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(1));

-- Location: FF_X20_Y13_N11
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(1),
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(1));

-- Location: LCCOMB_X20_Y13_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(1))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~0_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(1),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(1),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X20_Y13_N16
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\ $ (((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~5_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a1~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~1_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\);

-- Location: FF_X20_Y13_N17
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux|result_node[0]~6_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\);

-- Location: IOIBUF_X51_Y34_N15
\pixel_stb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_stb,
	o => \pixel_stb~input_o\);

-- Location: LCCOMB_X23_Y13_N20
\inst_vga_subsystem|sync_st_pix[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sync_st_pix[0]~feeder_combout\ = \pixel_stb~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pixel_stb~input_o\,
	combout => \inst_vga_subsystem|sync_st_pix[0]~feeder_combout\);

-- Location: FF_X23_Y13_N21
\inst_vga_subsystem|sync_st_pix[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sync_st_pix[0]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sync_st_pix\(0));

-- Location: LCCOMB_X23_Y13_N30
\inst_vga_subsystem|sync_st_pix[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sync_st_pix[1]~feeder_combout\ = \inst_vga_subsystem|sync_st_pix\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|sync_st_pix\(0),
	combout => \inst_vga_subsystem|sync_st_pix[1]~feeder_combout\);

-- Location: FF_X23_Y13_N31
\inst_vga_subsystem|sync_st_pix[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sync_st_pix[1]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sync_st_pix\(1));

-- Location: FF_X23_Y13_N1
\inst_vga_subsystem|sync_st_pix[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sync_st_pix\(1),
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sync_st_pix\(2));

-- Location: LCCOMB_X19_Y13_N20
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[5]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(5),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[5]~feeder_combout\);

-- Location: FF_X19_Y13_N21
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[5]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(5));

-- Location: LCCOMB_X19_Y13_N26
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[5]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(5),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[5]~feeder_combout\);

-- Location: FF_X19_Y13_N27
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[5]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5));

-- Location: LCCOMB_X19_Y13_N12
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[6]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[6]~feeder_combout\);

-- Location: FF_X19_Y13_N13
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[6]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(6));

-- Location: LCCOMB_X19_Y13_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[6]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[6]~feeder_combout\);

-- Location: FF_X19_Y13_N1
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[6]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6));

-- Location: LCCOMB_X19_Y13_N14
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6) $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(5),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(6),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[7]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[7]~feeder_combout\);

-- Location: FF_X19_Y14_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[7]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(7));

-- Location: LCCOMB_X19_Y14_N10
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[7]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[7]~feeder_combout\);

-- Location: FF_X19_Y14_N11
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[7]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7));

-- Location: LCCOMB_X19_Y14_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[8]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g\(8),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[8]~feeder_combout\);

-- Location: FF_X19_Y14_N3
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a[8]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(8));

-- Location: LCCOMB_X19_Y14_N20
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[8]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe19a\(8),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[8]~feeder_combout\);

-- Location: FF_X19_Y14_N21
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low",
	x_on_violation => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a[8]~feeder_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8));

-- Location: LCCOMB_X19_Y14_N22
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8) $ (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8))))) 
-- # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8) $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\ & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6) & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\ $ 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a6~q\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a5~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(5),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(6),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7) & 
-- (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8))))) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7) & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\ & (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(7),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a8~q\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g1p|counter8a7~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ws_dgrp|dffpipe18|dffe20a\(8),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y13_N20
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\ & 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~1_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~0_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\);

-- Location: LCCOMB_X20_Y13_N28
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\) # 
-- ((\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\ & (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ & 
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~4_combout\,
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~3_combout\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~2_combout\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\);

-- Location: FF_X20_Y13_N29
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux|result_node[0]~5_combout\,
	clrn => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\);

-- Location: LCCOMB_X20_Y13_N14
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0) & 
-- ((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst_vga_subsystem|fifo_wr_data[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[16]~0_combout\ = (!\inst_vga_subsystem|sync_st_pix\(2) & (\inst_vga_subsystem|sync_st_pix\(1) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sync_st_pix\(2),
	datac => \inst_vga_subsystem|sync_st_pix\(1),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\,
	combout => \inst_vga_subsystem|fifo_wr_data[16]~0_combout\);

-- Location: FF_X23_Y13_N17
\inst_vga_subsystem|fifo_wr_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[16]~0_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_req~q\);

-- Location: LCCOMB_X20_Y13_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\ = (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0) & (\inst_vga_subsystem|fifo_wr_req~q\ & 
-- ((!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\) # (!\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wraclr|dffe13a\(0),
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_lsb_mux_reg~q\,
	datac => \inst_vga_subsystem|fifo_wr_req~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull_eq_comp_msb_mux_reg~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\);

-- Location: IOIBUF_X1_Y34_N8
\data_bus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(0),
	o => \data_bus[0]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\addr_bus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_bus(2),
	o => \addr_bus[2]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\cmd_stb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmd_stb,
	o => \cmd_stb~input_o\);

-- Location: FF_X24_Y14_N25
\inst_vga_subsystem|sync_st_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \cmd_stb~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sync_st_cmd\(0));

-- Location: LCCOMB_X24_Y14_N26
\inst_vga_subsystem|sync_st_cmd[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sync_st_cmd[1]~feeder_combout\ = \inst_vga_subsystem|sync_st_cmd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|sync_st_cmd\(0),
	combout => \inst_vga_subsystem|sync_st_cmd[1]~feeder_combout\);

-- Location: FF_X24_Y14_N27
\inst_vga_subsystem|sync_st_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sync_st_cmd[1]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sync_st_cmd\(1));

-- Location: FF_X24_Y14_N13
\inst_vga_subsystem|sync_st_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sync_st_cmd\(1),
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sync_st_cmd\(2));

-- Location: IOIBUF_X45_Y34_N8
\addr_bus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_bus(1),
	o => \addr_bus[1]~input_o\);

-- Location: LCCOMB_X24_Y14_N14
\inst_vga_subsystem|Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~4_combout\ = (!\addr_bus[2]~input_o\ & (!\inst_vga_subsystem|sync_st_cmd\(2) & (\inst_vga_subsystem|sync_st_cmd\(1) & \addr_bus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_bus[2]~input_o\,
	datab => \inst_vga_subsystem|sync_st_cmd\(2),
	datac => \inst_vga_subsystem|sync_st_cmd\(1),
	datad => \addr_bus[1]~input_o\,
	combout => \inst_vga_subsystem|Mux38~4_combout\);

-- Location: IOIBUF_X31_Y34_N1
\addr_bus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_bus(0),
	o => \addr_bus[0]~input_o\);

-- Location: LCCOMB_X24_Y14_N8
\inst_vga_subsystem|Mux38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~7_combout\ = (\inst_vga_subsystem|Mux38~4_combout\ & \addr_bus[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|Mux38~4_combout\,
	datad => \addr_bus[0]~input_o\,
	combout => \inst_vga_subsystem|Mux38~7_combout\);

-- Location: FF_X21_Y14_N27
\inst_vga_subsystem|reg_color[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[0]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(0));

-- Location: LCCOMB_X23_Y13_N0
\inst_vga_subsystem|fifo_wr_data[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[16]~1_combout\ = (\inst_vga_subsystem|sync_st_pix\(1) & (!\rstn_i~0_combout\ & (!\inst_vga_subsystem|sync_st_pix\(2) & \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sync_st_pix\(1),
	datab => \rstn_i~0_combout\,
	datac => \inst_vga_subsystem|sync_st_pix\(2),
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrfull~0_combout\,
	combout => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\);

-- Location: FF_X21_Y14_N13
\inst_vga_subsystem|fifo_wr_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_color\(0),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(0));

-- Location: LCCOMB_X19_Y14_N6
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_a[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_a\(7) = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8) $ (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(8),
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|wrptr_g\(7),
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_a\(7));

-- Location: LCCOMB_X18_Y14_N2
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\ = !\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a0~_wirecell_combout\);

-- Location: LCCOMB_X18_Y14_N18
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_b[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_b\(7) = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\ $ 
-- (\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a7~q\,
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdptr_g1p|counter5a8~q\,
	combout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ram_address_b\(7));

-- Location: IOIBUF_X1_Y34_N1
\data_bus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(1),
	o => \data_bus[1]~input_o\);

-- Location: LCCOMB_X21_Y14_N16
\inst_vga_subsystem|reg_color[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[1]~feeder_combout\ = \data_bus[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[1]~input_o\,
	combout => \inst_vga_subsystem|reg_color[1]~feeder_combout\);

-- Location: FF_X21_Y14_N17
\inst_vga_subsystem|reg_color[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[1]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(1));

-- Location: LCCOMB_X21_Y14_N28
\inst_vga_subsystem|fifo_wr_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[1]~feeder_combout\ = \inst_vga_subsystem|reg_color\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(1),
	combout => \inst_vga_subsystem|fifo_wr_data[1]~feeder_combout\);

-- Location: FF_X21_Y14_N29
\inst_vga_subsystem|fifo_wr_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[1]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(1));

-- Location: IOIBUF_X7_Y34_N15
\data_bus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(2),
	o => \data_bus[2]~input_o\);

-- Location: LCCOMB_X21_Y14_N22
\inst_vga_subsystem|reg_color[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[2]~feeder_combout\ = \data_bus[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[2]~input_o\,
	combout => \inst_vga_subsystem|reg_color[2]~feeder_combout\);

-- Location: FF_X21_Y14_N23
\inst_vga_subsystem|reg_color[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[2]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(2));

-- Location: FF_X21_Y14_N31
\inst_vga_subsystem|fifo_wr_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_color\(2),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(2));

-- Location: IOIBUF_X7_Y34_N1
\data_bus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(3),
	o => \data_bus[3]~input_o\);

-- Location: FF_X21_Y14_N3
\inst_vga_subsystem|reg_color[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(3));

-- Location: LCCOMB_X21_Y14_N8
\inst_vga_subsystem|fifo_wr_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[3]~feeder_combout\ = \inst_vga_subsystem|reg_color\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(3),
	combout => \inst_vga_subsystem|fifo_wr_data[3]~feeder_combout\);

-- Location: FF_X21_Y14_N9
\inst_vga_subsystem|fifo_wr_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[3]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(3));

-- Location: IOIBUF_X11_Y34_N1
\data_bus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(4),
	o => \data_bus[4]~input_o\);

-- Location: FF_X21_Y14_N11
\inst_vga_subsystem|reg_color[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[4]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(4));

-- Location: LCCOMB_X21_Y14_N14
\inst_vga_subsystem|fifo_wr_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[4]~feeder_combout\ = \inst_vga_subsystem|reg_color\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(4),
	combout => \inst_vga_subsystem|fifo_wr_data[4]~feeder_combout\);

-- Location: FF_X21_Y14_N15
\inst_vga_subsystem|fifo_wr_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[4]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(4));

-- Location: IOIBUF_X5_Y34_N15
\data_bus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(5),
	o => \data_bus[5]~input_o\);

-- Location: FF_X21_Y14_N5
\inst_vga_subsystem|reg_color[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[5]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(5));

-- Location: FF_X21_Y14_N19
\inst_vga_subsystem|fifo_wr_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_color\(5),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(5));

-- Location: IOIBUF_X16_Y34_N1
\data_bus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(6),
	o => \data_bus[6]~input_o\);

-- Location: FF_X21_Y14_N25
\inst_vga_subsystem|reg_color[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[6]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(6));

-- Location: LCCOMB_X21_Y14_N0
\inst_vga_subsystem|fifo_wr_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[6]~feeder_combout\ = \inst_vga_subsystem|reg_color\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(6),
	combout => \inst_vga_subsystem|fifo_wr_data[6]~feeder_combout\);

-- Location: FF_X21_Y14_N1
\inst_vga_subsystem|fifo_wr_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[6]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(6));

-- Location: IOIBUF_X9_Y34_N8
\data_bus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(7),
	o => \data_bus[7]~input_o\);

-- Location: FF_X21_Y14_N21
\inst_vga_subsystem|reg_color[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[7]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(7));

-- Location: LCCOMB_X21_Y14_N6
\inst_vga_subsystem|fifo_wr_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[7]~feeder_combout\ = \inst_vga_subsystem|reg_color\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(7),
	combout => \inst_vga_subsystem|fifo_wr_data[7]~feeder_combout\);

-- Location: FF_X21_Y14_N7
\inst_vga_subsystem|fifo_wr_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[7]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(7));

-- Location: IOIBUF_X18_Y34_N22
\data_bus[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(8),
	o => \data_bus[8]~input_o\);

-- Location: LCCOMB_X23_Y14_N2
\inst_vga_subsystem|reg_color[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[8]~feeder_combout\ = \data_bus[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[8]~input_o\,
	combout => \inst_vga_subsystem|reg_color[8]~feeder_combout\);

-- Location: FF_X23_Y14_N3
\inst_vga_subsystem|reg_color[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[8]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(8));

-- Location: LCCOMB_X23_Y14_N30
\inst_vga_subsystem|fifo_wr_data[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[8]~feeder_combout\ = \inst_vga_subsystem|reg_color\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(8),
	combout => \inst_vga_subsystem|fifo_wr_data[8]~feeder_combout\);

-- Location: FF_X23_Y14_N31
\inst_vga_subsystem|fifo_wr_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[8]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(8));

-- Location: IOIBUF_X14_Y34_N15
\data_bus[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(9),
	o => \data_bus[9]~input_o\);

-- Location: LCCOMB_X23_Y14_N24
\inst_vga_subsystem|reg_color[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[9]~feeder_combout\ = \data_bus[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[9]~input_o\,
	combout => \inst_vga_subsystem|reg_color[9]~feeder_combout\);

-- Location: FF_X23_Y14_N25
\inst_vga_subsystem|reg_color[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[9]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(9));

-- Location: LCCOMB_X23_Y14_N26
\inst_vga_subsystem|fifo_wr_data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[9]~feeder_combout\ = \inst_vga_subsystem|reg_color\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(9),
	combout => \inst_vga_subsystem|fifo_wr_data[9]~feeder_combout\);

-- Location: FF_X23_Y14_N27
\inst_vga_subsystem|fifo_wr_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[9]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(9));

-- Location: IOIBUF_X23_Y34_N22
\data_bus[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(10),
	o => \data_bus[10]~input_o\);

-- Location: LCCOMB_X23_Y14_N10
\inst_vga_subsystem|reg_color[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[10]~feeder_combout\ = \data_bus[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[10]~input_o\,
	combout => \inst_vga_subsystem|reg_color[10]~feeder_combout\);

-- Location: FF_X23_Y14_N11
\inst_vga_subsystem|reg_color[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[10]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(10));

-- Location: LCCOMB_X23_Y14_N4
\inst_vga_subsystem|fifo_wr_data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[10]~feeder_combout\ = \inst_vga_subsystem|reg_color\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(10),
	combout => \inst_vga_subsystem|fifo_wr_data[10]~feeder_combout\);

-- Location: FF_X23_Y14_N5
\inst_vga_subsystem|fifo_wr_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[10]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(10));

-- Location: IOIBUF_X20_Y34_N15
\data_bus[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(11),
	o => \data_bus[11]~input_o\);

-- Location: LCCOMB_X23_Y14_N6
\inst_vga_subsystem|reg_color[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[11]~feeder_combout\ = \data_bus[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[11]~input_o\,
	combout => \inst_vga_subsystem|reg_color[11]~feeder_combout\);

-- Location: FF_X23_Y14_N7
\inst_vga_subsystem|reg_color[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[11]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(11));

-- Location: LCCOMB_X23_Y14_N0
\inst_vga_subsystem|fifo_wr_data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[11]~feeder_combout\ = \inst_vga_subsystem|reg_color\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(11),
	combout => \inst_vga_subsystem|fifo_wr_data[11]~feeder_combout\);

-- Location: FF_X23_Y14_N1
\inst_vga_subsystem|fifo_wr_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[11]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(11));

-- Location: LCCOMB_X24_Y14_N4
\inst_vga_subsystem|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~2_combout\ = (!\inst_vga_subsystem|sync_st_cmd\(2) & (\addr_bus[0]~input_o\ & (\inst_vga_subsystem|sync_st_cmd\(1) & !\addr_bus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sync_st_cmd\(2),
	datab => \addr_bus[0]~input_o\,
	datac => \inst_vga_subsystem|sync_st_cmd\(1),
	datad => \addr_bus[1]~input_o\,
	combout => \inst_vga_subsystem|Mux38~2_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst_vga_subsystem|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~3_combout\ = (\inst_vga_subsystem|Mux38~2_combout\ & !\addr_bus[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|Mux38~2_combout\,
	datad => \addr_bus[2]~input_o\,
	combout => \inst_vga_subsystem|Mux38~3_combout\);

-- Location: FF_X21_Y13_N17
\inst_vga_subsystem|reg_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[0]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(0));

-- Location: LCCOMB_X21_Y13_N20
\inst_vga_subsystem|fifo_wr_data[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[16]~feeder_combout\ = \inst_vga_subsystem|reg_x\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_x\(0),
	combout => \inst_vga_subsystem|fifo_wr_data[16]~feeder_combout\);

-- Location: FF_X21_Y13_N21
\inst_vga_subsystem|fifo_wr_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[16]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(16));

-- Location: LCCOMB_X21_Y13_N2
\inst_vga_subsystem|reg_x[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_x[1]~feeder_combout\ = \data_bus[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[1]~input_o\,
	combout => \inst_vga_subsystem|reg_x[1]~feeder_combout\);

-- Location: FF_X21_Y13_N3
\inst_vga_subsystem|reg_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_x[1]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(1));

-- Location: LCCOMB_X21_Y13_N14
\inst_vga_subsystem|fifo_wr_data[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[17]~feeder_combout\ = \inst_vga_subsystem|reg_x\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_x\(1),
	combout => \inst_vga_subsystem|fifo_wr_data[17]~feeder_combout\);

-- Location: FF_X21_Y13_N15
\inst_vga_subsystem|fifo_wr_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[17]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(17));

-- Location: FF_X21_Y13_N13
\inst_vga_subsystem|reg_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[2]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(2));

-- Location: LCCOMB_X21_Y13_N24
\inst_vga_subsystem|fifo_wr_data[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[18]~feeder_combout\ = \inst_vga_subsystem|reg_x\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_x\(2),
	combout => \inst_vga_subsystem|fifo_wr_data[18]~feeder_combout\);

-- Location: FF_X21_Y13_N25
\inst_vga_subsystem|fifo_wr_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[18]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(18));

-- Location: FF_X21_Y13_N19
\inst_vga_subsystem|reg_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(3));

-- Location: LCCOMB_X21_Y13_N6
\inst_vga_subsystem|fifo_wr_data[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[19]~feeder_combout\ = \inst_vga_subsystem|reg_x\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_x\(3),
	combout => \inst_vga_subsystem|fifo_wr_data[19]~feeder_combout\);

-- Location: FF_X21_Y13_N7
\inst_vga_subsystem|fifo_wr_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[19]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(19));

-- Location: FF_X21_Y13_N29
\inst_vga_subsystem|reg_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[4]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(4));

-- Location: LCCOMB_X21_Y13_N10
\inst_vga_subsystem|fifo_wr_data[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[20]~feeder_combout\ = \inst_vga_subsystem|reg_x\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_x\(4),
	combout => \inst_vga_subsystem|fifo_wr_data[20]~feeder_combout\);

-- Location: FF_X21_Y13_N11
\inst_vga_subsystem|fifo_wr_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[20]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(20));

-- Location: LCCOMB_X21_Y13_N0
\inst_vga_subsystem|reg_x[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_x[5]~feeder_combout\ = \data_bus[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[5]~input_o\,
	combout => \inst_vga_subsystem|reg_x[5]~feeder_combout\);

-- Location: FF_X21_Y13_N1
\inst_vga_subsystem|reg_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_x[5]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(5));

-- Location: LCCOMB_X21_Y13_N30
\inst_vga_subsystem|fifo_wr_data[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[21]~feeder_combout\ = \inst_vga_subsystem|reg_x\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_x\(5),
	combout => \inst_vga_subsystem|fifo_wr_data[21]~feeder_combout\);

-- Location: FF_X21_Y13_N31
\inst_vga_subsystem|fifo_wr_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[21]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(21));

-- Location: FF_X21_Y13_N27
\inst_vga_subsystem|reg_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[8]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(8));

-- Location: LCCOMB_X21_Y13_N4
\inst_vga_subsystem|reg_x[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_x[6]~feeder_combout\ = \data_bus[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[6]~input_o\,
	combout => \inst_vga_subsystem|reg_x[6]~feeder_combout\);

-- Location: FF_X21_Y13_N5
\inst_vga_subsystem|reg_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_x[6]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(6));

-- Location: LCCOMB_X21_Y13_N22
\inst_vga_subsystem|reg_x[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_x[7]~feeder_combout\ = \data_bus[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[7]~input_o\,
	combout => \inst_vga_subsystem|reg_x[7]~feeder_combout\);

-- Location: FF_X21_Y13_N23
\inst_vga_subsystem|reg_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_x[7]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(7));

-- Location: FF_X21_Y13_N9
\inst_vga_subsystem|reg_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[9]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_x\(9));

-- Location: LCCOMB_X23_Y13_N18
\inst_vga_subsystem|addr_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|addr_temp~0_combout\ = (\inst_vga_subsystem|reg_x\(8) & (!\inst_vga_subsystem|reg_x\(6) & ((\inst_vga_subsystem|reg_x\(7)) # (\inst_vga_subsystem|reg_x\(9))))) # (!\inst_vga_subsystem|reg_x\(8) & (\inst_vga_subsystem|reg_x\(6) $ 
-- (((\inst_vga_subsystem|reg_x\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|reg_x\(8),
	datab => \inst_vga_subsystem|reg_x\(6),
	datac => \inst_vga_subsystem|reg_x\(7),
	datad => \inst_vga_subsystem|reg_x\(9),
	combout => \inst_vga_subsystem|addr_temp~0_combout\);

-- Location: FF_X23_Y13_N19
\inst_vga_subsystem|fifo_wr_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|addr_temp~0_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(22));

-- Location: LCCOMB_X23_Y13_N22
\inst_vga_subsystem|addr_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|addr_temp~1_combout\ = (\inst_vga_subsystem|reg_x\(6) & (((\inst_vga_subsystem|reg_x\(7))))) # (!\inst_vga_subsystem|reg_x\(6) & ((\inst_vga_subsystem|reg_x\(7) & (!\inst_vga_subsystem|reg_x\(8) & !\inst_vga_subsystem|reg_x\(9))) # 
-- (!\inst_vga_subsystem|reg_x\(7) & ((\inst_vga_subsystem|reg_x\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|reg_x\(8),
	datab => \inst_vga_subsystem|reg_x\(6),
	datac => \inst_vga_subsystem|reg_x\(7),
	datad => \inst_vga_subsystem|reg_x\(9),
	combout => \inst_vga_subsystem|addr_temp~1_combout\);

-- Location: FF_X23_Y13_N23
\inst_vga_subsystem|fifo_wr_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|addr_temp~1_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(23));

-- Location: LCCOMB_X23_Y13_N14
\inst_vga_subsystem|addr_temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|addr_temp~2_combout\ = (\inst_vga_subsystem|reg_x\(8) & (!\inst_vga_subsystem|reg_x\(6) & (!\inst_vga_subsystem|reg_x\(7)))) # (!\inst_vga_subsystem|reg_x\(8) & (\inst_vga_subsystem|reg_x\(9) & ((\inst_vga_subsystem|reg_x\(6)) # 
-- (\inst_vga_subsystem|reg_x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|reg_x\(8),
	datab => \inst_vga_subsystem|reg_x\(6),
	datac => \inst_vga_subsystem|reg_x\(7),
	datad => \inst_vga_subsystem|reg_x\(9),
	combout => \inst_vga_subsystem|addr_temp~2_combout\);

-- Location: FF_X23_Y13_N15
\inst_vga_subsystem|fifo_wr_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|addr_temp~2_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(24));

-- Location: LCCOMB_X24_Y13_N28
\inst_vga_subsystem|reg_y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_y[0]~feeder_combout\ = \data_bus[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[0]~input_o\,
	combout => \inst_vga_subsystem|reg_y[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst_vga_subsystem|Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~5_combout\ = (\inst_vga_subsystem|Mux38~4_combout\ & !\addr_bus[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|Mux38~4_combout\,
	datad => \addr_bus[0]~input_o\,
	combout => \inst_vga_subsystem|Mux38~5_combout\);

-- Location: FF_X24_Y13_N29
\inst_vga_subsystem|reg_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_y[0]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(0));

-- Location: LCCOMB_X23_Y13_N8
\inst_vga_subsystem|fifo_wr_data[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[25]~feeder_combout\ = \inst_vga_subsystem|reg_y\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_y\(0),
	combout => \inst_vga_subsystem|fifo_wr_data[25]~feeder_combout\);

-- Location: FF_X23_Y13_N9
\inst_vga_subsystem|fifo_wr_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[25]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(25));

-- Location: LCCOMB_X24_Y13_N30
\inst_vga_subsystem|reg_y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_y[1]~feeder_combout\ = \data_bus[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[1]~input_o\,
	combout => \inst_vga_subsystem|reg_y[1]~feeder_combout\);

-- Location: FF_X24_Y13_N31
\inst_vga_subsystem|reg_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_y[1]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(1));

-- Location: FF_X23_Y13_N7
\inst_vga_subsystem|fifo_wr_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_y\(1),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(26));

-- Location: LCCOMB_X24_Y13_N8
\inst_vga_subsystem|reg_y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_y[2]~feeder_combout\ = \data_bus[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[2]~input_o\,
	combout => \inst_vga_subsystem|reg_y[2]~feeder_combout\);

-- Location: FF_X24_Y13_N9
\inst_vga_subsystem|reg_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_y[2]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(2));

-- Location: FF_X23_Y13_N25
\inst_vga_subsystem|fifo_wr_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_y\(2),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(27));

-- Location: FF_X24_Y13_N11
\inst_vga_subsystem|reg_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(3));

-- Location: FF_X23_Y13_N29
\inst_vga_subsystem|fifo_wr_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_y\(3),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(28));

-- Location: LCCOMB_X24_Y13_N22
\inst_vga_subsystem|reg_y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_y[4]~feeder_combout\ = \data_bus[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[4]~input_o\,
	combout => \inst_vga_subsystem|reg_y[4]~feeder_combout\);

-- Location: FF_X24_Y13_N23
\inst_vga_subsystem|reg_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_y[4]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(4));

-- Location: LCCOMB_X23_Y13_N12
\inst_vga_subsystem|fifo_wr_data[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[29]~feeder_combout\ = \inst_vga_subsystem|reg_y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_y\(4),
	combout => \inst_vga_subsystem|fifo_wr_data[29]~feeder_combout\);

-- Location: FF_X23_Y13_N13
\inst_vga_subsystem|fifo_wr_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[29]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(29));

-- Location: LCCOMB_X24_Y13_N20
\inst_vga_subsystem|reg_y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_y[5]~feeder_combout\ = \data_bus[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[5]~input_o\,
	combout => \inst_vga_subsystem|reg_y[5]~feeder_combout\);

-- Location: FF_X24_Y13_N21
\inst_vga_subsystem|reg_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_y[5]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(5));

-- Location: LCCOMB_X24_Y13_N24
\inst_vga_subsystem|fifo_wr_data[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[30]~feeder_combout\ = \inst_vga_subsystem|reg_y\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_y\(5),
	combout => \inst_vga_subsystem|fifo_wr_data[30]~feeder_combout\);

-- Location: FF_X24_Y13_N25
\inst_vga_subsystem|fifo_wr_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[30]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(30));

-- Location: FF_X24_Y13_N27
\inst_vga_subsystem|reg_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[6]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(6));

-- Location: LCCOMB_X23_Y13_N2
\inst_vga_subsystem|fifo_wr_data[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[31]~feeder_combout\ = \inst_vga_subsystem|reg_y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_y\(6),
	combout => \inst_vga_subsystem|fifo_wr_data[31]~feeder_combout\);

-- Location: FF_X23_Y13_N3
\inst_vga_subsystem|fifo_wr_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[31]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(31));

-- Location: LCCOMB_X24_Y13_N4
\inst_vga_subsystem|reg_y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_y[7]~feeder_combout\ = \data_bus[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[7]~input_o\,
	combout => \inst_vga_subsystem|reg_y[7]~feeder_combout\);

-- Location: FF_X24_Y13_N5
\inst_vga_subsystem|reg_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_y[7]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(7));

-- Location: LCCOMB_X23_Y13_N26
\inst_vga_subsystem|fifo_wr_data[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[32]~feeder_combout\ = \inst_vga_subsystem|reg_y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_y\(7),
	combout => \inst_vga_subsystem|fifo_wr_data[32]~feeder_combout\);

-- Location: FF_X23_Y13_N27
\inst_vga_subsystem|fifo_wr_data[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[32]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(32));

-- Location: FF_X24_Y13_N3
\inst_vga_subsystem|reg_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[8]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_y\(8));

-- Location: LCCOMB_X23_Y13_N4
\inst_vga_subsystem|fifo_wr_data[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[33]~feeder_combout\ = \inst_vga_subsystem|reg_y\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_y\(8),
	combout => \inst_vga_subsystem|fifo_wr_data[33]~feeder_combout\);

-- Location: FF_X23_Y13_N5
\inst_vga_subsystem|fifo_wr_data[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[33]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(33));

-- Location: LCCOMB_X23_Y13_N10
\inst_vga_subsystem|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|LessThan0~0_combout\ = (\inst_vga_subsystem|reg_x\(9)) # ((\inst_vga_subsystem|reg_x\(8) & ((\inst_vga_subsystem|reg_x\(6)) # (\inst_vga_subsystem|reg_x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|reg_x\(8),
	datab => \inst_vga_subsystem|reg_x\(6),
	datac => \inst_vga_subsystem|reg_x\(7),
	datad => \inst_vga_subsystem|reg_x\(9),
	combout => \inst_vga_subsystem|LessThan0~0_combout\);

-- Location: FF_X23_Y13_N11
\inst_vga_subsystem|fifo_wr_data[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|LessThan0~0_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(34));

-- Location: LCCOMB_X24_Y14_N22
\inst_vga_subsystem|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~0_combout\ = (\addr_bus[2]~input_o\ & (!\addr_bus[1]~input_o\ & (\inst_vga_subsystem|sync_st_cmd\(1) & !\inst_vga_subsystem|sync_st_cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_bus[2]~input_o\,
	datab => \addr_bus[1]~input_o\,
	datac => \inst_vga_subsystem|sync_st_cmd\(1),
	datad => \inst_vga_subsystem|sync_st_cmd\(2),
	combout => \inst_vga_subsystem|Mux38~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst_vga_subsystem|Mux38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~6_combout\ = (\inst_vga_subsystem|Mux38~0_combout\ & !\addr_bus[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|Mux38~0_combout\,
	datad => \addr_bus[0]~input_o\,
	combout => \inst_vga_subsystem|Mux38~6_combout\);

-- Location: FF_X24_Y14_N7
\inst_vga_subsystem|reg_write_page[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[0]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_write_page\(0));

-- Location: LCCOMB_X24_Y13_N6
\inst_vga_subsystem|fifo_wr_data[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[35]~feeder_combout\ = \inst_vga_subsystem|reg_write_page\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_write_page\(0),
	combout => \inst_vga_subsystem|fifo_wr_data[35]~feeder_combout\);

-- Location: FF_X24_Y13_N7
\inst_vga_subsystem|fifo_wr_data[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[35]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(35));

-- Location: LCCOMB_X24_Y14_N18
\inst_vga_subsystem|reg_write_page[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_write_page[1]~feeder_combout\ = \data_bus[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[1]~input_o\,
	combout => \inst_vga_subsystem|reg_write_page[1]~feeder_combout\);

-- Location: FF_X24_Y14_N19
\inst_vga_subsystem|reg_write_page[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_write_page[1]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_write_page\(1));

-- Location: FF_X24_Y13_N19
\inst_vga_subsystem|fifo_wr_data[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|reg_write_page\(1),
	sload => VCC,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(36));

-- Location: LCCOMB_X24_Y14_N2
\inst_vga_subsystem|reg_write_page[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_write_page[2]~feeder_combout\ = \data_bus[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[2]~input_o\,
	combout => \inst_vga_subsystem|reg_write_page[2]~feeder_combout\);

-- Location: FF_X24_Y14_N3
\inst_vga_subsystem|reg_write_page[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_write_page[2]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_write_page\(2));

-- Location: LCCOMB_X24_Y13_N12
\inst_vga_subsystem|fifo_wr_data[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[37]~feeder_combout\ = \inst_vga_subsystem|reg_write_page\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_write_page\(2),
	combout => \inst_vga_subsystem|fifo_wr_data[37]~feeder_combout\);

-- Location: FF_X24_Y13_N13
\inst_vga_subsystem|fifo_wr_data[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[37]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(37));

-- Location: LCCOMB_X24_Y14_N20
\inst_vga_subsystem|reg_write_page[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_write_page[3]~feeder_combout\ = \data_bus[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[3]~input_o\,
	combout => \inst_vga_subsystem|reg_write_page[3]~feeder_combout\);

-- Location: FF_X24_Y14_N21
\inst_vga_subsystem|reg_write_page[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_write_page[3]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_write_page\(3));

-- Location: LCCOMB_X24_Y13_N16
\inst_vga_subsystem|fifo_wr_data[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[38]~feeder_combout\ = \inst_vga_subsystem|reg_write_page\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_write_page\(3),
	combout => \inst_vga_subsystem|fifo_wr_data[38]~feeder_combout\);

-- Location: FF_X24_Y13_N17
\inst_vga_subsystem|fifo_wr_data[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[38]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(38));

-- Location: LCCOMB_X24_Y14_N16
\inst_vga_subsystem|reg_write_page[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_write_page[4]~feeder_combout\ = \data_bus[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[4]~input_o\,
	combout => \inst_vga_subsystem|reg_write_page[4]~feeder_combout\);

-- Location: FF_X24_Y14_N17
\inst_vga_subsystem|reg_write_page[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_write_page[4]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_write_page\(4));

-- Location: LCCOMB_X24_Y13_N14
\inst_vga_subsystem|fifo_wr_data[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[39]~feeder_combout\ = \inst_vga_subsystem|reg_write_page\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_write_page\(4),
	combout => \inst_vga_subsystem|fifo_wr_data[39]~feeder_combout\);

-- Location: FF_X24_Y13_N15
\inst_vga_subsystem|fifo_wr_data[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[39]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(39));

-- Location: M9K_X22_Y13_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_subsystem_top:inst_vga_subsystem|vga_fifo:pixel_fifo|dcfifo:dcfifo_component|dcfifo_eok1:auto_generated|altsyncram_7o41:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena0 => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	clr1 => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe13a\(0),
	portadatain => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTADATAIN_bus\,
	portaaddr => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTAADDR_bus\,
	portbaddr => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y11_N18
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[0]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y8_N30
\inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	combout => \inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst_vga_subsystem|sdram_ctrl|Equal10~9_RTM071\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal10~9_RTM071_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\) # 
-- (\inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\,
	datad => \inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal10~9_RTM071_combout\);

-- Location: FF_X19_Y8_N29
\inst_vga_subsystem|sdram_ctrl|Equal10~9_NEW_REG68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal10~9_RTM071_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal10~9_OTERM69\);

-- Location: FF_X19_Y8_N5
\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(8));

-- Location: LCCOMB_X19_Y8_N4
\inst_vga_subsystem|sdram_ctrl|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal9~0_OTERM53\ & (!\inst_vga_subsystem|sdram_ctrl|Equal10~9_OTERM69\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(8) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~0_OTERM53\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal10~9_OTERM69\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(8),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst_vga_subsystem|sdram_ctrl|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\);

-- Location: FF_X21_Y11_N19
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[0]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(0));

-- Location: FF_X14_Y7_N7
\inst_vga_subsystem|sdram_ctrl|sdr_write_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|ALT_INV_SdrRoutine.SdrRoutine_DirectWrite~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|sdr_write_active~q\);

-- Location: LCCOMB_X21_Y11_N8
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[1]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[1]~feeder_combout\);

-- Location: FF_X21_Y11_N9
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[1]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(1));

-- Location: LCCOMB_X21_Y11_N4
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[2]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(2),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[2]~feeder_combout\);

-- Location: FF_X21_Y11_N5
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[2]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(2));

-- Location: LCCOMB_X21_Y11_N10
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[3]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(3),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[3]~feeder_combout\);

-- Location: FF_X21_Y11_N11
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[3]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(3));

-- Location: LCCOMB_X21_Y11_N16
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[4]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(4),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[4]~feeder_combout\);

-- Location: FF_X21_Y11_N17
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[4]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(4));

-- Location: LCCOMB_X21_Y11_N28
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[5]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(5),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[5]~feeder_combout\);

-- Location: FF_X21_Y11_N29
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[5]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(5));

-- Location: LCCOMB_X21_Y11_N0
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[6]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(6),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[6]~feeder_combout\);

-- Location: FF_X21_Y11_N1
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[6]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(6));

-- Location: LCCOMB_X21_Y11_N20
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[7]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(7),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[7]~feeder_combout\);

-- Location: FF_X21_Y11_N21
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[7]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(7));

-- Location: LCCOMB_X21_Y11_N26
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[8]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(8),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[8]~feeder_combout\);

-- Location: FF_X21_Y11_N27
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[8]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(8));

-- Location: LCCOMB_X19_Y8_N26
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[9]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(9),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[9]~feeder_combout\);

-- Location: FF_X19_Y8_N27
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[9]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(9));

-- Location: LCCOMB_X21_Y11_N24
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[10]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(10),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[10]~feeder_combout\);

-- Location: FF_X21_Y11_N25
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[10]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(10));

-- Location: LCCOMB_X21_Y11_N6
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[11]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(11),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[11]~feeder_combout\);

-- Location: FF_X21_Y11_N7
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[11]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(11));

-- Location: IOIBUF_X29_Y34_N15
\data_bus[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(12),
	o => \data_bus[12]~input_o\);

-- Location: LCCOMB_X23_Y14_N16
\inst_vga_subsystem|reg_color[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[12]~feeder_combout\ = \data_bus[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[12]~input_o\,
	combout => \inst_vga_subsystem|reg_color[12]~feeder_combout\);

-- Location: FF_X23_Y14_N17
\inst_vga_subsystem|reg_color[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[12]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(12));

-- Location: LCCOMB_X23_Y14_N8
\inst_vga_subsystem|fifo_wr_data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[12]~feeder_combout\ = \inst_vga_subsystem|reg_color\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(12),
	combout => \inst_vga_subsystem|fifo_wr_data[12]~feeder_combout\);

-- Location: FF_X23_Y14_N9
\inst_vga_subsystem|fifo_wr_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[12]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(12));

-- Location: IOIBUF_X31_Y34_N8
\data_bus[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(13),
	o => \data_bus[13]~input_o\);

-- Location: LCCOMB_X23_Y14_N28
\inst_vga_subsystem|reg_color[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|reg_color[13]~feeder_combout\ = \data_bus[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_bus[13]~input_o\,
	combout => \inst_vga_subsystem|reg_color[13]~feeder_combout\);

-- Location: FF_X23_Y14_N29
\inst_vga_subsystem|reg_color[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|reg_color[13]~feeder_combout\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(13));

-- Location: LCCOMB_X23_Y14_N22
\inst_vga_subsystem|fifo_wr_data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[13]~feeder_combout\ = \inst_vga_subsystem|reg_color\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(13),
	combout => \inst_vga_subsystem|fifo_wr_data[13]~feeder_combout\);

-- Location: FF_X23_Y14_N23
\inst_vga_subsystem|fifo_wr_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[13]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(13));

-- Location: IOIBUF_X45_Y34_N15
\data_bus[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(14),
	o => \data_bus[14]~input_o\);

-- Location: FF_X23_Y14_N13
\inst_vga_subsystem|reg_color[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[14]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(14));

-- Location: LCCOMB_X23_Y14_N14
\inst_vga_subsystem|fifo_wr_data[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[14]~feeder_combout\ = \inst_vga_subsystem|reg_color\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(14),
	combout => \inst_vga_subsystem|fifo_wr_data[14]~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst_vga_subsystem|fifo_wr_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[14]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(14));

-- Location: IOIBUF_X40_Y34_N8
\data_bus[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_bus(15),
	o => \data_bus[15]~input_o\);

-- Location: FF_X23_Y14_N19
\inst_vga_subsystem|reg_color[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[15]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_color\(15));

-- Location: LCCOMB_X23_Y14_N20
\inst_vga_subsystem|fifo_wr_data[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|fifo_wr_data[15]~feeder_combout\ = \inst_vga_subsystem|reg_color\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|reg_color\(15),
	combout => \inst_vga_subsystem|fifo_wr_data[15]~feeder_combout\);

-- Location: FF_X23_Y14_N21
\inst_vga_subsystem|fifo_wr_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst_vga_subsystem|fifo_wr_data[15]~feeder_combout\,
	ena => \inst_vga_subsystem|fifo_wr_data[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|fifo_wr_data\(15));

-- Location: M9K_X22_Y14_N0
\inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_subsystem_top:inst_vga_subsystem|vga_fifo:pixel_fifo|dcfifo:dcfifo_component|dcfifo_eok1:auto_generated|altsyncram_7o41:fifo_ram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear1",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	portbre => VCC,
	portbaddrstall => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|ALT_INV_valid_rdreq~0_combout\,
	clk0 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	ena0 => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|valid_wrreq~0_combout\,
	clr1 => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|rdaclr|ALT_INV_dffe13a\(0),
	portadatain => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTADATAIN_bus\,
	portaaddr => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTAADDR_bus\,
	portbaddr => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|ram_block11a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X21_Y11_N22
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[12]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(12),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[12]~feeder_combout\);

-- Location: FF_X21_Y11_N23
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[12]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(12));

-- Location: LCCOMB_X21_Y11_N14
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[13]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(13),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[13]~feeder_combout\);

-- Location: FF_X21_Y11_N15
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[13]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(13));

-- Location: LCCOMB_X21_Y11_N30
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[14]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(14),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[14]~feeder_combout\);

-- Location: FF_X21_Y11_N31
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[14]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(14));

-- Location: LCCOMB_X21_Y11_N2
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrDat_s[15]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(15),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[15]~feeder_combout\);

-- Location: FF_X21_Y11_N3
\inst_vga_subsystem|sdram_ctrl|SdrDat_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrDat_s[15]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrDat_s\(15));

-- Location: DDIOOUTCELL_X5_Y0_N25
\u_dram_clk_gen|ALTDDIO_OUT_component|auto_generated|ddio_outa[0]\ : cycloneive_ddio_out
-- pragma translate_off
GENERIC MAP (
	async_mode => "none",
	power_up => "low",
	sync_mode => "none",
	use_new_clocking_model => "true")
-- pragma translate_on
PORT MAP (
	datainlo => GND,
	datainhi => VCC,
	clkhi => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	clklo => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	muxsel => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \u_dram_clk_gen|ALTDDIO_OUT_component|auto_generated|dataout\(0));

-- Location: LCCOMB_X19_Y8_N22
\inst_vga_subsystem|sdram_ctrl|process_0~5_RTM045\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~5_RTM045_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~5_RTM045_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst_vga_subsystem|sdram_ctrl|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\ & \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~4_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst_vga_subsystem|sdram_ctrl|Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\ & (!\inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\ & (!\inst_vga_subsystem|sdram_ctrl|process_0~5_RTM045_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~0_RTM049_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|LessThan0~0_RTM023_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|process_0~5_RTM045_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~4_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\);

-- Location: FF_X17_Y8_N13
\inst_vga_subsystem|sdram_ctrl|Equal10~6_NEW_REG76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal10~6_OTERM77\);

-- Location: LCCOMB_X18_Y8_N12
\inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037_combout\);

-- Location: FF_X17_Y8_N3
\inst_vga_subsystem|sdram_ctrl|Equal10~7_NEW_REG34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal10~7_OTERM35\);

-- Location: LCCOMB_X17_Y8_N2
\inst_vga_subsystem|sdram_ctrl|Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal10~6_OTERM77\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2) & (!\inst_vga_subsystem|sdram_ctrl|Equal10~7_OTERM35\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal10~6_OTERM77\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datac => \inst_vga_subsystem|sdram_ctrl|Equal10~7_OTERM35\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\);

-- Location: LCCOMB_X18_Y8_N14
\inst_vga_subsystem|sdram_ctrl|Equal11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal11~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\ & (\inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & 
-- !\inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal10~7_RTM037_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal11~5_combout\);

-- Location: FF_X18_Y8_N15
\inst_vga_subsystem|sdram_ctrl|Equal11~5_NEW_REG78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal11~5_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\);

-- Location: LCCOMB_X19_Y8_N2
\inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	combout => \inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst_vga_subsystem|sdram_ctrl|process_0~7_RTM075\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~7_RTM075_combout\ = (\inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\ & (((!\inst_vga_subsystem|sdram_ctrl|process_0~4_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\ & 
-- ((\inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015_combout\ & ((!\inst_vga_subsystem|sdram_ctrl|process_0~4_combout\))) # (!\inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015_combout\ & (\inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|LessThan0~1_RTM041_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|LessThan0~2_RTM015_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~4_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~7_RTM075_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst_vga_subsystem|sdram_ctrl|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~8_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[11]~34_OTERM89\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[8]~28_OTERM95\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[10]~32_OTERM91\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~8_combout\);

-- Location: LCCOMB_X20_Y8_N4
\inst_vga_subsystem|sdram_ctrl|process_0~9_RTM0125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|process_0~9_RTM0125_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ & (\inst_vga_subsystem|sdram_ctrl|process_0~7_RTM075_combout\ & !\inst_vga_subsystem|sdram_ctrl|process_0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	datac => \inst_vga_subsystem|sdram_ctrl|process_0~7_RTM075_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~8_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|process_0~9_RTM0125_combout\);

-- Location: FF_X20_Y8_N5
\inst_vga_subsystem|sdram_ctrl|process_0~9_NEW_REG122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|process_0~9_RTM0125_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\);

-- Location: LCCOMB_X15_Y8_N22
\inst_vga_subsystem|sdram_ctrl|SdrCmd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\) # ((!\inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\ & ((!\inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9),
	datac => \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\);

-- Location: LCCOMB_X14_Y8_N24
\inst_vga_subsystem|sdram_ctrl|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\ & \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\);

-- Location: LCCOMB_X14_Y8_N10
\inst_vga_subsystem|sdram_ctrl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector0~0_combout\ = ((\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\) # (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) $ (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\inst_vga_subsystem|sdram_ctrl|Equal11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal11~4_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal11~4_combout\);

-- Location: FF_X18_Y8_N23
\inst_vga_subsystem|sdram_ctrl|Equal11~4_NEW_REG10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal11~4_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal11~4_OTERM11\);

-- Location: LCCOMB_X16_Y8_N28
\inst_vga_subsystem|sdram_ctrl|Equal3~0_RTM0117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal3~0_RTM0117_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[2]~16_OTERM107\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal3~0_RTM0117_combout\);

-- Location: FF_X16_Y8_N29
\inst_vga_subsystem|sdram_ctrl|Equal3~0_NEW_REG114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal3~0_RTM0117_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal3~0_OTERM115\);

-- Location: LCCOMB_X17_Y8_N16
\inst_vga_subsystem|sdram_ctrl|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\) # ((\inst_vga_subsystem|sdram_ctrl|Equal5~2_OTERM17\) # ((!\inst_vga_subsystem|sdram_ctrl|Equal3~0_OTERM115\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~2_OTERM17\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(7),
	datad => \inst_vga_subsystem|sdram_ctrl|Equal3~0_OTERM115\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\);

-- Location: LCCOMB_X16_Y8_N2
\inst_vga_subsystem|sdram_ctrl|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal2~0_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[9]~30_OTERM93\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[6]~24_OTERM99\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[7]~26_OTERM97\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal2~0_combout\);

-- Location: FF_X16_Y8_N3
\inst_vga_subsystem|sdram_ctrl|Equal2~0_NEW_REG62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal2~0_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\);

-- Location: LCCOMB_X17_Y8_N28
\inst_vga_subsystem|sdram_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2) & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst_vga_subsystem|sdram_ctrl|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal1~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\ & (\inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y8_N22
\inst_vga_subsystem|sdram_ctrl|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal2~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4) & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) & (!\inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(4),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datac => \inst_vga_subsystem|sdram_ctrl|Equal5~1_OTERM31\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal2~1_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst_vga_subsystem|sdram_ctrl|SdrCmd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ & (!\inst_vga_subsystem|sdram_ctrl|Equal1~0_combout\ & ((!\inst_vga_subsystem|sdram_ctrl|Equal2~1_combout\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal11~4_OTERM11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal11~4_OTERM11\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal1~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal2~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\);

-- Location: LCCOMB_X17_Y8_N0
\inst_vga_subsystem|sdram_ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3) & (\inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) & 
-- \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(3),
	datab => \inst_vga_subsystem|sdram_ctrl|Equal0~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datad => \inst_vga_subsystem|sdram_ctrl|Equal2~0_OTERM63\,
	combout => \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y8_N24
\inst_vga_subsystem|sdram_ctrl|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector0~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector0~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\) # ((\inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\ & 
-- !\inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector0~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector0~1_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst_vga_subsystem|sdram_ctrl|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\ & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2) & !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\);

-- Location: LCCOMB_X14_Y8_N4
\inst_vga_subsystem|sdram_ctrl|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector0~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector0~1_combout\ & (((\inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\ & !\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector0~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector0~3_combout\);

-- Location: DDIOOUTCELL_X0_Y11_N4
\inst_vga_subsystem|sdram_ctrl|SdrCmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrCmd\(2));

-- Location: LCCOMB_X18_Y8_N16
\inst_vga_subsystem|sdram_ctrl|Equal12~0_RTM087\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Equal12~0_RTM087_combout\ = (\inst_vga_subsystem|sdram_ctrl|Equal11~4_combout\ & (\inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal11~4_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal10~6_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[1]~14_OTERM109\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|Equal12~0_RTM087_combout\);

-- Location: FF_X18_Y8_N17
\inst_vga_subsystem|sdram_ctrl|Equal12~0_NEW_REG84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Equal12~0_RTM087_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\);

-- Location: LCCOMB_X17_Y9_N24
\inst_vga_subsystem|sdram_ctrl|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector1~1_combout\ = ((!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\) # (!\inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector1~1_combout\);

-- Location: LCCOMB_X17_Y9_N6
\inst_vga_subsystem|sdram_ctrl|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector1~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector1~1_combout\ & (!\inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\) # 
-- (\inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector1~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector1~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrCmd~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector1~2_combout\);

-- Location: DDIOOUTCELL_X0_Y11_N11
\inst_vga_subsystem|sdram_ctrl|SdrCmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrCmd\(1));

-- Location: LCCOMB_X16_Y9_N2
\inst_vga_subsystem|sdram_ctrl|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector2~1_combout\ = ((!\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\ & ((!\inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9))))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector2~1_combout\);

-- Location: LCCOMB_X15_Y9_N26
\inst_vga_subsystem|sdram_ctrl|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector2~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\) # ((\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ & !\inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector2~0_combout\);

-- Location: LCCOMB_X15_Y8_N0
\inst_vga_subsystem|sdram_ctrl|SdrCmd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrCmd~2_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|SdrCmd~2_combout\);

-- Location: LCCOMB_X15_Y9_N8
\inst_vga_subsystem|sdram_ctrl|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector2~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector2~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|Selector2~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrCmd~2_combout\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector2~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector2~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrCmd~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector2~2_combout\);

-- Location: DDIOOUTCELL_X0_Y27_N4
\inst_vga_subsystem|sdram_ctrl|SdrCmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrCmd\(0));

-- Location: FF_X18_Y9_N19
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\);

-- Location: FF_X18_Y9_N13
\inst_vga_subsystem|sdram_ctrl|SdrAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(16),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(0));

-- Location: LCCOMB_X17_Y8_N26
\inst_vga_subsystem|sdram_ctrl|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2)) # 
-- (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst_vga_subsystem|sdram_ctrl|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(0)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(0),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~0_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst_vga_subsystem|vga_engine|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~1\ = CARRY(\inst_vga_subsystem|vga_engine|vcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|vcount\(0),
	datad => VCC,
	cout => \inst_vga_subsystem|vga_engine|Add0~1\);

-- Location: LCCOMB_X24_Y9_N2
\inst_vga_subsystem|vga_engine|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~2_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(1) & (!\inst_vga_subsystem|vga_engine|Add0~1\)) # (!\inst_vga_subsystem|vga_engine|vcount\(1) & ((\inst_vga_subsystem|vga_engine|Add0~1\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add0~3\ = CARRY((!\inst_vga_subsystem|vga_engine|Add0~1\) # (!\inst_vga_subsystem|vga_engine|vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|vcount\(1),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~1\,
	combout => \inst_vga_subsystem|vga_engine|Add0~2_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~3\);

-- Location: FF_X24_Y9_N3
\inst_vga_subsystem|vga_engine|vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add0~2_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(1));

-- Location: LCCOMB_X24_Y9_N4
\inst_vga_subsystem|vga_engine|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~4_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(2) & (\inst_vga_subsystem|vga_engine|Add0~3\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|vcount\(2) & (!\inst_vga_subsystem|vga_engine|Add0~3\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add0~5\ = CARRY((\inst_vga_subsystem|vga_engine|vcount\(2) & !\inst_vga_subsystem|vga_engine|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|vcount\(2),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~3\,
	combout => \inst_vga_subsystem|vga_engine|Add0~4_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~5\);

-- Location: LCCOMB_X23_Y9_N16
\inst_vga_subsystem|vga_engine|vcount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vcount~2_combout\ = (\inst_vga_subsystem|vga_engine|Add0~4_combout\ & !\inst_vga_subsystem|vga_engine|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Add0~4_combout\,
	datad => \inst_vga_subsystem|vga_engine|Equal1~2_combout\,
	combout => \inst_vga_subsystem|vga_engine|vcount~2_combout\);

-- Location: FF_X24_Y9_N1
\inst_vga_subsystem|vga_engine|vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|vcount~2_combout\,
	sload => VCC,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(2));

-- Location: LCCOMB_X24_Y9_N6
\inst_vga_subsystem|vga_engine|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~6_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(3) & (!\inst_vga_subsystem|vga_engine|Add0~5\)) # (!\inst_vga_subsystem|vga_engine|vcount\(3) & ((\inst_vga_subsystem|vga_engine|Add0~5\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add0~7\ = CARRY((!\inst_vga_subsystem|vga_engine|Add0~5\) # (!\inst_vga_subsystem|vga_engine|vcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(3),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~5\,
	combout => \inst_vga_subsystem|vga_engine|Add0~6_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~7\);

-- Location: LCCOMB_X24_Y9_N22
\inst_vga_subsystem|vga_engine|vcount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vcount~1_combout\ = (\inst_vga_subsystem|vga_engine|Add0~6_combout\ & !\inst_vga_subsystem|vga_engine|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Add0~6_combout\,
	datad => \inst_vga_subsystem|vga_engine|Equal1~2_combout\,
	combout => \inst_vga_subsystem|vga_engine|vcount~1_combout\);

-- Location: FF_X24_Y9_N23
\inst_vga_subsystem|vga_engine|vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vcount~1_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(3));

-- Location: LCCOMB_X24_Y9_N8
\inst_vga_subsystem|vga_engine|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~8_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(4) & (\inst_vga_subsystem|vga_engine|Add0~7\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|vcount\(4) & (!\inst_vga_subsystem|vga_engine|Add0~7\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add0~9\ = CARRY((\inst_vga_subsystem|vga_engine|vcount\(4) & !\inst_vga_subsystem|vga_engine|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|vcount\(4),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~7\,
	combout => \inst_vga_subsystem|vga_engine|Add0~8_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~9\);

-- Location: FF_X24_Y9_N9
\inst_vga_subsystem|vga_engine|vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add0~8_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(4));

-- Location: LCCOMB_X24_Y9_N10
\inst_vga_subsystem|vga_engine|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~10_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(5) & (!\inst_vga_subsystem|vga_engine|Add0~9\)) # (!\inst_vga_subsystem|vga_engine|vcount\(5) & ((\inst_vga_subsystem|vga_engine|Add0~9\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add0~11\ = CARRY((!\inst_vga_subsystem|vga_engine|Add0~9\) # (!\inst_vga_subsystem|vga_engine|vcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(5),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~9\,
	combout => \inst_vga_subsystem|vga_engine|Add0~10_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~11\);

-- Location: FF_X24_Y9_N11
\inst_vga_subsystem|vga_engine|vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add0~10_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(5));

-- Location: LCCOMB_X24_Y9_N12
\inst_vga_subsystem|vga_engine|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~12_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(6) & (\inst_vga_subsystem|vga_engine|Add0~11\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|vcount\(6) & (!\inst_vga_subsystem|vga_engine|Add0~11\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add0~13\ = CARRY((\inst_vga_subsystem|vga_engine|vcount\(6) & !\inst_vga_subsystem|vga_engine|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(6),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~11\,
	combout => \inst_vga_subsystem|vga_engine|Add0~12_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~13\);

-- Location: FF_X24_Y9_N13
\inst_vga_subsystem|vga_engine|vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add0~12_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(6));

-- Location: LCCOMB_X24_Y9_N14
\inst_vga_subsystem|vga_engine|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~14_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(7) & (!\inst_vga_subsystem|vga_engine|Add0~13\)) # (!\inst_vga_subsystem|vga_engine|vcount\(7) & ((\inst_vga_subsystem|vga_engine|Add0~13\) # (GND)))
-- \inst_vga_subsystem|vga_engine|Add0~15\ = CARRY((!\inst_vga_subsystem|vga_engine|Add0~13\) # (!\inst_vga_subsystem|vga_engine|vcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|vcount\(7),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~13\,
	combout => \inst_vga_subsystem|vga_engine|Add0~14_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~15\);

-- Location: FF_X24_Y9_N15
\inst_vga_subsystem|vga_engine|vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add0~14_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(7));

-- Location: LCCOMB_X24_Y9_N26
\inst_vga_subsystem|vga_engine|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal1~1_combout\ = (!\inst_vga_subsystem|vga_engine|vcount\(6) & (!\inst_vga_subsystem|vga_engine|vcount\(0) & (!\inst_vga_subsystem|vga_engine|vcount\(7) & !\inst_vga_subsystem|vga_engine|vcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(6),
	datab => \inst_vga_subsystem|vga_engine|vcount\(0),
	datac => \inst_vga_subsystem|vga_engine|vcount\(7),
	datad => \inst_vga_subsystem|vga_engine|vcount\(5),
	combout => \inst_vga_subsystem|vga_engine|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y9_N16
\inst_vga_subsystem|vga_engine|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~16_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(8) & (\inst_vga_subsystem|vga_engine|Add0~15\ $ (GND))) # (!\inst_vga_subsystem|vga_engine|vcount\(8) & (!\inst_vga_subsystem|vga_engine|Add0~15\ & VCC))
-- \inst_vga_subsystem|vga_engine|Add0~17\ = CARRY((\inst_vga_subsystem|vga_engine|vcount\(8) & !\inst_vga_subsystem|vga_engine|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|vcount\(8),
	datad => VCC,
	cin => \inst_vga_subsystem|vga_engine|Add0~15\,
	combout => \inst_vga_subsystem|vga_engine|Add0~16_combout\,
	cout => \inst_vga_subsystem|vga_engine|Add0~17\);

-- Location: FF_X24_Y9_N17
\inst_vga_subsystem|vga_engine|vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Add0~16_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(8));

-- Location: LCCOMB_X24_Y9_N18
\inst_vga_subsystem|vga_engine|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Add0~18_combout\ = \inst_vga_subsystem|vga_engine|Add0~17\ $ (\inst_vga_subsystem|vga_engine|vcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	cin => \inst_vga_subsystem|vga_engine|Add0~17\,
	combout => \inst_vga_subsystem|vga_engine|Add0~18_combout\);

-- Location: LCCOMB_X25_Y9_N14
\inst_vga_subsystem|vga_engine|vcount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vcount~0_combout\ = (\inst_vga_subsystem|vga_engine|Add0~18_combout\ & !\inst_vga_subsystem|vga_engine|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|Add0~18_combout\,
	datad => \inst_vga_subsystem|vga_engine|Equal1~2_combout\,
	combout => \inst_vga_subsystem|vga_engine|vcount~0_combout\);

-- Location: FF_X25_Y9_N15
\inst_vga_subsystem|vga_engine|vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vcount~0_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(9));

-- Location: LCCOMB_X24_Y9_N20
\inst_vga_subsystem|vga_engine|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal1~0_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(3) & (!\inst_vga_subsystem|vga_engine|vcount\(8) & (!\inst_vga_subsystem|vga_engine|vcount\(4) & \inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(3),
	datab => \inst_vga_subsystem|vga_engine|vcount\(8),
	datac => \inst_vga_subsystem|vga_engine|vcount\(4),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y9_N28
\inst_vga_subsystem|vga_engine|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|Equal1~2_combout\ = (\inst_vga_subsystem|vga_engine|Equal1~1_combout\ & (!\inst_vga_subsystem|vga_engine|vcount\(1) & (\inst_vga_subsystem|vga_engine|Equal1~0_combout\ & \inst_vga_subsystem|vga_engine|vcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|Equal1~1_combout\,
	datab => \inst_vga_subsystem|vga_engine|vcount\(1),
	datac => \inst_vga_subsystem|vga_engine|Equal1~0_combout\,
	datad => \inst_vga_subsystem|vga_engine|vcount\(2),
	combout => \inst_vga_subsystem|vga_engine|Equal1~2_combout\);

-- Location: LCCOMB_X23_Y9_N6
\inst_vga_subsystem|vga_engine|vcount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vcount~3_combout\ = (!\inst_vga_subsystem|vga_engine|vcount\(0) & !\inst_vga_subsystem|vga_engine|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|vcount\(0),
	datad => \inst_vga_subsystem|vga_engine|Equal1~2_combout\,
	combout => \inst_vga_subsystem|vga_engine|vcount~3_combout\);

-- Location: FF_X23_Y9_N7
\inst_vga_subsystem|vga_engine|vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vcount~3_combout\,
	ena => \inst_vga_subsystem|vga_engine|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vcount\(0));

-- Location: LCCOMB_X21_Y9_N22
\inst_vga_subsystem|vga_engine|row_number[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[0]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(0),
	combout => \inst_vga_subsystem|vga_engine|row_number[0]~feeder_combout\);

-- Location: FF_X21_Y9_N23
\inst_vga_subsystem|vga_engine|row_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(0));

-- Location: LCCOMB_X21_Y9_N10
\inst_vga_subsystem|sdram_ctrl|curRow[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|curRow[0]~feeder_combout\ = \inst_vga_subsystem|vga_engine|row_number\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|row_number\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|curRow[0]~feeder_combout\);

-- Location: FF_X21_Y9_N11
\inst_vga_subsystem|sdram_ctrl|curRow[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|curRow[0]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(0));

-- Location: FF_X18_Y9_N31
\inst_vga_subsystem|sdram_ctrl|SdrAddress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(25),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(9));

-- Location: LCCOMB_X18_Y9_N30
\inst_vga_subsystem|sdram_ctrl|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|curRow\(0)) # ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(9) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(9) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|curRow\(0),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(9),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~1_combout\);

-- Location: LCCOMB_X18_Y9_N8
\inst_vga_subsystem|sdram_ctrl|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\) # ((\inst_vga_subsystem|sdram_ctrl|Selector15~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & (((\inst_vga_subsystem|sdram_ctrl|Selector15~1_combout\ & \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~2_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst_vga_subsystem|sdram_ctrl|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector15~2_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~2_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~3_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst_vga_subsystem|sdram_ctrl|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\) # ((\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\ & 
-- !\inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\,
	datab => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\);

-- Location: LCCOMB_X19_Y8_N0
\inst_vga_subsystem|sdram_ctrl|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst_vga_subsystem|sdram_ctrl|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector15~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector15~3_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector15~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~4_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst_vga_subsystem|sdram_ctrl|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\ = (!\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\ & (!\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\ & \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y8_N10
\inst_vga_subsystem|sdram_ctrl|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst_vga_subsystem|sdram_ctrl|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector15~6_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector15~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|curRow\(0) & \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|Selector15~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|curRow\(0),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector15~6_combout\);

-- Location: DDIOOUTCELL_X0_Y4_N18
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(0));

-- Location: LCCOMB_X21_Y9_N8
\inst_vga_subsystem|vga_engine|row_number[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[1]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(1),
	combout => \inst_vga_subsystem|vga_engine|row_number[1]~feeder_combout\);

-- Location: FF_X21_Y9_N9
\inst_vga_subsystem|vga_engine|row_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(1));

-- Location: LCCOMB_X21_Y9_N12
\inst_vga_subsystem|sdram_ctrl|curRow[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|curRow[1]~feeder_combout\ = \inst_vga_subsystem|vga_engine|row_number\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|row_number\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|curRow[1]~feeder_combout\);

-- Location: FF_X21_Y9_N13
\inst_vga_subsystem|sdram_ctrl|curRow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|curRow[1]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(1));

-- Location: FF_X18_Y9_N17
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector14~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\);

-- Location: FF_X18_Y9_N7
\inst_vga_subsystem|sdram_ctrl|SdrAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(17),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(1));

-- Location: LCCOMB_X18_Y9_N6
\inst_vga_subsystem|sdram_ctrl|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(1)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(1),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~2_combout\);

-- Location: FF_X18_Y9_N15
\inst_vga_subsystem|sdram_ctrl|SdrAddress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(26),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(10));

-- Location: LCCOMB_X18_Y9_N14
\inst_vga_subsystem|sdram_ctrl|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|curRow\(1) & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAddress\(10))))) # (!\inst_vga_subsystem|sdram_ctrl|curRow\(1) & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(1),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(10),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~3_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst_vga_subsystem|sdram_ctrl|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~3_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & (((\inst_vga_subsystem|sdram_ctrl|Selector14~3_combout\ & \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector14~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~4_combout\);

-- Location: LCCOMB_X18_Y9_N4
\inst_vga_subsystem|sdram_ctrl|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector14~4_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~4_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~5_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst_vga_subsystem|sdram_ctrl|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~6_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector14~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~5_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector14~2_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector14~5_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~6_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst_vga_subsystem|sdram_ctrl|Selector14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~7_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector14~6_combout\) # ((\inst_vga_subsystem|sdram_ctrl|curRow\(1) & \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(1),
	datab => \inst_vga_subsystem|sdram_ctrl|Selector14~6_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~7_combout\);

-- Location: DDIOOUTCELL_X5_Y0_N11
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector14~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(1));

-- Location: LCCOMB_X18_Y11_N14
\inst_vga_subsystem|vga_engine|row_number[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[2]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(2),
	combout => \inst_vga_subsystem|vga_engine|row_number[2]~feeder_combout\);

-- Location: FF_X18_Y11_N15
\inst_vga_subsystem|vga_engine|row_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(2));

-- Location: LCCOMB_X18_Y11_N16
\inst_vga_subsystem|sdram_ctrl|curRow[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|curRow[2]~feeder_combout\ = \inst_vga_subsystem|vga_engine|row_number\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|row_number\(2),
	combout => \inst_vga_subsystem|sdram_ctrl|curRow[2]~feeder_combout\);

-- Location: FF_X18_Y11_N17
\inst_vga_subsystem|sdram_ctrl|curRow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|curRow[2]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(2));

-- Location: FF_X17_Y9_N13
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\);

-- Location: FF_X17_Y9_N23
\inst_vga_subsystem|sdram_ctrl|SdrAddress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(27),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(11));

-- Location: LCCOMB_X17_Y9_N22
\inst_vga_subsystem|sdram_ctrl|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector13~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|curRow\(2) & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(11) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|curRow\(2) & (((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(11) & \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(2),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(11),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector13~1_combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst_vga_subsystem|sdram_ctrl|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector13~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((\inst_vga_subsystem|sdram_ctrl|Selector13~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\ & (((\inst_vga_subsystem|sdram_ctrl|Selector13~1_combout\ & \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector13~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector13~2_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst_vga_subsystem|sdram_ctrl|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector13~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector13~2_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector13~2_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector13~3_combout\);

-- Location: FF_X18_Y9_N21
\inst_vga_subsystem|sdram_ctrl|SdrAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(18),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(2));

-- Location: LCCOMB_X18_Y9_N20
\inst_vga_subsystem|sdram_ctrl|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector13~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(2)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(2),
	datad => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector13~0_combout\);

-- Location: LCCOMB_X17_Y9_N18
\inst_vga_subsystem|sdram_ctrl|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector13~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector13~3_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector13~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector13~3_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector13~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector13~4_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst_vga_subsystem|sdram_ctrl|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector13~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector13~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|curRow\(2) & \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(2),
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector13~4_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector13~5_combout\);

-- Location: DDIOOUTCELL_X5_Y0_N4
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(2));

-- Location: FF_X20_Y9_N19
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector12~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\);

-- Location: FF_X20_Y9_N27
\inst_vga_subsystem|sdram_ctrl|SdrAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(19),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(3));

-- Location: LCCOMB_X20_Y9_N26
\inst_vga_subsystem|sdram_ctrl|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector12~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(3)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(3),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector12~1_combout\);

-- Location: FF_X21_Y9_N31
\inst_vga_subsystem|vga_engine|row_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|vcount\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(3));

-- Location: LCCOMB_X21_Y9_N0
\inst_vga_subsystem|sdram_ctrl|curRow[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|curRow[3]~feeder_combout\ = \inst_vga_subsystem|vga_engine|row_number\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|row_number\(3),
	combout => \inst_vga_subsystem|sdram_ctrl|curRow[3]~feeder_combout\);

-- Location: FF_X21_Y9_N1
\inst_vga_subsystem|sdram_ctrl|curRow[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|curRow[3]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(3));

-- Location: FF_X20_Y9_N9
\inst_vga_subsystem|sdram_ctrl|SdrAddress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(28),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(12));

-- Location: LCCOMB_X20_Y9_N8
\inst_vga_subsystem|sdram_ctrl|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector12~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|curRow\(3)) # ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(12) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(12) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|curRow\(3),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(12),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector12~3_combout\);

-- Location: LCCOMB_X20_Y9_N0
\inst_vga_subsystem|sdram_ctrl|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector12~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector12~2_combout\);

-- Location: LCCOMB_X20_Y9_N24
\inst_vga_subsystem|sdram_ctrl|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector12~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector12~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector12~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector12~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector12~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector12~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector12~4_combout\);

-- Location: LCCOMB_X21_Y9_N2
\inst_vga_subsystem|sdram_ctrl|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector12~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|curRow\(3) & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(3),
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector12~0_combout\);

-- Location: LCCOMB_X20_Y9_N18
\inst_vga_subsystem|sdram_ctrl|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector12~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector12~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector12~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector12~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]~_Duplicate_1_q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector12~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector12~5_combout\);

-- Location: DDIOOUTCELL_X20_Y0_N11
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector12~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(3));

-- Location: FF_X19_Y9_N7
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y9_N14
\inst_vga_subsystem|vga_engine|row_number[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[4]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(4),
	combout => \inst_vga_subsystem|vga_engine|row_number[4]~feeder_combout\);

-- Location: FF_X21_Y9_N15
\inst_vga_subsystem|vga_engine|row_number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(4));

-- Location: LCCOMB_X21_Y9_N4
\inst_vga_subsystem|sdram_ctrl|curRow[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|curRow[4]~feeder_combout\ = \inst_vga_subsystem|vga_engine|row_number\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|row_number\(4),
	combout => \inst_vga_subsystem|sdram_ctrl|curRow[4]~feeder_combout\);

-- Location: FF_X21_Y9_N5
\inst_vga_subsystem|sdram_ctrl|curRow[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|curRow[4]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(4));

-- Location: FF_X19_Y9_N29
\inst_vga_subsystem|sdram_ctrl|SdrAddress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(29),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(13));

-- Location: LCCOMB_X19_Y9_N28
\inst_vga_subsystem|sdram_ctrl|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector11~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|curRow\(4) & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAddress\(13))))) # (!\inst_vga_subsystem|sdram_ctrl|curRow\(4) & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(4),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(13),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector11~1_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst_vga_subsystem|sdram_ctrl|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector11~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((\inst_vga_subsystem|sdram_ctrl|Selector11~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\ & (\inst_vga_subsystem|sdram_ctrl|Selector11~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector11~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector11~2_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst_vga_subsystem|sdram_ctrl|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector11~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector11~2_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector11~2_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector11~3_combout\);

-- Location: FF_X19_Y9_N1
\inst_vga_subsystem|sdram_ctrl|SdrAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(20),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(4));

-- Location: LCCOMB_X19_Y9_N0
\inst_vga_subsystem|sdram_ctrl|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector11~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(4)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(4),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector11~0_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst_vga_subsystem|sdram_ctrl|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector11~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector11~3_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector11~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector11~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector11~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector11~4_combout\);

-- Location: LCCOMB_X19_Y9_N6
\inst_vga_subsystem|sdram_ctrl|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector11~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector11~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\ & \inst_vga_subsystem|sdram_ctrl|curRow\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector11~4_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|curRow\(4),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector11~5_combout\);

-- Location: DDIOOUTCELL_X25_Y0_N18
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(4));

-- Location: LCCOMB_X26_Y9_N4
\inst_vga_subsystem|vga_engine|row_number[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[5]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(5),
	combout => \inst_vga_subsystem|vga_engine|row_number[5]~feeder_combout\);

-- Location: FF_X26_Y9_N5
\inst_vga_subsystem|vga_engine|row_number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(5));

-- Location: LCCOMB_X26_Y9_N8
\inst_vga_subsystem|sdram_ctrl|curRow[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|curRow[5]~feeder_combout\ = \inst_vga_subsystem|vga_engine|row_number\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|row_number\(5),
	combout => \inst_vga_subsystem|sdram_ctrl|curRow[5]~feeder_combout\);

-- Location: FF_X26_Y9_N9
\inst_vga_subsystem|sdram_ctrl|curRow[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|curRow[5]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(5));

-- Location: FF_X19_Y9_N19
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\);

-- Location: FF_X19_Y9_N13
\inst_vga_subsystem|sdram_ctrl|SdrAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(21),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(5));

-- Location: LCCOMB_X19_Y9_N12
\inst_vga_subsystem|sdram_ctrl|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector10~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(5)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(5),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector10~0_combout\);

-- Location: FF_X19_Y9_N3
\inst_vga_subsystem|sdram_ctrl|SdrAddress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(30),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(14));

-- Location: LCCOMB_X19_Y9_N2
\inst_vga_subsystem|sdram_ctrl|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector10~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|curRow\(5)) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAddress\(14))))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(14),
	datad => \inst_vga_subsystem|sdram_ctrl|curRow\(5),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector10~1_combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst_vga_subsystem|sdram_ctrl|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector10~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\) # ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector10~1_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\ & (((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & \inst_vga_subsystem|sdram_ctrl|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector10~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector10~2_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst_vga_subsystem|sdram_ctrl|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector10~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector10~2_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector10~2_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector10~3_combout\);

-- Location: LCCOMB_X19_Y9_N16
\inst_vga_subsystem|sdram_ctrl|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector10~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector10~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector10~3_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector10~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector10~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector10~4_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst_vga_subsystem|sdram_ctrl|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector10~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector10~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|curRow\(5) & \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|curRow\(5),
	datab => \inst_vga_subsystem|sdram_ctrl|Selector10~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector10~5_combout\);

-- Location: DDIOOUTCELL_X18_Y0_N25
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(5));

-- Location: FF_X21_Y9_N25
\inst_vga_subsystem|vga_engine|row_number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|vcount\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(6));

-- Location: FF_X21_Y9_N7
\inst_vga_subsystem|sdram_ctrl|curRow[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|row_number\(6),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(6));

-- Location: FF_X20_Y9_N5
\inst_vga_subsystem|sdram_ctrl|SdrAddress[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(31),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(15));

-- Location: LCCOMB_X20_Y9_N4
\inst_vga_subsystem|sdram_ctrl|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector9~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|curRow\(6)) # ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(15) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(15) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|curRow\(6),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(15),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector9~3_combout\);

-- Location: FF_X20_Y9_N23
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X19_Y9_N8
\inst_vga_subsystem|sdram_ctrl|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector9~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector9~2_combout\);

-- Location: FF_X19_Y9_N25
\inst_vga_subsystem|sdram_ctrl|SdrAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(22),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(6));

-- Location: LCCOMB_X19_Y9_N24
\inst_vga_subsystem|sdram_ctrl|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector9~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(6)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(6),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector9~1_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst_vga_subsystem|sdram_ctrl|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector9~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector9~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector9~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector9~3_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector9~3_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector9~2_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector9~4_combout\);

-- Location: LCCOMB_X21_Y9_N6
\inst_vga_subsystem|sdram_ctrl|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector9~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|curRow\(6) & 
-- \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|curRow\(6),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector9~0_combout\);

-- Location: LCCOMB_X20_Y9_N22
\inst_vga_subsystem|sdram_ctrl|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector9~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector9~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector9~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector9~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]~_Duplicate_1_q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector9~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector9~5_combout\);

-- Location: DDIOOUTCELL_X20_Y0_N4
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(6));

-- Location: FF_X20_Y9_N17
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X20_Y9_N6
\inst_vga_subsystem|sdram_ctrl|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector8~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector8~2_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst_vga_subsystem|vga_engine|row_number[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[7]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(7),
	combout => \inst_vga_subsystem|vga_engine|row_number[7]~feeder_combout\);

-- Location: FF_X21_Y9_N29
\inst_vga_subsystem|vga_engine|row_number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(7));

-- Location: FF_X21_Y9_N19
\inst_vga_subsystem|sdram_ctrl|curRow[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|row_number\(7),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(7));

-- Location: FF_X20_Y9_N31
\inst_vga_subsystem|sdram_ctrl|SdrAddress[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(32),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(16));

-- Location: LCCOMB_X20_Y9_N30
\inst_vga_subsystem|sdram_ctrl|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector8~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|curRow\(7)) # ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(16) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(16) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|curRow\(7),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(16),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector8~3_combout\);

-- Location: FF_X19_Y9_N15
\inst_vga_subsystem|sdram_ctrl|SdrAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(23),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(7));

-- Location: LCCOMB_X19_Y9_N14
\inst_vga_subsystem|sdram_ctrl|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector8~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(7)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(7),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector8~1_combout\);

-- Location: LCCOMB_X20_Y9_N28
\inst_vga_subsystem|sdram_ctrl|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector8~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector8~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector8~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector8~2_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector8~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector8~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector8~4_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst_vga_subsystem|sdram_ctrl|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector8~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|curRow\(7) & 
-- \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|curRow\(7),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector8~0_combout\);

-- Location: LCCOMB_X20_Y9_N16
\inst_vga_subsystem|sdram_ctrl|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector8~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector8~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector8~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector8~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]~_Duplicate_1_q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector8~5_combout\);

-- Location: DDIOOUTCELL_X14_Y0_N4
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(7));

-- Location: LCCOMB_X21_Y9_N20
\inst_vga_subsystem|vga_engine|row_number[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|row_number[8]~feeder_combout\ = \inst_vga_subsystem|vga_engine|vcount\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vcount\(8),
	combout => \inst_vga_subsystem|vga_engine|row_number[8]~feeder_combout\);

-- Location: FF_X21_Y9_N21
\inst_vga_subsystem|vga_engine|row_number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|row_number[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|row_number\(8));

-- Location: FF_X21_Y9_N17
\inst_vga_subsystem|sdram_ctrl|curRow[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|row_number\(8),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|curRow\(8));

-- Location: FF_X20_Y9_N11
\inst_vga_subsystem|sdram_ctrl|SdrAddress[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(33),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(17));

-- Location: LCCOMB_X20_Y9_N10
\inst_vga_subsystem|sdram_ctrl|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector7~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|curRow\(8)) # ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(17) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(17) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|curRow\(8),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(17),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector7~3_combout\);

-- Location: FF_X20_Y9_N13
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\);

-- Location: FF_X20_Y9_N15
\inst_vga_subsystem|sdram_ctrl|SdrAddress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(24),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(8));

-- Location: LCCOMB_X20_Y9_N14
\inst_vga_subsystem|sdram_ctrl|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector7~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(8)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(8),
	datad => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector7~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\inst_vga_subsystem|sdram_ctrl|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector7~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector7~2_combout\);

-- Location: LCCOMB_X20_Y9_N20
\inst_vga_subsystem|sdram_ctrl|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector7~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector7~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector7~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector7~3_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector7~3_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector7~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector7~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector7~4_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst_vga_subsystem|sdram_ctrl|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector7~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|curRow\(8) & 
-- \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|curRow\(8),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector7~0_combout\);

-- Location: LCCOMB_X20_Y9_N12
\inst_vga_subsystem|sdram_ctrl|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector7~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector7~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector7~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector14~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector7~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]~_Duplicate_1_q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector7~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector7~5_combout\);

-- Location: DDIOOUTCELL_X0_Y5_N25
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(8));

-- Location: LCCOMB_X24_Y14_N10
\inst_vga_subsystem|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|Mux38~1_combout\ = (\inst_vga_subsystem|Mux38~0_combout\ & \addr_bus[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|Mux38~0_combout\,
	datad => \addr_bus[0]~input_o\,
	combout => \inst_vga_subsystem|Mux38~1_combout\);

-- Location: FF_X14_Y8_N17
\inst_vga_subsystem|reg_read_page[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[1]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_read_page\(1));

-- Location: FF_X14_Y8_N15
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y9_N12
\inst_vga_subsystem|sdram_ctrl|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector6~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((\inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector6~3_combout\);

-- Location: LCCOMB_X15_Y8_N18
\inst_vga_subsystem|sdram_ctrl|Selector14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & !\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\);

-- Location: LCCOMB_X15_Y8_N8
\inst_vga_subsystem|sdram_ctrl|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector6~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[9]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|Selector6~3_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[9]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector6~3_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector6~4_combout\);

-- Location: FF_X18_Y9_N27
\inst_vga_subsystem|sdram_ctrl|SdrAddress[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(36),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(20));

-- Location: LCCOMB_X14_Y8_N20
\inst_vga_subsystem|sdram_ctrl|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector6~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(20)) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & 
-- \inst_vga_subsystem|reg_read_page\(1))))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & \inst_vga_subsystem|reg_read_page\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(20),
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|reg_read_page\(1),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector6~1_combout\);

-- Location: LCCOMB_X14_Y8_N18
\inst_vga_subsystem|sdram_ctrl|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector6~2_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2) & (!\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datac => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector6~2_combout\);

-- Location: LCCOMB_X14_Y8_N14
\inst_vga_subsystem|sdram_ctrl|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector6~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector6~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector6~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\ & 
-- \inst_vga_subsystem|reg_read_page\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	datab => \inst_vga_subsystem|reg_read_page\(1),
	datac => \inst_vga_subsystem|sdram_ctrl|Selector6~4_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector6~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector6~5_combout\);

-- Location: DDIOOUTCELL_X0_Y4_N25
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(9));

-- Location: LCCOMB_X18_Y8_N26
\inst_vga_subsystem|sdram_ctrl|colLoadNr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\ & (!\inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\ & ((!\inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(9),
	datab => \inst_vga_subsystem|sdram_ctrl|Equal11~5_OTERM79\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal13~1_OTERM83\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal12~0_OTERM85\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\);

-- Location: LCCOMB_X21_Y8_N6
\inst_vga_subsystem|sdram_ctrl|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & 
-- !\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\);

-- Location: FF_X15_Y8_N11
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y8_N12
\inst_vga_subsystem|sdram_ctrl|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\) # 
-- (\inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~1_combout\);

-- Location: LCCOMB_X15_Y9_N14
\inst_vga_subsystem|sdram_ctrl|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~6_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~6_combout\);

-- Location: LCCOMB_X15_Y8_N14
\inst_vga_subsystem|sdram_ctrl|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) & (!\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\ & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datab => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]~_Duplicate_1_q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~4_combout\);

-- Location: LCCOMB_X15_Y9_N0
\inst_vga_subsystem|sdram_ctrl|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~5_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~4_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~5_combout\);

-- Location: LCCOMB_X15_Y9_N24
\inst_vga_subsystem|sdram_ctrl|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~7_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector5~6_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector5~5_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector5~6_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~5_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~7_combout\);

-- Location: FF_X15_Y9_N31
\inst_vga_subsystem|sdram_ctrl|SdrAddress[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(37),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(21));

-- Location: LCCOMB_X15_Y9_N30
\inst_vga_subsystem|sdram_ctrl|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~8_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector5~7_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(21) & 
-- \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector5~7_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(21),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~8_combout\);

-- Location: FF_X15_Y8_N3
\inst_vga_subsystem|reg_read_page[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[2]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_read_page\(2));

-- Location: LCCOMB_X14_Y8_N30
\inst_vga_subsystem|sdram_ctrl|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\) # (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~2_combout\);

-- Location: LCCOMB_X15_Y8_N2
\inst_vga_subsystem|sdram_ctrl|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~3_combout\ = (\inst_vga_subsystem|reg_read_page\(2) & (\inst_vga_subsystem|sdram_ctrl|Selector5~2_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\) # 
-- (\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector5~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|reg_read_page\(2),
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~3_combout\);

-- Location: LCCOMB_X15_Y8_N10
\inst_vga_subsystem|sdram_ctrl|Selector5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector5~9_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector5~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector5~8_combout\) # (\inst_vga_subsystem|sdram_ctrl|Selector5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector5~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector5~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector5~3_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector5~9_combout\);

-- Location: DDIOOUTCELL_X0_Y8_N25
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(10));

-- Location: FF_X15_Y8_N1
\inst_vga_subsystem|reg_read_page[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[3]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_read_page\(3));

-- Location: FF_X15_Y8_N31
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1_q\);

-- Location: FF_X15_Y9_N17
\inst_vga_subsystem|sdram_ctrl|SdrAddress[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(38),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(22));

-- Location: LCCOMB_X15_Y9_N16
\inst_vga_subsystem|sdram_ctrl|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector4~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAddress\(22)))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(22),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector4~1_combout\);

-- Location: LCCOMB_X15_Y8_N16
\inst_vga_subsystem|sdram_ctrl|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ & 
-- !\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\)))) # (!\inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\ & ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector14~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal3~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector14~8_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\);

-- Location: LCCOMB_X15_Y8_N4
\inst_vga_subsystem|sdram_ctrl|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector4~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector4~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # 
-- (\inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]~_Duplicate_1_q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector4~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector4~2_combout\);

-- Location: LCCOMB_X15_Y8_N6
\inst_vga_subsystem|sdram_ctrl|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector4~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector4~2_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & 
-- \inst_vga_subsystem|reg_read_page\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector4~2_combout\,
	datad => \inst_vga_subsystem|reg_read_page\(3),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector4~3_combout\);

-- Location: LCCOMB_X15_Y8_N30
\inst_vga_subsystem|sdram_ctrl|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector4~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector4~3_combout\) # ((\inst_vga_subsystem|reg_read_page\(3) & \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|reg_read_page\(3),
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector4~3_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector4~4_combout\);

-- Location: DDIOOUTCELL_X0_Y7_N4
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(11));

-- Location: FF_X15_Y8_N19
\inst_vga_subsystem|reg_read_page[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[4]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_read_page\(4));

-- Location: FF_X15_Y9_N29
\inst_vga_subsystem|sdram_ctrl|SdrAddress[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(39),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(23));

-- Location: FF_X15_Y8_N29
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X15_Y9_N28
\inst_vga_subsystem|sdram_ctrl|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector3~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(23))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(23),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1_q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector3~0_combout\);

-- Location: LCCOMB_X15_Y8_N26
\inst_vga_subsystem|sdram_ctrl|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector3~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector3~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1_q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # 
-- (\inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector3~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]~_Duplicate_1_q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector4~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector3~1_combout\);

-- Location: LCCOMB_X15_Y8_N20
\inst_vga_subsystem|sdram_ctrl|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector3~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector3~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & 
-- \inst_vga_subsystem|reg_read_page\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector3~1_combout\,
	datad => \inst_vga_subsystem|reg_read_page\(4),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector3~2_combout\);

-- Location: LCCOMB_X15_Y8_N28
\inst_vga_subsystem|sdram_ctrl|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector3~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector3~2_combout\) # ((\inst_vga_subsystem|reg_read_page\(4) & \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|reg_read_page\(4),
	datac => \inst_vga_subsystem|sdram_ctrl|Selector15~5_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector3~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector3~3_combout\);

-- Location: DDIOOUTCELL_X0_Y6_N18
\inst_vga_subsystem|sdram_ctrl|SdrAdr_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAdr_s\(12));

-- Location: LCCOMB_X17_Y9_N4
\inst_vga_subsystem|sdram_ctrl|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector16~4_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\ & 
-- !\inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector16~4_combout\);

-- Location: FF_X17_Y9_N3
\inst_vga_subsystem|sdram_ctrl|SdrAddress[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(34),
	sload => VCC,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(18));

-- Location: LCCOMB_X17_Y9_N2
\inst_vga_subsystem|sdram_ctrl|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector16~1_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(18))) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(18),
	datad => \inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector16~1_combout\);

-- Location: LCCOMB_X17_Y9_N20
\inst_vga_subsystem|sdram_ctrl|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector16~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\) # (!\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector16~2_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst_vga_subsystem|sdram_ctrl|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector16~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector16~1_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector16~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector16~2_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector16~3_combout\);

-- Location: LCCOMB_X17_Y9_N16
\inst_vga_subsystem|sdram_ctrl|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector16~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector16~4_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector16~3_combout\) # ((!\inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector16~4_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector16~3_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector16~5_combout\);

-- Location: FF_X17_Y9_N17
\inst_vga_subsystem|sdram_ctrl|SdrBa0_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector16~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrBa0_s~q\);

-- Location: LCCOMB_X14_Y8_N16
\inst_vga_subsystem|sdram_ctrl|Selector17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~6_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & !\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~6_combout\);

-- Location: FF_X14_Y8_N25
\inst_vga_subsystem|reg_read_page[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \data_bus[0]~input_o\,
	clrn => \ALT_INV_rstn_i~0clkctrl_outclk\,
	sload => VCC,
	ena => \inst_vga_subsystem|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|reg_read_page\(0));

-- Location: LCCOMB_X14_Y8_N8
\inst_vga_subsystem|sdram_ctrl|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~4_combout\ = (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & \inst_vga_subsystem|reg_read_page\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datad => \inst_vga_subsystem|reg_read_page\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~4_combout\);

-- Location: LCCOMB_X14_Y8_N26
\inst_vga_subsystem|sdram_ctrl|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~2_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & (\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\) # 
-- (\inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\) # ((\inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Init~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal0~1_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~2_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst_vga_subsystem|sdram_ctrl|SdrAddress[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|SdrAddress[19]~feeder_combout\ = \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|pixel_fifo|dcfifo_component|auto_generated|fifo_ram|q_b\(35),
	combout => \inst_vga_subsystem|sdram_ctrl|SdrAddress[19]~feeder_combout\);

-- Location: FF_X17_Y9_N31
\inst_vga_subsystem|sdram_ctrl|SdrAddress[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|SdrAddress[19]~feeder_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(19));

-- Location: LCCOMB_X14_Y8_N6
\inst_vga_subsystem|sdram_ctrl|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrAddress\(19) & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & 
-- \inst_vga_subsystem|reg_read_page\(0))))) # (!\inst_vga_subsystem|sdram_ctrl|SdrAddress\(19) & (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|reg_read_page\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrAddress\(19),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_DirectWrite~q\,
	datad => \inst_vga_subsystem|reg_read_page\(0),
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~0_combout\);

-- Location: LCCOMB_X14_Y8_N0
\inst_vga_subsystem|sdram_ctrl|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~1_combout\ = (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1) & (!\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2) & (!\inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\ & 
-- \inst_vga_subsystem|sdram_ctrl|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(1),
	datab => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq\(2),
	datac => \inst_vga_subsystem|sdram_ctrl|Equal5~3_OTERM59\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector17~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~1_combout\);

-- Location: LCCOMB_X14_Y8_N2
\inst_vga_subsystem|sdram_ctrl|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~3_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector17~1_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\ & ((\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|Selector17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Selector17~2_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector17~1_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~3_combout\);

-- Location: LCCOMB_X14_Y8_N12
\inst_vga_subsystem|sdram_ctrl|Selector17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~5_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector17~3_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector17~4_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\) # 
-- (!\inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|SdrCmd~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector17~4_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector17~3_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~5_combout\);

-- Location: LCCOMB_X14_Y8_N22
\inst_vga_subsystem|sdram_ctrl|Selector17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|Selector17~7_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector17~5_combout\) # ((\inst_vga_subsystem|sdram_ctrl|Selector17~6_combout\ & ((\inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\) # 
-- (\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|Selector0~2_combout\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Selector17~6_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector17~5_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|Selector17~7_combout\);

-- Location: FF_X14_Y8_N23
\inst_vga_subsystem|sdram_ctrl|SdrBa1_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|Selector17~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|SdrBa1_s~q\);

-- Location: LCCOMB_X21_Y8_N30
\inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\ = (\inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\ & ((\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\) # ((!\inst_vga_subsystem|sdram_ctrl|process_0~11_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	datab => \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|Selector16~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\);

-- Location: LCCOMB_X21_Y8_N4
\inst_vga_subsystem|sdram_ctrl|wren_sdr~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|wren_sdr~feeder_combout\ = \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|wren_sdr~feeder_combout\);

-- Location: FF_X21_Y8_N5
\inst_vga_subsystem|sdram_ctrl|wren_sdr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|wren_sdr~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|wren_sdr~q\);

-- Location: IOIBUF_X0_Y15_N1
\SDRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(5),
	o => \SDRAM_DQ[5]~input_o\);

-- Location: FF_X0_Y15_N3
\inst_vga_subsystem|sdram_ctrl|pixelOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[5]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(5));

-- Location: LCCOMB_X21_Y8_N8
\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~13_combout\ = \inst_vga_subsystem|sdram_ctrl|colLoadNr\(0) $ (VCC)
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\ = CARRY(\inst_vga_subsystem|sdram_ctrl|colLoadNr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(0),
	datad => VCC,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~13_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\);

-- Location: LCCOMB_X21_Y8_N28
\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (!\inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\ & !\inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|Equal9~1_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal10~8_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15_combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst_vga_subsystem|sdram_ctrl|colLoadNr~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\) # ((\inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\) # ((\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\) # 
-- (\inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[3]~18_OTERM105\,
	datab => \inst_vga_subsystem|sdram_ctrl|process_0~6_RTM029_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[4]~20_OTERM103\,
	datad => \inst_vga_subsystem|sdram_ctrl|SdrRoutineSeq[5]~22_OTERM101\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_combout\);

-- Location: FF_X18_Y8_N25
\inst_vga_subsystem|sdram_ctrl|colLoadNr~36_NEW_REG118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_OTERM119\);

-- Location: LCCOMB_X21_Y8_N0
\inst_vga_subsystem|sdram_ctrl|colLoadNr~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr~16_combout\ = (\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\ & (\inst_vga_subsystem|sdram_ctrl|colLoadNr~36_OTERM119\)) # (!\inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\ & 
-- (((!\inst_vga_subsystem|sdram_ctrl|process_0~11_combout\ & \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|colLoadNr~36_OTERM119\,
	datab => \inst_vga_subsystem|sdram_ctrl|process_0~11_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|colLoadNr~12_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|process_0~9_OTERM123\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr~16_combout\);

-- Location: LCCOMB_X21_Y8_N2
\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\ = (\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & ((\inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\) # ((\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15_combout\ & 
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr~16_combout\)))) # (!\inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\ & (\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15_combout\ & ((\inst_vga_subsystem|sdram_ctrl|colLoadNr~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|SdrRoutine.SdrRoutine_LoadRow~q\,
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~15_combout\,
	datac => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	datad => \inst_vga_subsystem|sdram_ctrl|colLoadNr~16_combout\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\);

-- Location: FF_X21_Y8_N9
\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~13_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(0));

-- Location: LCCOMB_X21_Y8_N10
\inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~18_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(1) & (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\)) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(1) & 
-- ((\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(1),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~14\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~18_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\);

-- Location: FF_X21_Y8_N11
\inst_vga_subsystem|sdram_ctrl|colLoadNr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~18_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(1));

-- Location: LCCOMB_X21_Y8_N12
\inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~20_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(2) & (\inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(2) & 
-- (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\ = CARRY((\inst_vga_subsystem|sdram_ctrl|colLoadNr\(2) & !\inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(2),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[1]~19\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~20_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\);

-- Location: FF_X21_Y8_N13
\inst_vga_subsystem|sdram_ctrl|colLoadNr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~20_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(2));

-- Location: LCCOMB_X21_Y8_N14
\inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~22_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(3) & (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\)) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(3) & 
-- ((\inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(3),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[2]~21\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~22_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\);

-- Location: FF_X21_Y8_N15
\inst_vga_subsystem|sdram_ctrl|colLoadNr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~22_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(3));

-- Location: LCCOMB_X21_Y8_N16
\inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~24_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(4) & (\inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(4) & 
-- (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\ = CARRY((\inst_vga_subsystem|sdram_ctrl|colLoadNr\(4) & !\inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(4),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[3]~23\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~24_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\);

-- Location: FF_X21_Y8_N17
\inst_vga_subsystem|sdram_ctrl|colLoadNr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~24_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(4));

-- Location: LCCOMB_X21_Y8_N18
\inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~26_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(5) & (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\)) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(5) & 
-- ((\inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(5),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[4]~25\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~26_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\);

-- Location: FF_X21_Y8_N19
\inst_vga_subsystem|sdram_ctrl|colLoadNr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~26_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(5));

-- Location: LCCOMB_X21_Y8_N20
\inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~28_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(6) & (\inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(6) & 
-- (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\ = CARRY((\inst_vga_subsystem|sdram_ctrl|colLoadNr\(6) & !\inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(6),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[5]~27\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~28_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\);

-- Location: FF_X21_Y8_N21
\inst_vga_subsystem|sdram_ctrl|colLoadNr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~28_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(6));

-- Location: LCCOMB_X21_Y8_N22
\inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~30_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(7) & (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\)) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(7) & 
-- ((\inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\) # (GND)))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\ = CARRY((!\inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(7),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[6]~29\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~30_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\);

-- Location: FF_X21_Y8_N23
\inst_vga_subsystem|sdram_ctrl|colLoadNr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~30_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(7));

-- Location: LCCOMB_X21_Y8_N24
\inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~32_combout\ = (\inst_vga_subsystem|sdram_ctrl|colLoadNr\(8) & (\inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\ $ (GND))) # (!\inst_vga_subsystem|sdram_ctrl|colLoadNr\(8) & 
-- (!\inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\ & VCC))
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~33\ = CARRY((\inst_vga_subsystem|sdram_ctrl|colLoadNr\(8) & !\inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(8),
	datad => VCC,
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[7]~31\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~32_combout\,
	cout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~33\);

-- Location: FF_X21_Y8_N25
\inst_vga_subsystem|sdram_ctrl|colLoadNr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~32_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(8));

-- Location: LCCOMB_X21_Y8_N26
\inst_vga_subsystem|sdram_ctrl|colLoadNr[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|sdram_ctrl|colLoadNr[9]~34_combout\ = \inst_vga_subsystem|sdram_ctrl|colLoadNr\(9) $ (\inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(9),
	cin => \inst_vga_subsystem|sdram_ctrl|colLoadNr[8]~33\,
	combout => \inst_vga_subsystem|sdram_ctrl|colLoadNr[9]~34_combout\);

-- Location: FF_X21_Y8_N27
\inst_vga_subsystem|sdram_ctrl|colLoadNr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst_vga_subsystem|sdram_ctrl|colLoadNr[9]~34_combout\,
	sclr => \inst_vga_subsystem|sdram_ctrl|Equal8~0_combout\,
	ena => \inst_vga_subsystem|sdram_ctrl|colLoadNr[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|colLoadNr\(9));

-- Location: FF_X24_Y8_N5
\inst_vga_subsystem|vga_engine|LessThan5~0_NEW_REG4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \inst_vga_subsystem|vga_engine|LessThan5~0_RTM07_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\);

-- Location: LCCOMB_X23_Y8_N24
\inst_vga_subsystem|vga_engine|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|LessThan5~1_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\ & (((!\inst_vga_subsystem|vga_engine|hcount\(8) & !\inst_vga_subsystem|vga_engine|hcount\(7))) # (!\inst_vga_subsystem|vga_engine|hcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(8),
	datab => \inst_vga_subsystem|vga_engine|hcount\(7),
	datac => \inst_vga_subsystem|vga_engine|hcount\(9),
	datad => \inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\,
	combout => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst_vga_subsystem|vga_engine|col_number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~4_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(0) & \inst_vga_subsystem|vga_engine|LessThan5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|hcount\(0),
	datad => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	combout => \inst_vga_subsystem|vga_engine|col_number~4_combout\);

-- Location: FF_X23_Y8_N23
\inst_vga_subsystem|vga_engine|col_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(0));

-- Location: LCCOMB_X25_Y8_N0
\inst_vga_subsystem|vga_engine|col_number~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~5_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & \inst_vga_subsystem|vga_engine|hcount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|vga_engine|hcount\(1),
	combout => \inst_vga_subsystem|vga_engine|col_number~5_combout\);

-- Location: FF_X25_Y8_N1
\inst_vga_subsystem|vga_engine|col_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(1));

-- Location: LCCOMB_X25_Y8_N24
\inst_vga_subsystem|vga_engine|col_number~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~6_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & \inst_vga_subsystem|vga_engine|hcount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|vga_engine|hcount\(2),
	combout => \inst_vga_subsystem|vga_engine|col_number~6_combout\);

-- Location: FF_X25_Y8_N25
\inst_vga_subsystem|vga_engine|col_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(2));

-- Location: LCCOMB_X25_Y8_N30
\inst_vga_subsystem|vga_engine|col_number~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~7_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & \inst_vga_subsystem|vga_engine|hcount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|vga_engine|hcount\(3),
	combout => \inst_vga_subsystem|vga_engine|col_number~7_combout\);

-- Location: FF_X25_Y8_N31
\inst_vga_subsystem|vga_engine|col_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(3));

-- Location: LCCOMB_X23_Y8_N0
\inst_vga_subsystem|vga_engine|col_number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~8_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(4) & \inst_vga_subsystem|vga_engine|LessThan5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_vga_subsystem|vga_engine|hcount\(4),
	datad => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	combout => \inst_vga_subsystem|vga_engine|col_number~8_combout\);

-- Location: FF_X23_Y8_N1
\inst_vga_subsystem|vga_engine|col_number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(4));

-- Location: LCCOMB_X23_Y8_N6
\inst_vga_subsystem|vga_engine|col_number~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~9_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & \inst_vga_subsystem|vga_engine|hcount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|vga_engine|hcount\(5),
	combout => \inst_vga_subsystem|vga_engine|col_number~9_combout\);

-- Location: FF_X23_Y8_N7
\inst_vga_subsystem|vga_engine|col_number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(5));

-- Location: LCCOMB_X23_Y8_N16
\inst_vga_subsystem|vga_engine|col_number~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~10_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & \inst_vga_subsystem|vga_engine|hcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|vga_engine|hcount\(6),
	combout => \inst_vga_subsystem|vga_engine|col_number~10_combout\);

-- Location: FF_X23_Y8_N17
\inst_vga_subsystem|vga_engine|col_number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(6));

-- Location: LCCOMB_X23_Y8_N4
\inst_vga_subsystem|vga_engine|col_number~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~12_combout\ = (!\inst_vga_subsystem|vga_engine|hcount\(9) & (\inst_vga_subsystem|vga_engine|hcount\(7) & (!\inst_vga_subsystem|vga_engine|hcount\(10) & !\inst_vga_subsystem|vga_engine|hcount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(9),
	datab => \inst_vga_subsystem|vga_engine|hcount\(7),
	datac => \inst_vga_subsystem|vga_engine|hcount\(10),
	datad => \inst_vga_subsystem|vga_engine|hcount\(11),
	combout => \inst_vga_subsystem|vga_engine|col_number~12_combout\);

-- Location: FF_X23_Y8_N5
\inst_vga_subsystem|vga_engine|col_number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(7));

-- Location: LCCOMB_X23_Y8_N12
\inst_vga_subsystem|vga_engine|col_number~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~13_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(8) & (!\inst_vga_subsystem|vga_engine|hcount\(11) & (!\inst_vga_subsystem|vga_engine|hcount\(10) & !\inst_vga_subsystem|vga_engine|hcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(8),
	datab => \inst_vga_subsystem|vga_engine|hcount\(11),
	datac => \inst_vga_subsystem|vga_engine|hcount\(10),
	datad => \inst_vga_subsystem|vga_engine|hcount\(9),
	combout => \inst_vga_subsystem|vga_engine|col_number~13_combout\);

-- Location: FF_X23_Y8_N13
\inst_vga_subsystem|vga_engine|col_number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(8));

-- Location: LCCOMB_X23_Y8_N8
\inst_vga_subsystem|vga_engine|col_number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|col_number~11_combout\ = (!\inst_vga_subsystem|vga_engine|hcount\(8) & (!\inst_vga_subsystem|vga_engine|hcount\(7) & (\inst_vga_subsystem|vga_engine|hcount\(9) & !\inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(8),
	datab => \inst_vga_subsystem|vga_engine|hcount\(7),
	datac => \inst_vga_subsystem|vga_engine|hcount\(9),
	datad => \inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\,
	combout => \inst_vga_subsystem|vga_engine|col_number~11_combout\);

-- Location: FF_X23_Y8_N9
\inst_vga_subsystem|vga_engine|col_number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|col_number~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|col_number\(9));

-- Location: IOIBUF_X0_Y15_N8
\SDRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(6),
	o => \SDRAM_DQ[6]~input_o\);

-- Location: FF_X0_Y15_N10
\inst_vga_subsystem|sdram_ctrl|pixelOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[6]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(6));

-- Location: IOIBUF_X16_Y0_N15
\SDRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(7),
	o => \SDRAM_DQ[7]~input_o\);

-- Location: FF_X16_Y0_N17
\inst_vga_subsystem|sdram_ctrl|pixelOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[7]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(7));

-- Location: IOIBUF_X5_Y0_N15
\SDRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(8),
	o => \SDRAM_DQ[8]~input_o\);

-- Location: FF_X5_Y0_N17
\inst_vga_subsystem|sdram_ctrl|pixelOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[8]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(8));

-- Location: IOIBUF_X1_Y0_N8
\SDRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(11),
	o => \SDRAM_DQ[11]~input_o\);

-- Location: FF_X1_Y0_N10
\inst_vga_subsystem|sdram_ctrl|pixelOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[11]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(11));

-- Location: IOIBUF_X14_Y0_N22
\SDRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(12),
	o => \SDRAM_DQ[12]~input_o\);

-- Location: FF_X14_Y0_N24
\inst_vga_subsystem|sdram_ctrl|pixelOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[12]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(12));

-- Location: IOIBUF_X1_Y0_N15
\SDRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(13),
	o => \SDRAM_DQ[13]~input_o\);

-- Location: FF_X1_Y0_N17
\inst_vga_subsystem|sdram_ctrl|pixelOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[13]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(13));

-- Location: IOIBUF_X1_Y0_N22
\SDRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(14),
	o => \SDRAM_DQ[14]~input_o\);

-- Location: FF_X1_Y0_N24
\inst_vga_subsystem|sdram_ctrl|pixelOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[14]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(14));

-- Location: IOIBUF_X0_Y12_N8
\SDRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(15),
	o => \SDRAM_DQ[15]~input_o\);

-- Location: FF_X0_Y12_N10
\inst_vga_subsystem|sdram_ctrl|pixelOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[15]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(15));

-- Location: M9K_X22_Y8_N0
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_subsystem_top:inst_vga_subsystem|ram2:read_buffer|altsyncram:altsyncram_component|altsyncram_mno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_vga_subsystem|sdram_ctrl|wren_sdr~q\,
	portbre => VCC,
	clk0 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	clk1 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	ena0 => \inst_vga_subsystem|sdram_ctrl|wren_sdr~q\,
	portadatain => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y9_N30
\inst_vga_subsystem|vga_engine|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|LessThan6~0_combout\ = (\inst_vga_subsystem|vga_engine|vcount\(6) & (\inst_vga_subsystem|vga_engine|vcount\(8) & (\inst_vga_subsystem|vga_engine|vcount\(7) & \inst_vga_subsystem|vga_engine|vcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(6),
	datab => \inst_vga_subsystem|vga_engine|vcount\(8),
	datac => \inst_vga_subsystem|vga_engine|vcount\(7),
	datad => \inst_vga_subsystem|vga_engine|vcount\(5),
	combout => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\);

-- Location: LCCOMB_X25_Y8_N4
\inst_vga_subsystem|vga_engine|vga_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~0_combout\ = (!\inst_vga_subsystem|vga_engine|vcount\(9) & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(11) & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & 
-- !\inst_vga_subsystem|vga_engine|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(9),
	datab => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(11),
	datac => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|vga_out~0_combout\);

-- Location: FF_X25_Y8_N5
\inst_vga_subsystem|vga_engine|vga_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(13));

-- Location: LCCOMB_X25_Y8_N6
\inst_vga_subsystem|vga_engine|vga_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~1_combout\ = (!\inst_vga_subsystem|vga_engine|vcount\(9) & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(12) & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & 
-- !\inst_vga_subsystem|vga_engine|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(9),
	datab => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(12),
	datac => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|vga_out~1_combout\);

-- Location: FF_X25_Y8_N7
\inst_vga_subsystem|vga_engine|vga_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(14));

-- Location: LCCOMB_X26_Y8_N8
\inst_vga_subsystem|vga_engine|vga_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~2_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(13) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(13),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~2_combout\);

-- Location: FF_X26_Y8_N9
\inst_vga_subsystem|vga_engine|vga_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(15));

-- Location: LCCOMB_X26_Y8_N22
\inst_vga_subsystem|vga_engine|vga_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~3_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(14) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(14),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~3_combout\);

-- Location: FF_X26_Y8_N23
\inst_vga_subsystem|vga_engine|vga_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(16));

-- Location: LCCOMB_X25_Y8_N20
\inst_vga_subsystem|vga_engine|vga_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~4_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(15) & (!\inst_vga_subsystem|vga_engine|vcount\(9) & 
-- !\inst_vga_subsystem|vga_engine|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datab => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(15),
	datac => \inst_vga_subsystem|vga_engine|vcount\(9),
	datad => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|vga_out~4_combout\);

-- Location: FF_X25_Y8_N21
\inst_vga_subsystem|vga_engine|vga_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(17));

-- Location: LCCOMB_X26_Y8_N18
\inst_vga_subsystem|vga_engine|vga_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~5_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(5) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(5),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~5_combout\);

-- Location: FF_X26_Y8_N19
\inst_vga_subsystem|vga_engine|vga_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(7));

-- Location: LCCOMB_X26_Y8_N12
\inst_vga_subsystem|vga_engine|vga_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~6_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(6) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(6),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~6_combout\);

-- Location: FF_X26_Y8_N13
\inst_vga_subsystem|vga_engine|vga_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(8));

-- Location: LCCOMB_X26_Y8_N30
\inst_vga_subsystem|vga_engine|vga_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~7_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(7) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(7),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~7_combout\);

-- Location: FF_X26_Y8_N31
\inst_vga_subsystem|vga_engine|vga_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(9));

-- Location: LCCOMB_X25_Y8_N12
\inst_vga_subsystem|vga_engine|vga_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~8_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(8) & (!\inst_vga_subsystem|vga_engine|vcount\(9) & 
-- !\inst_vga_subsystem|vga_engine|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datab => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(8),
	datac => \inst_vga_subsystem|vga_engine|vcount\(9),
	datad => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|vga_out~8_combout\);

-- Location: FF_X25_Y8_N13
\inst_vga_subsystem|vga_engine|vga_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(10));

-- Location: IOIBUF_X0_Y23_N15
\SDRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(0),
	o => \SDRAM_DQ[0]~input_o\);

-- Location: FF_X0_Y23_N17
\inst_vga_subsystem|sdram_ctrl|pixelOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[0]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(0));

-- Location: IOIBUF_X0_Y23_N22
\SDRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(1),
	o => \SDRAM_DQ[1]~input_o\);

-- Location: FF_X0_Y23_N24
\inst_vga_subsystem|sdram_ctrl|pixelOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[1]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(1));

-- Location: IOIBUF_X18_Y0_N8
\SDRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(2),
	o => \SDRAM_DQ[2]~input_o\);

-- Location: FF_X18_Y0_N10
\inst_vga_subsystem|sdram_ctrl|pixelOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[2]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(2));

-- Location: IOIBUF_X0_Y7_N8
\SDRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(3),
	o => \SDRAM_DQ[3]~input_o\);

-- Location: FF_X0_Y7_N10
\inst_vga_subsystem|sdram_ctrl|pixelOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[3]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(3));

-- Location: IOIBUF_X0_Y12_N1
\SDRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(4),
	o => \SDRAM_DQ[4]~input_o\);

-- Location: FF_X0_Y12_N3
\inst_vga_subsystem|sdram_ctrl|pixelOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[4]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(4));

-- Location: IOIBUF_X3_Y0_N1
\SDRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(9),
	o => \SDRAM_DQ[9]~input_o\);

-- Location: FF_X3_Y0_N3
\inst_vga_subsystem|sdram_ctrl|pixelOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[9]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(9));

-- Location: IOIBUF_X1_Y0_N1
\SDRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDRAM_DQ(10),
	o => \SDRAM_DQ[10]~input_o\);

-- Location: FF_X1_Y0_N3
\inst_vga_subsystem|sdram_ctrl|pixelOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \SDRAM_DQ[10]~input_o\,
	ena => \inst_vga_subsystem|sdram_ctrl|pixelOut[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|sdram_ctrl|pixelOut\(10));

-- Location: M9K_X22_Y9_N0
\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "vga_subsystem_top:inst_vga_subsystem|ram2:read_buffer|altsyncram:altsyncram_component|altsyncram_mno3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst_vga_subsystem|sdram_ctrl|wren_sdr~q\,
	portbre => VCC,
	clk0 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	clk1 => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	ena0 => \inst_vga_subsystem|sdram_ctrl|wren_sdr~q\,
	portadatain => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X25_Y8_N10
\inst_vga_subsystem|vga_engine|vga_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~9_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(9) & (!\inst_vga_subsystem|vga_engine|vcount\(9) & 
-- !\inst_vga_subsystem|vga_engine|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datab => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(9),
	datac => \inst_vga_subsystem|vga_engine|vcount\(9),
	datad => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|vga_out~9_combout\);

-- Location: FF_X25_Y8_N11
\inst_vga_subsystem|vga_engine|vga_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(11));

-- Location: LCCOMB_X25_Y8_N22
\inst_vga_subsystem|vga_engine|vga_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~10_combout\ = (!\inst_vga_subsystem|vga_engine|vcount\(9) & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(10) & 
-- !\inst_vga_subsystem|vga_engine|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(9),
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(10),
	datad => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	combout => \inst_vga_subsystem|vga_engine|vga_out~10_combout\);

-- Location: FF_X25_Y8_N23
\inst_vga_subsystem|vga_engine|vga_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(12));

-- Location: LCCOMB_X26_Y8_N10
\inst_vga_subsystem|vga_engine|vga_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~11_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(0) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(0),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~11_combout\);

-- Location: FF_X26_Y8_N11
\inst_vga_subsystem|vga_engine|vga_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(2));

-- Location: LCCOMB_X26_Y8_N20
\inst_vga_subsystem|vga_engine|vga_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~12_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(1) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(1),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~12_combout\);

-- Location: FF_X26_Y8_N21
\inst_vga_subsystem|vga_engine|vga_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(3));

-- Location: LCCOMB_X25_Y9_N24
\inst_vga_subsystem|vga_engine|vga_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~13_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (!\inst_vga_subsystem|vga_engine|vcount\(9) & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & 
-- \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|vcount\(9),
	datac => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(2),
	combout => \inst_vga_subsystem|vga_engine|vga_out~13_combout\);

-- Location: FF_X25_Y9_N25
\inst_vga_subsystem|vga_engine|vga_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(4));

-- Location: LCCOMB_X26_Y9_N0
\inst_vga_subsystem|vga_engine|vga_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~14_combout\ = (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (\inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(3) & 
-- !\inst_vga_subsystem|vga_engine|vcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datab => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datac => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(3),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|vga_out~14_combout\);

-- Location: FF_X26_Y9_N1
\inst_vga_subsystem|vga_engine|vga_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(5));

-- Location: LCCOMB_X25_Y9_N6
\inst_vga_subsystem|vga_engine|vga_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out~15_combout\ = (!\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & (!\inst_vga_subsystem|vga_engine|vcount\(9) & (\inst_vga_subsystem|vga_engine|LessThan5~1_combout\ & 
-- \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datab => \inst_vga_subsystem|vga_engine|vcount\(9),
	datac => \inst_vga_subsystem|vga_engine|LessThan5~1_combout\,
	datad => \inst_vga_subsystem|read_buffer|altsyncram_component|auto_generated|q_b\(4),
	combout => \inst_vga_subsystem|vga_engine|vga_out~15_combout\);

-- Location: FF_X25_Y9_N7
\inst_vga_subsystem|vga_engine|vga_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(6));

-- Location: FF_X23_Y8_N19
\inst_vga_subsystem|vga_engine|Equal0~0_NEW_REG0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|Equal0~0_RTM03_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|Equal0~0_OTERM1\);

-- Location: LCCOMB_X23_Y8_N20
\inst_vga_subsystem|vga_engine|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|process_1~0_combout\ = ((\inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\) # ((!\inst_vga_subsystem|vga_engine|Equal0~0_OTERM1\ & !\inst_vga_subsystem|vga_engine|hcount\(4)))) # (!\inst_vga_subsystem|vga_engine|hcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(9),
	datab => \inst_vga_subsystem|vga_engine|Equal0~0_OTERM1\,
	datac => \inst_vga_subsystem|vga_engine|hcount\(4),
	datad => \inst_vga_subsystem|vga_engine|LessThan5~0_OTERM5\,
	combout => \inst_vga_subsystem|vga_engine|process_1~0_combout\);

-- Location: LCCOMB_X23_Y8_N2
\inst_vga_subsystem|vga_engine|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|process_1~1_combout\ = (\inst_vga_subsystem|vga_engine|hcount\(5) & (\inst_vga_subsystem|vga_engine|hcount\(4) & \inst_vga_subsystem|vga_engine|hcount\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_vga_subsystem|vga_engine|hcount\(5),
	datac => \inst_vga_subsystem|vga_engine|hcount\(4),
	datad => \inst_vga_subsystem|vga_engine|hcount\(6),
	combout => \inst_vga_subsystem|vga_engine|process_1~1_combout\);

-- Location: LCCOMB_X23_Y8_N14
\inst_vga_subsystem|vga_engine|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|process_1~2_combout\ = (!\inst_vga_subsystem|vga_engine|hcount\(8) & (\inst_vga_subsystem|vga_engine|hcount\(7) & (!\inst_vga_subsystem|vga_engine|process_1~0_combout\ & 
-- !\inst_vga_subsystem|vga_engine|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|hcount\(8),
	datab => \inst_vga_subsystem|vga_engine|hcount\(7),
	datac => \inst_vga_subsystem|vga_engine|process_1~0_combout\,
	datad => \inst_vga_subsystem|vga_engine|process_1~1_combout\,
	combout => \inst_vga_subsystem|vga_engine|process_1~2_combout\);

-- Location: FF_X23_Y8_N15
\inst_vga_subsystem|vga_engine|hsync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|process_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|hsync_reg~q\);

-- Location: LCCOMB_X26_Y8_N4
\inst_vga_subsystem|vga_engine|vga_out[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out[1]~16_combout\ = !\inst_vga_subsystem|vga_engine|hsync_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|hsync_reg~q\,
	combout => \inst_vga_subsystem|vga_engine|vga_out[1]~16_combout\);

-- Location: FF_X26_Y8_N5
\inst_vga_subsystem|vga_engine|vga_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(1));

-- Location: LCCOMB_X24_Y9_N24
\inst_vga_subsystem|vga_engine|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|process_1~3_combout\ = ((\inst_vga_subsystem|vga_engine|vcount\(2)) # ((\inst_vga_subsystem|vga_engine|vcount\(4)) # (\inst_vga_subsystem|vga_engine|vcount\(9)))) # (!\inst_vga_subsystem|vga_engine|vcount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|vcount\(3),
	datab => \inst_vga_subsystem|vga_engine|vcount\(2),
	datac => \inst_vga_subsystem|vga_engine|vcount\(4),
	datad => \inst_vga_subsystem|vga_engine|vcount\(9),
	combout => \inst_vga_subsystem|vga_engine|process_1~3_combout\);

-- Location: LCCOMB_X25_Y9_N18
\inst_vga_subsystem|vga_engine|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|process_1~4_combout\ = (!\inst_vga_subsystem|vga_engine|process_1~3_combout\ & (\inst_vga_subsystem|vga_engine|LessThan6~0_combout\ & \inst_vga_subsystem|vga_engine|vcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_vga_subsystem|vga_engine|process_1~3_combout\,
	datac => \inst_vga_subsystem|vga_engine|LessThan6~0_combout\,
	datad => \inst_vga_subsystem|vga_engine|vcount\(1),
	combout => \inst_vga_subsystem|vga_engine|process_1~4_combout\);

-- Location: FF_X25_Y9_N19
\inst_vga_subsystem|vga_engine|vsync_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vsync_reg~q\);

-- Location: LCCOMB_X25_Y9_N2
\inst_vga_subsystem|vga_engine|vga_out[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_vga_subsystem|vga_engine|vga_out[0]~17_combout\ = !\inst_vga_subsystem|vga_engine|vsync_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_vga_subsystem|vga_engine|vsync_reg~q\,
	combout => \inst_vga_subsystem|vga_engine|vga_out[0]~17_combout\);

-- Location: FF_X25_Y9_N3
\inst_vga_subsystem|vga_engine|vga_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst_pll_vga|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst_vga_subsystem|vga_engine|vga_out[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_vga_subsystem|vga_engine|vga_out\(0));

-- Location: IOIBUF_X38_Y0_N1
\nTRST_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nTRST_i,
	o => \nTRST_i~input_o\);

-- Location: IOIBUF_X34_Y34_N15
\TCK_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TCK_i,
	o => \TCK_i~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\TDI_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TDI_i,
	o => \TDI_i~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\TMS_i~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TMS_i,
	o => \TMS_i~input_o\);
END structure;


