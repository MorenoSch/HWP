-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "06/26/2018 20:37:03"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g_reader IS
    PORT (
	clk_50 : IN std_logic;
	reset_n : IN std_logic;
	CS_N : OUT std_logic;
	SCLK : OUT std_logic;
	SDIO : INOUT std_logic;
	dataX : OUT std_logic_vector(12 DOWNTO 0);
	dataY : OUT std_logic_vector(12 DOWNTO 0);
	dataZ : OUT std_logic_vector(12 DOWNTO 0)
	);
END g_reader;

-- Design Ports Information
-- CS_N	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[9]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[10]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataX[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[8]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataY[12]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[8]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[9]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[10]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[11]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataZ[12]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIO	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g_reader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_CS_N : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_dataX : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_dataY : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_dataZ : std_logic_vector(12 DOWNTO 0);
SIGNAL \SCLK_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDIO~input_o\ : std_logic;
SIGNAL \SDIO~output_o\ : std_logic;
SIGNAL \CS_N~output_o\ : std_logic;
SIGNAL \SCLK~output_o\ : std_logic;
SIGNAL \dataX[0]~output_o\ : std_logic;
SIGNAL \dataX[1]~output_o\ : std_logic;
SIGNAL \dataX[2]~output_o\ : std_logic;
SIGNAL \dataX[3]~output_o\ : std_logic;
SIGNAL \dataX[4]~output_o\ : std_logic;
SIGNAL \dataX[5]~output_o\ : std_logic;
SIGNAL \dataX[6]~output_o\ : std_logic;
SIGNAL \dataX[7]~output_o\ : std_logic;
SIGNAL \dataX[8]~output_o\ : std_logic;
SIGNAL \dataX[9]~output_o\ : std_logic;
SIGNAL \dataX[10]~output_o\ : std_logic;
SIGNAL \dataX[11]~output_o\ : std_logic;
SIGNAL \dataX[12]~output_o\ : std_logic;
SIGNAL \dataY[0]~output_o\ : std_logic;
SIGNAL \dataY[1]~output_o\ : std_logic;
SIGNAL \dataY[2]~output_o\ : std_logic;
SIGNAL \dataY[3]~output_o\ : std_logic;
SIGNAL \dataY[4]~output_o\ : std_logic;
SIGNAL \dataY[5]~output_o\ : std_logic;
SIGNAL \dataY[6]~output_o\ : std_logic;
SIGNAL \dataY[7]~output_o\ : std_logic;
SIGNAL \dataY[8]~output_o\ : std_logic;
SIGNAL \dataY[9]~output_o\ : std_logic;
SIGNAL \dataY[10]~output_o\ : std_logic;
SIGNAL \dataY[11]~output_o\ : std_logic;
SIGNAL \dataY[12]~output_o\ : std_logic;
SIGNAL \dataZ[0]~output_o\ : std_logic;
SIGNAL \dataZ[1]~output_o\ : std_logic;
SIGNAL \dataZ[2]~output_o\ : std_logic;
SIGNAL \dataZ[3]~output_o\ : std_logic;
SIGNAL \dataZ[4]~output_o\ : std_logic;
SIGNAL \dataZ[5]~output_o\ : std_logic;
SIGNAL \dataZ[6]~output_o\ : std_logic;
SIGNAL \dataZ[7]~output_o\ : std_logic;
SIGNAL \dataZ[8]~output_o\ : std_logic;
SIGNAL \dataZ[9]~output_o\ : std_logic;
SIGNAL \dataZ[10]~output_o\ : std_logic;
SIGNAL \dataZ[11]~output_o\ : std_logic;
SIGNAL \dataZ[12]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \SCLK_int~0_combout\ : std_logic;
SIGNAL \SCLK_int~feeder_combout\ : std_logic;
SIGNAL \SCLK_int~q\ : std_logic;
SIGNAL \SCLK_int~clkctrl_outclk\ : std_logic;
SIGNAL \transmission_count[0]~5_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \SDIO~2_combout\ : std_logic;
SIGNAL \next_state~35_combout\ : std_logic;
SIGNAL \next_state~33_combout\ : std_logic;
SIGNAL \transmission_count[0]~6\ : std_logic;
SIGNAL \transmission_count[1]~7_combout\ : std_logic;
SIGNAL \transmission_count[1]~8\ : std_logic;
SIGNAL \transmission_count[2]~9_combout\ : std_logic;
SIGNAL \transmission_count[2]~10\ : std_logic;
SIGNAL \transmission_count[3]~11_combout\ : std_logic;
SIGNAL \transmission_count[3]~12\ : std_logic;
SIGNAL \transmission_count[4]~13_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \next_state~34_combout\ : std_logic;
SIGNAL \next_state~36_combout\ : std_logic;
SIGNAL \next_state.readY~q\ : std_logic;
SIGNAL \next_state~26_combout\ : std_logic;
SIGNAL \next_state~27_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \next_state~28_combout\ : std_logic;
SIGNAL \next_state~29_combout\ : std_logic;
SIGNAL \next_state.readX~q\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \pause_entered~0_combout\ : std_logic;
SIGNAL \pause_entered~q\ : std_logic;
SIGNAL \time_count[0]~16_combout\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \time_count[13]~38_combout\ : std_logic;
SIGNAL \time_count[13]~39_combout\ : std_logic;
SIGNAL \time_count[0]~17\ : std_logic;
SIGNAL \time_count[1]~18_combout\ : std_logic;
SIGNAL \time_count[1]~19\ : std_logic;
SIGNAL \time_count[2]~20_combout\ : std_logic;
SIGNAL \time_count[2]~21\ : std_logic;
SIGNAL \time_count[3]~22_combout\ : std_logic;
SIGNAL \time_count[3]~23\ : std_logic;
SIGNAL \time_count[4]~24_combout\ : std_logic;
SIGNAL \time_count[4]~25\ : std_logic;
SIGNAL \time_count[5]~26_combout\ : std_logic;
SIGNAL \time_count[5]~27\ : std_logic;
SIGNAL \time_count[6]~28_combout\ : std_logic;
SIGNAL \time_count[6]~29\ : std_logic;
SIGNAL \time_count[7]~30_combout\ : std_logic;
SIGNAL \time_count[7]~31\ : std_logic;
SIGNAL \time_count[8]~32_combout\ : std_logic;
SIGNAL \time_count[8]~33\ : std_logic;
SIGNAL \time_count[9]~34_combout\ : std_logic;
SIGNAL \time_count[9]~35\ : std_logic;
SIGNAL \time_count[10]~36_combout\ : std_logic;
SIGNAL \time_count[10]~37\ : std_logic;
SIGNAL \time_count[11]~40_combout\ : std_logic;
SIGNAL \time_count[11]~41\ : std_logic;
SIGNAL \time_count[12]~42_combout\ : std_logic;
SIGNAL \time_count[12]~43\ : std_logic;
SIGNAL \time_count[13]~44_combout\ : std_logic;
SIGNAL \time_count[13]~45\ : std_logic;
SIGNAL \time_count[14]~46_combout\ : std_logic;
SIGNAL \time_count[14]~47\ : std_logic;
SIGNAL \time_count[15]~48_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state.readY~q\ : std_logic;
SIGNAL \next_state~25_combout\ : std_logic;
SIGNAL \next_state~37_combout\ : std_logic;
SIGNAL \next_state~46_combout\ : std_logic;
SIGNAL \next_state~38_combout\ : std_logic;
SIGNAL \next_state~39_combout\ : std_logic;
SIGNAL \next_state.readZ~q\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state.readZ~q\ : std_logic;
SIGNAL \SDIO~1_combout\ : std_logic;
SIGNAL \next_state~31_combout\ : std_logic;
SIGNAL \next_state.init0~0_combout\ : std_logic;
SIGNAL \next_state.init0~1_combout\ : std_logic;
SIGNAL \next_state.init0~q\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state.init0~q\ : std_logic;
SIGNAL \next_state~44_combout\ : std_logic;
SIGNAL \next_state~43_combout\ : std_logic;
SIGNAL \next_state.init1~q\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state.init1~q\ : std_logic;
SIGNAL \next_state~42_combout\ : std_logic;
SIGNAL \next_state.init2~q\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \state.init2~q\ : std_logic;
SIGNAL \next_state~40_combout\ : std_logic;
SIGNAL \next_state~41_combout\ : std_logic;
SIGNAL \next_state.init3~q\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.init3~q\ : std_logic;
SIGNAL \next_state~22_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.pause~q\ : std_logic;
SIGNAL \next_state~23_combout\ : std_logic;
SIGNAL \next_state~24_combout\ : std_logic;
SIGNAL \next_state~30_combout\ : std_logic;
SIGNAL \next_state~32_combout\ : std_logic;
SIGNAL \next_state.init4~q\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state.init4~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.readX~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \SDIO~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \SDIO~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \next_state~45_combout\ : std_logic;
SIGNAL \SDIO~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \SDIO~9_combout\ : std_logic;
SIGNAL \SDIO~7_combout\ : std_logic;
SIGNAL \SDIO~8_combout\ : std_logic;
SIGNAL \SDIO~10_combout\ : std_logic;
SIGNAL \SDIO~11_combout\ : std_logic;
SIGNAL \SDIO~12_combout\ : std_logic;
SIGNAL \SDIO~13_combout\ : std_logic;
SIGNAL \SDIO~reg0_q\ : std_logic;
SIGNAL \SDIO~14_combout\ : std_logic;
SIGNAL \SDIO~15_combout\ : std_logic;
SIGNAL \SDIO~en_q\ : std_logic;
SIGNAL \SCLK~0_combout\ : std_logic;
SIGNAL transmission_count : std_logic_vector(4 DOWNTO 0);
SIGNAL time_count : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_SCLK_int~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_state.pause~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_reset_n <= reset_n;
CS_N <= ww_CS_N;
SCLK <= ww_SCLK;
dataX <= ww_dataX;
dataY <= ww_dataY;
dataZ <= ww_dataZ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SCLK_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK_int~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ALT_INV_SCLK_int~clkctrl_outclk\ <= NOT \SCLK_int~clkctrl_outclk\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_state.pause~q\ <= NOT \state.pause~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N2
\SDIO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDIO~reg0_q\,
	oe => \SDIO~en_q\,
	devoe => ww_devoe,
	o => \SDIO~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.pause~q\,
	devoe => ww_devoe,
	o => \CS_N~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SCLK~0_combout\,
	devoe => ww_devoe,
	o => \SCLK~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\dataX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\dataX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\dataX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[2]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\dataX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\dataX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\dataX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[5]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\dataX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[6]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\dataX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\dataX[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\dataX[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[9]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\dataX[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\dataX[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[11]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\dataX[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataX[12]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\dataY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\dataY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\dataY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dataY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\dataY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\dataY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\dataY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\dataY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[7]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\dataY[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\dataY[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\dataY[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[10]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\dataY[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[11]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\dataY[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataY[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\dataZ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\dataZ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\dataZ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\dataZ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[3]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\dataZ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\dataZ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\dataZ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\dataZ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\dataZ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[8]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\dataZ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\dataZ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dataZ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dataZ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataZ[12]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G18
\clk_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y10_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X11_Y10_N17
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X11_Y10_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X11_Y10_N26
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\Add0~2_combout\ & ((!counter(4)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => counter(4),
	datad => \Add0~2_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X11_Y10_N27
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X11_Y10_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X11_Y10_N21
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X11_Y10_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X11_Y10_N4
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add0~6_combout\ & ((!counter(4)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => counter(4),
	datac => \Add0~6_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X11_Y10_N5
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X11_Y10_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(1) & (!counter(2) & (counter(3) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(3),
	datad => counter(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = counter(4) $ (!\Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X11_Y10_N14
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\Add0~8_combout\ & ((!counter(4)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => counter(4),
	datad => \Add0~8_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X11_Y10_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X11_Y10_N2
\SCLK_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SCLK_int~0_combout\ = \SCLK_int~q\ $ (((counter(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => \SCLK_int~q\,
	datad => \Equal0~0_combout\,
	combout => \SCLK_int~0_combout\);

-- Location: LCCOMB_X17_Y10_N4
\SCLK_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SCLK_int~feeder_combout\ = \SCLK_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCLK_int~0_combout\,
	combout => \SCLK_int~feeder_combout\);

-- Location: FF_X17_Y10_N5
SCLK_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \SCLK_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCLK_int~q\);

-- Location: CLKCTRL_G1
\SCLK_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCLK_int~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y10_N16
\transmission_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmission_count[0]~5_combout\ = transmission_count(0) $ (VCC)
-- \transmission_count[0]~6\ = CARRY(transmission_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transmission_count(0),
	datad => VCC,
	combout => \transmission_count[0]~5_combout\,
	cout => \transmission_count[0]~6\);

-- Location: IOIBUF_X27_Y0_N8
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X16_Y10_N8
\SDIO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~2_combout\ = (\next_state~22_combout\ & !\state.init4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state~22_combout\,
	datad => \state.init4~q\,
	combout => \SDIO~2_combout\);

-- Location: LCCOMB_X11_Y10_N30
\next_state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~35_combout\ = (((!\state.readZ~q\ & !\state.readY~q\)) # (!\state.pause~q\)) # (!\SDIO~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readZ~q\,
	datab => \state.readY~q\,
	datac => \SDIO~2_combout\,
	datad => \state.pause~q\,
	combout => \next_state~35_combout\);

-- Location: LCCOMB_X11_Y10_N28
\next_state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~33_combout\ = (\state.readX~q\ & \state.pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.readX~q\,
	datad => \state.pause~q\,
	combout => \next_state~33_combout\);

-- Location: LCCOMB_X15_Y10_N18
\transmission_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmission_count[1]~7_combout\ = (transmission_count(1) & (!\transmission_count[0]~6\)) # (!transmission_count(1) & ((\transmission_count[0]~6\) # (GND)))
-- \transmission_count[1]~8\ = CARRY((!\transmission_count[0]~6\) # (!transmission_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmission_count(1),
	datad => VCC,
	cin => \transmission_count[0]~6\,
	combout => \transmission_count[1]~7_combout\,
	cout => \transmission_count[1]~8\);

-- Location: FF_X15_Y10_N19
\transmission_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \transmission_count[1]~7_combout\,
	sclr => \ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmission_count(1));

-- Location: LCCOMB_X15_Y10_N20
\transmission_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmission_count[2]~9_combout\ = (transmission_count(2) & (\transmission_count[1]~8\ $ (GND))) # (!transmission_count(2) & (!\transmission_count[1]~8\ & VCC))
-- \transmission_count[2]~10\ = CARRY((transmission_count(2) & !\transmission_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmission_count(2),
	datad => VCC,
	cin => \transmission_count[1]~8\,
	combout => \transmission_count[2]~9_combout\,
	cout => \transmission_count[2]~10\);

-- Location: FF_X15_Y10_N21
\transmission_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \transmission_count[2]~9_combout\,
	sclr => \ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmission_count(2));

-- Location: LCCOMB_X15_Y10_N22
\transmission_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmission_count[3]~11_combout\ = (transmission_count(3) & (!\transmission_count[2]~10\)) # (!transmission_count(3) & ((\transmission_count[2]~10\) # (GND)))
-- \transmission_count[3]~12\ = CARRY((!\transmission_count[2]~10\) # (!transmission_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(3),
	datad => VCC,
	cin => \transmission_count[2]~10\,
	combout => \transmission_count[3]~11_combout\,
	cout => \transmission_count[3]~12\);

-- Location: FF_X15_Y10_N23
\transmission_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \transmission_count[3]~11_combout\,
	sclr => \ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmission_count(3));

-- Location: LCCOMB_X15_Y10_N24
\transmission_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmission_count[4]~13_combout\ = \transmission_count[3]~12\ $ (!transmission_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => transmission_count(4),
	cin => \transmission_count[3]~12\,
	combout => \transmission_count[4]~13_combout\);

-- Location: FF_X15_Y10_N25
\transmission_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \transmission_count[4]~13_combout\,
	sclr => \ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmission_count(4));

-- Location: LCCOMB_X14_Y10_N18
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!transmission_count(2) & (!transmission_count(1) & (transmission_count(4) & transmission_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(2),
	datab => transmission_count(1),
	datac => transmission_count(4),
	datad => transmission_count(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (transmission_count(3) & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transmission_count(3),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X11_Y10_N10
\next_state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~34_combout\ = (\SDIO~2_combout\ & ((\Equal2~1_combout\ & (\next_state~33_combout\)) # (!\Equal2~1_combout\ & ((\next_state.readY~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~33_combout\,
	datab => \next_state.readY~q\,
	datac => \SDIO~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \next_state~34_combout\);

-- Location: LCCOMB_X11_Y10_N8
\next_state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~36_combout\ = (\next_state~34_combout\) # ((\next_state~35_combout\ & (!\next_state~24_combout\ & \next_state.readY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~35_combout\,
	datab => \next_state~24_combout\,
	datac => \next_state.readY~q\,
	datad => \next_state~34_combout\,
	combout => \next_state~36_combout\);

-- Location: FF_X11_Y10_N9
\next_state.readY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~36_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.readY~q\);

-- Location: LCCOMB_X14_Y10_N20
\next_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~26_combout\ = (\state.init4~q\) # ((!\next_state~25_combout\ & (\Equal2~1_combout\ & \state.readZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~25_combout\,
	datab => \Equal2~1_combout\,
	datac => \state.readZ~q\,
	datad => \state.init4~q\,
	combout => \next_state~26_combout\);

-- Location: LCCOMB_X14_Y10_N30
\next_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~27_combout\ = (\next_state~26_combout\) # ((\next_state.readX~q\ & ((!\Equal2~1_combout\) # (!\next_state~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~25_combout\,
	datab => \next_state~26_combout\,
	datac => \next_state.readX~q\,
	datad => \Equal2~1_combout\,
	combout => \next_state~27_combout\);

-- Location: LCCOMB_X15_Y10_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!transmission_count(2) & (!transmission_count(0) & (!transmission_count(1) & transmission_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(2),
	datab => transmission_count(0),
	datac => transmission_count(1),
	datad => transmission_count(4),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\next_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~28_combout\ = (\SDIO~2_combout\ & (\state.pause~q\)) # (!\SDIO~2_combout\ & (((!transmission_count(3) & \Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~2_combout\,
	datab => \state.pause~q\,
	datac => transmission_count(3),
	datad => \Equal1~0_combout\,
	combout => \next_state~28_combout\);

-- Location: LCCOMB_X14_Y10_N14
\next_state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~29_combout\ = (\next_state~28_combout\ & (\next_state~27_combout\ & (\next_state~22_combout\))) # (!\next_state~28_combout\ & (((\next_state.readX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~27_combout\,
	datab => \next_state~22_combout\,
	datac => \next_state.readX~q\,
	datad => \next_state~28_combout\,
	combout => \next_state~29_combout\);

-- Location: FF_X14_Y10_N15
\next_state.readX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~29_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.readX~q\);

-- Location: LCCOMB_X17_Y10_N10
\state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (!\SCLK_int~q\ & !\next_state.readX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SCLK_int~q\,
	datad => \next_state.readX~q\,
	combout => \state~23_combout\);

-- Location: LCCOMB_X17_Y10_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!time_count(3) & !time_count(2))) # (!time_count(4))) # (!time_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_count(3),
	datab => time_count(2),
	datac => time_count(5),
	datad => time_count(4),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((\LessThan1~0_combout\) # (!time_count(6))) # (!time_count(7))) # (!time_count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_count(8),
	datab => time_count(7),
	datac => time_count(6),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X17_Y10_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!time_count(12) & (!time_count(11) & (!time_count(10) & !time_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_count(12),
	datab => time_count(11),
	datac => time_count(10),
	datad => time_count(13),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!time_count(15) & (!time_count(14) & (\LessThan0~0_combout\ & !time_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_count(15),
	datab => time_count(14),
	datac => \LessThan0~0_combout\,
	datad => time_count(9),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X16_Y10_N14
\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\process_1~3_combout\ & (((\LessThan1~1_combout\ & \LessThan1~2_combout\)) # (!\state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~23_combout\,
	datab => \LessThan1~1_combout\,
	datac => \process_1~3_combout\,
	datad => \LessThan1~2_combout\,
	combout => \state~24_combout\);

-- Location: LCCOMB_X17_Y10_N0
\pause_entered~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pause_entered~0_combout\ = (\reset_n~input_o\ & ((\state.pause~q\ & (\pause_entered~q\)) # (!\state.pause~q\ & ((\state~24_combout\))))) # (!\reset_n~input_o\ & (((\pause_entered~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \state.pause~q\,
	datac => \pause_entered~q\,
	datad => \state~24_combout\,
	combout => \pause_entered~0_combout\);

-- Location: FF_X17_Y10_N1
pause_entered : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \pause_entered~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pause_entered~q\);

-- Location: LCCOMB_X18_Y10_N0
\time_count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[0]~16_combout\ = (\pause_entered~q\ & (time_count(0) $ (VCC))) # (!\pause_entered~q\ & (time_count(0) & VCC))
-- \time_count[0]~17\ = CARRY((\pause_entered~q\ & time_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pause_entered~q\,
	datab => time_count(0),
	datad => VCC,
	combout => \time_count[0]~16_combout\,
	cout => \time_count[0]~17\);

-- Location: LCCOMB_X17_Y10_N16
\state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (!\next_state.readX~q\ & (!\SCLK_int~q\ & ((!\LessThan1~2_combout\) # (!\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.readX~q\,
	datab => \SCLK_int~q\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~2_combout\,
	combout => \state~29_combout\);

-- Location: LCCOMB_X17_Y10_N30
\time_count[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[13]~38_combout\ = ((\state~29_combout\) # (!\reset_n~input_o\)) # (!\process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \reset_n~input_o\,
	datac => \state~29_combout\,
	combout => \time_count[13]~38_combout\);

-- Location: LCCOMB_X17_Y10_N6
\time_count[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[13]~39_combout\ = (!\reset_n~input_o\) # (!\state.pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.pause~q\,
	datad => \reset_n~input_o\,
	combout => \time_count[13]~39_combout\);

-- Location: FF_X18_Y10_N1
\time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[0]~16_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(0));

-- Location: LCCOMB_X18_Y10_N2
\time_count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[1]~18_combout\ = (time_count(1) & (!\time_count[0]~17\)) # (!time_count(1) & ((\time_count[0]~17\) # (GND)))
-- \time_count[1]~19\ = CARRY((!\time_count[0]~17\) # (!time_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(1),
	datad => VCC,
	cin => \time_count[0]~17\,
	combout => \time_count[1]~18_combout\,
	cout => \time_count[1]~19\);

-- Location: FF_X18_Y10_N3
\time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[1]~18_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(1));

-- Location: LCCOMB_X18_Y10_N4
\time_count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[2]~20_combout\ = (time_count(2) & (\time_count[1]~19\ $ (GND))) # (!time_count(2) & (!\time_count[1]~19\ & VCC))
-- \time_count[2]~21\ = CARRY((time_count(2) & !\time_count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(2),
	datad => VCC,
	cin => \time_count[1]~19\,
	combout => \time_count[2]~20_combout\,
	cout => \time_count[2]~21\);

-- Location: FF_X18_Y10_N5
\time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[2]~20_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(2));

-- Location: LCCOMB_X18_Y10_N6
\time_count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[3]~22_combout\ = (time_count(3) & (!\time_count[2]~21\)) # (!time_count(3) & ((\time_count[2]~21\) # (GND)))
-- \time_count[3]~23\ = CARRY((!\time_count[2]~21\) # (!time_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_count(3),
	datad => VCC,
	cin => \time_count[2]~21\,
	combout => \time_count[3]~22_combout\,
	cout => \time_count[3]~23\);

-- Location: FF_X18_Y10_N7
\time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[3]~22_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(3));

-- Location: LCCOMB_X18_Y10_N8
\time_count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[4]~24_combout\ = (time_count(4) & (\time_count[3]~23\ $ (GND))) # (!time_count(4) & (!\time_count[3]~23\ & VCC))
-- \time_count[4]~25\ = CARRY((time_count(4) & !\time_count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(4),
	datad => VCC,
	cin => \time_count[3]~23\,
	combout => \time_count[4]~24_combout\,
	cout => \time_count[4]~25\);

-- Location: FF_X18_Y10_N9
\time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[4]~24_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(4));

-- Location: LCCOMB_X18_Y10_N10
\time_count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[5]~26_combout\ = (time_count(5) & (!\time_count[4]~25\)) # (!time_count(5) & ((\time_count[4]~25\) # (GND)))
-- \time_count[5]~27\ = CARRY((!\time_count[4]~25\) # (!time_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_count(5),
	datad => VCC,
	cin => \time_count[4]~25\,
	combout => \time_count[5]~26_combout\,
	cout => \time_count[5]~27\);

-- Location: FF_X18_Y10_N11
\time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[5]~26_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(5));

-- Location: LCCOMB_X18_Y10_N12
\time_count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[6]~28_combout\ = (time_count(6) & (\time_count[5]~27\ $ (GND))) # (!time_count(6) & (!\time_count[5]~27\ & VCC))
-- \time_count[6]~29\ = CARRY((time_count(6) & !\time_count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_count(6),
	datad => VCC,
	cin => \time_count[5]~27\,
	combout => \time_count[6]~28_combout\,
	cout => \time_count[6]~29\);

-- Location: FF_X18_Y10_N13
\time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[6]~28_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(6));

-- Location: LCCOMB_X18_Y10_N14
\time_count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[7]~30_combout\ = (time_count(7) & (!\time_count[6]~29\)) # (!time_count(7) & ((\time_count[6]~29\) # (GND)))
-- \time_count[7]~31\ = CARRY((!\time_count[6]~29\) # (!time_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(7),
	datad => VCC,
	cin => \time_count[6]~29\,
	combout => \time_count[7]~30_combout\,
	cout => \time_count[7]~31\);

-- Location: FF_X18_Y10_N15
\time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[7]~30_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(7));

-- Location: LCCOMB_X18_Y10_N16
\time_count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[8]~32_combout\ = (time_count(8) & (\time_count[7]~31\ $ (GND))) # (!time_count(8) & (!\time_count[7]~31\ & VCC))
-- \time_count[8]~33\ = CARRY((time_count(8) & !\time_count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(8),
	datad => VCC,
	cin => \time_count[7]~31\,
	combout => \time_count[8]~32_combout\,
	cout => \time_count[8]~33\);

-- Location: FF_X18_Y10_N17
\time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[8]~32_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(8));

-- Location: LCCOMB_X18_Y10_N18
\time_count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[9]~34_combout\ = (time_count(9) & (!\time_count[8]~33\)) # (!time_count(9) & ((\time_count[8]~33\) # (GND)))
-- \time_count[9]~35\ = CARRY((!\time_count[8]~33\) # (!time_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(9),
	datad => VCC,
	cin => \time_count[8]~33\,
	combout => \time_count[9]~34_combout\,
	cout => \time_count[9]~35\);

-- Location: FF_X18_Y10_N19
\time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[9]~34_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(9));

-- Location: LCCOMB_X18_Y10_N20
\time_count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[10]~36_combout\ = (time_count(10) & (\time_count[9]~35\ $ (GND))) # (!time_count(10) & (!\time_count[9]~35\ & VCC))
-- \time_count[10]~37\ = CARRY((time_count(10) & !\time_count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(10),
	datad => VCC,
	cin => \time_count[9]~35\,
	combout => \time_count[10]~36_combout\,
	cout => \time_count[10]~37\);

-- Location: FF_X18_Y10_N21
\time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[10]~36_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(10));

-- Location: LCCOMB_X18_Y10_N22
\time_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[11]~40_combout\ = (time_count(11) & (!\time_count[10]~37\)) # (!time_count(11) & ((\time_count[10]~37\) # (GND)))
-- \time_count[11]~41\ = CARRY((!\time_count[10]~37\) # (!time_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_count(11),
	datad => VCC,
	cin => \time_count[10]~37\,
	combout => \time_count[11]~40_combout\,
	cout => \time_count[11]~41\);

-- Location: FF_X18_Y10_N23
\time_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[11]~40_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(11));

-- Location: LCCOMB_X18_Y10_N24
\time_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[12]~42_combout\ = (time_count(12) & (\time_count[11]~41\ $ (GND))) # (!time_count(12) & (!\time_count[11]~41\ & VCC))
-- \time_count[12]~43\ = CARRY((time_count(12) & !\time_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(12),
	datad => VCC,
	cin => \time_count[11]~41\,
	combout => \time_count[12]~42_combout\,
	cout => \time_count[12]~43\);

-- Location: FF_X18_Y10_N25
\time_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[12]~42_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(12));

-- Location: LCCOMB_X18_Y10_N26
\time_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[13]~44_combout\ = (time_count(13) & (!\time_count[12]~43\)) # (!time_count(13) & ((\time_count[12]~43\) # (GND)))
-- \time_count[13]~45\ = CARRY((!\time_count[12]~43\) # (!time_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_count(13),
	datad => VCC,
	cin => \time_count[12]~43\,
	combout => \time_count[13]~44_combout\,
	cout => \time_count[13]~45\);

-- Location: FF_X18_Y10_N27
\time_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[13]~44_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(13));

-- Location: LCCOMB_X18_Y10_N28
\time_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[14]~46_combout\ = (time_count(14) & (\time_count[13]~45\ $ (GND))) # (!time_count(14) & (!\time_count[13]~45\ & VCC))
-- \time_count[14]~47\ = CARRY((time_count(14) & !\time_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => time_count(14),
	datad => VCC,
	cin => \time_count[13]~45\,
	combout => \time_count[14]~46_combout\,
	cout => \time_count[14]~47\);

-- Location: FF_X18_Y10_N29
\time_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[14]~46_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(14));

-- Location: LCCOMB_X18_Y10_N30
\time_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_count[15]~48_combout\ = time_count(15) $ (\time_count[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => time_count(15),
	cin => \time_count[14]~47\,
	combout => \time_count[15]~48_combout\);

-- Location: FF_X18_Y10_N31
\time_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \time_count[15]~48_combout\,
	sclr => \time_count[13]~38_combout\,
	ena => \time_count[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => time_count(15));

-- Location: LCCOMB_X17_Y10_N8
\process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!time_count(14)) # (!time_count(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => time_count(15),
	datad => time_count(14),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X17_Y10_N24
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!time_count(7) & (((!time_count(4) & !time_count(5))) # (!time_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_count(4),
	datab => time_count(6),
	datac => time_count(5),
	datad => time_count(7),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X17_Y10_N20
\process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\LessThan0~0_combout\ & (((\process_1~0_combout\) # (!time_count(9))) # (!time_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => time_count(8),
	datab => time_count(9),
	datac => \LessThan0~0_combout\,
	datad => \process_1~0_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X17_Y10_N2
\process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = ((\SCLK_int~q\) # ((\process_1~2_combout\) # (\process_1~1_combout\))) # (!\next_state.readX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.readX~q\,
	datab => \SCLK_int~q\,
	datac => \process_1~2_combout\,
	datad => \process_1~1_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X14_Y10_N8
\state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (\state~20_combout\ & (\next_state.readY~q\ & \process_1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~20_combout\,
	datac => \next_state.readY~q\,
	datad => \process_1~3_combout\,
	combout => \state~28_combout\);

-- Location: FF_X14_Y10_N9
\state.readY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~28_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.readY~q\);

-- Location: LCCOMB_X14_Y10_N6
\next_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~25_combout\ = (\state.readY~q\) # (\state.readX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.readY~q\,
	datad => \state.readX~q\,
	combout => \next_state~25_combout\);

-- Location: LCCOMB_X14_Y10_N26
\next_state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~37_combout\ = (\next_state~25_combout\ & (transmission_count(3) & ((\Equal2~0_combout\)))) # (!\next_state~25_combout\ & (((\state.readZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~25_combout\,
	datab => transmission_count(3),
	datac => \state.readZ~q\,
	datad => \Equal2~0_combout\,
	combout => \next_state~37_combout\);

-- Location: LCCOMB_X14_Y10_N22
\next_state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~46_combout\ = (!\state.init4~q\ & (\next_state~22_combout\ & ((!\next_state~37_combout\) # (!\state.readX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readX~q\,
	datab => \state.init4~q\,
	datac => \next_state~37_combout\,
	datad => \next_state~22_combout\,
	combout => \next_state~46_combout\);

-- Location: LCCOMB_X14_Y10_N24
\next_state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~38_combout\ = (\next_state~37_combout\ & ((\state.readY~q\ & ((!\next_state.readZ~q\))) # (!\state.readY~q\ & (\Equal2~1_combout\ & \next_state.readZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readY~q\,
	datab => \Equal2~1_combout\,
	datac => \next_state~37_combout\,
	datad => \next_state.readZ~q\,
	combout => \next_state~38_combout\);

-- Location: LCCOMB_X14_Y10_N12
\next_state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~39_combout\ = (\next_state~28_combout\ & (\next_state~46_combout\ & (\next_state~38_combout\ $ (\next_state.readZ~q\)))) # (!\next_state~28_combout\ & (((\next_state.readZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~46_combout\,
	datab => \next_state~38_combout\,
	datac => \next_state.readZ~q\,
	datad => \next_state~28_combout\,
	combout => \next_state~39_combout\);

-- Location: FF_X14_Y10_N13
\next_state.readZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~39_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.readZ~q\);

-- Location: LCCOMB_X12_Y10_N30
\state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (!\state.pause~q\ & (\next_state.readZ~q\ & (\state~29_combout\ & \SDIO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.pause~q\,
	datab => \next_state.readZ~q\,
	datac => \state~29_combout\,
	datad => \SDIO~2_combout\,
	combout => \state~30_combout\);

-- Location: LCCOMB_X12_Y10_N18
\state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (transmission_count(3) & (((\state.init4~q\)) # (!\next_state~22_combout\))) # (!transmission_count(3) & (!\Equal1~0_combout\ & ((\state.init4~q\) # (!\next_state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(3),
	datab => \next_state~22_combout\,
	datac => \Equal1~0_combout\,
	datad => \state.init4~q\,
	combout => \state~32_combout\);

-- Location: LCCOMB_X12_Y10_N12
\state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (\state.pause~q\ & (\state.readZ~q\ & (!\Equal2~1_combout\ & \SDIO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.pause~q\,
	datab => \state.readZ~q\,
	datac => \Equal2~1_combout\,
	datad => \SDIO~2_combout\,
	combout => \state~31_combout\);

-- Location: LCCOMB_X12_Y10_N20
\state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (\state~30_combout\) # ((\state~31_combout\) # ((\state~32_combout\ & \state.readZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~30_combout\,
	datab => \state~32_combout\,
	datac => \state.readZ~q\,
	datad => \state~31_combout\,
	combout => \state~33_combout\);

-- Location: FF_X12_Y10_N21
\state.readZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~33_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.readZ~q\);

-- Location: LCCOMB_X12_Y10_N28
\SDIO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~1_combout\ = (!\state.readZ~q\ & (!\state.readY~q\ & !\state.readX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.readZ~q\,
	datac => \state.readY~q\,
	datad => \state.readX~q\,
	combout => \SDIO~1_combout\);

-- Location: LCCOMB_X12_Y10_N0
\next_state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~31_combout\ = (\state.pause~q\ & (!\SDIO~1_combout\ & (\Equal2~1_combout\ & \SDIO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.pause~q\,
	datab => \SDIO~1_combout\,
	datac => \Equal2~1_combout\,
	datad => \SDIO~2_combout\,
	combout => \next_state~31_combout\);

-- Location: LCCOMB_X12_Y10_N6
\next_state.init0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.init0~0_combout\ = (\next_state~24_combout\ & (((\state.pause~q\ & !\SDIO~1_combout\)) # (!\SDIO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.pause~q\,
	datab => \SDIO~1_combout\,
	datac => \SDIO~2_combout\,
	datad => \next_state~24_combout\,
	combout => \next_state.init0~0_combout\);

-- Location: LCCOMB_X12_Y10_N10
\next_state.init0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.init0~1_combout\ = (\reset_n~input_o\ & ((\next_state~31_combout\) # ((\next_state.init0~q\) # (\next_state.init0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \next_state~31_combout\,
	datac => \next_state.init0~q\,
	datad => \next_state.init0~0_combout\,
	combout => \next_state.init0~1_combout\);

-- Location: FF_X12_Y10_N11
\next_state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state.init0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.init0~q\);

-- Location: LCCOMB_X16_Y10_N24
\state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (\state~20_combout\ & (!\next_state.init0~q\ & \process_1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~20_combout\,
	datab => \next_state.init0~q\,
	datad => \process_1~3_combout\,
	combout => \state~37_combout\);

-- Location: FF_X16_Y10_N25
\state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~37_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init0~q\);

-- Location: LCCOMB_X12_Y10_N4
\next_state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~44_combout\ = (\reset_n~input_o\ & \state.init0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \state.init0~q\,
	combout => \next_state~44_combout\);

-- Location: LCCOMB_X12_Y10_N8
\next_state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~43_combout\ = (\next_state~24_combout\) # ((\next_state~31_combout\) # (!\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~24_combout\,
	datab => \reset_n~input_o\,
	datad => \next_state~31_combout\,
	combout => \next_state~43_combout\);

-- Location: FF_X12_Y10_N5
\next_state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~44_combout\,
	ena => \next_state~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.init1~q\);

-- Location: LCCOMB_X16_Y10_N26
\state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (\next_state.init1~q\ & (\process_1~3_combout\ & \state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.init1~q\,
	datac => \process_1~3_combout\,
	datad => \state~20_combout\,
	combout => \state~36_combout\);

-- Location: FF_X16_Y10_N27
\state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~36_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init1~q\);

-- Location: LCCOMB_X12_Y10_N14
\next_state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~42_combout\ = (\state.init1~q\ & !\state.init0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.init1~q\,
	datad => \state.init0~q\,
	combout => \next_state~42_combout\);

-- Location: FF_X12_Y10_N15
\next_state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~42_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \next_state~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.init2~q\);

-- Location: LCCOMB_X16_Y10_N28
\state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (\next_state.init2~q\ & (\process_1~3_combout\ & \state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.init2~q\,
	datac => \process_1~3_combout\,
	datad => \state~20_combout\,
	combout => \state~35_combout\);

-- Location: FF_X16_Y10_N29
\state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~35_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init2~q\);

-- Location: LCCOMB_X12_Y10_N26
\next_state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~40_combout\ = (\state.init2~q\ & (!\state.init1~q\ & !\state.init0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.init2~q\,
	datac => \state.init1~q\,
	datad => \state.init0~q\,
	combout => \next_state~40_combout\);

-- Location: LCCOMB_X12_Y10_N24
\next_state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~41_combout\ = (\next_state~24_combout\ & (\next_state~40_combout\)) # (!\next_state~24_combout\ & ((\next_state~31_combout\ & (\next_state~40_combout\)) # (!\next_state~31_combout\ & ((\next_state.init3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~24_combout\,
	datab => \next_state~40_combout\,
	datac => \next_state.init3~q\,
	datad => \next_state~31_combout\,
	combout => \next_state~41_combout\);

-- Location: FF_X12_Y10_N25
\next_state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~41_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.init3~q\);

-- Location: LCCOMB_X16_Y10_N6
\state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\next_state.init3~q\ & (\process_1~3_combout\ & \state~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.init3~q\,
	datac => \process_1~3_combout\,
	datad => \state~20_combout\,
	combout => \state~34_combout\);

-- Location: FF_X16_Y10_N7
\state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~34_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init3~q\);

-- Location: LCCOMB_X16_Y10_N30
\next_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~22_combout\ = (!\state.init3~q\ & (!\state.init2~q\ & (!\state.init1~q\ & !\state.init0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init3~q\,
	datab => \state.init2~q\,
	datac => \state.init1~q\,
	datad => \state.init0~q\,
	combout => \next_state~22_combout\);

-- Location: LCCOMB_X16_Y10_N4
\state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (!\state.pause~q\ & (!\state.init4~q\ & (\next_state~22_combout\ & \SDIO~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.pause~q\,
	datab => \state.init4~q\,
	datac => \next_state~22_combout\,
	datad => \SDIO~1_combout\,
	combout => \state~22_combout\);

-- Location: LCCOMB_X16_Y10_N18
\state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\SDIO~2_combout\ & (!\SDIO~1_combout\ & ((\next_state~24_combout\) # (\Equal2~1_combout\)))) # (!\SDIO~2_combout\ & (((\next_state~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~2_combout\,
	datab => \SDIO~1_combout\,
	datac => \next_state~24_combout\,
	datad => \Equal2~1_combout\,
	combout => \state~21_combout\);

-- Location: LCCOMB_X16_Y10_N12
\state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~25_combout\ = ((\state~21_combout\) # ((\state~22_combout\ & !\state~24_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \state~22_combout\,
	datac => \state~24_combout\,
	datad => \state~21_combout\,
	combout => \state~25_combout\);

-- Location: FF_X16_Y10_N17
\state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~20_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.pause~q\);

-- Location: FF_X15_Y10_N17
\transmission_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \transmission_count[0]~5_combout\,
	sclr => \ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmission_count(0));

-- Location: LCCOMB_X16_Y10_N20
\next_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~23_combout\ = (!transmission_count(2) & (transmission_count(4) & ((\state.init4~q\) # (!\next_state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init4~q\,
	datab => transmission_count(2),
	datac => \next_state~22_combout\,
	datad => transmission_count(4),
	combout => \next_state~23_combout\);

-- Location: LCCOMB_X16_Y10_N22
\next_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~24_combout\ = (!transmission_count(0) & (!transmission_count(3) & (!transmission_count(1) & \next_state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(0),
	datab => transmission_count(3),
	datac => transmission_count(1),
	datad => \next_state~23_combout\,
	combout => \next_state~24_combout\);

-- Location: LCCOMB_X17_Y10_N14
\next_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~30_combout\ = (!\state.init0~q\ & (\state.init3~q\ & (!\state.init1~q\ & !\state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init0~q\,
	datab => \state.init3~q\,
	datac => \state.init1~q\,
	datad => \state.init2~q\,
	combout => \next_state~30_combout\);

-- Location: LCCOMB_X12_Y10_N2
\next_state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~32_combout\ = (\next_state~24_combout\ & (\next_state~30_combout\)) # (!\next_state~24_combout\ & ((\next_state~31_combout\ & (\next_state~30_combout\)) # (!\next_state~31_combout\ & ((\next_state.init4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~24_combout\,
	datab => \next_state~30_combout\,
	datac => \next_state.init4~q\,
	datad => \next_state~31_combout\,
	combout => \next_state~32_combout\);

-- Location: FF_X12_Y10_N3
\next_state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \next_state~32_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.init4~q\);

-- Location: LCCOMB_X14_Y10_N4
\state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (\state~20_combout\ & (\next_state.init4~q\ & \process_1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~20_combout\,
	datab => \next_state.init4~q\,
	datad => \process_1~3_combout\,
	combout => \state~26_combout\);

-- Location: FF_X14_Y10_N5
\state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~26_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init4~q\);

-- Location: LCCOMB_X16_Y10_N16
\state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!\state.init4~q\ & (\next_state~22_combout\ & \SDIO~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init4~q\,
	datac => \next_state~22_combout\,
	datad => \SDIO~1_combout\,
	combout => \state~20_combout\);

-- Location: LCCOMB_X14_Y10_N10
\state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (\state~20_combout\ & ((\next_state.readX~q\) # (!\process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~20_combout\,
	datab => \next_state.readX~q\,
	datad => \process_1~3_combout\,
	combout => \state~27_combout\);

-- Location: FF_X14_Y10_N11
\state.readX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \state~27_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.readX~q\);

-- Location: LCCOMB_X12_Y10_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (transmission_count(2) & ((transmission_count(1) & ((\state.readY~q\) # (transmission_count(0)))) # (!transmission_count(1) & ((!transmission_count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(1),
	datab => \state.readY~q\,
	datac => transmission_count(2),
	datad => transmission_count(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X15_Y10_N26
\SDIO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~4_combout\ = (\state.readX~q\ & (((transmission_count(1) & !transmission_count(0))) # (!transmission_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readX~q\,
	datab => transmission_count(2),
	datac => transmission_count(1),
	datad => transmission_count(0),
	combout => \SDIO~4_combout\);

-- Location: LCCOMB_X15_Y10_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (transmission_count(3) & (!transmission_count(0) & (!transmission_count(1) & transmission_count(2)))) # (!transmission_count(3) & (transmission_count(2) $ (((!transmission_count(0) & transmission_count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(3),
	datab => transmission_count(0),
	datac => transmission_count(1),
	datad => transmission_count(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X15_Y10_N12
\SDIO~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~5_combout\ = (\next_state~22_combout\ & ((\state.init4~q\ & ((\Mux4~0_combout\))) # (!\state.init4~q\ & (\SDIO~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~22_combout\,
	datab => \state.init4~q\,
	datac => \SDIO~4_combout\,
	datad => \Mux4~0_combout\,
	combout => \SDIO~5_combout\);

-- Location: LCCOMB_X15_Y10_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (transmission_count(3) & (transmission_count(0) & (transmission_count(1) & !transmission_count(2)))) # (!transmission_count(3) & ((transmission_count(1) & (!transmission_count(0))) # (!transmission_count(1) & 
-- ((transmission_count(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(3),
	datab => transmission_count(0),
	datac => transmission_count(1),
	datad => transmission_count(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\next_state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~45_combout\ = (!\state.init1~q\ & !\state.init0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.init1~q\,
	datad => \state.init0~q\,
	combout => \next_state~45_combout\);

-- Location: LCCOMB_X15_Y10_N28
\SDIO~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~6_combout\ = (\state.init3~q\ & (!\state.init2~q\ & (\Mux3~0_combout\ & \next_state~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init3~q\,
	datab => \state.init2~q\,
	datac => \Mux3~0_combout\,
	datad => \next_state~45_combout\,
	combout => \SDIO~6_combout\);

-- Location: LCCOMB_X15_Y10_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (transmission_count(0) & (!transmission_count(3) & (!transmission_count(1) & transmission_count(2)))) # (!transmission_count(0) & (transmission_count(1) & (transmission_count(3) $ (!transmission_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(3),
	datab => transmission_count(0),
	datac => transmission_count(1),
	datad => transmission_count(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X15_Y10_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (transmission_count(3) & (!transmission_count(1) & (transmission_count(0) $ (transmission_count(2))))) # (!transmission_count(3) & (transmission_count(1) & ((transmission_count(0)) # (!transmission_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(3),
	datab => transmission_count(0),
	datac => transmission_count(1),
	datad => transmission_count(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X15_Y10_N8
\SDIO~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~9_combout\ = (\state.init0~q\ & (((\Mux0~0_combout\)))) # (!\state.init0~q\ & (\state.init1~q\ & (\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init0~q\,
	datab => \state.init1~q\,
	datac => \Mux1~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \SDIO~9_combout\);

-- Location: LCCOMB_X14_Y10_N2
\SDIO~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~7_combout\ = (transmission_count(1) & ((transmission_count(0) & (transmission_count(2) & transmission_count(3))) # (!transmission_count(0) & (!transmission_count(2) & !transmission_count(3))))) # (!transmission_count(1) & (transmission_count(2) $ 
-- (((transmission_count(0) & transmission_count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmission_count(1),
	datab => transmission_count(0),
	datac => transmission_count(2),
	datad => transmission_count(3),
	combout => \SDIO~7_combout\);

-- Location: LCCOMB_X14_Y10_N28
\SDIO~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~8_combout\ = (\state.init2~q\ & (!\state.init0~q\ & (!\state.init1~q\ & \SDIO~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.init2~q\,
	datab => \state.init0~q\,
	datac => \state.init1~q\,
	datad => \SDIO~7_combout\,
	combout => \SDIO~8_combout\);

-- Location: LCCOMB_X15_Y10_N10
\SDIO~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~10_combout\ = (\SDIO~5_combout\) # ((\SDIO~6_combout\) # ((\SDIO~9_combout\) # (\SDIO~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~5_combout\,
	datab => \SDIO~6_combout\,
	datac => \SDIO~9_combout\,
	datad => \SDIO~8_combout\,
	combout => \SDIO~10_combout\);

-- Location: LCCOMB_X15_Y10_N2
\SDIO~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~11_combout\ = (\SDIO~10_combout\) # ((!\state.readX~q\ & (\SDIO~2_combout\ & !\Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readX~q\,
	datab => \SDIO~2_combout\,
	datac => \Mux7~0_combout\,
	datad => \SDIO~10_combout\,
	combout => \SDIO~11_combout\);

-- Location: LCCOMB_X16_Y10_N0
\SDIO~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~12_combout\ = (\next_state~25_combout\ & (((!transmission_count(3))))) # (!\next_state~25_combout\ & ((\state.readZ~q\) # ((!\state.pause~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readZ~q\,
	datab => \state.pause~q\,
	datac => \next_state~25_combout\,
	datad => transmission_count(3),
	combout => \SDIO~12_combout\);

-- Location: LCCOMB_X16_Y10_N10
\SDIO~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~13_combout\ = (\SDIO~2_combout\ & ((\SDIO~12_combout\) # ((\next_state~25_combout\ & !transmission_count(4))))) # (!\SDIO~2_combout\ & (((!transmission_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~25_combout\,
	datab => transmission_count(4),
	datac => \SDIO~2_combout\,
	datad => \SDIO~12_combout\,
	combout => \SDIO~13_combout\);

-- Location: FF_X15_Y10_N3
\SDIO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_int~clkctrl_outclk\,
	d => \SDIO~11_combout\,
	ena => \SDIO~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDIO~reg0_q\);

-- Location: LCCOMB_X12_Y10_N22
\SDIO~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~14_combout\ = (!transmission_count(3) & ((\state.readZ~q\) # ((\state.readY~q\) # (\state.readX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.readZ~q\,
	datab => \state.readY~q\,
	datac => transmission_count(3),
	datad => \state.readX~q\,
	combout => \SDIO~14_combout\);

-- Location: LCCOMB_X16_Y10_N2
\SDIO~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDIO~15_combout\ = (\SDIO~1_combout\ & ((\state.pause~q\) # ((!transmission_count(4) & \SDIO~14_combout\)))) # (!\SDIO~1_combout\ & (!transmission_count(4) & ((\SDIO~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~1_combout\,
	datab => transmission_count(4),
	datac => \state.pause~q\,
	datad => \SDIO~14_combout\,
	combout => \SDIO~15_combout\);

-- Location: FF_X16_Y10_N3
\SDIO~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK_int~clkctrl_outclk\,
	d => \SDIO~15_combout\,
	ena => \SDIO~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDIO~en_q\);

-- Location: LCCOMB_X1_Y24_N16
\SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SCLK~0_combout\ = (!\SCLK_int~q\) # (!\state.pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.pause~q\,
	datac => \SCLK_int~q\,
	combout => \SCLK~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\SDIO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDIO,
	o => \SDIO~input_o\);

ww_CS_N <= \CS_N~output_o\;

ww_SCLK <= \SCLK~output_o\;

ww_dataX(0) <= \dataX[0]~output_o\;

ww_dataX(1) <= \dataX[1]~output_o\;

ww_dataX(2) <= \dataX[2]~output_o\;

ww_dataX(3) <= \dataX[3]~output_o\;

ww_dataX(4) <= \dataX[4]~output_o\;

ww_dataX(5) <= \dataX[5]~output_o\;

ww_dataX(6) <= \dataX[6]~output_o\;

ww_dataX(7) <= \dataX[7]~output_o\;

ww_dataX(8) <= \dataX[8]~output_o\;

ww_dataX(9) <= \dataX[9]~output_o\;

ww_dataX(10) <= \dataX[10]~output_o\;

ww_dataX(11) <= \dataX[11]~output_o\;

ww_dataX(12) <= \dataX[12]~output_o\;

ww_dataY(0) <= \dataY[0]~output_o\;

ww_dataY(1) <= \dataY[1]~output_o\;

ww_dataY(2) <= \dataY[2]~output_o\;

ww_dataY(3) <= \dataY[3]~output_o\;

ww_dataY(4) <= \dataY[4]~output_o\;

ww_dataY(5) <= \dataY[5]~output_o\;

ww_dataY(6) <= \dataY[6]~output_o\;

ww_dataY(7) <= \dataY[7]~output_o\;

ww_dataY(8) <= \dataY[8]~output_o\;

ww_dataY(9) <= \dataY[9]~output_o\;

ww_dataY(10) <= \dataY[10]~output_o\;

ww_dataY(11) <= \dataY[11]~output_o\;

ww_dataY(12) <= \dataY[12]~output_o\;

ww_dataZ(0) <= \dataZ[0]~output_o\;

ww_dataZ(1) <= \dataZ[1]~output_o\;

ww_dataZ(2) <= \dataZ[2]~output_o\;

ww_dataZ(3) <= \dataZ[3]~output_o\;

ww_dataZ(4) <= \dataZ[4]~output_o\;

ww_dataZ(5) <= \dataZ[5]~output_o\;

ww_dataZ(6) <= \dataZ[6]~output_o\;

ww_dataZ(7) <= \dataZ[7]~output_o\;

ww_dataZ(8) <= \dataZ[8]~output_o\;

ww_dataZ(9) <= \dataZ[9]~output_o\;

ww_dataZ(10) <= \dataZ[10]~output_o\;

ww_dataZ(11) <= \dataZ[11]~output_o\;

ww_dataZ(12) <= \dataZ[12]~output_o\;

SDIO <= \SDIO~output_o\;
END structure;


