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

-- DATE "06/27/2018 13:03:39"

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

ENTITY 	gSensorToLCD IS
    PORT (
	CS_N : OUT std_logic;
	clk_50 : IN std_logic;
	SDIO : INOUT std_logic;
	SCLK : OUT std_logic;
	rs : OUT std_logic;
	rw : OUT std_logic;
	e : OUT std_logic;
	data : OUT std_logic_vector(7 DOWNTO 0)
	);
END gSensorToLCD;

-- Design Ports Information
-- CS_N	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDIO	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gSensorToLCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CS_N : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SCLK_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDIO~output_o\ : std_logic;
SIGNAL \CS_N~output_o\ : std_logic;
SIGNAL \SCLK~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|SCLK_int~0_combout\ : std_logic;
SIGNAL \inst|SCLK_int~q\ : std_logic;
SIGNAL \inst|SCLK_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|next_state.init1~feeder_combout\ : std_logic;
SIGNAL \inst|transmission_count[0]~5_combout\ : std_logic;
SIGNAL \inst|pause_entered~feeder_combout\ : std_logic;
SIGNAL \inst|pause_entered~q\ : std_logic;
SIGNAL \inst|time_count[0]~16_combout\ : std_logic;
SIGNAL \inst|time_count[0]~17\ : std_logic;
SIGNAL \inst|time_count[1]~18_combout\ : std_logic;
SIGNAL \inst|time_count[1]~19\ : std_logic;
SIGNAL \inst|time_count[2]~20_combout\ : std_logic;
SIGNAL \inst|time_count[2]~21\ : std_logic;
SIGNAL \inst|time_count[3]~22_combout\ : std_logic;
SIGNAL \inst|time_count[3]~23\ : std_logic;
SIGNAL \inst|time_count[4]~24_combout\ : std_logic;
SIGNAL \inst|time_count[4]~25\ : std_logic;
SIGNAL \inst|time_count[5]~26_combout\ : std_logic;
SIGNAL \inst|time_count[5]~27\ : std_logic;
SIGNAL \inst|time_count[6]~28_combout\ : std_logic;
SIGNAL \inst|time_count[6]~29\ : std_logic;
SIGNAL \inst|time_count[7]~30_combout\ : std_logic;
SIGNAL \inst|time_count[7]~31\ : std_logic;
SIGNAL \inst|time_count[8]~32_combout\ : std_logic;
SIGNAL \inst|time_count[8]~33\ : std_logic;
SIGNAL \inst|time_count[9]~34_combout\ : std_logic;
SIGNAL \inst|time_count[9]~35\ : std_logic;
SIGNAL \inst|time_count[10]~36_combout\ : std_logic;
SIGNAL \inst|time_count[10]~37\ : std_logic;
SIGNAL \inst|time_count[11]~38_combout\ : std_logic;
SIGNAL \inst|time_count[11]~39\ : std_logic;
SIGNAL \inst|time_count[12]~40_combout\ : std_logic;
SIGNAL \inst|time_count[12]~41\ : std_logic;
SIGNAL \inst|time_count[13]~42_combout\ : std_logic;
SIGNAL \inst|time_count[13]~43\ : std_logic;
SIGNAL \inst|time_count[14]~44_combout\ : std_logic;
SIGNAL \inst|time_count[14]~45\ : std_logic;
SIGNAL \inst|time_count[15]~46_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \inst|process_1~2_combout\ : std_logic;
SIGNAL \inst|process_1~3_combout\ : std_logic;
SIGNAL \inst|process_1~4_combout\ : std_logic;
SIGNAL \inst|transmission_count[3]~12\ : std_logic;
SIGNAL \inst|transmission_count[4]~13_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|next_state.readY~5_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|state~31_combout\ : std_logic;
SIGNAL \inst|next_state.readZ~1_combout\ : std_logic;
SIGNAL \inst|next_state.readZ~0_combout\ : std_logic;
SIGNAL \inst|next_state.readZ~2_combout\ : std_logic;
SIGNAL \inst|next_state.readZ~3_combout\ : std_logic;
SIGNAL \inst|next_state.readZ~q\ : std_logic;
SIGNAL \inst|state~32_combout\ : std_logic;
SIGNAL \inst|state~33_combout\ : std_logic;
SIGNAL \inst|state.readZ~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|state~34_combout\ : std_logic;
SIGNAL \inst|state.readZ~q\ : std_logic;
SIGNAL \inst|next_state.readY~2_combout\ : std_logic;
SIGNAL \inst|next_state.readY~3_combout\ : std_logic;
SIGNAL \inst|next_state.readY~4_combout\ : std_logic;
SIGNAL \inst|next_state.readY~q\ : std_logic;
SIGNAL \inst|state~35_combout\ : std_logic;
SIGNAL \inst|state.readY~q\ : std_logic;
SIGNAL \inst|next_state~24_combout\ : std_logic;
SIGNAL \inst|next_state~25_combout\ : std_logic;
SIGNAL \inst|next_state~26_combout\ : std_logic;
SIGNAL \inst|next_state~30_combout\ : std_logic;
SIGNAL \inst|next_state.readX~1_combout\ : std_logic;
SIGNAL \inst|next_state.readX~q\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|state~23_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|state~24_combout\ : std_logic;
SIGNAL \inst|state~25_combout\ : std_logic;
SIGNAL \inst|next_state~22_combout\ : std_logic;
SIGNAL \inst|next_state~23_combout\ : std_logic;
SIGNAL \inst|state~26_combout\ : std_logic;
SIGNAL \inst|state.readX~0_combout\ : std_logic;
SIGNAL \inst|state.readX~1_combout\ : std_logic;
SIGNAL \inst|state.readX~q\ : std_logic;
SIGNAL \inst|SDIO~0_combout\ : std_logic;
SIGNAL \inst|next_state~29_combout\ : std_logic;
SIGNAL \inst|next_state.init2~q\ : std_logic;
SIGNAL \inst|state~30_combout\ : std_logic;
SIGNAL \inst|state.init2~q\ : std_logic;
SIGNAL \inst|next_state.init3~0_combout\ : std_logic;
SIGNAL \inst|next_state.init3~1_combout\ : std_logic;
SIGNAL \inst|next_state.init3~q\ : std_logic;
SIGNAL \inst|state~29_combout\ : std_logic;
SIGNAL \inst|state.init3~q\ : std_logic;
SIGNAL \inst|next_state.init4~0_combout\ : std_logic;
SIGNAL \inst|next_state.init4~1_combout\ : std_logic;
SIGNAL \inst|next_state.init4~q\ : std_logic;
SIGNAL \inst|state~28_combout\ : std_logic;
SIGNAL \inst|state.init4~q\ : std_logic;
SIGNAL \inst|state~22_combout\ : std_logic;
SIGNAL \inst|state.pause~feeder_combout\ : std_logic;
SIGNAL \inst|state.pause~q\ : std_logic;
SIGNAL \inst|transmission_count[0]~6\ : std_logic;
SIGNAL \inst|transmission_count[1]~7_combout\ : std_logic;
SIGNAL \inst|transmission_count[1]~8\ : std_logic;
SIGNAL \inst|transmission_count[2]~9_combout\ : std_logic;
SIGNAL \inst|transmission_count[2]~10\ : std_logic;
SIGNAL \inst|transmission_count[3]~11_combout\ : std_logic;
SIGNAL \inst|read_temp[1]~0_combout\ : std_logic;
SIGNAL \inst|next_state~27_combout\ : std_logic;
SIGNAL \inst|next_state~28_combout\ : std_logic;
SIGNAL \inst|next_state.init1~q\ : std_logic;
SIGNAL \inst|state~36_combout\ : std_logic;
SIGNAL \inst|state.init1~0_combout\ : std_logic;
SIGNAL \inst|state.init1~q\ : std_logic;
SIGNAL \inst|next_state.readX~0_combout\ : std_logic;
SIGNAL \inst|state~27_combout\ : std_logic;
SIGNAL \inst|next_state.init0~0_combout\ : std_logic;
SIGNAL \inst|next_state.init0~q\ : std_logic;
SIGNAL \inst|state.init0~0_combout\ : std_logic;
SIGNAL \inst|state.init0~q\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|SDIO~7_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|SDIO~2_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|SDIO~3_combout\ : std_logic;
SIGNAL \inst|SDIO~4_combout\ : std_logic;
SIGNAL \inst|SDIO~5_combout\ : std_logic;
SIGNAL \inst|SDIO~6_combout\ : std_logic;
SIGNAL \inst|SDIO~8_combout\ : std_logic;
SIGNAL \inst|SDIO~9_combout\ : std_logic;
SIGNAL \inst|SDIO~10_combout\ : std_logic;
SIGNAL \inst|SDIO~reg0_q\ : std_logic;
SIGNAL \inst|SDIO~11_combout\ : std_logic;
SIGNAL \inst|SDIO~en_q\ : std_logic;
SIGNAL \inst|SCLK~0_combout\ : std_logic;
SIGNAL \inst3|lineCount~0_combout\ : std_logic;
SIGNAL \inst3|counter[0]~31_combout\ : std_logic;
SIGNAL \inst3|charCount[0]~5_combout\ : std_logic;
SIGNAL \inst3|charCount[1]~7_combout\ : std_logic;
SIGNAL \inst3|charCount[0]~6\ : std_logic;
SIGNAL \inst3|charCount[1]~8_combout\ : std_logic;
SIGNAL \inst3|charCount[1]~9\ : std_logic;
SIGNAL \inst3|charCount[2]~10_combout\ : std_logic;
SIGNAL \inst3|charCount[2]~11\ : std_logic;
SIGNAL \inst3|charCount[3]~12_combout\ : std_logic;
SIGNAL \inst3|lcd_data~41_combout\ : std_logic;
SIGNAL \inst3|charCount[3]~13\ : std_logic;
SIGNAL \inst3|charCount[4]~14_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|state~9_combout\ : std_logic;
SIGNAL \inst3|counter[10]~41_combout\ : std_logic;
SIGNAL \inst3|process_1~2_combout\ : std_logic;
SIGNAL \inst3|process_1~1_combout\ : std_logic;
SIGNAL \inst3|counter[24]~83\ : std_logic;
SIGNAL \inst3|counter[25]~84_combout\ : std_logic;
SIGNAL \inst3|counter[25]~85\ : std_logic;
SIGNAL \inst3|counter[26]~86_combout\ : std_logic;
SIGNAL \inst3|counter[26]~87\ : std_logic;
SIGNAL \inst3|counter[27]~88_combout\ : std_logic;
SIGNAL \inst3|counter[27]~89\ : std_logic;
SIGNAL \inst3|counter[28]~90_combout\ : std_logic;
SIGNAL \inst3|counter[28]~91\ : std_logic;
SIGNAL \inst3|counter[29]~92_combout\ : std_logic;
SIGNAL \inst3|counter[29]~93\ : std_logic;
SIGNAL \inst3|counter[30]~94_combout\ : std_logic;
SIGNAL \inst3|process_0~4_combout\ : std_logic;
SIGNAL \inst3|process_0~1_combout\ : std_logic;
SIGNAL \inst3|process_0~3_combout\ : std_logic;
SIGNAL \inst3|process_0~2_combout\ : std_logic;
SIGNAL \inst3|process_0~5_combout\ : std_logic;
SIGNAL \inst3|process_1~0_combout\ : std_logic;
SIGNAL \inst3|process_1~3_combout\ : std_logic;
SIGNAL \inst3|counter[10]~42_combout\ : std_logic;
SIGNAL \inst3|counter[10]~43_combout\ : std_logic;
SIGNAL \inst3|counter[0]~32\ : std_logic;
SIGNAL \inst3|counter[1]~33_combout\ : std_logic;
SIGNAL \inst3|counter[1]~34\ : std_logic;
SIGNAL \inst3|counter[2]~35_combout\ : std_logic;
SIGNAL \inst3|counter[2]~36\ : std_logic;
SIGNAL \inst3|counter[3]~37_combout\ : std_logic;
SIGNAL \inst3|counter[3]~38\ : std_logic;
SIGNAL \inst3|counter[4]~39_combout\ : std_logic;
SIGNAL \inst3|counter[4]~40\ : std_logic;
SIGNAL \inst3|counter[5]~44_combout\ : std_logic;
SIGNAL \inst3|counter[5]~45\ : std_logic;
SIGNAL \inst3|counter[6]~46_combout\ : std_logic;
SIGNAL \inst3|counter[6]~47\ : std_logic;
SIGNAL \inst3|counter[7]~48_combout\ : std_logic;
SIGNAL \inst3|counter[7]~49\ : std_logic;
SIGNAL \inst3|counter[8]~50_combout\ : std_logic;
SIGNAL \inst3|counter[8]~51\ : std_logic;
SIGNAL \inst3|counter[9]~52_combout\ : std_logic;
SIGNAL \inst3|counter[9]~53\ : std_logic;
SIGNAL \inst3|counter[10]~54_combout\ : std_logic;
SIGNAL \inst3|counter[10]~55\ : std_logic;
SIGNAL \inst3|counter[11]~56_combout\ : std_logic;
SIGNAL \inst3|counter[11]~57\ : std_logic;
SIGNAL \inst3|counter[12]~58_combout\ : std_logic;
SIGNAL \inst3|counter[12]~59\ : std_logic;
SIGNAL \inst3|counter[13]~60_combout\ : std_logic;
SIGNAL \inst3|counter[13]~61\ : std_logic;
SIGNAL \inst3|counter[14]~62_combout\ : std_logic;
SIGNAL \inst3|counter[14]~63\ : std_logic;
SIGNAL \inst3|counter[15]~64_combout\ : std_logic;
SIGNAL \inst3|counter[15]~65\ : std_logic;
SIGNAL \inst3|counter[16]~66_combout\ : std_logic;
SIGNAL \inst3|counter[16]~67\ : std_logic;
SIGNAL \inst3|counter[17]~68_combout\ : std_logic;
SIGNAL \inst3|counter[17]~69\ : std_logic;
SIGNAL \inst3|counter[18]~70_combout\ : std_logic;
SIGNAL \inst3|counter[18]~71\ : std_logic;
SIGNAL \inst3|counter[19]~72_combout\ : std_logic;
SIGNAL \inst3|counter[19]~73\ : std_logic;
SIGNAL \inst3|counter[20]~74_combout\ : std_logic;
SIGNAL \inst3|counter[20]~75\ : std_logic;
SIGNAL \inst3|counter[21]~76_combout\ : std_logic;
SIGNAL \inst3|counter[21]~77\ : std_logic;
SIGNAL \inst3|counter[22]~78_combout\ : std_logic;
SIGNAL \inst3|counter[22]~79\ : std_logic;
SIGNAL \inst3|counter[23]~80_combout\ : std_logic;
SIGNAL \inst3|counter[23]~81\ : std_logic;
SIGNAL \inst3|counter[24]~82_combout\ : std_logic;
SIGNAL \inst3|process_0~8_combout\ : std_logic;
SIGNAL \inst3|process_0~9_combout\ : std_logic;
SIGNAL \inst3|process_0~6_combout\ : std_logic;
SIGNAL \inst3|process_0~7_combout\ : std_logic;
SIGNAL \inst3|process_0~10_combout\ : std_logic;
SIGNAL \inst3|process_0~11_combout\ : std_logic;
SIGNAL \inst3|lineCount~1_combout\ : std_logic;
SIGNAL \inst3|lineCount[0]~2_combout\ : std_logic;
SIGNAL \inst3|lineCount[1]~3_combout\ : std_logic;
SIGNAL \inst3|state~11_combout\ : std_logic;
SIGNAL \inst3|state~10_combout\ : std_logic;
SIGNAL \inst3|state.update~q\ : std_logic;
SIGNAL \inst3|state.pause~0_combout\ : std_logic;
SIGNAL \inst3|state.pause~q\ : std_logic;
SIGNAL \inst3|process_1~4_combout\ : std_logic;
SIGNAL \inst3|process_1~5_combout\ : std_logic;
SIGNAL \inst3|lcd_write_n~q\ : std_logic;
SIGNAL \inst2|counter[0]~31_combout\ : std_logic;
SIGNAL \inst2|counter[0]~32\ : std_logic;
SIGNAL \inst2|counter[1]~33_combout\ : std_logic;
SIGNAL \inst2|counter[1]~34\ : std_logic;
SIGNAL \inst2|counter[2]~35_combout\ : std_logic;
SIGNAL \inst2|counter[2]~36\ : std_logic;
SIGNAL \inst2|counter[3]~37_combout\ : std_logic;
SIGNAL \inst2|counter[3]~38\ : std_logic;
SIGNAL \inst2|counter[4]~39_combout\ : std_logic;
SIGNAL \inst2|counter[4]~40\ : std_logic;
SIGNAL \inst2|counter[5]~41_combout\ : std_logic;
SIGNAL \inst2|counter[5]~42\ : std_logic;
SIGNAL \inst2|counter[6]~43_combout\ : std_logic;
SIGNAL \inst2|counter[6]~44\ : std_logic;
SIGNAL \inst2|counter[7]~45_combout\ : std_logic;
SIGNAL \inst2|counter[7]~46\ : std_logic;
SIGNAL \inst2|counter[8]~47_combout\ : std_logic;
SIGNAL \inst2|counter[8]~48\ : std_logic;
SIGNAL \inst2|counter[9]~49_combout\ : std_logic;
SIGNAL \inst2|counter[9]~50\ : std_logic;
SIGNAL \inst2|counter[10]~51_combout\ : std_logic;
SIGNAL \inst2|counter[10]~52\ : std_logic;
SIGNAL \inst2|counter[11]~53_combout\ : std_logic;
SIGNAL \inst2|counter[11]~54\ : std_logic;
SIGNAL \inst2|counter[12]~55_combout\ : std_logic;
SIGNAL \inst2|process_0~14_combout\ : std_logic;
SIGNAL \inst2|counter[12]~56\ : std_logic;
SIGNAL \inst2|counter[13]~57_combout\ : std_logic;
SIGNAL \inst2|counter[13]~58\ : std_logic;
SIGNAL \inst2|counter[14]~59_combout\ : std_logic;
SIGNAL \inst2|counter[14]~60\ : std_logic;
SIGNAL \inst2|counter[15]~61_combout\ : std_logic;
SIGNAL \inst2|counter[15]~62\ : std_logic;
SIGNAL \inst2|counter[16]~63_combout\ : std_logic;
SIGNAL \inst2|counter[16]~64\ : std_logic;
SIGNAL \inst2|counter[17]~65_combout\ : std_logic;
SIGNAL \inst2|counter[17]~66\ : std_logic;
SIGNAL \inst2|counter[18]~67_combout\ : std_logic;
SIGNAL \inst2|counter[18]~68\ : std_logic;
SIGNAL \inst2|counter[19]~69_combout\ : std_logic;
SIGNAL \inst2|counter[19]~70\ : std_logic;
SIGNAL \inst2|counter[20]~71_combout\ : std_logic;
SIGNAL \inst2|counter[20]~72\ : std_logic;
SIGNAL \inst2|counter[21]~73_combout\ : std_logic;
SIGNAL \inst2|counter[21]~74\ : std_logic;
SIGNAL \inst2|counter[22]~75_combout\ : std_logic;
SIGNAL \inst2|process_0~16_combout\ : std_logic;
SIGNAL \inst2|state.init0~feeder_combout\ : std_logic;
SIGNAL \inst2|state.init0~q\ : std_logic;
SIGNAL \inst2|process_0~15_combout\ : std_logic;
SIGNAL \inst2|process_0~17_combout\ : std_logic;
SIGNAL \inst2|counter[22]~76\ : std_logic;
SIGNAL \inst2|counter[23]~77_combout\ : std_logic;
SIGNAL \inst2|counter[23]~78\ : std_logic;
SIGNAL \inst2|counter[24]~79_combout\ : std_logic;
SIGNAL \inst2|counter[24]~80\ : std_logic;
SIGNAL \inst2|counter[25]~81_combout\ : std_logic;
SIGNAL \inst2|counter[25]~82\ : std_logic;
SIGNAL \inst2|counter[26]~83_combout\ : std_logic;
SIGNAL \inst2|counter[26]~84\ : std_logic;
SIGNAL \inst2|counter[27]~85_combout\ : std_logic;
SIGNAL \inst2|counter[27]~86\ : std_logic;
SIGNAL \inst2|counter[28]~87_combout\ : std_logic;
SIGNAL \inst2|counter[28]~88\ : std_logic;
SIGNAL \inst2|counter[29]~89_combout\ : std_logic;
SIGNAL \inst2|counter[29]~90\ : std_logic;
SIGNAL \inst2|counter[30]~91_combout\ : std_logic;
SIGNAL \inst2|e~4_combout\ : std_logic;
SIGNAL \inst2|e~2_combout\ : std_logic;
SIGNAL \inst2|e~3_combout\ : std_logic;
SIGNAL \inst2|Equal5~1_combout\ : std_logic;
SIGNAL \inst2|Equal5~2_combout\ : std_logic;
SIGNAL \inst2|process_0~13_combout\ : std_logic;
SIGNAL \inst2|process_0~18_combout\ : std_logic;
SIGNAL \inst2|Equal6~0_combout\ : std_logic;
SIGNAL \inst2|Equal6~1_combout\ : std_logic;
SIGNAL \inst2|process_0~22_combout\ : std_logic;
SIGNAL \inst2|state~26_combout\ : std_logic;
SIGNAL \inst2|state.init1~q\ : std_logic;
SIGNAL \inst2|Equal5~3_combout\ : std_logic;
SIGNAL \inst2|Equal5~5_combout\ : std_logic;
SIGNAL \inst2|Equal5~4_combout\ : std_logic;
SIGNAL \inst2|Equal5~0_combout\ : std_logic;
SIGNAL \inst2|Equal5~6_combout\ : std_logic;
SIGNAL \inst2|process_0~11_combout\ : std_logic;
SIGNAL \inst2|state~27_combout\ : std_logic;
SIGNAL \inst2|state.init2~q\ : std_logic;
SIGNAL \inst2|process_0~19_combout\ : std_logic;
SIGNAL \inst2|process_0~20_combout\ : std_logic;
SIGNAL \inst2|process_0~21_combout\ : std_logic;
SIGNAL \inst2|state~24_combout\ : std_logic;
SIGNAL \inst2|state.init3~q\ : std_logic;
SIGNAL \inst2|Equal6~4_combout\ : std_logic;
SIGNAL \inst2|Equal6~2_combout\ : std_logic;
SIGNAL \inst2|Equal6~3_combout\ : std_logic;
SIGNAL \inst2|Equal6~5_combout\ : std_logic;
SIGNAL \inst2|state~32_combout\ : std_logic;
SIGNAL \inst2|state~25_combout\ : std_logic;
SIGNAL \inst2|state.init4~q\ : std_logic;
SIGNAL \inst2|state~29_combout\ : std_logic;
SIGNAL \inst2|state.init5~q\ : std_logic;
SIGNAL \inst2|dataOut[3]~18_combout\ : std_logic;
SIGNAL \inst2|state~28_combout\ : std_logic;
SIGNAL \inst2|state.init6~q\ : std_logic;
SIGNAL \inst2|process_0~12_combout\ : std_logic;
SIGNAL \inst2|state~18_combout\ : std_logic;
SIGNAL \inst2|state~30_combout\ : std_logic;
SIGNAL \inst2|state.init7~q\ : std_logic;
SIGNAL \inst2|state.sendingAddress~q\ : std_logic;
SIGNAL \inst2|process_0~23_combout\ : std_logic;
SIGNAL \inst2|state~23_combout\ : std_logic;
SIGNAL \inst2|state.sendingData~q\ : std_logic;
SIGNAL \inst2|state~17_combout\ : std_logic;
SIGNAL \inst2|state~19_combout\ : std_logic;
SIGNAL \inst2|state~31_combout\ : std_logic;
SIGNAL \inst2|state~20_combout\ : std_logic;
SIGNAL \inst2|state~21_combout\ : std_logic;
SIGNAL \inst2|state~22_combout\ : std_logic;
SIGNAL \inst2|state.ready~q\ : std_logic;
SIGNAL \inst2|process_1~0_combout\ : std_logic;
SIGNAL \inst2|e~6_combout\ : std_logic;
SIGNAL \inst2|e~7_combout\ : std_logic;
SIGNAL \inst2|e~5_combout\ : std_logic;
SIGNAL \inst2|e~0_combout\ : std_logic;
SIGNAL \inst2|e~1_combout\ : std_logic;
SIGNAL \inst2|e~8_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~1_combout\ : std_logic;
SIGNAL \inst3|lcd_data~178_combout\ : std_logic;
SIGNAL \inst3|lcd_data~179_combout\ : std_logic;
SIGNAL \inst3|display_counter[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst3|display_counter[0]~32\ : std_logic;
SIGNAL \inst3|display_counter[1]~33_combout\ : std_logic;
SIGNAL \inst3|display_counter[1]~34\ : std_logic;
SIGNAL \inst3|display_counter[2]~35_combout\ : std_logic;
SIGNAL \inst3|display_counter[2]~36\ : std_logic;
SIGNAL \inst3|display_counter[3]~37_combout\ : std_logic;
SIGNAL \inst3|display_counter[3]~38\ : std_logic;
SIGNAL \inst3|display_counter[4]~39_combout\ : std_logic;
SIGNAL \inst3|display_counter[4]~40\ : std_logic;
SIGNAL \inst3|display_counter[5]~41_combout\ : std_logic;
SIGNAL \inst3|display_counter[5]~42\ : std_logic;
SIGNAL \inst3|display_counter[6]~43_combout\ : std_logic;
SIGNAL \inst3|display_counter[6]~44\ : std_logic;
SIGNAL \inst3|display_counter[7]~45_combout\ : std_logic;
SIGNAL \inst3|display_counter[7]~46\ : std_logic;
SIGNAL \inst3|display_counter[8]~47_combout\ : std_logic;
SIGNAL \inst3|display_counter[8]~48\ : std_logic;
SIGNAL \inst3|display_counter[9]~49_combout\ : std_logic;
SIGNAL \inst3|display_counter[9]~50\ : std_logic;
SIGNAL \inst3|display_counter[10]~51_combout\ : std_logic;
SIGNAL \inst3|display_counter[10]~52\ : std_logic;
SIGNAL \inst3|display_counter[11]~53_combout\ : std_logic;
SIGNAL \inst3|display_counter[11]~54\ : std_logic;
SIGNAL \inst3|display_counter[12]~55_combout\ : std_logic;
SIGNAL \inst3|display_counter[12]~56\ : std_logic;
SIGNAL \inst3|display_counter[13]~57_combout\ : std_logic;
SIGNAL \inst3|display_counter[13]~58\ : std_logic;
SIGNAL \inst3|display_counter[14]~59_combout\ : std_logic;
SIGNAL \inst3|display_counter[14]~60\ : std_logic;
SIGNAL \inst3|display_counter[15]~61_combout\ : std_logic;
SIGNAL \inst3|display_counter[15]~62\ : std_logic;
SIGNAL \inst3|display_counter[16]~63_combout\ : std_logic;
SIGNAL \inst3|display_counter[16]~64\ : std_logic;
SIGNAL \inst3|display_counter[17]~65_combout\ : std_logic;
SIGNAL \inst3|display_counter[17]~66\ : std_logic;
SIGNAL \inst3|display_counter[18]~67_combout\ : std_logic;
SIGNAL \inst3|display_counter[18]~68\ : std_logic;
SIGNAL \inst3|display_counter[19]~69_combout\ : std_logic;
SIGNAL \inst3|display_counter[19]~70\ : std_logic;
SIGNAL \inst3|display_counter[20]~71_combout\ : std_logic;
SIGNAL \inst3|display_counter[20]~72\ : std_logic;
SIGNAL \inst3|display_counter[21]~73_combout\ : std_logic;
SIGNAL \inst3|display_counter[21]~74\ : std_logic;
SIGNAL \inst3|display_counter[22]~75_combout\ : std_logic;
SIGNAL \inst3|display_counter[22]~76\ : std_logic;
SIGNAL \inst3|display_counter[23]~77_combout\ : std_logic;
SIGNAL \inst3|display_counter[23]~78\ : std_logic;
SIGNAL \inst3|display_counter[24]~79_combout\ : std_logic;
SIGNAL \inst3|display_counter[24]~80\ : std_logic;
SIGNAL \inst3|display_counter[25]~81_combout\ : std_logic;
SIGNAL \inst3|display_counter[25]~82\ : std_logic;
SIGNAL \inst3|display_counter[26]~83_combout\ : std_logic;
SIGNAL \inst3|display_counter[26]~84\ : std_logic;
SIGNAL \inst3|display_counter[27]~85_combout\ : std_logic;
SIGNAL \inst3|display_counter[27]~86\ : std_logic;
SIGNAL \inst3|display_counter[28]~87_combout\ : std_logic;
SIGNAL \inst3|display_counter[28]~88\ : std_logic;
SIGNAL \inst3|display_counter[29]~89_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|display_counter[29]~90\ : std_logic;
SIGNAL \inst3|display_counter[30]~91_combout\ : std_logic;
SIGNAL \inst3|LessThan1~5_combout\ : std_logic;
SIGNAL \inst3|LessThan1~2_combout\ : std_logic;
SIGNAL \inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|LessThan1~3_combout\ : std_logic;
SIGNAL \inst3|LessThan1~4_combout\ : std_logic;
SIGNAL \inst3|LessThan1~6_combout\ : std_logic;
SIGNAL \inst3|LessThan1~7_combout\ : std_logic;
SIGNAL \inst3|display_state~feeder_combout\ : std_logic;
SIGNAL \inst3|display_state~q\ : std_logic;
SIGNAL \inst3|lcd_data~38_combout\ : std_logic;
SIGNAL \inst3|lcd_data~30_combout\ : std_logic;
SIGNAL \inst3|lcd_data~31_combout\ : std_logic;
SIGNAL \inst3|lcd_data~32_combout\ : std_logic;
SIGNAL \inst3|lcd_data~37_combout\ : std_logic;
SIGNAL \inst3|Equal14~0_combout\ : std_logic;
SIGNAL \inst3|Equal11~0_combout\ : std_logic;
SIGNAL \inst3|lcd_data~34_combout\ : std_logic;
SIGNAL \inst3|lcd_data~33_combout\ : std_logic;
SIGNAL \inst3|lcd_data~35_combout\ : std_logic;
SIGNAL \inst3|lcd_data~36_combout\ : std_logic;
SIGNAL \inst3|lcd_data~180_combout\ : std_logic;
SIGNAL \inst3|lcd_data~181_combout\ : std_logic;
SIGNAL \inst3|lcd_data~39_combout\ : std_logic;
SIGNAL \inst3|lcd_data~40_combout\ : std_logic;
SIGNAL \inst2|dataStorage[6]~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[6]~2_combout\ : std_logic;
SIGNAL \inst2|dataOut[6]~3_combout\ : std_logic;
SIGNAL \inst3|lcd_data~51_combout\ : std_logic;
SIGNAL \inst3|Equal7~1_combout\ : std_logic;
SIGNAL \inst3|Equal7~0_combout\ : std_logic;
SIGNAL \inst3|lcd_data~50_combout\ : std_logic;
SIGNAL \inst3|lcd_data~52_combout\ : std_logic;
SIGNAL \inst3|lcd_data~171_combout\ : std_logic;
SIGNAL \inst3|lcd_data~42_combout\ : std_logic;
SIGNAL \inst3|lcd_data~43_combout\ : std_logic;
SIGNAL \inst3|lcd_data~44_combout\ : std_logic;
SIGNAL \inst3|lcd_data~45_combout\ : std_logic;
SIGNAL \inst3|lcd_data~46_combout\ : std_logic;
SIGNAL \inst3|lcd_data~47_combout\ : std_logic;
SIGNAL \inst3|lcd_data~48_combout\ : std_logic;
SIGNAL \inst3|lcd_data~49_combout\ : std_logic;
SIGNAL \inst3|lcd_data~53_combout\ : std_logic;
SIGNAL \inst2|dataStorage[5]~1_combout\ : std_logic;
SIGNAL \inst3|lcd_posX[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|addressStorage~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[5]~4_combout\ : std_logic;
SIGNAL \inst2|dataOut[2]~5_combout\ : std_logic;
SIGNAL \inst2|dataOut[5]~6_combout\ : std_logic;
SIGNAL \inst2|addressStorage~1_combout\ : std_logic;
SIGNAL \inst3|lcd_data~16_combout\ : std_logic;
SIGNAL \inst3|lcd_data~168_combout\ : std_logic;
SIGNAL \inst3|lcd_data~169_combout\ : std_logic;
SIGNAL \inst3|lcd_data~54_combout\ : std_logic;
SIGNAL \inst3|lcd_data~61_combout\ : std_logic;
SIGNAL \inst3|lcd_data~62_combout\ : std_logic;
SIGNAL \inst3|lcd_data~56_combout\ : std_logic;
SIGNAL \inst3|lcd_data~55_combout\ : std_logic;
SIGNAL \inst3|lcd_data~172_combout\ : std_logic;
SIGNAL \inst3|lcd_data~57_combout\ : std_logic;
SIGNAL \inst3|lcd_data~58_combout\ : std_logic;
SIGNAL \inst3|lcd_data~59_combout\ : std_logic;
SIGNAL \inst3|lcd_data~60_combout\ : std_logic;
SIGNAL \inst3|lcd_data~63_combout\ : std_logic;
SIGNAL \inst3|lcd_data~64_combout\ : std_logic;
SIGNAL \inst3|lcd_data~65_combout\ : std_logic;
SIGNAL \inst2|dataOut[4]~7_combout\ : std_logic;
SIGNAL \inst2|dataOut[4]~8_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~9_combout\ : std_logic;
SIGNAL \inst2|addressStorage~2_combout\ : std_logic;
SIGNAL \inst3|lcd_data~67_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s0_s~0_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s0_s~q\ : std_logic;
SIGNAL \inst3|converterX|state~21_combout\ : std_logic;
SIGNAL \inst3|converterX|state~22_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s4~q\ : std_logic;
SIGNAL \inst3|converterX|state.s5~q\ : std_logic;
SIGNAL \inst3|converterX|Add5~0_combout\ : std_logic;
SIGNAL \inst3|converterX|number[9]~2_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~0_combout\ : std_logic;
SIGNAL \inst3|converterX|number[9]~1_combout\ : std_logic;
SIGNAL \inst3|converterX|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|converterX|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|converterX|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|converterX|number~5_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~1\ : std_logic;
SIGNAL \inst3|converterX|Add5~2_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~0_combout\ : std_logic;
SIGNAL \inst3|converterX|number~8_combout\ : std_logic;
SIGNAL \inst3|converterX|number[0]~feeder_combout\ : std_logic;
SIGNAL \SDIO~input_o\ : std_logic;
SIGNAL \inst|Decoder0~8_combout\ : std_logic;
SIGNAL \inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|read_temp[0]~17_combout\ : std_logic;
SIGNAL \inst|dataX[0]~feeder_combout\ : std_logic;
SIGNAL \inst|dataX[12]~0_combout\ : std_logic;
SIGNAL \inst3|accX_v[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~1_cout\ : std_logic;
SIGNAL \inst3|converterX|Add0~3\ : std_logic;
SIGNAL \inst3|converterX|Add0~4_combout\ : std_logic;
SIGNAL \inst3|converterX|number~9_combout\ : std_logic;
SIGNAL \inst3|converterX|number~10_combout\ : std_logic;
SIGNAL \inst3|converterX|number[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|read_temp[2]~5_combout\ : std_logic;
SIGNAL \inst|dataX[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~5\ : std_logic;
SIGNAL \inst3|converterX|Add0~6_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~3\ : std_logic;
SIGNAL \inst3|converterX|Add5~4_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~1\ : std_logic;
SIGNAL \inst3|converterX|Add3~2_combout\ : std_logic;
SIGNAL \inst3|converterX|number~3_combout\ : std_logic;
SIGNAL \inst3|converterX|number~4_combout\ : std_logic;
SIGNAL \inst3|converterX|number[3]~feeder_combout\ : std_logic;
SIGNAL \inst|read_temp[3]~3_combout\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|read_temp[3]~4_combout\ : std_logic;
SIGNAL \inst|dataX[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|number[9]~6_combout\ : std_logic;
SIGNAL \inst3|converterX|number[9]~7_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~3\ : std_logic;
SIGNAL \inst3|converterX|Add3~4_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~1\ : std_logic;
SIGNAL \inst3|converterX|Add1~2_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~5\ : std_logic;
SIGNAL \inst3|converterX|Add5~6_combout\ : std_logic;
SIGNAL \inst3|converterX|number~11_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~7\ : std_logic;
SIGNAL \inst3|converterX|Add0~8_combout\ : std_logic;
SIGNAL \inst3|converterX|number~12_combout\ : std_logic;
SIGNAL \inst3|converterX|number[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|read_temp[4]~6_combout\ : std_logic;
SIGNAL \inst|dataX[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~3\ : std_logic;
SIGNAL \inst3|converterX|Add1~4_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~9\ : std_logic;
SIGNAL \inst3|converterX|Add0~10_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~7\ : std_logic;
SIGNAL \inst3|converterX|Add5~8_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~5\ : std_logic;
SIGNAL \inst3|converterX|Add3~6_combout\ : std_logic;
SIGNAL \inst3|converterX|number~15_combout\ : std_logic;
SIGNAL \inst3|converterX|number~16_combout\ : std_logic;
SIGNAL \inst3|converterX|number[5]~feeder_combout\ : std_logic;
SIGNAL \inst|read_temp[5]~9_combout\ : std_logic;
SIGNAL \inst|read_temp[5]~8_combout\ : std_logic;
SIGNAL \inst|read_temp[5]~10_combout\ : std_logic;
SIGNAL \inst|dataX[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~7\ : std_logic;
SIGNAL \inst3|converterX|Add3~8_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~11\ : std_logic;
SIGNAL \inst3|converterX|Add0~12_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~5\ : std_logic;
SIGNAL \inst3|converterX|Add1~6_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~9\ : std_logic;
SIGNAL \inst3|converterX|Add5~10_combout\ : std_logic;
SIGNAL \inst3|converterX|number~13_combout\ : std_logic;
SIGNAL \inst3|converterX|number~14_combout\ : std_logic;
SIGNAL \inst3|converterX|number[6]~feeder_combout\ : std_logic;
SIGNAL \inst|read_temp[6]~7_combout\ : std_logic;
SIGNAL \inst3|accX_v[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~7\ : std_logic;
SIGNAL \inst3|converterX|Add1~8_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~13\ : std_logic;
SIGNAL \inst3|converterX|Add0~14_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~11\ : std_logic;
SIGNAL \inst3|converterX|Add5~12_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~9\ : std_logic;
SIGNAL \inst3|converterX|Add3~10_combout\ : std_logic;
SIGNAL \inst3|converterX|number~29_combout\ : std_logic;
SIGNAL \inst3|converterX|number~30_combout\ : std_logic;
SIGNAL \inst3|converterX|number[7]~feeder_combout\ : std_logic;
SIGNAL \inst|read_temp[7]~15_combout\ : std_logic;
SIGNAL \inst3|accX_v[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~15\ : std_logic;
SIGNAL \inst3|converterX|Add0~16_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~9\ : std_logic;
SIGNAL \inst3|converterX|Add1~10_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~13\ : std_logic;
SIGNAL \inst3|converterX|Add5~14_combout\ : std_logic;
SIGNAL \inst3|converterX|number~27_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~11\ : std_logic;
SIGNAL \inst3|converterX|Add3~12_combout\ : std_logic;
SIGNAL \inst3|converterX|number~28_combout\ : std_logic;
SIGNAL \inst3|converterX|number[8]~feeder_combout\ : std_logic;
SIGNAL \inst|read_temp[1]~1_combout\ : std_logic;
SIGNAL \inst|Decoder0~5_combout\ : std_logic;
SIGNAL \inst|Decoder0~6_combout\ : std_logic;
SIGNAL \inst|read_temp[8]~14_combout\ : std_logic;
SIGNAL \inst|dataX[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~17\ : std_logic;
SIGNAL \inst3|converterX|Add0~18_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~11\ : std_logic;
SIGNAL \inst3|converterX|Add1~12_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~15\ : std_logic;
SIGNAL \inst3|converterX|Add5~16_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~13\ : std_logic;
SIGNAL \inst3|converterX|Add3~14_combout\ : std_logic;
SIGNAL \inst3|converterX|number~25_combout\ : std_logic;
SIGNAL \inst3|converterX|number~26_combout\ : std_logic;
SIGNAL \inst3|converterX|number[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~7_combout\ : std_logic;
SIGNAL \inst|read_temp[9]~13_combout\ : std_logic;
SIGNAL \inst3|accX_v[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~19\ : std_logic;
SIGNAL \inst3|converterX|Add0~20_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~15\ : std_logic;
SIGNAL \inst3|converterX|Add3~16_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~17\ : std_logic;
SIGNAL \inst3|converterX|Add5~18_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~13\ : std_logic;
SIGNAL \inst3|converterX|Add1~14_combout\ : std_logic;
SIGNAL \inst3|converterX|number~23_combout\ : std_logic;
SIGNAL \inst3|converterX|number~24_combout\ : std_logic;
SIGNAL \inst3|converterX|number[10]~feeder_combout\ : std_logic;
SIGNAL \inst|read_temp[10]~12_combout\ : std_logic;
SIGNAL \inst|dataX[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~21\ : std_logic;
SIGNAL \inst3|converterX|Add0~22_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~15\ : std_logic;
SIGNAL \inst3|converterX|Add1~16_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~19\ : std_logic;
SIGNAL \inst3|converterX|Add5~20_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~17\ : std_logic;
SIGNAL \inst3|converterX|Add3~18_combout\ : std_logic;
SIGNAL \inst3|converterX|number~21_combout\ : std_logic;
SIGNAL \inst3|converterX|number~22_combout\ : std_logic;
SIGNAL \inst3|converterX|number[11]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|read_temp[11]~11_combout\ : std_logic;
SIGNAL \inst|dataX[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|accX_v[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_3~0_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_3~2_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_3~1_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_3~3_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~23\ : std_logic;
SIGNAL \inst3|converterX|Add0~24_combout\ : std_logic;
SIGNAL \inst3|converterX|number~19_combout\ : std_logic;
SIGNAL \inst3|converterX|Add1~17\ : std_logic;
SIGNAL \inst3|converterX|Add1~18_combout\ : std_logic;
SIGNAL \inst3|converterX|Add3~19\ : std_logic;
SIGNAL \inst3|converterX|Add3~20_combout\ : std_logic;
SIGNAL \inst3|converterX|Add5~21\ : std_logic;
SIGNAL \inst3|converterX|Add5~22_combout\ : std_logic;
SIGNAL \inst3|converterX|number~17_combout\ : std_logic;
SIGNAL \inst3|converterX|number~18_combout\ : std_logic;
SIGNAL \inst3|converterX|number~20_combout\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|read_temp[12]~2_combout\ : std_logic;
SIGNAL \inst3|accX_v[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|Add0~2_combout\ : std_logic;
SIGNAL \inst3|converterX|number~31_combout\ : std_logic;
SIGNAL \inst3|converterX|number~32_combout\ : std_logic;
SIGNAL \inst3|converterX|number[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Decoder0~9_combout\ : std_logic;
SIGNAL \inst|Decoder0~10_combout\ : std_logic;
SIGNAL \inst|read_temp[1]~16_combout\ : std_logic;
SIGNAL \inst3|accX_v[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|converterX|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|converterX|number~0_combout\ : std_logic;
SIGNAL \inst3|converterX|state~18_combout\ : std_logic;
SIGNAL \inst3|converterX|state~17_combout\ : std_logic;
SIGNAL \inst3|converterX|state~19_combout\ : std_logic;
SIGNAL \inst3|converterX|state~24_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s1~q\ : std_logic;
SIGNAL \inst3|converterX|state~23_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s2~q\ : std_logic;
SIGNAL \inst3|converterX|state~25_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s3~q\ : std_logic;
SIGNAL \inst3|converterX|state~16_combout\ : std_logic;
SIGNAL \inst3|converterX|state~20_combout\ : std_logic;
SIGNAL \inst3|converterX|state.s0~q\ : std_logic;
SIGNAL \inst3|converterX|digit_int_0~0_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_0[0]~1_combout\ : std_logic;
SIGNAL \inst3|lcd_data~66_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_1~1_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_1[2]~0_combout\ : std_logic;
SIGNAL \inst3|converterX|Add6~2_combout\ : std_logic;
SIGNAL \inst3|converterX|Add6~1_combout\ : std_logic;
SIGNAL \inst3|converterX|Add6~0_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_out_1[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_2~1_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_2[0]~0_combout\ : std_logic;
SIGNAL \inst3|converterX|Add4~2_combout\ : std_logic;
SIGNAL \inst3|converterX|Add4~1_combout\ : std_logic;
SIGNAL \inst3|converterX|Add4~0_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_3~5_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_3[2]~4_combout\ : std_logic;
SIGNAL \inst3|converterX|Add2~2_combout\ : std_logic;
SIGNAL \inst3|converterX|Add2~1_combout\ : std_logic;
SIGNAL \inst3|converterX|Add2~0_combout\ : std_logic;
SIGNAL \inst3|lcd_data~68_combout\ : std_logic;
SIGNAL \inst3|lcd_data~69_combout\ : std_logic;
SIGNAL \inst3|lcd_data~70_combout\ : std_logic;
SIGNAL \inst3|lcd_data~71_combout\ : std_logic;
SIGNAL \inst3|lcd_data~72_combout\ : std_logic;
SIGNAL \inst3|lcd_data~26_combout\ : std_logic;
SIGNAL \inst3|lcd_data~170_combout\ : std_logic;
SIGNAL \inst3|lcd_data~73_combout\ : std_logic;
SIGNAL \inst3|lcd_data~176_combout\ : std_logic;
SIGNAL \inst3|lcd_data~177_combout\ : std_logic;
SIGNAL \inst3|lcd_data~74_combout\ : std_logic;
SIGNAL \inst3|lcd_data~76_combout\ : std_logic;
SIGNAL \inst3|lcd_data~165_combout\ : std_logic;
SIGNAL \inst3|lcd_data~77_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[10]~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~1\ : std_logic;
SIGNAL \inst3|converterZ|Add1~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[0]~feeder_combout\ : std_logic;
SIGNAL \inst|dataZ[12]~0_combout\ : std_logic;
SIGNAL \inst3|accZ_v[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~1_cout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~15\ : std_logic;
SIGNAL \inst3|converterZ|Add0~17\ : std_logic;
SIGNAL \inst3|converterZ|Add0~19\ : std_logic;
SIGNAL \inst3|converterZ|Add0~20_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~13\ : std_logic;
SIGNAL \inst3|converterZ|Add1~14_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~7\ : std_logic;
SIGNAL \inst3|converterZ|Add5~9\ : std_logic;
SIGNAL \inst3|converterZ|Add5~11\ : std_logic;
SIGNAL \inst3|converterZ|Add5~13\ : std_logic;
SIGNAL \inst3|converterZ|Add5~15\ : std_logic;
SIGNAL \inst3|converterZ|Add5~17\ : std_logic;
SIGNAL \inst3|converterZ|Add5~18_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~23_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~13\ : std_logic;
SIGNAL \inst3|converterZ|Add3~15\ : std_logic;
SIGNAL \inst3|converterZ|Add3~16_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~24_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[10]~feeder_combout\ : std_logic;
SIGNAL \inst|dataZ[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[10]~6_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[10]~7_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~15\ : std_logic;
SIGNAL \inst3|converterZ|Add1~16_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~21\ : std_logic;
SIGNAL \inst3|converterZ|Add0~22_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~17\ : std_logic;
SIGNAL \inst3|converterZ|Add3~18_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~19\ : std_logic;
SIGNAL \inst3|converterZ|Add5~20_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~21_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~22_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~23\ : std_logic;
SIGNAL \inst3|converterZ|Add0~24_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~19_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~17\ : std_logic;
SIGNAL \inst3|converterZ|Add1~18_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~19\ : std_logic;
SIGNAL \inst3|converterZ|Add3~20_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~21\ : std_logic;
SIGNAL \inst3|converterZ|Add5~22_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~17_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~18_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~20_combout\ : std_logic;
SIGNAL \inst|dataZ[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~31_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~32_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[1]~feeder_combout\ : std_logic;
SIGNAL \inst|dataZ[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_3~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~5_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~3\ : std_logic;
SIGNAL \inst3|converterZ|Add0~4_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~9_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~1\ : std_logic;
SIGNAL \inst3|converterZ|Add5~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~8_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~10_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[2]~feeder_combout\ : std_logic;
SIGNAL \inst|dataZ[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~3\ : std_logic;
SIGNAL \inst3|converterZ|Add5~5\ : std_logic;
SIGNAL \inst3|converterZ|Add5~6_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~11_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~1\ : std_logic;
SIGNAL \inst3|converterZ|Add3~3\ : std_logic;
SIGNAL \inst3|converterZ|Add3~4_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~5\ : std_logic;
SIGNAL \inst3|converterZ|Add0~7\ : std_logic;
SIGNAL \inst3|converterZ|Add0~8_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~12_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~3\ : std_logic;
SIGNAL \inst3|converterZ|Add1~4_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~9\ : std_logic;
SIGNAL \inst3|converterZ|Add0~10_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~5\ : std_logic;
SIGNAL \inst3|converterZ|Add3~6_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~8_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~15_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~16_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~11\ : std_logic;
SIGNAL \inst3|converterZ|Add0~12_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~7\ : std_logic;
SIGNAL \inst3|converterZ|Add3~8_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~5\ : std_logic;
SIGNAL \inst3|converterZ|Add1~6_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~10_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~13_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~14_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~13\ : std_logic;
SIGNAL \inst3|converterZ|Add0~14_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~7\ : std_logic;
SIGNAL \inst3|converterZ|Add1~8_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~9\ : std_logic;
SIGNAL \inst3|converterZ|Add3~10_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~12_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~29_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~30_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~11\ : std_logic;
SIGNAL \inst3|converterZ|Add3~12_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~16_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~14_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~9\ : std_logic;
SIGNAL \inst3|converterZ|Add1~10_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~27_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~28_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[8]~feeder_combout\ : std_logic;
SIGNAL \inst|dataZ[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~11\ : std_logic;
SIGNAL \inst3|converterZ|Add1~12_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~18_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~14_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~16_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~25_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~26_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_3~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_3~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_3~3_combout\ : std_logic;
SIGNAL \inst3|converterZ|state~22_combout\ : std_logic;
SIGNAL \inst3|converterZ|state.s4~q\ : std_logic;
SIGNAL \inst3|converterZ|state.s5~q\ : std_logic;
SIGNAL \inst3|converterZ|state~16_combout\ : std_logic;
SIGNAL \inst3|converterZ|state~17_combout\ : std_logic;
SIGNAL \inst3|converterZ|state~18_combout\ : std_logic;
SIGNAL \inst3|converterZ|state~23_combout\ : std_logic;
SIGNAL \inst3|converterZ|state.s1~q\ : std_logic;
SIGNAL \inst3|converterZ|state~21_combout\ : std_logic;
SIGNAL \inst3|converterZ|state.s2~q\ : std_logic;
SIGNAL \inst3|converterZ|state~24_combout\ : std_logic;
SIGNAL \inst3|converterZ|state.s3~q\ : std_logic;
SIGNAL \inst3|converterZ|state~19_combout\ : std_logic;
SIGNAL \inst3|converterZ|state~20_combout\ : std_logic;
SIGNAL \inst3|converterZ|state.s0~q\ : std_logic;
SIGNAL \inst3|converterZ|state.s0_s~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|state.s0_s~q\ : std_logic;
SIGNAL \inst3|converterZ|number[10]~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add1~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add0~6_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add3~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add5~4_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~3_combout\ : std_logic;
SIGNAL \inst3|converterZ|number~4_combout\ : std_logic;
SIGNAL \inst3|converterZ|number[3]~feeder_combout\ : std_logic;
SIGNAL \inst|dataZ[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|accZ_v[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_0~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_0[1]~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_out_0[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|number[6]~2_combout\ : std_logic;
SIGNAL \inst3|converterY|LessThan2~0_combout\ : std_logic;
SIGNAL \inst3|converterY|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|converterY|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|converterY|LessThan2~2_combout\ : std_logic;
SIGNAL \inst3|converterY|state~24_combout\ : std_logic;
SIGNAL \inst3|converterY|state.s3~q\ : std_logic;
SIGNAL \inst3|converterY|Add5~0_combout\ : std_logic;
SIGNAL \inst3|converterY|number[0]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[0]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[12]~0_combout\ : std_logic;
SIGNAL \inst3|accY_v[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~1_cout\ : std_logic;
SIGNAL \inst3|converterY|Add0~2_combout\ : std_logic;
SIGNAL \inst3|converterY|number~31_combout\ : std_logic;
SIGNAL \inst3|converterY|number~32_combout\ : std_logic;
SIGNAL \inst3|converterY|number[1]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|LessThan2~1_combout\ : std_logic;
SIGNAL \inst3|converterY|number~0_combout\ : std_logic;
SIGNAL \inst3|converterY|number~5_combout\ : std_logic;
SIGNAL \inst3|converterY|number[6]~6_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~11\ : std_logic;
SIGNAL \inst3|converterY|Add0~13\ : std_logic;
SIGNAL \inst3|converterY|Add0~15\ : std_logic;
SIGNAL \inst3|converterY|Add0~17\ : std_logic;
SIGNAL \inst3|converterY|Add0~19\ : std_logic;
SIGNAL \inst3|converterY|Add0~21\ : std_logic;
SIGNAL \inst3|converterY|Add0~23\ : std_logic;
SIGNAL \inst3|converterY|Add0~24_combout\ : std_logic;
SIGNAL \inst3|converterY|number~19_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~17\ : std_logic;
SIGNAL \inst3|converterY|Add1~18_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~13\ : std_logic;
SIGNAL \inst3|converterY|Add5~15\ : std_logic;
SIGNAL \inst3|converterY|Add5~17\ : std_logic;
SIGNAL \inst3|converterY|Add5~19\ : std_logic;
SIGNAL \inst3|converterY|Add5~21\ : std_logic;
SIGNAL \inst3|converterY|Add5~22_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~17\ : std_logic;
SIGNAL \inst3|converterY|Add3~19\ : std_logic;
SIGNAL \inst3|converterY|Add3~20_combout\ : std_logic;
SIGNAL \inst3|converterY|number~17_combout\ : std_logic;
SIGNAL \inst3|converterY|number~18_combout\ : std_logic;
SIGNAL \inst3|converterY|number~20_combout\ : std_logic;
SIGNAL \inst3|accY_v[12]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~3\ : std_logic;
SIGNAL \inst3|converterY|Add0~4_combout\ : std_logic;
SIGNAL \inst3|converterY|number~9_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~1\ : std_logic;
SIGNAL \inst3|converterY|Add5~2_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~0_combout\ : std_logic;
SIGNAL \inst3|converterY|number~8_combout\ : std_logic;
SIGNAL \inst3|converterY|number~10_combout\ : std_logic;
SIGNAL \inst3|converterY|number[2]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~1\ : std_logic;
SIGNAL \inst3|converterY|Add3~3\ : std_logic;
SIGNAL \inst3|converterY|Add3~4_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~5\ : std_logic;
SIGNAL \inst3|converterY|Add0~7\ : std_logic;
SIGNAL \inst3|converterY|Add0~8_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~3\ : std_logic;
SIGNAL \inst3|converterY|Add5~5\ : std_logic;
SIGNAL \inst3|converterY|Add5~6_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~1\ : std_logic;
SIGNAL \inst3|converterY|Add1~2_combout\ : std_logic;
SIGNAL \inst3|converterY|number~11_combout\ : std_logic;
SIGNAL \inst3|converterY|number~12_combout\ : std_logic;
SIGNAL \inst3|converterY|number[4]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|number[6]~7_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~9\ : std_logic;
SIGNAL \inst3|converterY|Add0~10_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~3\ : std_logic;
SIGNAL \inst3|converterY|Add1~4_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~5\ : std_logic;
SIGNAL \inst3|converterY|Add3~6_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~7\ : std_logic;
SIGNAL \inst3|converterY|Add5~8_combout\ : std_logic;
SIGNAL \inst3|converterY|number~15_combout\ : std_logic;
SIGNAL \inst3|converterY|number~16_combout\ : std_logic;
SIGNAL \inst3|converterY|number[5]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~7\ : std_logic;
SIGNAL \inst3|converterY|Add3~8_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~12_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~9\ : std_logic;
SIGNAL \inst3|converterY|Add5~10_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~5\ : std_logic;
SIGNAL \inst3|converterY|Add1~6_combout\ : std_logic;
SIGNAL \inst3|converterY|number~13_combout\ : std_logic;
SIGNAL \inst3|converterY|number~14_combout\ : std_logic;
SIGNAL \inst3|converterY|number[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~11\ : std_logic;
SIGNAL \inst3|converterY|Add5~12_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~9\ : std_logic;
SIGNAL \inst3|converterY|Add3~10_combout\ : std_logic;
SIGNAL \inst3|converterY|number~29_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~7\ : std_logic;
SIGNAL \inst3|converterY|Add1~8_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~14_combout\ : std_logic;
SIGNAL \inst3|converterY|number~30_combout\ : std_logic;
SIGNAL \inst3|converterY|number[7]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~11\ : std_logic;
SIGNAL \inst3|converterY|Add3~12_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~16_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~14_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~9\ : std_logic;
SIGNAL \inst3|converterY|Add1~10_combout\ : std_logic;
SIGNAL \inst3|converterY|number~27_combout\ : std_logic;
SIGNAL \inst3|converterY|number~28_combout\ : std_logic;
SIGNAL \inst3|converterY|number[8]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~11\ : std_logic;
SIGNAL \inst3|converterY|Add1~12_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~18_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~13\ : std_logic;
SIGNAL \inst3|converterY|Add3~14_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~16_combout\ : std_logic;
SIGNAL \inst3|converterY|number~25_combout\ : std_logic;
SIGNAL \inst3|converterY|number~26_combout\ : std_logic;
SIGNAL \inst3|converterY|number[9]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~15\ : std_logic;
SIGNAL \inst3|converterY|Add3~16_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~20_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~18_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~13\ : std_logic;
SIGNAL \inst3|converterY|Add1~14_combout\ : std_logic;
SIGNAL \inst3|converterY|number~23_combout\ : std_logic;
SIGNAL \inst3|converterY|number~24_combout\ : std_logic;
SIGNAL \inst3|converterY|number[10]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~15\ : std_logic;
SIGNAL \inst3|converterY|Add1~16_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~22_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~18_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~20_combout\ : std_logic;
SIGNAL \inst3|converterY|number~21_combout\ : std_logic;
SIGNAL \inst3|converterY|number~22_combout\ : std_logic;
SIGNAL \inst3|converterY|number[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[11]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_3~0_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_3~1_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_3~2_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_3~3_combout\ : std_logic;
SIGNAL \inst3|converterY|state~22_combout\ : std_logic;
SIGNAL \inst3|converterY|state.s4~q\ : std_logic;
SIGNAL \inst3|converterY|state.s5~q\ : std_logic;
SIGNAL \inst3|converterY|state~16_combout\ : std_logic;
SIGNAL \inst3|converterY|state~17_combout\ : std_logic;
SIGNAL \inst3|converterY|state~18_combout\ : std_logic;
SIGNAL \inst3|converterY|state~23_combout\ : std_logic;
SIGNAL \inst3|converterY|state.s1~q\ : std_logic;
SIGNAL \inst3|converterY|state~21_combout\ : std_logic;
SIGNAL \inst3|converterY|state.s2~q\ : std_logic;
SIGNAL \inst3|converterY|state~19_combout\ : std_logic;
SIGNAL \inst3|converterY|state~20_combout\ : std_logic;
SIGNAL \inst3|converterY|state.s0~q\ : std_logic;
SIGNAL \inst3|converterY|state.s0_s~0_combout\ : std_logic;
SIGNAL \inst3|converterY|state.s0_s~q\ : std_logic;
SIGNAL \inst3|converterY|number[6]~1_combout\ : std_logic;
SIGNAL \inst3|converterY|Add1~0_combout\ : std_logic;
SIGNAL \inst3|converterY|Add3~2_combout\ : std_logic;
SIGNAL \inst3|converterY|Add5~4_combout\ : std_logic;
SIGNAL \inst3|converterY|number~3_combout\ : std_logic;
SIGNAL \inst3|converterY|Add0~6_combout\ : std_logic;
SIGNAL \inst3|converterY|number~4_combout\ : std_logic;
SIGNAL \inst3|converterY|number[3]~feeder_combout\ : std_logic;
SIGNAL \inst|dataY[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|accY_v[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_0~0_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_0[0]~1_combout\ : std_logic;
SIGNAL \inst3|lcd_data~84_combout\ : std_logic;
SIGNAL \inst3|lcd_data~85_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_2~1_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_2[0]~0_combout\ : std_logic;
SIGNAL \inst3|converterY|Add4~2_combout\ : std_logic;
SIGNAL \inst3|converterY|Add4~1_combout\ : std_logic;
SIGNAL \inst3|converterY|Add4~0_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_out_2[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_1~1_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_1[3]~0_combout\ : std_logic;
SIGNAL \inst3|converterY|Add6~2_combout\ : std_logic;
SIGNAL \inst3|converterY|Add6~1_combout\ : std_logic;
SIGNAL \inst3|converterY|Add6~0_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_3~5_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_3[1]~4_combout\ : std_logic;
SIGNAL \inst3|converterY|Add2~2_combout\ : std_logic;
SIGNAL \inst3|converterY|Add2~1_combout\ : std_logic;
SIGNAL \inst3|converterY|Add2~0_combout\ : std_logic;
SIGNAL \inst3|lcd_data~80_combout\ : std_logic;
SIGNAL \inst3|lcd_data~81_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_1~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_1[3]~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add6~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add6~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add6~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_out_1[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_2~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_2[2]~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add4~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add4~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add4~0_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_3~5_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_3[0]~4_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add2~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add2~1_combout\ : std_logic;
SIGNAL \inst3|converterZ|Add2~0_combout\ : std_logic;
SIGNAL \inst3|lcd_data~78_combout\ : std_logic;
SIGNAL \inst3|lcd_data~79_combout\ : std_logic;
SIGNAL \inst3|lcd_data~82_combout\ : std_logic;
SIGNAL \inst3|lcd_data~83_combout\ : std_logic;
SIGNAL \inst3|lcd_data~86_combout\ : std_logic;
SIGNAL \inst3|lcd_data~87_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~10_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~11_combout\ : std_logic;
SIGNAL \inst2|addressStorage~3_combout\ : std_logic;
SIGNAL \inst3|lcd_data~166_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_0~2_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_out_1[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~88_combout\ : std_logic;
SIGNAL \inst3|lcd_data~89_combout\ : std_logic;
SIGNAL \inst3|lcd_data~90_combout\ : std_logic;
SIGNAL \inst3|lcd_data~100_combout\ : std_logic;
SIGNAL \inst3|lcd_data~99_combout\ : std_logic;
SIGNAL \inst3|lcd_data~101_combout\ : std_logic;
SIGNAL \inst3|Equal14~1_combout\ : std_logic;
SIGNAL \inst3|lcd_data~96_combout\ : std_logic;
SIGNAL \inst3|lcd_data~97_combout\ : std_logic;
SIGNAL \inst3|lcd_data~93_combout\ : std_logic;
SIGNAL \inst3|lcd_data~94_combout\ : std_logic;
SIGNAL \inst3|lcd_data~95_combout\ : std_logic;
SIGNAL \inst3|lcd_data~91_combout\ : std_logic;
SIGNAL \inst3|lcd_data~92_combout\ : std_logic;
SIGNAL \inst3|lcd_data~98_combout\ : std_logic;
SIGNAL \inst3|lcd_data~102_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_0~2_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_out_0[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_0~2_combout\ : std_logic;
SIGNAL \inst3|lcd_data~103_combout\ : std_logic;
SIGNAL \inst3|lcd_data~104_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_out_2[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~105_combout\ : std_logic;
SIGNAL \inst3|lcd_data~106_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_out_3[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~107_combout\ : std_logic;
SIGNAL \inst3|lcd_data~108_combout\ : std_logic;
SIGNAL \inst3|lcd_data~109_combout\ : std_logic;
SIGNAL \inst3|lcd_data~110_combout\ : std_logic;
SIGNAL \inst3|lcd_data~111_combout\ : std_logic;
SIGNAL \inst2|dataStorage[2]~2_combout\ : std_logic;
SIGNAL \inst2|dataOut[2]~12_combout\ : std_logic;
SIGNAL \inst2|dataOut[2]~13_combout\ : std_logic;
SIGNAL \inst3|lcd_data~115_combout\ : std_logic;
SIGNAL \inst3|lcd_data~116_combout\ : std_logic;
SIGNAL \inst3|lcd_data~29_combout\ : std_logic;
SIGNAL \inst3|lcd_data~173_combout\ : std_logic;
SIGNAL \inst3|lcd_data~114_combout\ : std_logic;
SIGNAL \inst3|lcd_data~112_combout\ : std_logic;
SIGNAL \inst3|lcd_data~113_combout\ : std_logic;
SIGNAL \inst3|lcd_data~117_combout\ : std_logic;
SIGNAL \inst3|lcd_data~123_combout\ : std_logic;
SIGNAL \inst3|lcd_data~75_combout\ : std_logic;
SIGNAL \inst3|lcd_data~124_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_out_1[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~119_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_0~3_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_out_0[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~118_combout\ : std_logic;
SIGNAL \inst3|lcd_data~120_combout\ : std_logic;
SIGNAL \inst3|lcd_data~121_combout\ : std_logic;
SIGNAL \inst3|lcd_data~122_combout\ : std_logic;
SIGNAL \inst3|lcd_data~125_combout\ : std_logic;
SIGNAL \inst3|lcd_data~130_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_0~3_combout\ : std_logic;
SIGNAL \inst3|lcd_data~128_combout\ : std_logic;
SIGNAL \inst3|lcd_data~127_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_out_1[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~126_combout\ : std_logic;
SIGNAL \inst3|lcd_data~167_combout\ : std_logic;
SIGNAL \inst3|lcd_data~129_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_out_1[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~131_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_0~3_combout\ : std_logic;
SIGNAL \inst3|lcd_data~132_combout\ : std_logic;
SIGNAL \inst3|lcd_data~133_combout\ : std_logic;
SIGNAL \inst3|lcd_data~134_combout\ : std_logic;
SIGNAL \inst3|lcd_data~135_combout\ : std_logic;
SIGNAL \inst3|lcd_data~136_combout\ : std_logic;
SIGNAL \inst3|lcd_data~137_combout\ : std_logic;
SIGNAL \inst2|dataStorage[1]~3_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~14_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~15_combout\ : std_logic;
SIGNAL \inst2|addressStorage[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~144_combout\ : std_logic;
SIGNAL \inst3|lcd_data~145_combout\ : std_logic;
SIGNAL \inst3|lcd_data~146_combout\ : std_logic;
SIGNAL \inst3|lcd_data~147_combout\ : std_logic;
SIGNAL \inst3|lcd_data~143_combout\ : std_logic;
SIGNAL \inst3|lcd_data~174_combout\ : std_logic;
SIGNAL \inst3|lcd_data~175_combout\ : std_logic;
SIGNAL \inst3|lcd_data~149_combout\ : std_logic;
SIGNAL \inst3|lcd_data~148_combout\ : std_logic;
SIGNAL \inst3|lcd_data~150_combout\ : std_logic;
SIGNAL \inst3|lcd_data~151_combout\ : std_logic;
SIGNAL \inst3|lcd_data~158_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_int_0~4_combout\ : std_logic;
SIGNAL \inst3|lcd_data~159_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_int_0~4_combout\ : std_logic;
SIGNAL \inst3|lcd_data~155_combout\ : std_logic;
SIGNAL \inst3|lcd_data~154_combout\ : std_logic;
SIGNAL \inst3|converterY|digit_out_1[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~152_combout\ : std_logic;
SIGNAL \inst3|lcd_data~153_combout\ : std_logic;
SIGNAL \inst3|lcd_data~156_combout\ : std_logic;
SIGNAL \inst3|lcd_data~157_combout\ : std_logic;
SIGNAL \inst3|lcd_data~160_combout\ : std_logic;
SIGNAL \inst3|converterZ|digit_out_3[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~161_combout\ : std_logic;
SIGNAL \inst3|lcd_data~162_combout\ : std_logic;
SIGNAL \inst3|lcd_data~163_combout\ : std_logic;
SIGNAL \inst3|lcd_data~141_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_int_0~4_combout\ : std_logic;
SIGNAL \inst3|converterX|digit_out_1[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|lcd_data~138_combout\ : std_logic;
SIGNAL \inst3|lcd_data~139_combout\ : std_logic;
SIGNAL \inst3|lcd_data~140_combout\ : std_logic;
SIGNAL \inst3|lcd_data~142_combout\ : std_logic;
SIGNAL \inst3|lcd_data~164_combout\ : std_logic;
SIGNAL \inst2|dataOut[0]~16_combout\ : std_logic;
SIGNAL \inst2|dataOut[0]~17_combout\ : std_logic;
SIGNAL \inst2|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst|time_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|converterY|digit_int_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|transmission_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|converterX|digit_int_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst3|converterX|digit_int_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|charCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|display_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst3|converterX|digit_int_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|read_temp\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_int_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_int_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_int_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_int_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterY|digit_int_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterY|digit_int_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|accY_v\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterX|number\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterZ|number\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|dataZ\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterY|number\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst2|addressStorage\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|dataStorage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|lcd_posY\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|lcd_posX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|lineCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|converterX|digit_out_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterX|digit_out_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|accX_v\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterX|digit_out_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterX|digit_out_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_out_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_out_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|accZ_v\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterY|digit_out_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_out_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterY|digit_out_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterY|digit_out_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterY|digit_out_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterZ|digit_out_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|converterX|digit_int_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dataX\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|dataY\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst3|converterY|digit_int_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_SCLK_int~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_state~25_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.pause~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CS_N <= ww_CS_N;
ww_clk_50 <= clk_50;
SCLK <= ww_SCLK;
rs <= ww_rs;
rw <= ww_rw;
e <= ww_e;
data <= ww_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|SCLK_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|SCLK_int~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst|ALT_INV_SCLK_int~clkctrl_outclk\ <= NOT \inst|SCLK_int~clkctrl_outclk\;
\inst|ALT_INV_state~25_combout\ <= NOT \inst|state~25_combout\;
\inst|ALT_INV_state.pause~q\ <= NOT \inst|state.pause~q\;
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
	i => \inst|SDIO~reg0_q\,
	oe => \inst|SDIO~en_q\,
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
	i => \inst|ALT_INV_state.pause~q\,
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
	i => \inst|SCLK~0_combout\,
	devoe => ww_devoe,
	o => \SCLK~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|process_1~0_combout\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|e~8_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|state.sendingAddress~q\,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[6]~3_combout\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[5]~6_combout\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[3]~11_combout\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[2]~13_combout\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[1]~15_combout\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[0]~17_combout\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

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

-- Location: LCCOMB_X10_Y19_N14
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X10_Y19_N15
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X10_Y19_N16
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X10_Y19_N12
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|Add0~2_combout\ & ((!\inst|counter\(4)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|counter\(4),
	datad => \inst|Add0~2_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X10_Y19_N13
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X10_Y19_N18
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X10_Y19_N19
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X10_Y19_N20
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(3) & (!\inst|Add0~5\)) # (!\inst|counter\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X10_Y19_N22
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = \inst|Add0~7\ $ (!\inst|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(4),
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\);

-- Location: LCCOMB_X10_Y19_N24
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|Add0~8_combout\ & ((!\inst|counter\(4)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datac => \inst|counter\(4),
	datad => \inst|Add0~8_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X10_Y19_N25
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X10_Y19_N30
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (\inst|Add0~6_combout\ & ((!\inst|counter\(4)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|counter\(4),
	datad => \inst|Add0~6_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X10_Y19_N31
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X10_Y19_N6
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(3) & (!\inst|counter\(1) & (\inst|counter\(0) & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y19_N10
\inst|SCLK_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SCLK_int~0_combout\ = \inst|SCLK_int~q\ $ (((\inst|Equal0~0_combout\ & \inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SCLK_int~q\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|counter\(4),
	combout => \inst|SCLK_int~0_combout\);

-- Location: FF_X11_Y19_N25
\inst|SCLK_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|SCLK_int~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SCLK_int~q\);

-- Location: CLKCTRL_G2
\inst|SCLK_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|SCLK_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|SCLK_int~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y23_N24
\inst|next_state.init1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.init1~feeder_combout\ = \inst|state.init0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.init0~q\,
	combout => \inst|next_state.init1~feeder_combout\);

-- Location: LCCOMB_X11_Y23_N12
\inst|transmission_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|transmission_count[0]~5_combout\ = \inst|transmission_count\(0) $ (VCC)
-- \inst|transmission_count[0]~6\ = CARRY(\inst|transmission_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(0),
	datad => VCC,
	combout => \inst|transmission_count[0]~5_combout\,
	cout => \inst|transmission_count[0]~6\);

-- Location: LCCOMB_X11_Y19_N22
\inst|pause_entered~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pause_entered~feeder_combout\ = \inst|state~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state~25_combout\,
	combout => \inst|pause_entered~feeder_combout\);

-- Location: FF_X11_Y19_N23
\inst|pause_entered\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|pause_entered~feeder_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pause_entered~q\);

-- Location: LCCOMB_X12_Y19_N0
\inst|time_count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[0]~16_combout\ = (\inst|time_count\(0) & (\inst|pause_entered~q\ $ (VCC))) # (!\inst|time_count\(0) & (\inst|pause_entered~q\ & VCC))
-- \inst|time_count[0]~17\ = CARRY((\inst|time_count\(0) & \inst|pause_entered~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(0),
	datab => \inst|pause_entered~q\,
	datad => VCC,
	combout => \inst|time_count[0]~16_combout\,
	cout => \inst|time_count[0]~17\);

-- Location: FF_X12_Y19_N1
\inst|time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[0]~16_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(0));

-- Location: LCCOMB_X12_Y19_N2
\inst|time_count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[1]~18_combout\ = (\inst|time_count\(1) & (!\inst|time_count[0]~17\)) # (!\inst|time_count\(1) & ((\inst|time_count[0]~17\) # (GND)))
-- \inst|time_count[1]~19\ = CARRY((!\inst|time_count[0]~17\) # (!\inst|time_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(1),
	datad => VCC,
	cin => \inst|time_count[0]~17\,
	combout => \inst|time_count[1]~18_combout\,
	cout => \inst|time_count[1]~19\);

-- Location: FF_X12_Y19_N3
\inst|time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[1]~18_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(1));

-- Location: LCCOMB_X12_Y19_N4
\inst|time_count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[2]~20_combout\ = (\inst|time_count\(2) & (\inst|time_count[1]~19\ $ (GND))) # (!\inst|time_count\(2) & (!\inst|time_count[1]~19\ & VCC))
-- \inst|time_count[2]~21\ = CARRY((\inst|time_count\(2) & !\inst|time_count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(2),
	datad => VCC,
	cin => \inst|time_count[1]~19\,
	combout => \inst|time_count[2]~20_combout\,
	cout => \inst|time_count[2]~21\);

-- Location: FF_X12_Y19_N5
\inst|time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[2]~20_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(2));

-- Location: LCCOMB_X12_Y19_N6
\inst|time_count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[3]~22_combout\ = (\inst|time_count\(3) & (!\inst|time_count[2]~21\)) # (!\inst|time_count\(3) & ((\inst|time_count[2]~21\) # (GND)))
-- \inst|time_count[3]~23\ = CARRY((!\inst|time_count[2]~21\) # (!\inst|time_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(3),
	datad => VCC,
	cin => \inst|time_count[2]~21\,
	combout => \inst|time_count[3]~22_combout\,
	cout => \inst|time_count[3]~23\);

-- Location: FF_X12_Y19_N7
\inst|time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[3]~22_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(3));

-- Location: LCCOMB_X12_Y19_N8
\inst|time_count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[4]~24_combout\ = (\inst|time_count\(4) & (\inst|time_count[3]~23\ $ (GND))) # (!\inst|time_count\(4) & (!\inst|time_count[3]~23\ & VCC))
-- \inst|time_count[4]~25\ = CARRY((\inst|time_count\(4) & !\inst|time_count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(4),
	datad => VCC,
	cin => \inst|time_count[3]~23\,
	combout => \inst|time_count[4]~24_combout\,
	cout => \inst|time_count[4]~25\);

-- Location: FF_X12_Y19_N9
\inst|time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[4]~24_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(4));

-- Location: LCCOMB_X12_Y19_N10
\inst|time_count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[5]~26_combout\ = (\inst|time_count\(5) & (!\inst|time_count[4]~25\)) # (!\inst|time_count\(5) & ((\inst|time_count[4]~25\) # (GND)))
-- \inst|time_count[5]~27\ = CARRY((!\inst|time_count[4]~25\) # (!\inst|time_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(5),
	datad => VCC,
	cin => \inst|time_count[4]~25\,
	combout => \inst|time_count[5]~26_combout\,
	cout => \inst|time_count[5]~27\);

-- Location: FF_X12_Y19_N11
\inst|time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[5]~26_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(5));

-- Location: LCCOMB_X12_Y19_N12
\inst|time_count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[6]~28_combout\ = (\inst|time_count\(6) & (\inst|time_count[5]~27\ $ (GND))) # (!\inst|time_count\(6) & (!\inst|time_count[5]~27\ & VCC))
-- \inst|time_count[6]~29\ = CARRY((\inst|time_count\(6) & !\inst|time_count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(6),
	datad => VCC,
	cin => \inst|time_count[5]~27\,
	combout => \inst|time_count[6]~28_combout\,
	cout => \inst|time_count[6]~29\);

-- Location: FF_X12_Y19_N13
\inst|time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[6]~28_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(6));

-- Location: LCCOMB_X12_Y19_N14
\inst|time_count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[7]~30_combout\ = (\inst|time_count\(7) & (!\inst|time_count[6]~29\)) # (!\inst|time_count\(7) & ((\inst|time_count[6]~29\) # (GND)))
-- \inst|time_count[7]~31\ = CARRY((!\inst|time_count[6]~29\) # (!\inst|time_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(7),
	datad => VCC,
	cin => \inst|time_count[6]~29\,
	combout => \inst|time_count[7]~30_combout\,
	cout => \inst|time_count[7]~31\);

-- Location: FF_X12_Y19_N15
\inst|time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[7]~30_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(7));

-- Location: LCCOMB_X12_Y19_N16
\inst|time_count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[8]~32_combout\ = (\inst|time_count\(8) & (\inst|time_count[7]~31\ $ (GND))) # (!\inst|time_count\(8) & (!\inst|time_count[7]~31\ & VCC))
-- \inst|time_count[8]~33\ = CARRY((\inst|time_count\(8) & !\inst|time_count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(8),
	datad => VCC,
	cin => \inst|time_count[7]~31\,
	combout => \inst|time_count[8]~32_combout\,
	cout => \inst|time_count[8]~33\);

-- Location: FF_X12_Y19_N17
\inst|time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[8]~32_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(8));

-- Location: LCCOMB_X12_Y19_N18
\inst|time_count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[9]~34_combout\ = (\inst|time_count\(9) & (!\inst|time_count[8]~33\)) # (!\inst|time_count\(9) & ((\inst|time_count[8]~33\) # (GND)))
-- \inst|time_count[9]~35\ = CARRY((!\inst|time_count[8]~33\) # (!\inst|time_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(9),
	datad => VCC,
	cin => \inst|time_count[8]~33\,
	combout => \inst|time_count[9]~34_combout\,
	cout => \inst|time_count[9]~35\);

-- Location: FF_X12_Y19_N19
\inst|time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[9]~34_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(9));

-- Location: LCCOMB_X12_Y19_N20
\inst|time_count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[10]~36_combout\ = (\inst|time_count\(10) & (\inst|time_count[9]~35\ $ (GND))) # (!\inst|time_count\(10) & (!\inst|time_count[9]~35\ & VCC))
-- \inst|time_count[10]~37\ = CARRY((\inst|time_count\(10) & !\inst|time_count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(10),
	datad => VCC,
	cin => \inst|time_count[9]~35\,
	combout => \inst|time_count[10]~36_combout\,
	cout => \inst|time_count[10]~37\);

-- Location: FF_X12_Y19_N21
\inst|time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[10]~36_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(10));

-- Location: LCCOMB_X12_Y19_N22
\inst|time_count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[11]~38_combout\ = (\inst|time_count\(11) & (!\inst|time_count[10]~37\)) # (!\inst|time_count\(11) & ((\inst|time_count[10]~37\) # (GND)))
-- \inst|time_count[11]~39\ = CARRY((!\inst|time_count[10]~37\) # (!\inst|time_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(11),
	datad => VCC,
	cin => \inst|time_count[10]~37\,
	combout => \inst|time_count[11]~38_combout\,
	cout => \inst|time_count[11]~39\);

-- Location: FF_X12_Y19_N23
\inst|time_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[11]~38_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(11));

-- Location: LCCOMB_X12_Y19_N24
\inst|time_count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[12]~40_combout\ = (\inst|time_count\(12) & (\inst|time_count[11]~39\ $ (GND))) # (!\inst|time_count\(12) & (!\inst|time_count[11]~39\ & VCC))
-- \inst|time_count[12]~41\ = CARRY((\inst|time_count\(12) & !\inst|time_count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(12),
	datad => VCC,
	cin => \inst|time_count[11]~39\,
	combout => \inst|time_count[12]~40_combout\,
	cout => \inst|time_count[12]~41\);

-- Location: FF_X12_Y19_N25
\inst|time_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[12]~40_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(12));

-- Location: LCCOMB_X12_Y19_N26
\inst|time_count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[13]~42_combout\ = (\inst|time_count\(13) & (!\inst|time_count[12]~41\)) # (!\inst|time_count\(13) & ((\inst|time_count[12]~41\) # (GND)))
-- \inst|time_count[13]~43\ = CARRY((!\inst|time_count[12]~41\) # (!\inst|time_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(13),
	datad => VCC,
	cin => \inst|time_count[12]~41\,
	combout => \inst|time_count[13]~42_combout\,
	cout => \inst|time_count[13]~43\);

-- Location: FF_X12_Y19_N27
\inst|time_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[13]~42_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(13));

-- Location: LCCOMB_X12_Y19_N28
\inst|time_count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[14]~44_combout\ = (\inst|time_count\(14) & (\inst|time_count[13]~43\ $ (GND))) # (!\inst|time_count\(14) & (!\inst|time_count[13]~43\ & VCC))
-- \inst|time_count[14]~45\ = CARRY((\inst|time_count\(14) & !\inst|time_count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(14),
	datad => VCC,
	cin => \inst|time_count[13]~43\,
	combout => \inst|time_count[14]~44_combout\,
	cout => \inst|time_count[14]~45\);

-- Location: FF_X12_Y19_N29
\inst|time_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[14]~44_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(14));

-- Location: LCCOMB_X12_Y19_N30
\inst|time_count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[15]~46_combout\ = \inst|time_count\(15) $ (\inst|time_count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(15),
	cin => \inst|time_count[14]~45\,
	combout => \inst|time_count[15]~46_combout\);

-- Location: FF_X12_Y19_N31
\inst|time_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[15]~46_combout\,
	sclr => \inst|ALT_INV_state~25_combout\,
	ena => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(15));

-- Location: LCCOMB_X11_Y19_N16
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|time_count\(12) & (!\inst|time_count\(13) & (!\inst|time_count\(10) & !\inst|time_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(12),
	datab => \inst|time_count\(13),
	datac => \inst|time_count\(10),
	datad => \inst|time_count\(11),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y19_N0
\inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = (\inst|time_count\(6) & ((\inst|time_count\(5)) # (\inst|time_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(5),
	datac => \inst|time_count\(6),
	datad => \inst|time_count\(4),
	combout => \inst|process_1~1_combout\);

-- Location: LCCOMB_X11_Y19_N20
\inst|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~2_combout\ = (\inst|time_count\(8) & ((\inst|time_count\(7)) # (\inst|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(8),
	datac => \inst|time_count\(7),
	datad => \inst|process_1~1_combout\,
	combout => \inst|process_1~2_combout\);

-- Location: LCCOMB_X11_Y19_N28
\inst|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~3_combout\ = ((\inst|LessThan0~0_combout\ & ((!\inst|process_1~2_combout\) # (!\inst|time_count\(9))))) # (!\inst|time_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(9),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|time_count\(15),
	datad => \inst|process_1~2_combout\,
	combout => \inst|process_1~3_combout\);

-- Location: LCCOMB_X11_Y19_N8
\inst|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~4_combout\ = (\inst|SCLK_int~q\) # (((\inst|process_1~3_combout\) # (!\inst|next_state.readX~q\)) # (!\inst|time_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SCLK_int~q\,
	datab => \inst|time_count\(14),
	datac => \inst|next_state.readX~q\,
	datad => \inst|process_1~3_combout\,
	combout => \inst|process_1~4_combout\);

-- Location: LCCOMB_X11_Y23_N18
\inst|transmission_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|transmission_count[3]~11_combout\ = (\inst|transmission_count\(3) & (!\inst|transmission_count[2]~10\)) # (!\inst|transmission_count\(3) & ((\inst|transmission_count[2]~10\) # (GND)))
-- \inst|transmission_count[3]~12\ = CARRY((!\inst|transmission_count[2]~10\) # (!\inst|transmission_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(3),
	datad => VCC,
	cin => \inst|transmission_count[2]~10\,
	combout => \inst|transmission_count[3]~11_combout\,
	cout => \inst|transmission_count[3]~12\);

-- Location: LCCOMB_X11_Y23_N20
\inst|transmission_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|transmission_count[4]~13_combout\ = \inst|transmission_count[3]~12\ $ (!\inst|transmission_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|transmission_count\(4),
	cin => \inst|transmission_count[3]~12\,
	combout => \inst|transmission_count[4]~13_combout\);

-- Location: FF_X11_Y23_N21
\inst|transmission_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|transmission_count[4]~13_combout\,
	sclr => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|transmission_count\(4));

-- Location: LCCOMB_X11_Y23_N24
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|transmission_count\(1) & !\inst|transmission_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(2),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X11_Y23_N10
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (!\inst|transmission_count\(0) & (\inst|transmission_count\(4) & (!\inst|transmission_count\(3) & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(0),
	datab => \inst|transmission_count\(4),
	datac => \inst|transmission_count\(3),
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X11_Y23_N4
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|transmission_count\(2) & (!\inst|transmission_count\(1) & \inst|transmission_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|transmission_count\(2),
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X8_Y23_N16
\inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (\inst|transmission_count\(3) & (\inst|transmission_count\(4) & \inst|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|transmission_count\(3),
	datac => \inst|transmission_count\(4),
	datad => \inst|Equal2~0_combout\,
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X8_Y23_N30
\inst|next_state.readY~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readY~5_combout\ = (\inst|next_state.readY~q\ & ((\inst|state.init4~q\) # ((!\inst|Equal2~1_combout\) # (!\inst|next_state.readX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readY~q\,
	datab => \inst|state.init4~q\,
	datac => \inst|next_state.readX~0_combout\,
	datad => \inst|Equal2~1_combout\,
	combout => \inst|next_state.readY~5_combout\);

-- Location: LCCOMB_X11_Y19_N6
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((!\inst|time_count\(2) & !\inst|time_count\(3))) # (!\inst|time_count\(5))) # (!\inst|time_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(2),
	datab => \inst|time_count\(4),
	datac => \inst|time_count\(5),
	datad => \inst|time_count\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X11_Y19_N26
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (((\inst|LessThan1~0_combout\) # (!\inst|time_count\(6))) # (!\inst|time_count\(8))) # (!\inst|time_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(7),
	datab => \inst|time_count\(8),
	datac => \inst|time_count\(6),
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X11_Y19_N18
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (!\inst|time_count\(9) & (!\inst|time_count\(14) & (!\inst|time_count\(15) & \inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(9),
	datab => \inst|time_count\(14),
	datac => \inst|time_count\(15),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X11_Y19_N12
\inst|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~31_combout\ = (!\inst|next_state.readX~q\ & (!\inst|SCLK_int~q\ & ((!\inst|LessThan1~2_combout\) # (!\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readX~q\,
	datab => \inst|SCLK_int~q\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|state~31_combout\);

-- Location: LCCOMB_X10_Y23_N8
\inst|next_state.readZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readZ~1_combout\ = (!\inst|state.readX~q\ & ((\inst|state.readY~q\) # (!\inst|state.readZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readX~q\,
	datac => \inst|state.readY~q\,
	datad => \inst|state.readZ~q\,
	combout => \inst|next_state.readZ~1_combout\);

-- Location: LCCOMB_X10_Y23_N10
\inst|next_state.readZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readZ~0_combout\ = (\inst|transmission_count\(4) & (\inst|transmission_count\(3) & (\inst|state.pause~q\ & \inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(4),
	datab => \inst|transmission_count\(3),
	datac => \inst|state.pause~q\,
	datad => \inst|Equal2~0_combout\,
	combout => \inst|next_state.readZ~0_combout\);

-- Location: LCCOMB_X10_Y23_N6
\inst|next_state.readZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readZ~2_combout\ = (\inst|next_state.readZ~0_combout\ & (\inst|next_state.readZ~1_combout\ & ((\inst|next_state.readZ~q\) # (\inst|state.readY~q\)))) # (!\inst|next_state.readZ~0_combout\ & (((\inst|next_state.readZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readZ~1_combout\,
	datab => \inst|next_state.readZ~q\,
	datac => \inst|state.readY~q\,
	datad => \inst|next_state.readZ~0_combout\,
	combout => \inst|next_state.readZ~2_combout\);

-- Location: LCCOMB_X10_Y23_N30
\inst|next_state.readZ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readZ~3_combout\ = (\inst|state~27_combout\ & (!\inst|Equal1~2_combout\ & (\inst|next_state.readZ~q\))) # (!\inst|state~27_combout\ & (((\inst|next_state.readZ~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~27_combout\,
	datab => \inst|Equal1~2_combout\,
	datac => \inst|next_state.readZ~q\,
	datad => \inst|next_state.readZ~2_combout\,
	combout => \inst|next_state.readZ~3_combout\);

-- Location: FF_X10_Y23_N31
\inst|next_state.readZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.readZ~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.readZ~q\);

-- Location: LCCOMB_X12_Y23_N14
\inst|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~32_combout\ = (\inst|state~31_combout\ & \inst|next_state.readZ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state~31_combout\,
	datad => \inst|next_state.readZ~q\,
	combout => \inst|state~32_combout\);

-- Location: LCCOMB_X12_Y23_N28
\inst|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~33_combout\ = (\inst|state.readZ~q\ & (((!\inst|Equal2~0_combout\) # (!\inst|transmission_count\(3))) # (!\inst|transmission_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(4),
	datab => \inst|transmission_count\(3),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|state.readZ~q\,
	combout => \inst|state~33_combout\);

-- Location: LCCOMB_X12_Y23_N8
\inst|state.readZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.readZ~0_combout\ = (\inst|state.pause~q\ & ((\inst|state~33_combout\))) # (!\inst|state.pause~q\ & (\inst|state~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.pause~q\,
	datab => \inst|state~32_combout\,
	datad => \inst|state~33_combout\,
	combout => \inst|state.readZ~0_combout\);

-- Location: LCCOMB_X11_Y23_N6
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|transmission_count\(0) & (!\inst|transmission_count\(1) & !\inst|transmission_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(0),
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(2),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y23_N26
\inst|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~34_combout\ = (\inst|state.readZ~q\ & (((\inst|transmission_count\(3)) # (!\inst|Equal1~0_combout\)) # (!\inst|transmission_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readZ~q\,
	datab => \inst|transmission_count\(4),
	datac => \inst|transmission_count\(3),
	datad => \inst|Equal1~0_combout\,
	combout => \inst|state~34_combout\);

-- Location: FF_X12_Y23_N9
\inst|state.readZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.readZ~0_combout\,
	asdata => \inst|state~34_combout\,
	sload => \inst|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.readZ~q\);

-- Location: LCCOMB_X10_Y23_N4
\inst|next_state.readY~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readY~2_combout\ = ((!\inst|state.readY~q\ & !\inst|state.readZ~q\)) # (!\inst|state.pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readY~q\,
	datac => \inst|state.pause~q\,
	datad => \inst|state.readZ~q\,
	combout => \inst|next_state.readY~2_combout\);

-- Location: LCCOMB_X10_Y23_N22
\inst|next_state.readY~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readY~3_combout\ = (\inst|state.readX~q\ & ((\inst|next_state.readZ~0_combout\) # ((\inst|next_state.readY~2_combout\ & \inst|next_state.readY~q\)))) # (!\inst|state.readX~q\ & (\inst|next_state.readY~2_combout\ & 
-- (\inst|next_state.readY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readX~q\,
	datab => \inst|next_state.readY~2_combout\,
	datac => \inst|next_state.readY~q\,
	datad => \inst|next_state.readZ~0_combout\,
	combout => \inst|next_state.readY~3_combout\);

-- Location: LCCOMB_X8_Y23_N26
\inst|next_state.readY~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readY~4_combout\ = (\inst|state~27_combout\ & (!\inst|Equal1~2_combout\ & (\inst|next_state.readY~5_combout\))) # (!\inst|state~27_combout\ & (((\inst|next_state.readY~5_combout\) # (\inst|next_state.readY~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~27_combout\,
	datab => \inst|Equal1~2_combout\,
	datac => \inst|next_state.readY~5_combout\,
	datad => \inst|next_state.readY~3_combout\,
	combout => \inst|next_state.readY~4_combout\);

-- Location: FF_X8_Y23_N27
\inst|next_state.readY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.readY~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.readY~q\);

-- Location: LCCOMB_X12_Y23_N20
\inst|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~35_combout\ = (\inst|SDIO~0_combout\ & (\inst|process_1~4_combout\ & (!\inst|state~27_combout\ & \inst|next_state.readY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SDIO~0_combout\,
	datab => \inst|process_1~4_combout\,
	datac => \inst|state~27_combout\,
	datad => \inst|next_state.readY~q\,
	combout => \inst|state~35_combout\);

-- Location: FF_X12_Y23_N21
\inst|state.readY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~35_combout\,
	ena => \inst|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.readY~q\);

-- Location: LCCOMB_X10_Y23_N16
\inst|next_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~24_combout\ = (!\inst|state.readY~q\ & !\inst|state.readX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.readY~q\,
	datad => \inst|state.readX~q\,
	combout => \inst|next_state~24_combout\);

-- Location: LCCOMB_X10_Y23_N18
\inst|next_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~25_combout\ = (!\inst|SDIO~0_combout\ & (\inst|transmission_count\(3) & (\inst|transmission_count\(4) & \inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SDIO~0_combout\,
	datab => \inst|transmission_count\(3),
	datac => \inst|transmission_count\(4),
	datad => \inst|Equal2~0_combout\,
	combout => \inst|next_state~25_combout\);

-- Location: LCCOMB_X10_Y23_N20
\inst|next_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~26_combout\ = (\inst|state.init4~q\) # ((\inst|next_state~25_combout\ & ((\inst|next_state~24_combout\))) # (!\inst|next_state~25_combout\ & (\inst|next_state.readX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readX~q\,
	datab => \inst|next_state~24_combout\,
	datac => \inst|state.init4~q\,
	datad => \inst|next_state~25_combout\,
	combout => \inst|next_state~26_combout\);

-- Location: LCCOMB_X11_Y23_N22
\inst|next_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~30_combout\ = (\inst|next_state.readX~0_combout\ & ((\inst|state.init4~q\ & ((\inst|Equal1~2_combout\))) # (!\inst|state.init4~q\ & (\inst|state.pause~q\)))) # (!\inst|next_state.readX~0_combout\ & (((\inst|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.pause~q\,
	datab => \inst|next_state.readX~0_combout\,
	datac => \inst|state.init4~q\,
	datad => \inst|Equal1~2_combout\,
	combout => \inst|next_state~30_combout\);

-- Location: LCCOMB_X10_Y23_N12
\inst|next_state.readX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readX~1_combout\ = (\inst|next_state~30_combout\ & (\inst|next_state.readX~0_combout\ & (\inst|next_state~26_combout\))) # (!\inst|next_state~30_combout\ & (((\inst|next_state.readX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readX~0_combout\,
	datab => \inst|next_state~26_combout\,
	datac => \inst|next_state.readX~q\,
	datad => \inst|next_state~30_combout\,
	combout => \inst|next_state.readX~1_combout\);

-- Location: FF_X10_Y23_N13
\inst|next_state.readX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.readX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.readX~q\);

-- Location: LCCOMB_X11_Y19_N24
\inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (((\inst|SCLK_int~q\) # (!\inst|next_state.readX~q\)) # (!\inst|time_count\(14))) # (!\inst|time_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(15),
	datab => \inst|time_count\(14),
	datac => \inst|SCLK_int~q\,
	datad => \inst|next_state.readX~q\,
	combout => \inst|process_1~0_combout\);

-- Location: LCCOMB_X11_Y19_N4
\inst|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~23_combout\ = (\inst|next_state.readX~q\) # ((\inst|SCLK_int~q\) # ((\inst|LessThan1~1_combout\ & \inst|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readX~q\,
	datab => \inst|SCLK_int~q\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|state~23_combout\);

-- Location: LCCOMB_X11_Y19_N14
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|time_count\(7) & (((!\inst|time_count\(4) & !\inst|time_count\(5))) # (!\inst|time_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(4),
	datab => \inst|time_count\(5),
	datac => \inst|time_count\(6),
	datad => \inst|time_count\(7),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y19_N2
\inst|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~24_combout\ = ((\inst|LessThan0~1_combout\) # (!\inst|time_count\(8))) # (!\inst|time_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(9),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|time_count\(8),
	combout => \inst|state~24_combout\);

-- Location: LCCOMB_X11_Y19_N30
\inst|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~25_combout\ = (\inst|state~23_combout\ & ((\inst|process_1~0_combout\) # ((\inst|LessThan0~0_combout\ & \inst|state~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|state~23_combout\,
	datad => \inst|state~24_combout\,
	combout => \inst|state~25_combout\);

-- Location: LCCOMB_X11_Y23_N8
\inst|next_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~22_combout\ = (\inst|transmission_count\(4) & (\inst|transmission_count\(3) $ (((\inst|state.init4~q\) # (!\inst|next_state.readX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init4~q\,
	datab => \inst|transmission_count\(4),
	datac => \inst|next_state.readX~0_combout\,
	datad => \inst|transmission_count\(3),
	combout => \inst|next_state~22_combout\);

-- Location: LCCOMB_X11_Y23_N2
\inst|next_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~23_combout\ = (\inst|next_state~22_combout\ & ((\inst|transmission_count\(3) & (\inst|Equal2~0_combout\)) # (!\inst|transmission_count\(3) & ((\inst|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(3),
	datab => \inst|next_state~22_combout\,
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|next_state~23_combout\);

-- Location: LCCOMB_X11_Y23_N28
\inst|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~26_combout\ = (\inst|state~22_combout\ & (!\inst|state.pause~q\ & (!\inst|state~25_combout\))) # (!\inst|state~22_combout\ & (((\inst|next_state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.pause~q\,
	datab => \inst|state~25_combout\,
	datac => \inst|state~22_combout\,
	datad => \inst|next_state~23_combout\,
	combout => \inst|state~26_combout\);

-- Location: LCCOMB_X12_Y23_N26
\inst|state.readX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.readX~0_combout\ = (\inst|state~22_combout\ & ((\inst|next_state.readX~q\) # (!\inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readX~q\,
	datab => \inst|process_1~4_combout\,
	datad => \inst|state~22_combout\,
	combout => \inst|state.readX~0_combout\);

-- Location: LCCOMB_X12_Y23_N10
\inst|state.readX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.readX~1_combout\ = (\inst|state~26_combout\ & (\inst|state.readX~0_combout\)) # (!\inst|state~26_combout\ & ((\inst|state.readX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~26_combout\,
	datab => \inst|state.readX~0_combout\,
	datac => \inst|state.readX~q\,
	combout => \inst|state.readX~1_combout\);

-- Location: FF_X12_Y23_N11
\inst|state.readX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.readX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.readX~q\);

-- Location: LCCOMB_X12_Y23_N22
\inst|SDIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~0_combout\ = (!\inst|state.readX~q\ & (!\inst|state.readZ~q\ & !\inst|state.readY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readX~q\,
	datac => \inst|state.readZ~q\,
	datad => \inst|state.readY~q\,
	combout => \inst|SDIO~0_combout\);

-- Location: LCCOMB_X8_Y23_N10
\inst|next_state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~29_combout\ = (!\inst|state.init0~q\ & \inst|state.init1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init0~q\,
	datac => \inst|state.init1~q\,
	combout => \inst|next_state~29_combout\);

-- Location: FF_X8_Y23_N11
\inst|next_state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state~29_combout\,
	ena => \inst|next_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.init2~q\);

-- Location: LCCOMB_X10_Y23_N26
\inst|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~30_combout\ = (\inst|SDIO~0_combout\ & (\inst|next_state.init2~q\ & (!\inst|state~27_combout\ & \inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SDIO~0_combout\,
	datab => \inst|next_state.init2~q\,
	datac => \inst|state~27_combout\,
	datad => \inst|process_1~4_combout\,
	combout => \inst|state~30_combout\);

-- Location: FF_X10_Y23_N27
\inst|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~30_combout\,
	ena => \inst|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init2~q\);

-- Location: LCCOMB_X9_Y23_N16
\inst|next_state.init3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.init3~0_combout\ = (!\inst|state.init0~q\ & (\inst|state.init2~q\ & !\inst|state.init1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init0~q\,
	datac => \inst|state.init2~q\,
	datad => \inst|state.init1~q\,
	combout => \inst|next_state.init3~0_combout\);

-- Location: LCCOMB_X8_Y23_N28
\inst|next_state.init3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.init3~1_combout\ = (\inst|next_state~28_combout\ & (\inst|next_state.init3~0_combout\)) # (!\inst|next_state~28_combout\ & ((\inst|next_state.init3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|next_state.init3~0_combout\,
	datac => \inst|next_state.init3~q\,
	datad => \inst|next_state~28_combout\,
	combout => \inst|next_state.init3~1_combout\);

-- Location: FF_X8_Y23_N29
\inst|next_state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.init3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.init3~q\);

-- Location: LCCOMB_X10_Y23_N28
\inst|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~29_combout\ = (\inst|SDIO~0_combout\ & (\inst|next_state.init3~q\ & (!\inst|state~27_combout\ & \inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SDIO~0_combout\,
	datab => \inst|next_state.init3~q\,
	datac => \inst|state~27_combout\,
	datad => \inst|process_1~4_combout\,
	combout => \inst|state~29_combout\);

-- Location: FF_X10_Y23_N29
\inst|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~29_combout\,
	ena => \inst|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init3~q\);

-- Location: LCCOMB_X9_Y23_N30
\inst|next_state.init4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.init4~0_combout\ = (!\inst|state.init0~q\ & (\inst|state.init3~q\ & (!\inst|state.init2~q\ & !\inst|state.init1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init0~q\,
	datab => \inst|state.init3~q\,
	datac => \inst|state.init2~q\,
	datad => \inst|state.init1~q\,
	combout => \inst|next_state.init4~0_combout\);

-- Location: LCCOMB_X8_Y23_N20
\inst|next_state.init4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.init4~1_combout\ = (\inst|next_state~28_combout\ & (\inst|next_state.init4~0_combout\)) # (!\inst|next_state~28_combout\ & ((\inst|next_state.init4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.init4~0_combout\,
	datac => \inst|next_state.init4~q\,
	datad => \inst|next_state~28_combout\,
	combout => \inst|next_state.init4~1_combout\);

-- Location: FF_X8_Y23_N21
\inst|next_state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.init4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.init4~q\);

-- Location: LCCOMB_X12_Y23_N24
\inst|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~28_combout\ = (\inst|SDIO~0_combout\ & (\inst|process_1~4_combout\ & (!\inst|state~27_combout\ & \inst|next_state.init4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SDIO~0_combout\,
	datab => \inst|process_1~4_combout\,
	datac => \inst|state~27_combout\,
	datad => \inst|next_state.init4~q\,
	combout => \inst|state~28_combout\);

-- Location: FF_X12_Y23_N25
\inst|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~28_combout\,
	ena => \inst|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init4~q\);

-- Location: LCCOMB_X12_Y23_N12
\inst|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~22_combout\ = (!\inst|state.init4~q\ & (\inst|SDIO~0_combout\ & \inst|next_state.readX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.init4~q\,
	datac => \inst|SDIO~0_combout\,
	datad => \inst|next_state.readX~0_combout\,
	combout => \inst|state~22_combout\);

-- Location: LCCOMB_X12_Y23_N2
\inst|state.pause~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.pause~feeder_combout\ = \inst|state~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state~22_combout\,
	combout => \inst|state.pause~feeder_combout\);

-- Location: FF_X12_Y23_N3
\inst|state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.pause~feeder_combout\,
	ena => \inst|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.pause~q\);

-- Location: FF_X11_Y23_N13
\inst|transmission_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|transmission_count[0]~5_combout\,
	sclr => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|transmission_count\(0));

-- Location: LCCOMB_X11_Y23_N14
\inst|transmission_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|transmission_count[1]~7_combout\ = (\inst|transmission_count\(1) & (!\inst|transmission_count[0]~6\)) # (!\inst|transmission_count\(1) & ((\inst|transmission_count[0]~6\) # (GND)))
-- \inst|transmission_count[1]~8\ = CARRY((!\inst|transmission_count[0]~6\) # (!\inst|transmission_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(1),
	datad => VCC,
	cin => \inst|transmission_count[0]~6\,
	combout => \inst|transmission_count[1]~7_combout\,
	cout => \inst|transmission_count[1]~8\);

-- Location: FF_X11_Y23_N15
\inst|transmission_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|transmission_count[1]~7_combout\,
	sclr => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|transmission_count\(1));

-- Location: LCCOMB_X11_Y23_N16
\inst|transmission_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|transmission_count[2]~9_combout\ = (\inst|transmission_count\(2) & (\inst|transmission_count[1]~8\ $ (GND))) # (!\inst|transmission_count\(2) & (!\inst|transmission_count[1]~8\ & VCC))
-- \inst|transmission_count[2]~10\ = CARRY((\inst|transmission_count\(2) & !\inst|transmission_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datad => VCC,
	cin => \inst|transmission_count[1]~8\,
	combout => \inst|transmission_count[2]~9_combout\,
	cout => \inst|transmission_count[2]~10\);

-- Location: FF_X11_Y23_N17
\inst|transmission_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|transmission_count[2]~9_combout\,
	sclr => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|transmission_count\(2));

-- Location: FF_X11_Y23_N19
\inst|transmission_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|transmission_count[3]~11_combout\,
	sclr => \inst|ALT_INV_state.pause~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|transmission_count\(3));

-- Location: LCCOMB_X12_Y23_N0
\inst|read_temp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[1]~0_combout\ = (\inst|state.pause~q\ & ((\inst|state.readX~q\) # ((\inst|state.readY~q\) # (\inst|state.readZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readX~q\,
	datab => \inst|state.readY~q\,
	datac => \inst|state.readZ~q\,
	datad => \inst|state.pause~q\,
	combout => \inst|read_temp[1]~0_combout\);

-- Location: LCCOMB_X8_Y23_N0
\inst|next_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~27_combout\ = (\inst|transmission_count\(4) & ((\inst|state~27_combout\ & ((!\inst|transmission_count\(3)))) # (!\inst|state~27_combout\ & (\inst|read_temp[1]~0_combout\ & \inst|transmission_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~27_combout\,
	datab => \inst|read_temp[1]~0_combout\,
	datac => \inst|transmission_count\(4),
	datad => \inst|transmission_count\(3),
	combout => \inst|next_state~27_combout\);

-- Location: LCCOMB_X8_Y23_N18
\inst|next_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state~28_combout\ = (\inst|next_state~27_combout\ & ((\inst|transmission_count\(3) & (\inst|Equal2~0_combout\)) # (!\inst|transmission_count\(3) & ((\inst|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(3),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|next_state~27_combout\,
	combout => \inst|next_state~28_combout\);

-- Location: FF_X8_Y23_N25
\inst|next_state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.init1~feeder_combout\,
	ena => \inst|next_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.init1~q\);

-- Location: LCCOMB_X10_Y23_N0
\inst|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~36_combout\ = (\inst|process_1~4_combout\ & (\inst|SDIO~0_combout\ & (!\inst|state.init4~q\ & \inst|next_state.readX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~4_combout\,
	datab => \inst|SDIO~0_combout\,
	datac => \inst|state.init4~q\,
	datad => \inst|next_state.readX~0_combout\,
	combout => \inst|state~36_combout\);

-- Location: LCCOMB_X9_Y23_N24
\inst|state.init1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.init1~0_combout\ = (\inst|state~26_combout\ & (\inst|next_state.init1~q\ & ((\inst|state~36_combout\)))) # (!\inst|state~26_combout\ & (((\inst|state.init1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.init1~q\,
	datab => \inst|state~26_combout\,
	datac => \inst|state.init1~q\,
	datad => \inst|state~36_combout\,
	combout => \inst|state.init1~0_combout\);

-- Location: FF_X9_Y23_N25
\inst|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.init1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init1~q\);

-- Location: LCCOMB_X9_Y23_N12
\inst|next_state.readX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.readX~0_combout\ = (!\inst|state.init0~q\ & (!\inst|state.init1~q\ & (!\inst|state.init3~q\ & !\inst|state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init0~q\,
	datab => \inst|state.init1~q\,
	datac => \inst|state.init3~q\,
	datad => \inst|state.init2~q\,
	combout => \inst|next_state.readX~0_combout\);

-- Location: LCCOMB_X8_Y23_N22
\inst|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~27_combout\ = (\inst|state.init4~q\) # (!\inst|next_state.readX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|next_state.readX~0_combout\,
	datad => \inst|state.init4~q\,
	combout => \inst|state~27_combout\);

-- Location: LCCOMB_X11_Y23_N30
\inst|next_state.init0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|next_state.init0~0_combout\ = (\inst|next_state.init0~q\) # ((\inst|next_state~23_combout\ & ((\inst|state~27_combout\) # (\inst|read_temp[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~27_combout\,
	datab => \inst|read_temp[1]~0_combout\,
	datac => \inst|next_state.init0~q\,
	datad => \inst|next_state~23_combout\,
	combout => \inst|next_state.init0~0_combout\);

-- Location: FF_X11_Y23_N31
\inst|next_state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|next_state.init0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|next_state.init0~q\);

-- Location: LCCOMB_X9_Y23_N6
\inst|state.init0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.init0~0_combout\ = (\inst|state~26_combout\ & (!\inst|next_state.init0~q\ & ((\inst|state~36_combout\)))) # (!\inst|state~26_combout\ & (((\inst|state.init0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.init0~q\,
	datab => \inst|state~26_combout\,
	datac => \inst|state.init0~q\,
	datad => \inst|state~36_combout\,
	combout => \inst|state.init0~0_combout\);

-- Location: FF_X9_Y23_N7
\inst|state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.init0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init0~q\);

-- Location: LCCOMB_X9_Y23_N8
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|transmission_count\(0) & (!\inst|transmission_count\(3) & (!\inst|transmission_count\(1) & \inst|transmission_count\(2)))) # (!\inst|transmission_count\(0) & (\inst|transmission_count\(1) & (\inst|transmission_count\(3) $ 
-- (!\inst|transmission_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(0),
	datab => \inst|transmission_count\(3),
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(2),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y23_N18
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|transmission_count\(2) & (\inst|transmission_count\(1) $ (((!\inst|transmission_count\(3)) # (!\inst|transmission_count\(0)))))) # (!\inst|transmission_count\(2) & ((\inst|transmission_count\(0) & 
-- (!\inst|transmission_count\(1) & \inst|transmission_count\(3))) # (!\inst|transmission_count\(0) & (\inst|transmission_count\(1) & !\inst|transmission_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \inst|transmission_count\(0),
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(3),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y23_N0
\inst|SDIO~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~7_combout\ = (\inst|state.init1~q\ & (((\inst|Mux1~0_combout\)))) # (!\inst|state.init1~q\ & (\inst|state.init2~q\ & ((\inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init2~q\,
	datab => \inst|state.init1~q\,
	datac => \inst|Mux1~0_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|SDIO~7_combout\);

-- Location: LCCOMB_X9_Y23_N14
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|transmission_count\(1) & (!\inst|transmission_count\(3) & ((\inst|transmission_count\(0)) # (!\inst|transmission_count\(2))))) # (!\inst|transmission_count\(1) & (\inst|transmission_count\(3) & (\inst|transmission_count\(2) 
-- $ (\inst|transmission_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \inst|transmission_count\(1),
	datac => \inst|transmission_count\(0),
	datad => \inst|transmission_count\(3),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y23_N28
\inst|SDIO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~2_combout\ = (!\inst|state.init2~q\ & !\inst|state.init1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.init2~q\,
	datad => \inst|state.init1~q\,
	combout => \inst|SDIO~2_combout\);

-- Location: LCCOMB_X11_Y23_N0
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|transmission_count\(1) & ((\inst|transmission_count\(0) & (\inst|transmission_count\(3) & !\inst|transmission_count\(2))) # (!\inst|transmission_count\(0) & (!\inst|transmission_count\(3))))) # (!\inst|transmission_count\(1) 
-- & (((!\inst|transmission_count\(3) & \inst|transmission_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(0),
	datab => \inst|transmission_count\(1),
	datac => \inst|transmission_count\(3),
	datad => \inst|transmission_count\(2),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y23_N22
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|transmission_count\(0) & (!\inst|transmission_count\(3) & ((\inst|transmission_count\(2))))) # (!\inst|transmission_count\(0) & ((\inst|transmission_count\(1) & (!\inst|transmission_count\(3) & 
-- !\inst|transmission_count\(2))) # (!\inst|transmission_count\(1) & ((\inst|transmission_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(0),
	datab => \inst|transmission_count\(3),
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(2),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y23_N24
\inst|SDIO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~3_combout\ = (\inst|transmission_count\(1) & ((\inst|state.readX~q\) # (!\inst|state.readY~q\))) # (!\inst|transmission_count\(1) & ((!\inst|state.readX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readY~q\,
	datac => \inst|transmission_count\(1),
	datad => \inst|state.readX~q\,
	combout => \inst|SDIO~3_combout\);

-- Location: LCCOMB_X10_Y23_N2
\inst|SDIO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~4_combout\ = ((\inst|SDIO~3_combout\ & (\inst|transmission_count\(1) $ (\inst|transmission_count\(0))))) # (!\inst|transmission_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \inst|transmission_count\(1),
	datac => \inst|transmission_count\(0),
	datad => \inst|SDIO~3_combout\,
	combout => \inst|SDIO~4_combout\);

-- Location: LCCOMB_X9_Y23_N20
\inst|SDIO~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~5_combout\ = (!\inst|state.init3~q\ & ((\inst|state.init4~q\ & (\inst|Mux4~0_combout\)) # (!\inst|state.init4~q\ & ((\inst|SDIO~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init4~q\,
	datab => \inst|state.init3~q\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|SDIO~4_combout\,
	combout => \inst|SDIO~5_combout\);

-- Location: LCCOMB_X9_Y23_N10
\inst|SDIO~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~6_combout\ = (\inst|SDIO~2_combout\ & ((\inst|SDIO~5_combout\) # ((\inst|state.init3~q\ & \inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init3~q\,
	datab => \inst|SDIO~2_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|SDIO~5_combout\,
	combout => \inst|SDIO~6_combout\);

-- Location: LCCOMB_X9_Y23_N2
\inst|SDIO~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~8_combout\ = (\inst|state.init0~q\ & (((\inst|Mux0~0_combout\)))) # (!\inst|state.init0~q\ & ((\inst|SDIO~7_combout\) # ((\inst|SDIO~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.init0~q\,
	datab => \inst|SDIO~7_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst|SDIO~6_combout\,
	combout => \inst|SDIO~8_combout\);

-- Location: LCCOMB_X12_Y23_N6
\inst|SDIO~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~9_combout\ = (\inst|state.readX~q\) # (((\inst|state.readZ~q\) # (\inst|state.readY~q\)) # (!\inst|state.pause~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.readX~q\,
	datab => \inst|state.pause~q\,
	datac => \inst|state.readZ~q\,
	datad => \inst|state.readY~q\,
	combout => \inst|SDIO~9_combout\);

-- Location: LCCOMB_X9_Y23_N26
\inst|SDIO~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~10_combout\ = (\inst|next_state.readX~0_combout\ & ((\inst|state.init4~q\ & (!\inst|transmission_count\(4))) # (!\inst|state.init4~q\ & ((\inst|SDIO~9_combout\))))) # (!\inst|next_state.readX~0_combout\ & (!\inst|transmission_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|next_state.readX~0_combout\,
	datab => \inst|transmission_count\(4),
	datac => \inst|state.init4~q\,
	datad => \inst|SDIO~9_combout\,
	combout => \inst|SDIO~10_combout\);

-- Location: FF_X9_Y23_N3
\inst|SDIO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SCLK_int~clkctrl_outclk\,
	d => \inst|SDIO~8_combout\,
	ena => \inst|SDIO~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SDIO~reg0_q\);

-- Location: LCCOMB_X9_Y23_N4
\inst|SDIO~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SDIO~11_combout\ = (\inst|SDIO~0_combout\ & (\inst|state.pause~q\)) # (!\inst|SDIO~0_combout\ & (((!\inst|transmission_count\(4) & !\inst|transmission_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.pause~q\,
	datab => \inst|SDIO~0_combout\,
	datac => \inst|transmission_count\(4),
	datad => \inst|transmission_count\(3),
	combout => \inst|SDIO~11_combout\);

-- Location: FF_X9_Y23_N5
\inst|SDIO~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SCLK_int~clkctrl_outclk\,
	d => \inst|SDIO~11_combout\,
	ena => \inst|SDIO~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SDIO~en_q\);

-- Location: LCCOMB_X1_Y24_N16
\inst|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SCLK~0_combout\ = (!\inst|state.pause~q\) # (!\inst|SCLK_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SCLK_int~q\,
	datad => \inst|state.pause~q\,
	combout => \inst|SCLK~0_combout\);

-- Location: LCCOMB_X27_Y26_N8
\inst3|lineCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lineCount~0_combout\ = (\inst3|lineCount\(0) & \inst3|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|lineCount\(0),
	datad => \inst3|lineCount\(1),
	combout => \inst3|lineCount~0_combout\);

-- Location: LCCOMB_X29_Y27_N2
\inst3|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[0]~31_combout\ = \inst3|counter\(0) $ (VCC)
-- \inst3|counter[0]~32\ = CARRY(\inst3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(0),
	datad => VCC,
	combout => \inst3|counter[0]~31_combout\,
	cout => \inst3|counter[0]~32\);

-- Location: LCCOMB_X26_Y26_N12
\inst3|charCount[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|charCount[0]~5_combout\ = \inst3|charCount\(0) $ (VCC)
-- \inst3|charCount[0]~6\ = CARRY(\inst3|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datad => VCC,
	combout => \inst3|charCount[0]~5_combout\,
	cout => \inst3|charCount[0]~6\);

-- Location: LCCOMB_X27_Y26_N16
\inst3|charCount[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|charCount[1]~7_combout\ = (\inst3|state.update~q\) # (!\inst3|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.update~q\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|charCount[1]~7_combout\);

-- Location: FF_X26_Y26_N13
\inst3|charCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|charCount[0]~5_combout\,
	sclr => \inst3|charCount[1]~7_combout\,
	ena => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|charCount\(0));

-- Location: LCCOMB_X26_Y26_N14
\inst3|charCount[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|charCount[1]~8_combout\ = (\inst3|charCount\(1) & (!\inst3|charCount[0]~6\)) # (!\inst3|charCount\(1) & ((\inst3|charCount[0]~6\) # (GND)))
-- \inst3|charCount[1]~9\ = CARRY((!\inst3|charCount[0]~6\) # (!\inst3|charCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(1),
	datad => VCC,
	cin => \inst3|charCount[0]~6\,
	combout => \inst3|charCount[1]~8_combout\,
	cout => \inst3|charCount[1]~9\);

-- Location: FF_X26_Y26_N15
\inst3|charCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|charCount[1]~8_combout\,
	sclr => \inst3|charCount[1]~7_combout\,
	ena => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|charCount\(1));

-- Location: LCCOMB_X26_Y26_N16
\inst3|charCount[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|charCount[2]~10_combout\ = (\inst3|charCount\(2) & (\inst3|charCount[1]~9\ $ (GND))) # (!\inst3|charCount\(2) & (!\inst3|charCount[1]~9\ & VCC))
-- \inst3|charCount[2]~11\ = CARRY((\inst3|charCount\(2) & !\inst3|charCount[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(2),
	datad => VCC,
	cin => \inst3|charCount[1]~9\,
	combout => \inst3|charCount[2]~10_combout\,
	cout => \inst3|charCount[2]~11\);

-- Location: FF_X26_Y26_N17
\inst3|charCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|charCount[2]~10_combout\,
	sclr => \inst3|charCount[1]~7_combout\,
	ena => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|charCount\(2));

-- Location: LCCOMB_X26_Y26_N18
\inst3|charCount[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|charCount[3]~12_combout\ = (\inst3|charCount\(3) & (!\inst3|charCount[2]~11\)) # (!\inst3|charCount\(3) & ((\inst3|charCount[2]~11\) # (GND)))
-- \inst3|charCount[3]~13\ = CARRY((!\inst3|charCount[2]~11\) # (!\inst3|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(3),
	datad => VCC,
	cin => \inst3|charCount[2]~11\,
	combout => \inst3|charCount[3]~12_combout\,
	cout => \inst3|charCount[3]~13\);

-- Location: FF_X26_Y26_N19
\inst3|charCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|charCount[3]~12_combout\,
	sclr => \inst3|charCount[1]~7_combout\,
	ena => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|charCount\(3));

-- Location: LCCOMB_X27_Y26_N22
\inst3|lcd_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~41_combout\ = (\inst3|charCount\(2) & !\inst3|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~41_combout\);

-- Location: LCCOMB_X26_Y26_N20
\inst3|charCount[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|charCount[4]~14_combout\ = \inst3|charCount[3]~13\ $ (!\inst3|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|charCount\(4),
	cin => \inst3|charCount[3]~13\,
	combout => \inst3|charCount[4]~14_combout\);

-- Location: FF_X26_Y26_N21
\inst3|charCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|charCount[4]~14_combout\,
	sclr => \inst3|charCount[1]~7_combout\,
	ena => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|charCount\(4));

-- Location: LCCOMB_X27_Y26_N28
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|charCount\(0)) # ((\inst3|charCount\(3)) # ((!\inst3|charCount\(4)) # (!\inst3|lcd_data~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|lcd_data~41_combout\,
	datad => \inst3|charCount\(4),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y26_N30
\inst3|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~9_combout\ = (\inst3|lineCount\(1) & (\inst3|lineCount\(0) & !\inst3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|lineCount\(1),
	datac => \inst3|lineCount\(0),
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|state~9_combout\);

-- Location: LCCOMB_X28_Y26_N10
\inst3|counter[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[10]~41_combout\ = ((!\inst3|counter\(2) & ((!\inst3|counter\(0)) # (!\inst3|counter\(1))))) # (!\inst3|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(2),
	datab => \inst3|counter\(1),
	datac => \inst3|counter\(0),
	datad => \inst3|counter\(3),
	combout => \inst3|counter[10]~41_combout\);

-- Location: LCCOMB_X28_Y26_N26
\inst3|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_1~2_combout\ = (!\inst3|counter\(20) & (!\inst3|counter\(22) & (!\inst3|counter\(21) & !\inst3|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(20),
	datab => \inst3|counter\(22),
	datac => \inst3|counter\(21),
	datad => \inst3|counter\(24),
	combout => \inst3|process_1~2_combout\);

-- Location: LCCOMB_X28_Y26_N4
\inst3|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_1~1_combout\ = (!\inst3|counter\(18) & (!\inst3|counter\(19) & (!\inst3|counter\(16) & !\inst3|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(18),
	datab => \inst3|counter\(19),
	datac => \inst3|counter\(16),
	datad => \inst3|counter\(14),
	combout => \inst3|process_1~1_combout\);

-- Location: LCCOMB_X29_Y26_N18
\inst3|counter[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[24]~82_combout\ = (\inst3|counter\(24) & (\inst3|counter[23]~81\ $ (GND))) # (!\inst3|counter\(24) & (!\inst3|counter[23]~81\ & VCC))
-- \inst3|counter[24]~83\ = CARRY((\inst3|counter\(24) & !\inst3|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(24),
	datad => VCC,
	cin => \inst3|counter[23]~81\,
	combout => \inst3|counter[24]~82_combout\,
	cout => \inst3|counter[24]~83\);

-- Location: LCCOMB_X29_Y26_N20
\inst3|counter[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[25]~84_combout\ = (\inst3|counter\(25) & (!\inst3|counter[24]~83\)) # (!\inst3|counter\(25) & ((\inst3|counter[24]~83\) # (GND)))
-- \inst3|counter[25]~85\ = CARRY((!\inst3|counter[24]~83\) # (!\inst3|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(25),
	datad => VCC,
	cin => \inst3|counter[24]~83\,
	combout => \inst3|counter[25]~84_combout\,
	cout => \inst3|counter[25]~85\);

-- Location: FF_X29_Y26_N21
\inst3|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[25]~84_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(25));

-- Location: LCCOMB_X29_Y26_N22
\inst3|counter[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[26]~86_combout\ = (\inst3|counter\(26) & (\inst3|counter[25]~85\ $ (GND))) # (!\inst3|counter\(26) & (!\inst3|counter[25]~85\ & VCC))
-- \inst3|counter[26]~87\ = CARRY((\inst3|counter\(26) & !\inst3|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(26),
	datad => VCC,
	cin => \inst3|counter[25]~85\,
	combout => \inst3|counter[26]~86_combout\,
	cout => \inst3|counter[26]~87\);

-- Location: FF_X29_Y26_N23
\inst3|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[26]~86_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(26));

-- Location: LCCOMB_X29_Y26_N24
\inst3|counter[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[27]~88_combout\ = (\inst3|counter\(27) & (!\inst3|counter[26]~87\)) # (!\inst3|counter\(27) & ((\inst3|counter[26]~87\) # (GND)))
-- \inst3|counter[27]~89\ = CARRY((!\inst3|counter[26]~87\) # (!\inst3|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(27),
	datad => VCC,
	cin => \inst3|counter[26]~87\,
	combout => \inst3|counter[27]~88_combout\,
	cout => \inst3|counter[27]~89\);

-- Location: FF_X29_Y26_N25
\inst3|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[27]~88_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(27));

-- Location: LCCOMB_X29_Y26_N26
\inst3|counter[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[28]~90_combout\ = (\inst3|counter\(28) & (\inst3|counter[27]~89\ $ (GND))) # (!\inst3|counter\(28) & (!\inst3|counter[27]~89\ & VCC))
-- \inst3|counter[28]~91\ = CARRY((\inst3|counter\(28) & !\inst3|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(28),
	datad => VCC,
	cin => \inst3|counter[27]~89\,
	combout => \inst3|counter[28]~90_combout\,
	cout => \inst3|counter[28]~91\);

-- Location: FF_X29_Y26_N27
\inst3|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[28]~90_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(28));

-- Location: LCCOMB_X29_Y26_N28
\inst3|counter[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[29]~92_combout\ = (\inst3|counter\(29) & (!\inst3|counter[28]~91\)) # (!\inst3|counter\(29) & ((\inst3|counter[28]~91\) # (GND)))
-- \inst3|counter[29]~93\ = CARRY((!\inst3|counter[28]~91\) # (!\inst3|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(29),
	datad => VCC,
	cin => \inst3|counter[28]~91\,
	combout => \inst3|counter[29]~92_combout\,
	cout => \inst3|counter[29]~93\);

-- Location: FF_X29_Y26_N29
\inst3|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[29]~92_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(29));

-- Location: LCCOMB_X29_Y26_N30
\inst3|counter[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[30]~94_combout\ = \inst3|counter\(30) $ (!\inst3|counter[29]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(30),
	cin => \inst3|counter[29]~93\,
	combout => \inst3|counter[30]~94_combout\);

-- Location: FF_X29_Y26_N31
\inst3|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[30]~94_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(30));

-- Location: LCCOMB_X30_Y26_N30
\inst3|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~4_combout\ = (!\inst3|counter\(28) & (!\inst3|counter\(30) & !\inst3|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(28),
	datac => \inst3|counter\(30),
	datad => \inst3|counter\(29),
	combout => \inst3|process_0~4_combout\);

-- Location: LCCOMB_X29_Y27_N0
\inst3|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~1_combout\ = (!\inst3|counter\(5) & (!\inst3|counter\(8) & (!\inst3|counter\(4) & !\inst3|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(5),
	datab => \inst3|counter\(8),
	datac => \inst3|counter\(4),
	datad => \inst3|counter\(7),
	combout => \inst3|process_0~1_combout\);

-- Location: LCCOMB_X30_Y26_N8
\inst3|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~3_combout\ = (!\inst3|counter\(23) & (!\inst3|counter\(27) & (!\inst3|counter\(25) & !\inst3|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(23),
	datab => \inst3|counter\(27),
	datac => \inst3|counter\(25),
	datad => \inst3|counter\(26),
	combout => \inst3|process_0~3_combout\);

-- Location: LCCOMB_X30_Y26_N10
\inst3|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~2_combout\ = (!\inst3|counter\(15) & (!\inst3|counter\(17) & (!\inst3|counter\(10) & !\inst3|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(15),
	datab => \inst3|counter\(17),
	datac => \inst3|counter\(10),
	datad => \inst3|counter\(9),
	combout => \inst3|process_0~2_combout\);

-- Location: LCCOMB_X30_Y26_N28
\inst3|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~5_combout\ = (\inst3|process_0~4_combout\ & (\inst3|process_0~1_combout\ & (\inst3|process_0~3_combout\ & \inst3|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~4_combout\,
	datab => \inst3|process_0~1_combout\,
	datac => \inst3|process_0~3_combout\,
	datad => \inst3|process_0~2_combout\,
	combout => \inst3|process_0~5_combout\);

-- Location: LCCOMB_X28_Y26_N18
\inst3|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_1~0_combout\ = (!\inst3|counter\(11) & (!\inst3|counter\(6) & (!\inst3|counter\(12) & !\inst3|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(11),
	datab => \inst3|counter\(6),
	datac => \inst3|counter\(12),
	datad => \inst3|counter\(13),
	combout => \inst3|process_1~0_combout\);

-- Location: LCCOMB_X28_Y26_N20
\inst3|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_1~3_combout\ = (\inst3|process_1~2_combout\ & (\inst3|process_1~1_combout\ & (\inst3|process_0~5_combout\ & \inst3|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_1~2_combout\,
	datab => \inst3|process_1~1_combout\,
	datac => \inst3|process_0~5_combout\,
	datad => \inst3|process_1~0_combout\,
	combout => \inst3|process_1~3_combout\);

-- Location: LCCOMB_X28_Y26_N24
\inst3|counter[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[10]~42_combout\ = (\inst3|Equal0~0_combout\ & (((\inst3|counter[10]~41_combout\ & \inst3|process_1~3_combout\)) # (!\inst2|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter[10]~41_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst2|state.ready~q\,
	datad => \inst3|process_1~3_combout\,
	combout => \inst3|counter[10]~42_combout\);

-- Location: LCCOMB_X28_Y26_N2
\inst3|counter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[10]~43_combout\ = (\inst3|state.update~q\ & (((\inst3|process_0~11_combout\)))) # (!\inst3|state.update~q\ & (!\inst3|state~9_combout\ & ((!\inst3|counter[10]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.update~q\,
	datab => \inst3|state~9_combout\,
	datac => \inst3|process_0~11_combout\,
	datad => \inst3|counter[10]~42_combout\,
	combout => \inst3|counter[10]~43_combout\);

-- Location: FF_X29_Y27_N3
\inst3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[0]~31_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(0));

-- Location: LCCOMB_X29_Y27_N4
\inst3|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[1]~33_combout\ = (\inst3|counter\(1) & (!\inst3|counter[0]~32\)) # (!\inst3|counter\(1) & ((\inst3|counter[0]~32\) # (GND)))
-- \inst3|counter[1]~34\ = CARRY((!\inst3|counter[0]~32\) # (!\inst3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(1),
	datad => VCC,
	cin => \inst3|counter[0]~32\,
	combout => \inst3|counter[1]~33_combout\,
	cout => \inst3|counter[1]~34\);

-- Location: FF_X29_Y27_N5
\inst3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[1]~33_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(1));

-- Location: LCCOMB_X29_Y27_N6
\inst3|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[2]~35_combout\ = (\inst3|counter\(2) & (\inst3|counter[1]~34\ $ (GND))) # (!\inst3|counter\(2) & (!\inst3|counter[1]~34\ & VCC))
-- \inst3|counter[2]~36\ = CARRY((\inst3|counter\(2) & !\inst3|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(2),
	datad => VCC,
	cin => \inst3|counter[1]~34\,
	combout => \inst3|counter[2]~35_combout\,
	cout => \inst3|counter[2]~36\);

-- Location: FF_X29_Y27_N7
\inst3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[2]~35_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(2));

-- Location: LCCOMB_X29_Y27_N8
\inst3|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[3]~37_combout\ = (\inst3|counter\(3) & (!\inst3|counter[2]~36\)) # (!\inst3|counter\(3) & ((\inst3|counter[2]~36\) # (GND)))
-- \inst3|counter[3]~38\ = CARRY((!\inst3|counter[2]~36\) # (!\inst3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(3),
	datad => VCC,
	cin => \inst3|counter[2]~36\,
	combout => \inst3|counter[3]~37_combout\,
	cout => \inst3|counter[3]~38\);

-- Location: FF_X29_Y27_N9
\inst3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[3]~37_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(3));

-- Location: LCCOMB_X29_Y27_N10
\inst3|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[4]~39_combout\ = (\inst3|counter\(4) & (\inst3|counter[3]~38\ $ (GND))) # (!\inst3|counter\(4) & (!\inst3|counter[3]~38\ & VCC))
-- \inst3|counter[4]~40\ = CARRY((\inst3|counter\(4) & !\inst3|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(4),
	datad => VCC,
	cin => \inst3|counter[3]~38\,
	combout => \inst3|counter[4]~39_combout\,
	cout => \inst3|counter[4]~40\);

-- Location: FF_X29_Y27_N11
\inst3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[4]~39_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(4));

-- Location: LCCOMB_X29_Y27_N12
\inst3|counter[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[5]~44_combout\ = (\inst3|counter\(5) & (!\inst3|counter[4]~40\)) # (!\inst3|counter\(5) & ((\inst3|counter[4]~40\) # (GND)))
-- \inst3|counter[5]~45\ = CARRY((!\inst3|counter[4]~40\) # (!\inst3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(5),
	datad => VCC,
	cin => \inst3|counter[4]~40\,
	combout => \inst3|counter[5]~44_combout\,
	cout => \inst3|counter[5]~45\);

-- Location: FF_X29_Y27_N13
\inst3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[5]~44_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(5));

-- Location: LCCOMB_X29_Y27_N14
\inst3|counter[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[6]~46_combout\ = (\inst3|counter\(6) & (\inst3|counter[5]~45\ $ (GND))) # (!\inst3|counter\(6) & (!\inst3|counter[5]~45\ & VCC))
-- \inst3|counter[6]~47\ = CARRY((\inst3|counter\(6) & !\inst3|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(6),
	datad => VCC,
	cin => \inst3|counter[5]~45\,
	combout => \inst3|counter[6]~46_combout\,
	cout => \inst3|counter[6]~47\);

-- Location: FF_X29_Y27_N15
\inst3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[6]~46_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(6));

-- Location: LCCOMB_X29_Y27_N16
\inst3|counter[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[7]~48_combout\ = (\inst3|counter\(7) & (!\inst3|counter[6]~47\)) # (!\inst3|counter\(7) & ((\inst3|counter[6]~47\) # (GND)))
-- \inst3|counter[7]~49\ = CARRY((!\inst3|counter[6]~47\) # (!\inst3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(7),
	datad => VCC,
	cin => \inst3|counter[6]~47\,
	combout => \inst3|counter[7]~48_combout\,
	cout => \inst3|counter[7]~49\);

-- Location: FF_X29_Y27_N17
\inst3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[7]~48_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(7));

-- Location: LCCOMB_X29_Y27_N18
\inst3|counter[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[8]~50_combout\ = (\inst3|counter\(8) & (\inst3|counter[7]~49\ $ (GND))) # (!\inst3|counter\(8) & (!\inst3|counter[7]~49\ & VCC))
-- \inst3|counter[8]~51\ = CARRY((\inst3|counter\(8) & !\inst3|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(8),
	datad => VCC,
	cin => \inst3|counter[7]~49\,
	combout => \inst3|counter[8]~50_combout\,
	cout => \inst3|counter[8]~51\);

-- Location: FF_X29_Y27_N19
\inst3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[8]~50_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(8));

-- Location: LCCOMB_X29_Y27_N20
\inst3|counter[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[9]~52_combout\ = (\inst3|counter\(9) & (!\inst3|counter[8]~51\)) # (!\inst3|counter\(9) & ((\inst3|counter[8]~51\) # (GND)))
-- \inst3|counter[9]~53\ = CARRY((!\inst3|counter[8]~51\) # (!\inst3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(9),
	datad => VCC,
	cin => \inst3|counter[8]~51\,
	combout => \inst3|counter[9]~52_combout\,
	cout => \inst3|counter[9]~53\);

-- Location: FF_X30_Y26_N1
\inst3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|counter[9]~52_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(9));

-- Location: LCCOMB_X29_Y27_N22
\inst3|counter[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[10]~54_combout\ = (\inst3|counter\(10) & (\inst3|counter[9]~53\ $ (GND))) # (!\inst3|counter\(10) & (!\inst3|counter[9]~53\ & VCC))
-- \inst3|counter[10]~55\ = CARRY((\inst3|counter\(10) & !\inst3|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(10),
	datad => VCC,
	cin => \inst3|counter[9]~53\,
	combout => \inst3|counter[10]~54_combout\,
	cout => \inst3|counter[10]~55\);

-- Location: FF_X29_Y27_N23
\inst3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[10]~54_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(10));

-- Location: LCCOMB_X29_Y27_N24
\inst3|counter[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[11]~56_combout\ = (\inst3|counter\(11) & (!\inst3|counter[10]~55\)) # (!\inst3|counter\(11) & ((\inst3|counter[10]~55\) # (GND)))
-- \inst3|counter[11]~57\ = CARRY((!\inst3|counter[10]~55\) # (!\inst3|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(11),
	datad => VCC,
	cin => \inst3|counter[10]~55\,
	combout => \inst3|counter[11]~56_combout\,
	cout => \inst3|counter[11]~57\);

-- Location: FF_X29_Y27_N25
\inst3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[11]~56_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(11));

-- Location: LCCOMB_X29_Y27_N26
\inst3|counter[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[12]~58_combout\ = (\inst3|counter\(12) & (\inst3|counter[11]~57\ $ (GND))) # (!\inst3|counter\(12) & (!\inst3|counter[11]~57\ & VCC))
-- \inst3|counter[12]~59\ = CARRY((\inst3|counter\(12) & !\inst3|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(12),
	datad => VCC,
	cin => \inst3|counter[11]~57\,
	combout => \inst3|counter[12]~58_combout\,
	cout => \inst3|counter[12]~59\);

-- Location: FF_X29_Y27_N27
\inst3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[12]~58_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(12));

-- Location: LCCOMB_X29_Y27_N28
\inst3|counter[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[13]~60_combout\ = (\inst3|counter\(13) & (!\inst3|counter[12]~59\)) # (!\inst3|counter\(13) & ((\inst3|counter[12]~59\) # (GND)))
-- \inst3|counter[13]~61\ = CARRY((!\inst3|counter[12]~59\) # (!\inst3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(13),
	datad => VCC,
	cin => \inst3|counter[12]~59\,
	combout => \inst3|counter[13]~60_combout\,
	cout => \inst3|counter[13]~61\);

-- Location: FF_X29_Y27_N29
\inst3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[13]~60_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(13));

-- Location: LCCOMB_X29_Y27_N30
\inst3|counter[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[14]~62_combout\ = (\inst3|counter\(14) & (\inst3|counter[13]~61\ $ (GND))) # (!\inst3|counter\(14) & (!\inst3|counter[13]~61\ & VCC))
-- \inst3|counter[14]~63\ = CARRY((\inst3|counter\(14) & !\inst3|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(14),
	datad => VCC,
	cin => \inst3|counter[13]~61\,
	combout => \inst3|counter[14]~62_combout\,
	cout => \inst3|counter[14]~63\);

-- Location: FF_X29_Y27_N31
\inst3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[14]~62_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(14));

-- Location: LCCOMB_X29_Y26_N0
\inst3|counter[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[15]~64_combout\ = (\inst3|counter\(15) & (!\inst3|counter[14]~63\)) # (!\inst3|counter\(15) & ((\inst3|counter[14]~63\) # (GND)))
-- \inst3|counter[15]~65\ = CARRY((!\inst3|counter[14]~63\) # (!\inst3|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(15),
	datad => VCC,
	cin => \inst3|counter[14]~63\,
	combout => \inst3|counter[15]~64_combout\,
	cout => \inst3|counter[15]~65\);

-- Location: FF_X29_Y26_N1
\inst3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[15]~64_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(15));

-- Location: LCCOMB_X29_Y26_N2
\inst3|counter[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[16]~66_combout\ = (\inst3|counter\(16) & (\inst3|counter[15]~65\ $ (GND))) # (!\inst3|counter\(16) & (!\inst3|counter[15]~65\ & VCC))
-- \inst3|counter[16]~67\ = CARRY((\inst3|counter\(16) & !\inst3|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(16),
	datad => VCC,
	cin => \inst3|counter[15]~65\,
	combout => \inst3|counter[16]~66_combout\,
	cout => \inst3|counter[16]~67\);

-- Location: FF_X29_Y26_N3
\inst3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[16]~66_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(16));

-- Location: LCCOMB_X29_Y26_N4
\inst3|counter[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[17]~68_combout\ = (\inst3|counter\(17) & (!\inst3|counter[16]~67\)) # (!\inst3|counter\(17) & ((\inst3|counter[16]~67\) # (GND)))
-- \inst3|counter[17]~69\ = CARRY((!\inst3|counter[16]~67\) # (!\inst3|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(17),
	datad => VCC,
	cin => \inst3|counter[16]~67\,
	combout => \inst3|counter[17]~68_combout\,
	cout => \inst3|counter[17]~69\);

-- Location: FF_X29_Y26_N5
\inst3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[17]~68_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(17));

-- Location: LCCOMB_X29_Y26_N6
\inst3|counter[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[18]~70_combout\ = (\inst3|counter\(18) & (\inst3|counter[17]~69\ $ (GND))) # (!\inst3|counter\(18) & (!\inst3|counter[17]~69\ & VCC))
-- \inst3|counter[18]~71\ = CARRY((\inst3|counter\(18) & !\inst3|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(18),
	datad => VCC,
	cin => \inst3|counter[17]~69\,
	combout => \inst3|counter[18]~70_combout\,
	cout => \inst3|counter[18]~71\);

-- Location: FF_X29_Y26_N7
\inst3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[18]~70_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(18));

-- Location: LCCOMB_X29_Y26_N8
\inst3|counter[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[19]~72_combout\ = (\inst3|counter\(19) & (!\inst3|counter[18]~71\)) # (!\inst3|counter\(19) & ((\inst3|counter[18]~71\) # (GND)))
-- \inst3|counter[19]~73\ = CARRY((!\inst3|counter[18]~71\) # (!\inst3|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(19),
	datad => VCC,
	cin => \inst3|counter[18]~71\,
	combout => \inst3|counter[19]~72_combout\,
	cout => \inst3|counter[19]~73\);

-- Location: FF_X29_Y26_N9
\inst3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[19]~72_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(19));

-- Location: LCCOMB_X29_Y26_N10
\inst3|counter[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[20]~74_combout\ = (\inst3|counter\(20) & (\inst3|counter[19]~73\ $ (GND))) # (!\inst3|counter\(20) & (!\inst3|counter[19]~73\ & VCC))
-- \inst3|counter[20]~75\ = CARRY((\inst3|counter\(20) & !\inst3|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(20),
	datad => VCC,
	cin => \inst3|counter[19]~73\,
	combout => \inst3|counter[20]~74_combout\,
	cout => \inst3|counter[20]~75\);

-- Location: FF_X29_Y26_N11
\inst3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[20]~74_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(20));

-- Location: LCCOMB_X29_Y26_N12
\inst3|counter[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[21]~76_combout\ = (\inst3|counter\(21) & (!\inst3|counter[20]~75\)) # (!\inst3|counter\(21) & ((\inst3|counter[20]~75\) # (GND)))
-- \inst3|counter[21]~77\ = CARRY((!\inst3|counter[20]~75\) # (!\inst3|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(21),
	datad => VCC,
	cin => \inst3|counter[20]~75\,
	combout => \inst3|counter[21]~76_combout\,
	cout => \inst3|counter[21]~77\);

-- Location: FF_X29_Y26_N13
\inst3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[21]~76_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(21));

-- Location: LCCOMB_X29_Y26_N14
\inst3|counter[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[22]~78_combout\ = (\inst3|counter\(22) & (\inst3|counter[21]~77\ $ (GND))) # (!\inst3|counter\(22) & (!\inst3|counter[21]~77\ & VCC))
-- \inst3|counter[22]~79\ = CARRY((\inst3|counter\(22) & !\inst3|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(22),
	datad => VCC,
	cin => \inst3|counter[21]~77\,
	combout => \inst3|counter[22]~78_combout\,
	cout => \inst3|counter[22]~79\);

-- Location: FF_X29_Y26_N15
\inst3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[22]~78_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(22));

-- Location: LCCOMB_X29_Y26_N16
\inst3|counter[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counter[23]~80_combout\ = (\inst3|counter\(23) & (!\inst3|counter[22]~79\)) # (!\inst3|counter\(23) & ((\inst3|counter[22]~79\) # (GND)))
-- \inst3|counter[23]~81\ = CARRY((!\inst3|counter[22]~79\) # (!\inst3|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counter\(23),
	datad => VCC,
	cin => \inst3|counter[22]~79\,
	combout => \inst3|counter[23]~80_combout\,
	cout => \inst3|counter[23]~81\);

-- Location: FF_X29_Y26_N17
\inst3|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[23]~80_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(23));

-- Location: FF_X29_Y26_N19
\inst3|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|counter[24]~82_combout\,
	sclr => \inst3|counter[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counter\(24));

-- Location: LCCOMB_X28_Y26_N30
\inst3|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~8_combout\ = (\inst3|counter\(18) & (\inst3|counter\(14) & (\inst3|counter\(16) & \inst3|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(18),
	datab => \inst3|counter\(14),
	datac => \inst3|counter\(16),
	datad => \inst3|counter\(13),
	combout => \inst3|process_0~8_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst3|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~9_combout\ = (\inst3|counter\(20) & (\inst3|counter\(19) & (\inst3|counter\(21) & \inst3|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(20),
	datab => \inst3|counter\(19),
	datac => \inst3|counter\(21),
	datad => \inst3|counter\(22),
	combout => \inst3|process_0~9_combout\);

-- Location: LCCOMB_X28_Y26_N22
\inst3|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~6_combout\ = (!\inst3|counter\(0) & (!\inst3|counter\(2) & (\inst3|state.pause~q\ & !\inst3|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(0),
	datab => \inst3|counter\(2),
	datac => \inst3|state.pause~q\,
	datad => \inst3|counter\(1),
	combout => \inst3|process_0~6_combout\);

-- Location: LCCOMB_X28_Y26_N16
\inst3|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~7_combout\ = (\inst3|counter\(11) & (\inst3|counter\(6) & (\inst3|counter\(12) & !\inst3|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(11),
	datab => \inst3|counter\(6),
	datac => \inst3|counter\(12),
	datad => \inst3|counter\(3),
	combout => \inst3|process_0~7_combout\);

-- Location: LCCOMB_X28_Y26_N6
\inst3|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~10_combout\ = (\inst3|process_0~8_combout\ & (\inst3|process_0~9_combout\ & (\inst3|process_0~6_combout\ & \inst3|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~8_combout\,
	datab => \inst3|process_0~9_combout\,
	datac => \inst3|process_0~6_combout\,
	datad => \inst3|process_0~7_combout\,
	combout => \inst3|process_0~10_combout\);

-- Location: LCCOMB_X28_Y26_N8
\inst3|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~11_combout\ = (\inst3|counter\(24) & (\inst3|process_0~5_combout\ & \inst3|process_0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(24),
	datac => \inst3|process_0~5_combout\,
	datad => \inst3|process_0~10_combout\,
	combout => \inst3|process_0~11_combout\);

-- Location: LCCOMB_X27_Y26_N10
\inst3|lineCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lineCount~1_combout\ = (\inst3|state.update~q\ & (((\inst3|process_0~11_combout\)))) # (!\inst3|state.update~q\ & (!\inst3|lineCount~0_combout\ & ((!\inst3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount~0_combout\,
	datab => \inst3|state.update~q\,
	datac => \inst3|process_0~11_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|lineCount~1_combout\);

-- Location: LCCOMB_X27_Y26_N24
\inst3|lineCount[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lineCount[0]~2_combout\ = (\inst3|lineCount\(0) & ((!\inst3|lineCount~1_combout\))) # (!\inst3|lineCount\(0) & (!\inst3|state.update~q\ & \inst3|lineCount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.update~q\,
	datac => \inst3|lineCount\(0),
	datad => \inst3|lineCount~1_combout\,
	combout => \inst3|lineCount[0]~2_combout\);

-- Location: FF_X27_Y26_N25
\inst3|lineCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lineCount[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lineCount\(0));

-- Location: LCCOMB_X27_Y26_N2
\inst3|lineCount[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lineCount[1]~3_combout\ = (\inst3|lineCount~1_combout\ & (!\inst3|state.update~q\ & (\inst3|lineCount\(0) $ (\inst3|lineCount\(1))))) # (!\inst3|lineCount~1_combout\ & (((\inst3|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(0),
	datab => \inst3|state.update~q\,
	datac => \inst3|lineCount\(1),
	datad => \inst3|lineCount~1_combout\,
	combout => \inst3|lineCount[1]~3_combout\);

-- Location: FF_X27_Y26_N3
\inst3|lineCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lineCount[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lineCount\(1));

-- Location: LCCOMB_X27_Y26_N14
\inst3|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~11_combout\ = (!\inst3|state.update~q\ & (\inst3|lineCount\(1) & (\inst3|lineCount\(0) & !\inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.update~q\,
	datab => \inst3|lineCount\(1),
	datac => \inst3|lineCount\(0),
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|state~11_combout\);

-- Location: LCCOMB_X27_Y26_N12
\inst3|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state~10_combout\ = (\inst3|state~11_combout\) # ((\inst3|state.update~q\ & !\inst3|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|state~11_combout\,
	datac => \inst3|state.update~q\,
	datad => \inst3|process_0~11_combout\,
	combout => \inst3|state~10_combout\);

-- Location: FF_X27_Y26_N13
\inst3|state.update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.update~q\);

-- Location: LCCOMB_X28_Y26_N12
\inst3|state.pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|state.pause~0_combout\ = (\inst3|state~11_combout\ & (!\inst3|state.update~q\)) # (!\inst3|state~11_combout\ & (\inst3|state.pause~q\ & ((!\inst3|process_0~11_combout\) # (!\inst3|state.update~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.update~q\,
	datab => \inst3|process_0~11_combout\,
	datac => \inst3|state.pause~q\,
	datad => \inst3|state~11_combout\,
	combout => \inst3|state.pause~0_combout\);

-- Location: FF_X28_Y26_N13
\inst3|state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|state.pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|state.pause~q\);

-- Location: LCCOMB_X28_Y26_N14
\inst3|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_1~4_combout\ = (\inst3|counter\(2) & (((!\inst3|counter\(3))))) # (!\inst3|counter\(2) & ((\inst3|counter\(1) & (\inst3|counter\(0) & !\inst3|counter\(3))) # (!\inst3|counter\(1) & ((\inst3|counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counter\(0),
	datab => \inst3|counter\(2),
	datac => \inst3|counter\(1),
	datad => \inst3|counter\(3),
	combout => \inst3|process_1~4_combout\);

-- Location: LCCOMB_X28_Y26_N0
\inst3|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_1~5_combout\ = (\inst3|state.pause~q\) # ((!\inst3|process_1~3_combout\) # (!\inst3|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|state.pause~q\,
	datac => \inst3|process_1~4_combout\,
	datad => \inst3|process_1~3_combout\,
	combout => \inst3|process_1~5_combout\);

-- Location: FF_X28_Y26_N1
\inst3|lcd_write_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|process_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_write_n~q\);

-- Location: LCCOMB_X36_Y33_N2
\inst2|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[0]~31_combout\ = \inst2|counter\(0) $ (VCC)
-- \inst2|counter[0]~32\ = CARRY(\inst2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(0),
	datad => VCC,
	combout => \inst2|counter[0]~31_combout\,
	cout => \inst2|counter[0]~32\);

-- Location: FF_X36_Y33_N3
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[0]~31_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X36_Y33_N4
\inst2|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[1]~33_combout\ = (\inst2|counter\(1) & (!\inst2|counter[0]~32\)) # (!\inst2|counter\(1) & ((\inst2|counter[0]~32\) # (GND)))
-- \inst2|counter[1]~34\ = CARRY((!\inst2|counter[0]~32\) # (!\inst2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datad => VCC,
	cin => \inst2|counter[0]~32\,
	combout => \inst2|counter[1]~33_combout\,
	cout => \inst2|counter[1]~34\);

-- Location: FF_X36_Y33_N5
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[1]~33_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LCCOMB_X36_Y33_N6
\inst2|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[2]~35_combout\ = (\inst2|counter\(2) & (\inst2|counter[1]~34\ $ (GND))) # (!\inst2|counter\(2) & (!\inst2|counter[1]~34\ & VCC))
-- \inst2|counter[2]~36\ = CARRY((\inst2|counter\(2) & !\inst2|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datad => VCC,
	cin => \inst2|counter[1]~34\,
	combout => \inst2|counter[2]~35_combout\,
	cout => \inst2|counter[2]~36\);

-- Location: FF_X36_Y33_N7
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[2]~35_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X36_Y33_N8
\inst2|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[3]~37_combout\ = (\inst2|counter\(3) & (!\inst2|counter[2]~36\)) # (!\inst2|counter\(3) & ((\inst2|counter[2]~36\) # (GND)))
-- \inst2|counter[3]~38\ = CARRY((!\inst2|counter[2]~36\) # (!\inst2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datad => VCC,
	cin => \inst2|counter[2]~36\,
	combout => \inst2|counter[3]~37_combout\,
	cout => \inst2|counter[3]~38\);

-- Location: FF_X36_Y33_N9
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[3]~37_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LCCOMB_X36_Y33_N10
\inst2|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[4]~39_combout\ = (\inst2|counter\(4) & (\inst2|counter[3]~38\ $ (GND))) # (!\inst2|counter\(4) & (!\inst2|counter[3]~38\ & VCC))
-- \inst2|counter[4]~40\ = CARRY((\inst2|counter\(4) & !\inst2|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datad => VCC,
	cin => \inst2|counter[3]~38\,
	combout => \inst2|counter[4]~39_combout\,
	cout => \inst2|counter[4]~40\);

-- Location: FF_X36_Y33_N11
\inst2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[4]~39_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(4));

-- Location: LCCOMB_X36_Y33_N12
\inst2|counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[5]~41_combout\ = (\inst2|counter\(5) & (!\inst2|counter[4]~40\)) # (!\inst2|counter\(5) & ((\inst2|counter[4]~40\) # (GND)))
-- \inst2|counter[5]~42\ = CARRY((!\inst2|counter[4]~40\) # (!\inst2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(5),
	datad => VCC,
	cin => \inst2|counter[4]~40\,
	combout => \inst2|counter[5]~41_combout\,
	cout => \inst2|counter[5]~42\);

-- Location: FF_X35_Y33_N29
\inst2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[5]~41_combout\,
	sclr => \inst2|state~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(5));

-- Location: LCCOMB_X36_Y33_N14
\inst2|counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[6]~43_combout\ = (\inst2|counter\(6) & (\inst2|counter[5]~42\ $ (GND))) # (!\inst2|counter\(6) & (!\inst2|counter[5]~42\ & VCC))
-- \inst2|counter[6]~44\ = CARRY((\inst2|counter\(6) & !\inst2|counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(6),
	datad => VCC,
	cin => \inst2|counter[5]~42\,
	combout => \inst2|counter[6]~43_combout\,
	cout => \inst2|counter[6]~44\);

-- Location: FF_X36_Y33_N15
\inst2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[6]~43_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(6));

-- Location: LCCOMB_X36_Y33_N16
\inst2|counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[7]~45_combout\ = (\inst2|counter\(7) & (!\inst2|counter[6]~44\)) # (!\inst2|counter\(7) & ((\inst2|counter[6]~44\) # (GND)))
-- \inst2|counter[7]~46\ = CARRY((!\inst2|counter[6]~44\) # (!\inst2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(7),
	datad => VCC,
	cin => \inst2|counter[6]~44\,
	combout => \inst2|counter[7]~45_combout\,
	cout => \inst2|counter[7]~46\);

-- Location: FF_X36_Y33_N17
\inst2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[7]~45_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(7));

-- Location: LCCOMB_X36_Y33_N18
\inst2|counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[8]~47_combout\ = (\inst2|counter\(8) & (\inst2|counter[7]~46\ $ (GND))) # (!\inst2|counter\(8) & (!\inst2|counter[7]~46\ & VCC))
-- \inst2|counter[8]~48\ = CARRY((\inst2|counter\(8) & !\inst2|counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(8),
	datad => VCC,
	cin => \inst2|counter[7]~46\,
	combout => \inst2|counter[8]~47_combout\,
	cout => \inst2|counter[8]~48\);

-- Location: FF_X36_Y33_N19
\inst2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[8]~47_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(8));

-- Location: LCCOMB_X36_Y33_N20
\inst2|counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[9]~49_combout\ = (\inst2|counter\(9) & (!\inst2|counter[8]~48\)) # (!\inst2|counter\(9) & ((\inst2|counter[8]~48\) # (GND)))
-- \inst2|counter[9]~50\ = CARRY((!\inst2|counter[8]~48\) # (!\inst2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(9),
	datad => VCC,
	cin => \inst2|counter[8]~48\,
	combout => \inst2|counter[9]~49_combout\,
	cout => \inst2|counter[9]~50\);

-- Location: FF_X36_Y33_N21
\inst2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[9]~49_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(9));

-- Location: LCCOMB_X36_Y33_N22
\inst2|counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[10]~51_combout\ = (\inst2|counter\(10) & (\inst2|counter[9]~50\ $ (GND))) # (!\inst2|counter\(10) & (!\inst2|counter[9]~50\ & VCC))
-- \inst2|counter[10]~52\ = CARRY((\inst2|counter\(10) & !\inst2|counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(10),
	datad => VCC,
	cin => \inst2|counter[9]~50\,
	combout => \inst2|counter[10]~51_combout\,
	cout => \inst2|counter[10]~52\);

-- Location: FF_X36_Y33_N23
\inst2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[10]~51_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(10));

-- Location: LCCOMB_X36_Y33_N24
\inst2|counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[11]~53_combout\ = (\inst2|counter\(11) & (!\inst2|counter[10]~52\)) # (!\inst2|counter\(11) & ((\inst2|counter[10]~52\) # (GND)))
-- \inst2|counter[11]~54\ = CARRY((!\inst2|counter[10]~52\) # (!\inst2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(11),
	datad => VCC,
	cin => \inst2|counter[10]~52\,
	combout => \inst2|counter[11]~53_combout\,
	cout => \inst2|counter[11]~54\);

-- Location: FF_X36_Y33_N25
\inst2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[11]~53_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(11));

-- Location: LCCOMB_X36_Y33_N26
\inst2|counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[12]~55_combout\ = (\inst2|counter\(12) & (\inst2|counter[11]~54\ $ (GND))) # (!\inst2|counter\(12) & (!\inst2|counter[11]~54\ & VCC))
-- \inst2|counter[12]~56\ = CARRY((\inst2|counter\(12) & !\inst2|counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(12),
	datad => VCC,
	cin => \inst2|counter[11]~54\,
	combout => \inst2|counter[12]~55_combout\,
	cout => \inst2|counter[12]~56\);

-- Location: FF_X36_Y33_N27
\inst2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[12]~55_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(12));

-- Location: LCCOMB_X35_Y33_N8
\inst2|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~14_combout\ = (!\inst2|counter\(7) & (!\inst2|counter\(3) & (\inst2|counter\(6) & !\inst2|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(7),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(6),
	datad => \inst2|counter\(12),
	combout => \inst2|process_0~14_combout\);

-- Location: LCCOMB_X36_Y33_N28
\inst2|counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[13]~57_combout\ = (\inst2|counter\(13) & (!\inst2|counter[12]~56\)) # (!\inst2|counter\(13) & ((\inst2|counter[12]~56\) # (GND)))
-- \inst2|counter[13]~58\ = CARRY((!\inst2|counter[12]~56\) # (!\inst2|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(13),
	datad => VCC,
	cin => \inst2|counter[12]~56\,
	combout => \inst2|counter[13]~57_combout\,
	cout => \inst2|counter[13]~58\);

-- Location: FF_X36_Y33_N29
\inst2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[13]~57_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(13));

-- Location: LCCOMB_X36_Y33_N30
\inst2|counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[14]~59_combout\ = (\inst2|counter\(14) & (\inst2|counter[13]~58\ $ (GND))) # (!\inst2|counter\(14) & (!\inst2|counter[13]~58\ & VCC))
-- \inst2|counter[14]~60\ = CARRY((\inst2|counter\(14) & !\inst2|counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(14),
	datad => VCC,
	cin => \inst2|counter[13]~58\,
	combout => \inst2|counter[14]~59_combout\,
	cout => \inst2|counter[14]~60\);

-- Location: FF_X36_Y33_N31
\inst2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[14]~59_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(14));

-- Location: LCCOMB_X36_Y32_N0
\inst2|counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[15]~61_combout\ = (\inst2|counter\(15) & (!\inst2|counter[14]~60\)) # (!\inst2|counter\(15) & ((\inst2|counter[14]~60\) # (GND)))
-- \inst2|counter[15]~62\ = CARRY((!\inst2|counter[14]~60\) # (!\inst2|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(15),
	datad => VCC,
	cin => \inst2|counter[14]~60\,
	combout => \inst2|counter[15]~61_combout\,
	cout => \inst2|counter[15]~62\);

-- Location: FF_X35_Y31_N21
\inst2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[15]~61_combout\,
	sclr => \inst2|state~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(15));

-- Location: LCCOMB_X36_Y32_N2
\inst2|counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[16]~63_combout\ = (\inst2|counter\(16) & (\inst2|counter[15]~62\ $ (GND))) # (!\inst2|counter\(16) & (!\inst2|counter[15]~62\ & VCC))
-- \inst2|counter[16]~64\ = CARRY((\inst2|counter\(16) & !\inst2|counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(16),
	datad => VCC,
	cin => \inst2|counter[15]~62\,
	combout => \inst2|counter[16]~63_combout\,
	cout => \inst2|counter[16]~64\);

-- Location: FF_X36_Y32_N3
\inst2|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[16]~63_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(16));

-- Location: LCCOMB_X36_Y32_N4
\inst2|counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[17]~65_combout\ = (\inst2|counter\(17) & (!\inst2|counter[16]~64\)) # (!\inst2|counter\(17) & ((\inst2|counter[16]~64\) # (GND)))
-- \inst2|counter[17]~66\ = CARRY((!\inst2|counter[16]~64\) # (!\inst2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(17),
	datad => VCC,
	cin => \inst2|counter[16]~64\,
	combout => \inst2|counter[17]~65_combout\,
	cout => \inst2|counter[17]~66\);

-- Location: FF_X36_Y32_N5
\inst2|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[17]~65_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(17));

-- Location: LCCOMB_X36_Y32_N6
\inst2|counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[18]~67_combout\ = (\inst2|counter\(18) & (\inst2|counter[17]~66\ $ (GND))) # (!\inst2|counter\(18) & (!\inst2|counter[17]~66\ & VCC))
-- \inst2|counter[18]~68\ = CARRY((\inst2|counter\(18) & !\inst2|counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(18),
	datad => VCC,
	cin => \inst2|counter[17]~66\,
	combout => \inst2|counter[18]~67_combout\,
	cout => \inst2|counter[18]~68\);

-- Location: FF_X35_Y31_N3
\inst2|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[18]~67_combout\,
	sclr => \inst2|state~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(18));

-- Location: LCCOMB_X36_Y32_N8
\inst2|counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[19]~69_combout\ = (\inst2|counter\(19) & (!\inst2|counter[18]~68\)) # (!\inst2|counter\(19) & ((\inst2|counter[18]~68\) # (GND)))
-- \inst2|counter[19]~70\ = CARRY((!\inst2|counter[18]~68\) # (!\inst2|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(19),
	datad => VCC,
	cin => \inst2|counter[18]~68\,
	combout => \inst2|counter[19]~69_combout\,
	cout => \inst2|counter[19]~70\);

-- Location: FF_X35_Y31_N25
\inst2|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[19]~69_combout\,
	sclr => \inst2|state~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(19));

-- Location: LCCOMB_X36_Y32_N10
\inst2|counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[20]~71_combout\ = (\inst2|counter\(20) & (\inst2|counter[19]~70\ $ (GND))) # (!\inst2|counter\(20) & (!\inst2|counter[19]~70\ & VCC))
-- \inst2|counter[20]~72\ = CARRY((\inst2|counter\(20) & !\inst2|counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(20),
	datad => VCC,
	cin => \inst2|counter[19]~70\,
	combout => \inst2|counter[20]~71_combout\,
	cout => \inst2|counter[20]~72\);

-- Location: FF_X36_Y32_N11
\inst2|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[20]~71_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(20));

-- Location: LCCOMB_X36_Y32_N12
\inst2|counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[21]~73_combout\ = (\inst2|counter\(21) & (!\inst2|counter[20]~72\)) # (!\inst2|counter\(21) & ((\inst2|counter[20]~72\) # (GND)))
-- \inst2|counter[21]~74\ = CARRY((!\inst2|counter[20]~72\) # (!\inst2|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(21),
	datad => VCC,
	cin => \inst2|counter[20]~72\,
	combout => \inst2|counter[21]~73_combout\,
	cout => \inst2|counter[21]~74\);

-- Location: FF_X36_Y32_N13
\inst2|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[21]~73_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(21));

-- Location: LCCOMB_X36_Y32_N14
\inst2|counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[22]~75_combout\ = (\inst2|counter\(22) & (\inst2|counter[21]~74\ $ (GND))) # (!\inst2|counter\(22) & (!\inst2|counter[21]~74\ & VCC))
-- \inst2|counter[22]~76\ = CARRY((\inst2|counter\(22) & !\inst2|counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(22),
	datad => VCC,
	cin => \inst2|counter[21]~74\,
	combout => \inst2|counter[22]~75_combout\,
	cout => \inst2|counter[22]~76\);

-- Location: FF_X36_Y32_N15
\inst2|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[22]~75_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(22));

-- Location: LCCOMB_X35_Y31_N2
\inst2|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~16_combout\ = (!\inst2|counter\(4) & (!\inst2|counter\(15) & (\inst2|counter\(18) & \inst2|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|counter\(15),
	datac => \inst2|counter\(18),
	datad => \inst2|counter\(11),
	combout => \inst2|process_0~16_combout\);

-- Location: LCCOMB_X35_Y31_N30
\inst2|state.init0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state.init0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|state.init0~feeder_combout\);

-- Location: FF_X35_Y31_N31
\inst2|state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state.init0~feeder_combout\,
	ena => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init0~q\);

-- Location: LCCOMB_X35_Y31_N28
\inst2|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~15_combout\ = (!\inst2|state.init0~q\ & (!\inst2|counter\(17) & (!\inst2|counter\(16) & !\inst2|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init0~q\,
	datab => \inst2|counter\(17),
	datac => \inst2|counter\(16),
	datad => \inst2|counter\(13),
	combout => \inst2|process_0~15_combout\);

-- Location: LCCOMB_X35_Y31_N6
\inst2|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~17_combout\ = (\inst2|counter\(22) & (\inst2|counter\(19) & (\inst2|process_0~16_combout\ & \inst2|process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(22),
	datab => \inst2|counter\(19),
	datac => \inst2|process_0~16_combout\,
	datad => \inst2|process_0~15_combout\,
	combout => \inst2|process_0~17_combout\);

-- Location: LCCOMB_X36_Y32_N16
\inst2|counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[23]~77_combout\ = (\inst2|counter\(23) & (!\inst2|counter[22]~76\)) # (!\inst2|counter\(23) & ((\inst2|counter[22]~76\) # (GND)))
-- \inst2|counter[23]~78\ = CARRY((!\inst2|counter[22]~76\) # (!\inst2|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(23),
	datad => VCC,
	cin => \inst2|counter[22]~76\,
	combout => \inst2|counter[23]~77_combout\,
	cout => \inst2|counter[23]~78\);

-- Location: FF_X36_Y32_N17
\inst2|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[23]~77_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(23));

-- Location: LCCOMB_X36_Y32_N18
\inst2|counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[24]~79_combout\ = (\inst2|counter\(24) & (\inst2|counter[23]~78\ $ (GND))) # (!\inst2|counter\(24) & (!\inst2|counter[23]~78\ & VCC))
-- \inst2|counter[24]~80\ = CARRY((\inst2|counter\(24) & !\inst2|counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(24),
	datad => VCC,
	cin => \inst2|counter[23]~78\,
	combout => \inst2|counter[24]~79_combout\,
	cout => \inst2|counter[24]~80\);

-- Location: FF_X36_Y32_N19
\inst2|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[24]~79_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(24));

-- Location: LCCOMB_X36_Y32_N20
\inst2|counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[25]~81_combout\ = (\inst2|counter\(25) & (!\inst2|counter[24]~80\)) # (!\inst2|counter\(25) & ((\inst2|counter[24]~80\) # (GND)))
-- \inst2|counter[25]~82\ = CARRY((!\inst2|counter[24]~80\) # (!\inst2|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(25),
	datad => VCC,
	cin => \inst2|counter[24]~80\,
	combout => \inst2|counter[25]~81_combout\,
	cout => \inst2|counter[25]~82\);

-- Location: FF_X36_Y32_N21
\inst2|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[25]~81_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(25));

-- Location: LCCOMB_X36_Y32_N22
\inst2|counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[26]~83_combout\ = (\inst2|counter\(26) & (\inst2|counter[25]~82\ $ (GND))) # (!\inst2|counter\(26) & (!\inst2|counter[25]~82\ & VCC))
-- \inst2|counter[26]~84\ = CARRY((\inst2|counter\(26) & !\inst2|counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(26),
	datad => VCC,
	cin => \inst2|counter[25]~82\,
	combout => \inst2|counter[26]~83_combout\,
	cout => \inst2|counter[26]~84\);

-- Location: FF_X36_Y32_N23
\inst2|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[26]~83_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(26));

-- Location: LCCOMB_X36_Y32_N24
\inst2|counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[27]~85_combout\ = (\inst2|counter\(27) & (!\inst2|counter[26]~84\)) # (!\inst2|counter\(27) & ((\inst2|counter[26]~84\) # (GND)))
-- \inst2|counter[27]~86\ = CARRY((!\inst2|counter[26]~84\) # (!\inst2|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(27),
	datad => VCC,
	cin => \inst2|counter[26]~84\,
	combout => \inst2|counter[27]~85_combout\,
	cout => \inst2|counter[27]~86\);

-- Location: FF_X36_Y32_N25
\inst2|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[27]~85_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(27));

-- Location: LCCOMB_X36_Y32_N26
\inst2|counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[28]~87_combout\ = (\inst2|counter\(28) & (\inst2|counter[27]~86\ $ (GND))) # (!\inst2|counter\(28) & (!\inst2|counter[27]~86\ & VCC))
-- \inst2|counter[28]~88\ = CARRY((\inst2|counter\(28) & !\inst2|counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(28),
	datad => VCC,
	cin => \inst2|counter[27]~86\,
	combout => \inst2|counter[28]~87_combout\,
	cout => \inst2|counter[28]~88\);

-- Location: FF_X36_Y32_N27
\inst2|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[28]~87_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(28));

-- Location: LCCOMB_X36_Y32_N28
\inst2|counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[29]~89_combout\ = (\inst2|counter\(29) & (!\inst2|counter[28]~88\)) # (!\inst2|counter\(29) & ((\inst2|counter[28]~88\) # (GND)))
-- \inst2|counter[29]~90\ = CARRY((!\inst2|counter[28]~88\) # (!\inst2|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(29),
	datad => VCC,
	cin => \inst2|counter[28]~88\,
	combout => \inst2|counter[29]~89_combout\,
	cout => \inst2|counter[29]~90\);

-- Location: FF_X36_Y32_N29
\inst2|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[29]~89_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(29));

-- Location: LCCOMB_X36_Y32_N30
\inst2|counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[30]~91_combout\ = \inst2|counter\(30) $ (!\inst2|counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(30),
	cin => \inst2|counter[29]~90\,
	combout => \inst2|counter[30]~91_combout\);

-- Location: FF_X36_Y32_N31
\inst2|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[30]~91_combout\,
	sclr => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(30));

-- Location: LCCOMB_X36_Y31_N22
\inst2|e~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~4_combout\ = (!\inst2|counter\(30) & (!\inst2|counter\(28) & !\inst2|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(30),
	datab => \inst2|counter\(28),
	datad => \inst2|counter\(29),
	combout => \inst2|e~4_combout\);

-- Location: LCCOMB_X36_Y31_N4
\inst2|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~2_combout\ = (!\inst2|counter\(23) & (!\inst2|counter\(10) & (!\inst2|counter\(20) & !\inst2|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(23),
	datab => \inst2|counter\(10),
	datac => \inst2|counter\(20),
	datad => \inst2|counter\(21),
	combout => \inst2|e~2_combout\);

-- Location: LCCOMB_X35_Y32_N28
\inst2|e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~3_combout\ = (!\inst2|counter\(25) & (!\inst2|counter\(27) & (!\inst2|counter\(24) & !\inst2|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(25),
	datab => \inst2|counter\(27),
	datac => \inst2|counter\(24),
	datad => \inst2|counter\(26),
	combout => \inst2|e~3_combout\);

-- Location: LCCOMB_X36_Y33_N0
\inst2|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~1_combout\ = (!\inst2|counter\(2) & (!\inst2|counter\(0) & (!\inst2|counter\(1) & \inst2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(0),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(8),
	combout => \inst2|Equal5~1_combout\);

-- Location: LCCOMB_X36_Y31_N0
\inst2|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~2_combout\ = (\inst2|e~4_combout\ & (\inst2|e~2_combout\ & (\inst2|e~3_combout\ & \inst2|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|e~4_combout\,
	datab => \inst2|e~2_combout\,
	datac => \inst2|e~3_combout\,
	datad => \inst2|Equal5~1_combout\,
	combout => \inst2|Equal5~2_combout\);

-- Location: LCCOMB_X36_Y31_N2
\inst2|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~13_combout\ = (!\inst2|counter\(5) & (\inst2|counter\(9) & \inst2|Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datac => \inst2|counter\(9),
	datad => \inst2|Equal5~2_combout\,
	combout => \inst2|process_0~13_combout\);

-- Location: LCCOMB_X36_Y31_N12
\inst2|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~18_combout\ = (\inst2|process_0~14_combout\ & (\inst2|counter\(14) & (\inst2|process_0~17_combout\ & \inst2|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~14_combout\,
	datab => \inst2|counter\(14),
	datac => \inst2|process_0~17_combout\,
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|process_0~18_combout\);

-- Location: LCCOMB_X35_Y31_N16
\inst2|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~0_combout\ = (!\inst2|counter\(19) & (!\inst2|counter\(22) & !\inst2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(19),
	datac => \inst2|counter\(22),
	datad => \inst2|counter\(11),
	combout => \inst2|Equal6~0_combout\);

-- Location: LCCOMB_X35_Y31_N14
\inst2|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~1_combout\ = (!\inst2|counter\(13) & (!\inst2|counter\(18) & (!\inst2|counter\(16) & !\inst2|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(13),
	datab => \inst2|counter\(18),
	datac => \inst2|counter\(16),
	datad => \inst2|counter\(17),
	combout => \inst2|Equal6~1_combout\);

-- Location: LCCOMB_X32_Y30_N28
\inst2|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~22_combout\ = (!\inst3|lcd_write_n~q\ & \inst2|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|lcd_write_n~q\,
	datad => \inst2|state.ready~q\,
	combout => \inst2|process_0~22_combout\);

-- Location: LCCOMB_X37_Y31_N4
\inst2|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~26_combout\ = (!\inst2|process_0~22_combout\ & ((\inst2|state~19_combout\ & ((\inst2|state.init1~q\))) # (!\inst2|state~19_combout\ & (\inst2|process_0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~22_combout\,
	datab => \inst2|process_0~18_combout\,
	datac => \inst2|state.init1~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~26_combout\);

-- Location: FF_X37_Y31_N5
\inst2|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init1~q\);

-- Location: LCCOMB_X36_Y31_N18
\inst2|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~3_combout\ = (\inst2|counter\(18) & (\inst2|counter\(16) & \inst2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(18),
	datab => \inst2|counter\(16),
	datad => \inst2|counter\(17),
	combout => \inst2|Equal5~3_combout\);

-- Location: LCCOMB_X35_Y31_N8
\inst2|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~5_combout\ = (\inst2|counter\(13) & (\inst2|counter\(15) & (!\inst2|counter\(4) & !\inst2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(13),
	datab => \inst2|counter\(15),
	datac => \inst2|counter\(4),
	datad => \inst2|counter\(3),
	combout => \inst2|Equal5~5_combout\);

-- Location: LCCOMB_X35_Y31_N22
\inst2|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~4_combout\ = (\inst2|counter\(5) & (!\inst2|counter\(19) & (!\inst2|counter\(11) & !\inst2|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datab => \inst2|counter\(19),
	datac => \inst2|counter\(11),
	datad => \inst2|counter\(22),
	combout => \inst2|Equal5~4_combout\);

-- Location: LCCOMB_X35_Y31_N12
\inst2|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~0_combout\ = (!\inst2|counter\(14) & (!\inst2|counter\(12) & (!\inst2|counter\(7) & !\inst2|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(14),
	datab => \inst2|counter\(12),
	datac => \inst2|counter\(7),
	datad => \inst2|counter\(6),
	combout => \inst2|Equal5~0_combout\);

-- Location: LCCOMB_X35_Y31_N10
\inst2|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~6_combout\ = (!\inst2|counter\(9) & (\inst2|Equal5~5_combout\ & (\inst2|Equal5~4_combout\ & \inst2|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datab => \inst2|Equal5~5_combout\,
	datac => \inst2|Equal5~4_combout\,
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|Equal5~6_combout\);

-- Location: LCCOMB_X36_Y31_N8
\inst2|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~11_combout\ = (\inst2|state.init1~q\ & (\inst2|Equal5~2_combout\ & (\inst2|Equal5~3_combout\ & \inst2|Equal5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init1~q\,
	datab => \inst2|Equal5~2_combout\,
	datac => \inst2|Equal5~3_combout\,
	datad => \inst2|Equal5~6_combout\,
	combout => \inst2|process_0~11_combout\);

-- Location: LCCOMB_X35_Y31_N4
\inst2|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~27_combout\ = (!\inst2|process_0~22_combout\ & ((\inst2|state~19_combout\ & ((\inst2|state.init2~q\))) # (!\inst2|state~19_combout\ & (\inst2|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~22_combout\,
	datab => \inst2|process_0~11_combout\,
	datac => \inst2|state.init2~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~27_combout\);

-- Location: FF_X35_Y31_N5
\inst2|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init2~q\);

-- Location: LCCOMB_X35_Y31_N0
\inst2|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~19_combout\ = (\inst2|counter\(15) & (\inst2|state.init2~q\ & \inst2|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(15),
	datac => \inst2|state.init2~q\,
	datad => \inst2|counter\(4),
	combout => \inst2|process_0~19_combout\);

-- Location: LCCOMB_X35_Y31_N26
\inst2|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~20_combout\ = (\inst2|Equal6~0_combout\ & (\inst2|Equal6~1_combout\ & \inst2|process_0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal6~0_combout\,
	datac => \inst2|Equal6~1_combout\,
	datad => \inst2|process_0~19_combout\,
	combout => \inst2|process_0~20_combout\);

-- Location: LCCOMB_X36_Y31_N14
\inst2|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~21_combout\ = (\inst2|process_0~14_combout\ & (\inst2|counter\(14) & (\inst2|process_0~20_combout\ & \inst2|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~14_combout\,
	datab => \inst2|counter\(14),
	datac => \inst2|process_0~20_combout\,
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|process_0~21_combout\);

-- Location: LCCOMB_X34_Y31_N26
\inst2|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~24_combout\ = (!\inst2|process_0~22_combout\ & ((\inst2|state~19_combout\ & ((\inst2|state.init3~q\))) # (!\inst2|state~19_combout\ & (\inst2|process_0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~21_combout\,
	datab => \inst2|process_0~22_combout\,
	datac => \inst2|state.init3~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~24_combout\);

-- Location: FF_X34_Y31_N27
\inst2|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init3~q\);

-- Location: LCCOMB_X35_Y33_N2
\inst2|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~4_combout\ = (!\inst2|counter\(5) & (\inst2|counter\(7) & \inst2|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(5),
	datac => \inst2|counter\(7),
	datad => \inst2|counter\(12),
	combout => \inst2|Equal6~4_combout\);

-- Location: LCCOMB_X36_Y31_N6
\inst2|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~2_combout\ = (!\inst2|counter\(6) & (\inst2|counter\(3) & (!\inst2|counter\(14) & !\inst2|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(6),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(14),
	datad => \inst2|counter\(4),
	combout => \inst2|Equal6~2_combout\);

-- Location: LCCOMB_X36_Y31_N28
\inst2|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~3_combout\ = (\inst2|Equal6~2_combout\ & (!\inst2|counter\(15) & (\inst2|Equal6~0_combout\ & \inst2|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~2_combout\,
	datab => \inst2|counter\(15),
	datac => \inst2|Equal6~0_combout\,
	datad => \inst2|Equal6~1_combout\,
	combout => \inst2|Equal6~3_combout\);

-- Location: LCCOMB_X36_Y31_N10
\inst2|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~5_combout\ = (\inst2|Equal6~4_combout\ & (\inst2|Equal5~2_combout\ & (\inst2|counter\(9) & \inst2|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~4_combout\,
	datab => \inst2|Equal5~2_combout\,
	datac => \inst2|counter\(9),
	datad => \inst2|Equal6~3_combout\,
	combout => \inst2|Equal6~5_combout\);

-- Location: LCCOMB_X34_Y31_N10
\inst2|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~32_combout\ = (\inst2|Equal6~5_combout\ & (!\inst2|state~19_combout\ & ((\inst3|lcd_write_n~q\) # (!\inst2|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~5_combout\,
	datab => \inst2|state.ready~q\,
	datac => \inst3|lcd_write_n~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~32_combout\);

-- Location: LCCOMB_X34_Y31_N12
\inst2|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~25_combout\ = (\inst2|state~31_combout\ & (\inst2|state.init3~q\ & ((\inst2|state~32_combout\)))) # (!\inst2|state~31_combout\ & ((\inst2|state.init4~q\) # ((\inst2|state.init3~q\ & \inst2|state~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~31_combout\,
	datab => \inst2|state.init3~q\,
	datac => \inst2|state.init4~q\,
	datad => \inst2|state~32_combout\,
	combout => \inst2|state~25_combout\);

-- Location: FF_X34_Y31_N13
\inst2|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init4~q\);

-- Location: LCCOMB_X34_Y31_N18
\inst2|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~29_combout\ = (\inst2|state~31_combout\ & (\inst2|state.init4~q\ & ((\inst2|state~32_combout\)))) # (!\inst2|state~31_combout\ & ((\inst2|state.init5~q\) # ((\inst2|state.init4~q\ & \inst2|state~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~31_combout\,
	datab => \inst2|state.init4~q\,
	datac => \inst2|state.init5~q\,
	datad => \inst2|state~32_combout\,
	combout => \inst2|state~29_combout\);

-- Location: FF_X34_Y31_N19
\inst2|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init5~q\);

-- Location: LCCOMB_X34_Y31_N8
\inst2|dataOut[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~18_combout\ = (!\inst2|state.init4~q\ & (!\inst2|state.init3~q\ & !\inst2|state.init5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init4~q\,
	datac => \inst2|state.init3~q\,
	datad => \inst2|state.init5~q\,
	combout => \inst2|dataOut[3]~18_combout\);

-- Location: LCCOMB_X34_Y31_N24
\inst2|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~28_combout\ = (\inst2|state~31_combout\ & (\inst2|state.init5~q\ & ((\inst2|state~32_combout\)))) # (!\inst2|state~31_combout\ & ((\inst2|state.init6~q\) # ((\inst2|state.init5~q\ & \inst2|state~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~31_combout\,
	datab => \inst2|state.init5~q\,
	datac => \inst2|state.init6~q\,
	datad => \inst2|state~32_combout\,
	combout => \inst2|state~28_combout\);

-- Location: FF_X34_Y31_N25
\inst2|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init6~q\);

-- Location: LCCOMB_X36_Y31_N30
\inst2|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~12_combout\ = (\inst2|state.init6~q\ & (\inst2|Equal5~2_combout\ & (\inst2|Equal5~3_combout\ & \inst2|Equal5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init6~q\,
	datab => \inst2|Equal5~2_combout\,
	datac => \inst2|Equal5~3_combout\,
	datad => \inst2|Equal5~6_combout\,
	combout => \inst2|process_0~12_combout\);

-- Location: LCCOMB_X36_Y31_N24
\inst2|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~18_combout\ = (!\inst2|process_0~11_combout\ & (!\inst2|process_0~12_combout\ & ((\inst2|dataOut[3]~18_combout\) # (!\inst2|Equal6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[3]~18_combout\,
	datab => \inst2|process_0~11_combout\,
	datac => \inst2|process_0~12_combout\,
	datad => \inst2|Equal6~5_combout\,
	combout => \inst2|state~18_combout\);

-- Location: LCCOMB_X37_Y31_N2
\inst2|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~30_combout\ = (!\inst2|process_0~22_combout\ & ((\inst2|state~19_combout\ & ((\inst2|state.init7~q\))) # (!\inst2|state~19_combout\ & (\inst2|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~12_combout\,
	datab => \inst2|process_0~22_combout\,
	datac => \inst2|state.init7~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~30_combout\);

-- Location: FF_X37_Y31_N3
\inst2|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init7~q\);

-- Location: FF_X36_Y31_N23
\inst2|state.sendingAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|process_0~22_combout\,
	sload => VCC,
	ena => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.sendingAddress~q\);

-- Location: LCCOMB_X35_Y31_N24
\inst2|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~23_combout\ = (\inst2|state.sendingAddress~q\ & \inst2|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datad => \inst2|Equal6~5_combout\,
	combout => \inst2|process_0~23_combout\);

-- Location: LCCOMB_X35_Y31_N18
\inst2|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~23_combout\ = (!\inst2|process_0~22_combout\ & ((\inst2|state~19_combout\ & ((\inst2|state.sendingData~q\))) # (!\inst2|state~19_combout\ & (\inst2|process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~23_combout\,
	datab => \inst2|process_0~22_combout\,
	datac => \inst2|state.sendingData~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~23_combout\);

-- Location: FF_X35_Y31_N19
\inst2|state.sendingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.sendingData~q\);

-- Location: LCCOMB_X36_Y31_N16
\inst2|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~17_combout\ = ((!\inst2|state.init7~q\ & (!\inst2|state.sendingData~q\ & !\inst2|state.sendingAddress~q\))) # (!\inst2|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init7~q\,
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|state.sendingAddress~q\,
	datad => \inst2|Equal6~5_combout\,
	combout => \inst2|state~17_combout\);

-- Location: LCCOMB_X36_Y31_N20
\inst2|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~19_combout\ = (!\inst2|process_0~18_combout\ & (\inst2|state~18_combout\ & (!\inst2|process_0~21_combout\ & \inst2|state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~18_combout\,
	datab => \inst2|state~18_combout\,
	datac => \inst2|process_0~21_combout\,
	datad => \inst2|state~17_combout\,
	combout => \inst2|state~19_combout\);

-- Location: LCCOMB_X36_Y31_N26
\inst2|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~31_combout\ = ((\inst2|state.ready~q\ & !\inst3|lcd_write_n~q\)) # (!\inst2|state~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.ready~q\,
	datac => \inst3|lcd_write_n~q\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~31_combout\);

-- Location: LCCOMB_X34_Y31_N6
\inst2|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~20_combout\ = (!\inst2|process_0~21_combout\ & (!\inst2|process_0~18_combout\ & \inst2|state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|process_0~21_combout\,
	datac => \inst2|process_0~18_combout\,
	datad => \inst2|state~18_combout\,
	combout => \inst2|state~20_combout\);

-- Location: LCCOMB_X34_Y31_N20
\inst2|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~21_combout\ = (!\inst2|state~19_combout\ & (\inst2|state~20_combout\ & ((\inst3|lcd_write_n~q\) # (!\inst2|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_write_n~q\,
	datab => \inst2|state.ready~q\,
	datac => \inst2|state~19_combout\,
	datad => \inst2|state~20_combout\,
	combout => \inst2|state~21_combout\);

-- Location: LCCOMB_X34_Y31_N16
\inst2|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~22_combout\ = (\inst2|state~31_combout\ & (!\inst2|process_0~23_combout\ & ((\inst2|state~21_combout\)))) # (!\inst2|state~31_combout\ & ((\inst2|state.ready~q\) # ((!\inst2|process_0~23_combout\ & \inst2|state~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~31_combout\,
	datab => \inst2|process_0~23_combout\,
	datac => \inst2|state.ready~q\,
	datad => \inst2|state~21_combout\,
	combout => \inst2|state~22_combout\);

-- Location: FF_X34_Y31_N17
\inst2|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.ready~q\);

-- Location: LCCOMB_X34_Y31_N14
\inst2|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_1~0_combout\ = (\inst2|state.ready~q\) # (\inst2|state.sendingData~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.ready~q\,
	datad => \inst2|state.sendingData~q\,
	combout => \inst2|process_1~0_combout\);

-- Location: LCCOMB_X35_Y31_N20
\inst2|e~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~6_combout\ = (\inst2|counter\(9)) # ((\inst2|counter\(15)) # (\inst2|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datac => \inst2|counter\(15),
	datad => \inst2|counter\(8),
	combout => \inst2|e~6_combout\);

-- Location: LCCOMB_X34_Y31_N30
\inst2|e~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~7_combout\ = (!\inst2|e~6_combout\ & (\inst2|Equal5~0_combout\ & (\inst2|Equal6~1_combout\ & \inst2|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|e~6_combout\,
	datab => \inst2|Equal5~0_combout\,
	datac => \inst2|Equal6~1_combout\,
	datad => \inst2|Equal6~0_combout\,
	combout => \inst2|e~7_combout\);

-- Location: LCCOMB_X34_Y31_N4
\inst2|e~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~5_combout\ = (\inst2|e~4_combout\ & (\inst2|e~2_combout\ & \inst2|e~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|e~4_combout\,
	datac => \inst2|e~2_combout\,
	datad => \inst2|e~3_combout\,
	combout => \inst2|e~5_combout\);

-- Location: LCCOMB_X37_Y31_N28
\inst2|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~0_combout\ = (\inst2|counter\(1) & ((\inst2|counter\(4)) # (\inst2|counter\(2)))) # (!\inst2|counter\(1) & (\inst2|counter\(4) & \inst2|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datac => \inst2|counter\(4),
	datad => \inst2|counter\(2),
	combout => \inst2|e~0_combout\);

-- Location: LCCOMB_X37_Y31_N22
\inst2|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~1_combout\ = (\inst2|counter\(5) & (((!\inst2|counter\(3) & !\inst2|e~0_combout\)) # (!\inst2|counter\(4)))) # (!\inst2|counter\(5) & ((\inst2|counter\(3)) # ((\inst2|counter\(4)) # (\inst2|e~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(3),
	datab => \inst2|counter\(5),
	datac => \inst2|counter\(4),
	datad => \inst2|e~0_combout\,
	combout => \inst2|e~1_combout\);

-- Location: LCCOMB_X34_Y31_N28
\inst2|e~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~8_combout\ = (\inst2|e~7_combout\ & (!\inst2|state.ready~q\ & (\inst2|e~5_combout\ & \inst2|e~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|e~7_combout\,
	datab => \inst2|state.ready~q\,
	datac => \inst2|e~5_combout\,
	datad => \inst2|e~1_combout\,
	combout => \inst2|e~8_combout\);

-- Location: LCCOMB_X34_Y31_N22
\inst2|dataOut[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~0_combout\ = (!\inst2|state.init3~q\ & (!\inst2|state.init4~q\ & (!\inst2|state.init1~q\ & !\inst2|state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init3~q\,
	datab => \inst2|state.init4~q\,
	datac => \inst2|state.init1~q\,
	datad => \inst2|state.init2~q\,
	combout => \inst2|dataOut[1]~0_combout\);

-- Location: LCCOMB_X35_Y30_N28
\inst2|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~1_combout\ = (!\inst2|state.init5~q\ & (\inst2|dataOut[1]~0_combout\ & (\inst2|state.init0~q\ & !\inst2|state.init6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init5~q\,
	datab => \inst2|dataOut[1]~0_combout\,
	datac => \inst2|state.init0~q\,
	datad => \inst2|state.init6~q\,
	combout => \inst2|dataOut[1]~1_combout\);

-- Location: FF_X27_Y28_N1
\inst3|lcd_posY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lineCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posY\(0));

-- Location: FF_X35_Y30_N23
\inst2|addressStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lcd_posY\(0),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(6));

-- Location: LCCOMB_X27_Y28_N16
\inst3|lcd_data~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~178_combout\ = (\inst3|charCount\(1) & (((!\inst3|charCount\(0) & !\inst3|charCount\(3))) # (!\inst3|charCount\(4)))) # (!\inst3|charCount\(1) & (\inst3|charCount\(3) $ (((\inst3|charCount\(0)) # (\inst3|charCount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(4),
	combout => \inst3|lcd_data~178_combout\);

-- Location: LCCOMB_X27_Y28_N26
\inst3|lcd_data~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~179_combout\ = (\inst3|charCount\(2) & (!\inst3|charCount\(4) & ((\inst3|lcd_data~178_combout\) # (!\inst3|charCount\(1))))) # (!\inst3|charCount\(2) & (((\inst3|lcd_data~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|charCount\(1),
	datac => \inst3|charCount\(2),
	datad => \inst3|lcd_data~178_combout\,
	combout => \inst3|lcd_data~179_combout\);

-- Location: LCCOMB_X31_Y29_N2
\inst3|display_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[0]~31_combout\ = \inst3|display_counter\(0) $ (VCC)
-- \inst3|display_counter[0]~32\ = CARRY(\inst3|display_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(0),
	datad => VCC,
	combout => \inst3|display_counter[0]~31_combout\,
	cout => \inst3|display_counter[0]~32\);

-- Location: LCCOMB_X31_Y27_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X31_Y29_N3
\inst3|display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[0]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(0));

-- Location: LCCOMB_X31_Y29_N4
\inst3|display_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[1]~33_combout\ = (\inst3|display_counter\(1) & (!\inst3|display_counter[0]~32\)) # (!\inst3|display_counter\(1) & ((\inst3|display_counter[0]~32\) # (GND)))
-- \inst3|display_counter[1]~34\ = CARRY((!\inst3|display_counter[0]~32\) # (!\inst3|display_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(1),
	datad => VCC,
	cin => \inst3|display_counter[0]~32\,
	combout => \inst3|display_counter[1]~33_combout\,
	cout => \inst3|display_counter[1]~34\);

-- Location: FF_X31_Y29_N5
\inst3|display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[1]~33_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(1));

-- Location: LCCOMB_X31_Y29_N6
\inst3|display_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[2]~35_combout\ = (\inst3|display_counter\(2) & (\inst3|display_counter[1]~34\ $ (GND))) # (!\inst3|display_counter\(2) & (!\inst3|display_counter[1]~34\ & VCC))
-- \inst3|display_counter[2]~36\ = CARRY((\inst3|display_counter\(2) & !\inst3|display_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(2),
	datad => VCC,
	cin => \inst3|display_counter[1]~34\,
	combout => \inst3|display_counter[2]~35_combout\,
	cout => \inst3|display_counter[2]~36\);

-- Location: FF_X31_Y29_N7
\inst3|display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[2]~35_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(2));

-- Location: LCCOMB_X31_Y29_N8
\inst3|display_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[3]~37_combout\ = (\inst3|display_counter\(3) & (!\inst3|display_counter[2]~36\)) # (!\inst3|display_counter\(3) & ((\inst3|display_counter[2]~36\) # (GND)))
-- \inst3|display_counter[3]~38\ = CARRY((!\inst3|display_counter[2]~36\) # (!\inst3|display_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(3),
	datad => VCC,
	cin => \inst3|display_counter[2]~36\,
	combout => \inst3|display_counter[3]~37_combout\,
	cout => \inst3|display_counter[3]~38\);

-- Location: FF_X31_Y29_N9
\inst3|display_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[3]~37_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(3));

-- Location: LCCOMB_X31_Y29_N10
\inst3|display_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[4]~39_combout\ = (\inst3|display_counter\(4) & (\inst3|display_counter[3]~38\ $ (GND))) # (!\inst3|display_counter\(4) & (!\inst3|display_counter[3]~38\ & VCC))
-- \inst3|display_counter[4]~40\ = CARRY((\inst3|display_counter\(4) & !\inst3|display_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(4),
	datad => VCC,
	cin => \inst3|display_counter[3]~38\,
	combout => \inst3|display_counter[4]~39_combout\,
	cout => \inst3|display_counter[4]~40\);

-- Location: FF_X31_Y29_N11
\inst3|display_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[4]~39_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(4));

-- Location: LCCOMB_X31_Y29_N12
\inst3|display_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[5]~41_combout\ = (\inst3|display_counter\(5) & (!\inst3|display_counter[4]~40\)) # (!\inst3|display_counter\(5) & ((\inst3|display_counter[4]~40\) # (GND)))
-- \inst3|display_counter[5]~42\ = CARRY((!\inst3|display_counter[4]~40\) # (!\inst3|display_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(5),
	datad => VCC,
	cin => \inst3|display_counter[4]~40\,
	combout => \inst3|display_counter[5]~41_combout\,
	cout => \inst3|display_counter[5]~42\);

-- Location: FF_X31_Y29_N13
\inst3|display_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[5]~41_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(5));

-- Location: LCCOMB_X31_Y29_N14
\inst3|display_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[6]~43_combout\ = (\inst3|display_counter\(6) & (\inst3|display_counter[5]~42\ $ (GND))) # (!\inst3|display_counter\(6) & (!\inst3|display_counter[5]~42\ & VCC))
-- \inst3|display_counter[6]~44\ = CARRY((\inst3|display_counter\(6) & !\inst3|display_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(6),
	datad => VCC,
	cin => \inst3|display_counter[5]~42\,
	combout => \inst3|display_counter[6]~43_combout\,
	cout => \inst3|display_counter[6]~44\);

-- Location: FF_X31_Y29_N15
\inst3|display_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[6]~43_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(6));

-- Location: LCCOMB_X31_Y29_N16
\inst3|display_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[7]~45_combout\ = (\inst3|display_counter\(7) & (!\inst3|display_counter[6]~44\)) # (!\inst3|display_counter\(7) & ((\inst3|display_counter[6]~44\) # (GND)))
-- \inst3|display_counter[7]~46\ = CARRY((!\inst3|display_counter[6]~44\) # (!\inst3|display_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(7),
	datad => VCC,
	cin => \inst3|display_counter[6]~44\,
	combout => \inst3|display_counter[7]~45_combout\,
	cout => \inst3|display_counter[7]~46\);

-- Location: FF_X31_Y29_N17
\inst3|display_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[7]~45_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(7));

-- Location: LCCOMB_X31_Y29_N18
\inst3|display_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[8]~47_combout\ = (\inst3|display_counter\(8) & (\inst3|display_counter[7]~46\ $ (GND))) # (!\inst3|display_counter\(8) & (!\inst3|display_counter[7]~46\ & VCC))
-- \inst3|display_counter[8]~48\ = CARRY((\inst3|display_counter\(8) & !\inst3|display_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(8),
	datad => VCC,
	cin => \inst3|display_counter[7]~46\,
	combout => \inst3|display_counter[8]~47_combout\,
	cout => \inst3|display_counter[8]~48\);

-- Location: FF_X31_Y29_N19
\inst3|display_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[8]~47_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(8));

-- Location: LCCOMB_X31_Y29_N20
\inst3|display_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[9]~49_combout\ = (\inst3|display_counter\(9) & (!\inst3|display_counter[8]~48\)) # (!\inst3|display_counter\(9) & ((\inst3|display_counter[8]~48\) # (GND)))
-- \inst3|display_counter[9]~50\ = CARRY((!\inst3|display_counter[8]~48\) # (!\inst3|display_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(9),
	datad => VCC,
	cin => \inst3|display_counter[8]~48\,
	combout => \inst3|display_counter[9]~49_combout\,
	cout => \inst3|display_counter[9]~50\);

-- Location: FF_X31_Y29_N21
\inst3|display_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[9]~49_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(9));

-- Location: LCCOMB_X31_Y29_N22
\inst3|display_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[10]~51_combout\ = (\inst3|display_counter\(10) & (\inst3|display_counter[9]~50\ $ (GND))) # (!\inst3|display_counter\(10) & (!\inst3|display_counter[9]~50\ & VCC))
-- \inst3|display_counter[10]~52\ = CARRY((\inst3|display_counter\(10) & !\inst3|display_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(10),
	datad => VCC,
	cin => \inst3|display_counter[9]~50\,
	combout => \inst3|display_counter[10]~51_combout\,
	cout => \inst3|display_counter[10]~52\);

-- Location: FF_X31_Y29_N23
\inst3|display_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[10]~51_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(10));

-- Location: LCCOMB_X31_Y29_N24
\inst3|display_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[11]~53_combout\ = (\inst3|display_counter\(11) & (!\inst3|display_counter[10]~52\)) # (!\inst3|display_counter\(11) & ((\inst3|display_counter[10]~52\) # (GND)))
-- \inst3|display_counter[11]~54\ = CARRY((!\inst3|display_counter[10]~52\) # (!\inst3|display_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(11),
	datad => VCC,
	cin => \inst3|display_counter[10]~52\,
	combout => \inst3|display_counter[11]~53_combout\,
	cout => \inst3|display_counter[11]~54\);

-- Location: FF_X31_Y29_N25
\inst3|display_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[11]~53_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(11));

-- Location: LCCOMB_X31_Y29_N26
\inst3|display_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[12]~55_combout\ = (\inst3|display_counter\(12) & (\inst3|display_counter[11]~54\ $ (GND))) # (!\inst3|display_counter\(12) & (!\inst3|display_counter[11]~54\ & VCC))
-- \inst3|display_counter[12]~56\ = CARRY((\inst3|display_counter\(12) & !\inst3|display_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(12),
	datad => VCC,
	cin => \inst3|display_counter[11]~54\,
	combout => \inst3|display_counter[12]~55_combout\,
	cout => \inst3|display_counter[12]~56\);

-- Location: FF_X31_Y29_N27
\inst3|display_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[12]~55_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(12));

-- Location: LCCOMB_X31_Y29_N28
\inst3|display_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[13]~57_combout\ = (\inst3|display_counter\(13) & (!\inst3|display_counter[12]~56\)) # (!\inst3|display_counter\(13) & ((\inst3|display_counter[12]~56\) # (GND)))
-- \inst3|display_counter[13]~58\ = CARRY((!\inst3|display_counter[12]~56\) # (!\inst3|display_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(13),
	datad => VCC,
	cin => \inst3|display_counter[12]~56\,
	combout => \inst3|display_counter[13]~57_combout\,
	cout => \inst3|display_counter[13]~58\);

-- Location: FF_X31_Y29_N29
\inst3|display_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[13]~57_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(13));

-- Location: LCCOMB_X31_Y29_N30
\inst3|display_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[14]~59_combout\ = (\inst3|display_counter\(14) & (\inst3|display_counter[13]~58\ $ (GND))) # (!\inst3|display_counter\(14) & (!\inst3|display_counter[13]~58\ & VCC))
-- \inst3|display_counter[14]~60\ = CARRY((\inst3|display_counter\(14) & !\inst3|display_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(14),
	datad => VCC,
	cin => \inst3|display_counter[13]~58\,
	combout => \inst3|display_counter[14]~59_combout\,
	cout => \inst3|display_counter[14]~60\);

-- Location: FF_X31_Y29_N31
\inst3|display_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[14]~59_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(14));

-- Location: LCCOMB_X31_Y28_N0
\inst3|display_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[15]~61_combout\ = (\inst3|display_counter\(15) & (!\inst3|display_counter[14]~60\)) # (!\inst3|display_counter\(15) & ((\inst3|display_counter[14]~60\) # (GND)))
-- \inst3|display_counter[15]~62\ = CARRY((!\inst3|display_counter[14]~60\) # (!\inst3|display_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(15),
	datad => VCC,
	cin => \inst3|display_counter[14]~60\,
	combout => \inst3|display_counter[15]~61_combout\,
	cout => \inst3|display_counter[15]~62\);

-- Location: FF_X31_Y28_N1
\inst3|display_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[15]~61_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(15));

-- Location: LCCOMB_X31_Y28_N2
\inst3|display_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[16]~63_combout\ = (\inst3|display_counter\(16) & (\inst3|display_counter[15]~62\ $ (GND))) # (!\inst3|display_counter\(16) & (!\inst3|display_counter[15]~62\ & VCC))
-- \inst3|display_counter[16]~64\ = CARRY((\inst3|display_counter\(16) & !\inst3|display_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(16),
	datad => VCC,
	cin => \inst3|display_counter[15]~62\,
	combout => \inst3|display_counter[16]~63_combout\,
	cout => \inst3|display_counter[16]~64\);

-- Location: FF_X31_Y28_N3
\inst3|display_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[16]~63_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(16));

-- Location: LCCOMB_X31_Y28_N4
\inst3|display_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[17]~65_combout\ = (\inst3|display_counter\(17) & (!\inst3|display_counter[16]~64\)) # (!\inst3|display_counter\(17) & ((\inst3|display_counter[16]~64\) # (GND)))
-- \inst3|display_counter[17]~66\ = CARRY((!\inst3|display_counter[16]~64\) # (!\inst3|display_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(17),
	datad => VCC,
	cin => \inst3|display_counter[16]~64\,
	combout => \inst3|display_counter[17]~65_combout\,
	cout => \inst3|display_counter[17]~66\);

-- Location: FF_X31_Y28_N5
\inst3|display_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[17]~65_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(17));

-- Location: LCCOMB_X31_Y28_N6
\inst3|display_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[18]~67_combout\ = (\inst3|display_counter\(18) & (\inst3|display_counter[17]~66\ $ (GND))) # (!\inst3|display_counter\(18) & (!\inst3|display_counter[17]~66\ & VCC))
-- \inst3|display_counter[18]~68\ = CARRY((\inst3|display_counter\(18) & !\inst3|display_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(18),
	datad => VCC,
	cin => \inst3|display_counter[17]~66\,
	combout => \inst3|display_counter[18]~67_combout\,
	cout => \inst3|display_counter[18]~68\);

-- Location: FF_X31_Y28_N7
\inst3|display_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[18]~67_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(18));

-- Location: LCCOMB_X31_Y28_N8
\inst3|display_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[19]~69_combout\ = (\inst3|display_counter\(19) & (!\inst3|display_counter[18]~68\)) # (!\inst3|display_counter\(19) & ((\inst3|display_counter[18]~68\) # (GND)))
-- \inst3|display_counter[19]~70\ = CARRY((!\inst3|display_counter[18]~68\) # (!\inst3|display_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(19),
	datad => VCC,
	cin => \inst3|display_counter[18]~68\,
	combout => \inst3|display_counter[19]~69_combout\,
	cout => \inst3|display_counter[19]~70\);

-- Location: FF_X31_Y28_N9
\inst3|display_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[19]~69_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(19));

-- Location: LCCOMB_X31_Y28_N10
\inst3|display_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[20]~71_combout\ = (\inst3|display_counter\(20) & (\inst3|display_counter[19]~70\ $ (GND))) # (!\inst3|display_counter\(20) & (!\inst3|display_counter[19]~70\ & VCC))
-- \inst3|display_counter[20]~72\ = CARRY((\inst3|display_counter\(20) & !\inst3|display_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(20),
	datad => VCC,
	cin => \inst3|display_counter[19]~70\,
	combout => \inst3|display_counter[20]~71_combout\,
	cout => \inst3|display_counter[20]~72\);

-- Location: FF_X31_Y28_N11
\inst3|display_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[20]~71_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(20));

-- Location: LCCOMB_X31_Y28_N12
\inst3|display_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[21]~73_combout\ = (\inst3|display_counter\(21) & (!\inst3|display_counter[20]~72\)) # (!\inst3|display_counter\(21) & ((\inst3|display_counter[20]~72\) # (GND)))
-- \inst3|display_counter[21]~74\ = CARRY((!\inst3|display_counter[20]~72\) # (!\inst3|display_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(21),
	datad => VCC,
	cin => \inst3|display_counter[20]~72\,
	combout => \inst3|display_counter[21]~73_combout\,
	cout => \inst3|display_counter[21]~74\);

-- Location: FF_X31_Y28_N13
\inst3|display_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[21]~73_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(21));

-- Location: LCCOMB_X31_Y28_N14
\inst3|display_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[22]~75_combout\ = (\inst3|display_counter\(22) & (\inst3|display_counter[21]~74\ $ (GND))) # (!\inst3|display_counter\(22) & (!\inst3|display_counter[21]~74\ & VCC))
-- \inst3|display_counter[22]~76\ = CARRY((\inst3|display_counter\(22) & !\inst3|display_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(22),
	datad => VCC,
	cin => \inst3|display_counter[21]~74\,
	combout => \inst3|display_counter[22]~75_combout\,
	cout => \inst3|display_counter[22]~76\);

-- Location: FF_X31_Y28_N15
\inst3|display_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[22]~75_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(22));

-- Location: LCCOMB_X31_Y28_N16
\inst3|display_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[23]~77_combout\ = (\inst3|display_counter\(23) & (!\inst3|display_counter[22]~76\)) # (!\inst3|display_counter\(23) & ((\inst3|display_counter[22]~76\) # (GND)))
-- \inst3|display_counter[23]~78\ = CARRY((!\inst3|display_counter[22]~76\) # (!\inst3|display_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(23),
	datad => VCC,
	cin => \inst3|display_counter[22]~76\,
	combout => \inst3|display_counter[23]~77_combout\,
	cout => \inst3|display_counter[23]~78\);

-- Location: FF_X31_Y28_N17
\inst3|display_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[23]~77_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(23));

-- Location: LCCOMB_X31_Y28_N18
\inst3|display_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[24]~79_combout\ = (\inst3|display_counter\(24) & (\inst3|display_counter[23]~78\ $ (GND))) # (!\inst3|display_counter\(24) & (!\inst3|display_counter[23]~78\ & VCC))
-- \inst3|display_counter[24]~80\ = CARRY((\inst3|display_counter\(24) & !\inst3|display_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(24),
	datad => VCC,
	cin => \inst3|display_counter[23]~78\,
	combout => \inst3|display_counter[24]~79_combout\,
	cout => \inst3|display_counter[24]~80\);

-- Location: FF_X31_Y28_N19
\inst3|display_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[24]~79_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(24));

-- Location: LCCOMB_X31_Y28_N20
\inst3|display_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[25]~81_combout\ = (\inst3|display_counter\(25) & (!\inst3|display_counter[24]~80\)) # (!\inst3|display_counter\(25) & ((\inst3|display_counter[24]~80\) # (GND)))
-- \inst3|display_counter[25]~82\ = CARRY((!\inst3|display_counter[24]~80\) # (!\inst3|display_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(25),
	datad => VCC,
	cin => \inst3|display_counter[24]~80\,
	combout => \inst3|display_counter[25]~81_combout\,
	cout => \inst3|display_counter[25]~82\);

-- Location: FF_X31_Y28_N21
\inst3|display_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[25]~81_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(25));

-- Location: LCCOMB_X31_Y28_N22
\inst3|display_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[26]~83_combout\ = (\inst3|display_counter\(26) & (\inst3|display_counter[25]~82\ $ (GND))) # (!\inst3|display_counter\(26) & (!\inst3|display_counter[25]~82\ & VCC))
-- \inst3|display_counter[26]~84\ = CARRY((\inst3|display_counter\(26) & !\inst3|display_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(26),
	datad => VCC,
	cin => \inst3|display_counter[25]~82\,
	combout => \inst3|display_counter[26]~83_combout\,
	cout => \inst3|display_counter[26]~84\);

-- Location: FF_X31_Y28_N23
\inst3|display_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[26]~83_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(26));

-- Location: LCCOMB_X31_Y28_N24
\inst3|display_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[27]~85_combout\ = (\inst3|display_counter\(27) & (!\inst3|display_counter[26]~84\)) # (!\inst3|display_counter\(27) & ((\inst3|display_counter[26]~84\) # (GND)))
-- \inst3|display_counter[27]~86\ = CARRY((!\inst3|display_counter[26]~84\) # (!\inst3|display_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(27),
	datad => VCC,
	cin => \inst3|display_counter[26]~84\,
	combout => \inst3|display_counter[27]~85_combout\,
	cout => \inst3|display_counter[27]~86\);

-- Location: FF_X31_Y28_N25
\inst3|display_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[27]~85_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(27));

-- Location: LCCOMB_X31_Y28_N26
\inst3|display_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[28]~87_combout\ = (\inst3|display_counter\(28) & (\inst3|display_counter[27]~86\ $ (GND))) # (!\inst3|display_counter\(28) & (!\inst3|display_counter[27]~86\ & VCC))
-- \inst3|display_counter[28]~88\ = CARRY((\inst3|display_counter\(28) & !\inst3|display_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(28),
	datad => VCC,
	cin => \inst3|display_counter[27]~86\,
	combout => \inst3|display_counter[28]~87_combout\,
	cout => \inst3|display_counter[28]~88\);

-- Location: FF_X31_Y28_N27
\inst3|display_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[28]~87_combout\,
	asdata => VCC,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(28));

-- Location: LCCOMB_X31_Y28_N28
\inst3|display_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[29]~89_combout\ = (\inst3|display_counter\(29) & (!\inst3|display_counter[28]~88\)) # (!\inst3|display_counter\(29) & ((\inst3|display_counter[28]~88\) # (GND)))
-- \inst3|display_counter[29]~90\ = CARRY((!\inst3|display_counter[28]~88\) # (!\inst3|display_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|display_counter\(29),
	datad => VCC,
	cin => \inst3|display_counter[28]~88\,
	combout => \inst3|display_counter[29]~89_combout\,
	cout => \inst3|display_counter[29]~90\);

-- Location: FF_X31_Y28_N29
\inst3|display_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[29]~89_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(29));

-- Location: LCCOMB_X30_Y28_N30
\inst3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = (!\inst3|display_counter\(26) & (!\inst3|display_counter\(27) & (!\inst3|display_counter\(28) & !\inst3|display_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(26),
	datab => \inst3|display_counter\(27),
	datac => \inst3|display_counter\(28),
	datad => \inst3|display_counter\(29),
	combout => \inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y28_N30
\inst3|display_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_counter[30]~91_combout\ = \inst3|display_counter\(30) $ (!\inst3|display_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(30),
	cin => \inst3|display_counter[29]~90\,
	combout => \inst3|display_counter[30]~91_combout\);

-- Location: FF_X31_Y28_N31
\inst3|display_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_counter[30]~91_combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_counter\(30));

-- Location: LCCOMB_X30_Y28_N26
\inst3|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~5_combout\ = (((!\inst3|display_counter\(20)) # (!\inst3|display_counter\(21))) # (!\inst3|display_counter\(22))) # (!\inst3|display_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(19),
	datab => \inst3|display_counter\(22),
	datac => \inst3|display_counter\(21),
	datad => \inst3|display_counter\(20),
	combout => \inst3|LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y29_N0
\inst3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~2_combout\ = (!\inst3|display_counter\(10) & (!\inst3|display_counter\(7) & (!\inst3|display_counter\(9) & !\inst3|display_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(10),
	datab => \inst3|display_counter\(7),
	datac => \inst3|display_counter\(9),
	datad => \inst3|display_counter\(8),
	combout => \inst3|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y28_N28
\inst3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~1_combout\ = (((!\inst3|display_counter\(13)) # (!\inst3|display_counter\(14))) # (!\inst3|display_counter\(12))) # (!\inst3|display_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(15),
	datab => \inst3|display_counter\(12),
	datac => \inst3|display_counter\(14),
	datad => \inst3|display_counter\(13),
	combout => \inst3|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y28_N6
\inst3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~3_combout\ = (!\inst3|display_counter\(16) & ((\inst3|LessThan1~1_combout\) # ((!\inst3|display_counter\(11) & \inst3|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(16),
	datab => \inst3|display_counter\(11),
	datac => \inst3|LessThan1~2_combout\,
	datad => \inst3|LessThan1~1_combout\,
	combout => \inst3|LessThan1~3_combout\);

-- Location: LCCOMB_X30_Y28_N16
\inst3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~4_combout\ = (!\inst3|display_counter\(18) & ((\inst3|LessThan1~3_combout\) # (!\inst3|display_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_counter\(17),
	datac => \inst3|display_counter\(18),
	datad => \inst3|LessThan1~3_combout\,
	combout => \inst3|LessThan1~4_combout\);

-- Location: LCCOMB_X30_Y28_N12
\inst3|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~6_combout\ = (!\inst3|display_counter\(24) & ((\inst3|LessThan1~5_combout\) # ((\inst3|LessThan1~4_combout\) # (!\inst3|display_counter\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan1~5_combout\,
	datab => \inst3|display_counter\(24),
	datac => \inst3|display_counter\(23),
	datad => \inst3|LessThan1~4_combout\,
	combout => \inst3|LessThan1~6_combout\);

-- Location: LCCOMB_X30_Y28_N10
\inst3|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~7_combout\ = ((\inst3|display_counter\(30)) # ((\inst3|display_counter\(25) & !\inst3|LessThan1~6_combout\))) # (!\inst3|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan1~0_combout\,
	datab => \inst3|display_counter\(30),
	datac => \inst3|display_counter\(25),
	datad => \inst3|LessThan1~6_combout\,
	combout => \inst3|LessThan1~7_combout\);

-- Location: LCCOMB_X30_Y28_N20
\inst3|display_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|display_state~feeder_combout\ = \inst3|LessThan1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|LessThan1~7_combout\,
	combout => \inst3|display_state~feeder_combout\);

-- Location: FF_X30_Y28_N21
\inst3|display_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|display_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|display_state~q\);

-- Location: LCCOMB_X25_Y26_N30
\inst3|lcd_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~38_combout\ = (!\inst3|lineCount\(1) & !\inst3|lineCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|lineCount\(1),
	datad => \inst3|lineCount\(0),
	combout => \inst3|lcd_data~38_combout\);

-- Location: LCCOMB_X26_Y27_N0
\inst3|lcd_data~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~30_combout\ = (!\inst3|charCount\(3) & ((\inst3|charCount\(1) & (!\inst3|charCount\(2) & !\inst3|charCount\(0))) # (!\inst3|charCount\(1) & ((!\inst3|charCount\(0)) # (!\inst3|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~30_combout\);

-- Location: LCCOMB_X27_Y28_N12
\inst3|lcd_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~31_combout\ = (!\inst3|charCount\(4) & (\inst3|display_state~q\ & (!\inst3|lineCount~0_combout\ & \inst3|lcd_data~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|display_state~q\,
	datac => \inst3|lineCount~0_combout\,
	datad => \inst3|lcd_data~30_combout\,
	combout => \inst3|lcd_data~31_combout\);

-- Location: LCCOMB_X27_Y28_N30
\inst3|lcd_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~32_combout\ = (\inst3|charCount\(1) & (((\inst3|charCount\(3))))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(2) & ((\inst3|charCount\(3)))) # (!\inst3|charCount\(2) & (\inst3|charCount\(0) & !\inst3|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~32_combout\);

-- Location: LCCOMB_X27_Y28_N20
\inst3|lcd_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~37_combout\ = (\inst3|charCount\(0) & (!\inst3|charCount\(2) & (!\inst3|charCount\(1) & !\inst3|charCount\(3)))) # (!\inst3|charCount\(0) & (\inst3|charCount\(3) & (\inst3|charCount\(2) $ (\inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~37_combout\);

-- Location: LCCOMB_X26_Y26_N30
\inst3|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal14~0_combout\ = (!\inst3|charCount\(2) & (\inst3|charCount\(4) & !\inst3|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(4),
	datad => \inst3|charCount\(3),
	combout => \inst3|Equal14~0_combout\);

-- Location: LCCOMB_X26_Y26_N28
\inst3|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal11~0_combout\ = (\inst3|charCount\(3) & (\inst3|charCount\(2) & !\inst3|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(4),
	combout => \inst3|Equal11~0_combout\);

-- Location: LCCOMB_X26_Y26_N24
\inst3|lcd_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~34_combout\ = (\inst3|charCount\(0) & ((\inst3|Equal11~0_combout\) # ((!\inst3|charCount\(1) & \inst3|Equal14~0_combout\)))) # (!\inst3|charCount\(0) & ((\inst3|Equal14~0_combout\) # ((\inst3|charCount\(1) & \inst3|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(1),
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|Equal11~0_combout\,
	combout => \inst3|lcd_data~34_combout\);

-- Location: LCCOMB_X27_Y28_N24
\inst3|lcd_data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~33_combout\ = (\inst3|charCount\(0) & ((\inst3|charCount\(3)) # ((\inst3|charCount\(1)) # (!\inst3|charCount\(2))))) # (!\inst3|charCount\(0) & (\inst3|charCount\(3) $ (((!\inst3|charCount\(2) & \inst3|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(3),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~33_combout\);

-- Location: LCCOMB_X27_Y28_N2
\inst3|lcd_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~35_combout\ = (\inst3|charCount\(4) & (\inst3|lcd_data~34_combout\)) # (!\inst3|charCount\(4) & ((\inst3|lcd_data~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datac => \inst3|lcd_data~34_combout\,
	datad => \inst3|lcd_data~33_combout\,
	combout => \inst3|lcd_data~35_combout\);

-- Location: LCCOMB_X27_Y28_N0
\inst3|lcd_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~36_combout\ = (\inst3|lineCount\(1) & (((\inst3|lineCount\(0))))) # (!\inst3|lineCount\(1) & ((\inst3|lineCount\(0) & ((\inst3|lcd_data~35_combout\))) # (!\inst3|lineCount\(0) & (\inst3|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data\(6),
	datab => \inst3|lineCount\(1),
	datac => \inst3|lineCount\(0),
	datad => \inst3|lcd_data~35_combout\,
	combout => \inst3|lcd_data~36_combout\);

-- Location: LCCOMB_X27_Y28_N4
\inst3|lcd_data~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~180_combout\ = (\inst3|charCount\(4) & (((\inst3|lcd_data~34_combout\ & \inst3|lcd_data~36_combout\)))) # (!\inst3|charCount\(4) & (((!\inst3|lcd_data~36_combout\)) # (!\inst3|lcd_data~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lcd_data~37_combout\,
	datac => \inst3|lcd_data~34_combout\,
	datad => \inst3|lcd_data~36_combout\,
	combout => \inst3|lcd_data~180_combout\);

-- Location: LCCOMB_X27_Y28_N6
\inst3|lcd_data~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~181_combout\ = (\inst3|lineCount\(1) & (\inst3|lcd_data~180_combout\ & ((\inst3|lcd_data~36_combout\) # (!\inst3|lcd_data~32_combout\)))) # (!\inst3|lineCount\(1) & (((\inst3|lcd_data~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~32_combout\,
	datab => \inst3|lineCount\(1),
	datac => \inst3|lcd_data~180_combout\,
	datad => \inst3|lcd_data~36_combout\,
	combout => \inst3|lcd_data~181_combout\);

-- Location: LCCOMB_X27_Y28_N28
\inst3|lcd_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~39_combout\ = (\inst3|lcd_data~31_combout\) # ((!\inst3|display_state~q\ & (!\inst3|lcd_data~38_combout\ & \inst3|lcd_data~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~31_combout\,
	datab => \inst3|display_state~q\,
	datac => \inst3|lcd_data~38_combout\,
	datad => \inst3|lcd_data~181_combout\,
	combout => \inst3|lcd_data~39_combout\);

-- Location: LCCOMB_X27_Y28_N22
\inst3|lcd_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~40_combout\ = (\inst3|lcd_data~39_combout\) # ((\inst3|lcd_data~179_combout\ & (!\inst3|display_state~q\ & \inst3|lcd_data~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~179_combout\,
	datab => \inst3|display_state~q\,
	datac => \inst3|lcd_data~38_combout\,
	datad => \inst3|lcd_data~39_combout\,
	combout => \inst3|lcd_data~40_combout\);

-- Location: FF_X27_Y28_N23
\inst3|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(6));

-- Location: LCCOMB_X35_Y30_N16
\inst2|dataStorage[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[6]~0_combout\ = !\inst3|lcd_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|lcd_data\(6),
	combout => \inst2|dataStorage[6]~0_combout\);

-- Location: FF_X35_Y30_N17
\inst2|dataStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[6]~0_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(6));

-- Location: LCCOMB_X35_Y30_N22
\inst2|dataOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[6]~2_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(6))))) # (!\inst2|state.sendingAddress~q\ & (\inst2|state.sendingData~q\ & ((!\inst2|dataStorage\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|addressStorage\(6),
	datad => \inst2|dataStorage\(6),
	combout => \inst2|dataOut[6]~2_combout\);

-- Location: LCCOMB_X35_Y30_N6
\inst2|dataOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[6]~3_combout\ = (\inst2|dataOut[1]~1_combout\ & (\inst2|dataOut[6]~2_combout\ & !\inst2|state.init7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dataOut[1]~1_combout\,
	datac => \inst2|dataOut[6]~2_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[6]~3_combout\);

-- Location: LCCOMB_X27_Y27_N26
\inst3|lcd_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~51_combout\ = (!\inst3|charCount\(1) & (\inst3|charCount\(0) & (!\inst3|charCount\(3) & !\inst3|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~51_combout\);

-- Location: LCCOMB_X25_Y27_N2
\inst3|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal7~1_combout\ = (!\inst3|charCount\(2) & (!\inst3|charCount\(4) & \inst3|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(4),
	datad => \inst3|charCount\(3),
	combout => \inst3|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y26_N0
\inst3|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal7~0_combout\ = (!\inst3|charCount\(0) & \inst3|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|charCount\(0),
	datad => \inst3|charCount\(1),
	combout => \inst3|Equal7~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\inst3|lcd_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~50_combout\ = (!\inst3|display_state~q\ & (((!\inst3|Equal7~0_combout\) # (!\inst3|Equal7~1_combout\)) # (!\inst3|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(3),
	datab => \inst3|Equal7~1_combout\,
	datac => \inst3|Equal7~0_combout\,
	datad => \inst3|display_state~q\,
	combout => \inst3|lcd_data~50_combout\);

-- Location: LCCOMB_X27_Y27_N8
\inst3|lcd_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~52_combout\ = (!\inst3|lcd_data~51_combout\ & ((\inst3|lcd_data~50_combout\) # ((!\inst3|charCount\(1) & !\inst3|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|lcd_data~51_combout\,
	datad => \inst3|lcd_data~50_combout\,
	combout => \inst3|lcd_data~52_combout\);

-- Location: LCCOMB_X27_Y26_N18
\inst3|lcd_data~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~171_combout\ = (!\inst3|charCount\(3) & !\inst3|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(3),
	datad => \inst3|charCount\(4),
	combout => \inst3|lcd_data~171_combout\);

-- Location: LCCOMB_X27_Y26_N20
\inst3|lcd_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~42_combout\ = (\inst3|charCount\(0)) # ((\inst3|lineCount~0_combout\) # ((!\inst3|lcd_data~171_combout\) # (!\inst3|lcd_data~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|lineCount~0_combout\,
	datac => \inst3|lcd_data~41_combout\,
	datad => \inst3|lcd_data~171_combout\,
	combout => \inst3|lcd_data~42_combout\);

-- Location: LCCOMB_X27_Y27_N4
\inst3|lcd_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~43_combout\ = (\inst3|charCount\(4)) # ((\inst3|charCount\(0)) # ((\inst3|charCount\(3)) # (\inst3|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~43_combout\);

-- Location: LCCOMB_X27_Y27_N30
\inst3|lcd_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~44_combout\ = (\inst3|lineCount\(0) & (\inst3|charCount\(4))) # (!\inst3|lineCount\(0) & ((\inst3|lcd_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lcd_data\(5),
	datac => \inst3|lineCount\(0),
	combout => \inst3|lcd_data~44_combout\);

-- Location: LCCOMB_X27_Y28_N14
\inst3|lcd_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~45_combout\ = (\inst3|charCount\(3) & (!\inst3|charCount\(2) & (\inst3|charCount\(0) & \inst3|charCount\(1)))) # (!\inst3|charCount\(3) & ((\inst3|charCount\(2) & (\inst3|charCount\(0) & \inst3|charCount\(1))) # (!\inst3|charCount\(2) & 
-- ((\inst3|charCount\(0)) # (\inst3|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(3),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(0),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~45_combout\);

-- Location: LCCOMB_X27_Y28_N10
\inst3|lcd_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~46_combout\ = (\inst3|charCount\(3) & ((\inst3|charCount\(2) $ (!\inst3|charCount\(1))) # (!\inst3|charCount\(0)))) # (!\inst3|charCount\(3) & ((\inst3|charCount\(2)) # ((\inst3|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(3),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(0),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~46_combout\);

-- Location: LCCOMB_X27_Y28_N8
\inst3|lcd_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~47_combout\ = (\inst3|lineCount\(0) & ((\inst3|lineCount\(1) & ((!\inst3|lcd_data~46_combout\))) # (!\inst3|lineCount\(1) & (\inst3|lcd_data~45_combout\)))) # (!\inst3|lineCount\(0) & (((\inst3|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(0),
	datab => \inst3|lcd_data~45_combout\,
	datac => \inst3|lineCount\(1),
	datad => \inst3|lcd_data~46_combout\,
	combout => \inst3|lcd_data~47_combout\);

-- Location: LCCOMB_X27_Y27_N24
\inst3|lcd_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~48_combout\ = (\inst3|lineCount\(0) & (((\inst3|lcd_data~44_combout\) # (!\inst3|lcd_data~47_combout\)))) # (!\inst3|lineCount\(0) & ((\inst3|lcd_data~47_combout\ & (\inst3|lcd_data~43_combout\)) # (!\inst3|lcd_data~47_combout\ & 
-- ((\inst3|lcd_data~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(0),
	datab => \inst3|lcd_data~43_combout\,
	datac => \inst3|lcd_data~44_combout\,
	datad => \inst3|lcd_data~47_combout\,
	combout => \inst3|lcd_data~48_combout\);

-- Location: LCCOMB_X27_Y27_N18
\inst3|lcd_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~49_combout\ = (\inst3|display_state~q\ & (\inst3|lcd_data~42_combout\)) # (!\inst3|display_state~q\ & (((!\inst3|lcd_data~38_combout\ & \inst3|lcd_data~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~42_combout\,
	datac => \inst3|lcd_data~38_combout\,
	datad => \inst3|lcd_data~48_combout\,
	combout => \inst3|lcd_data~49_combout\);

-- Location: LCCOMB_X27_Y27_N16
\inst3|lcd_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~53_combout\ = (\inst3|lcd_data~49_combout\) # ((\inst3|lcd_data~38_combout\ & ((\inst3|charCount\(4)) # (\inst3|lcd_data~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lcd_data~38_combout\,
	datac => \inst3|lcd_data~52_combout\,
	datad => \inst3|lcd_data~49_combout\,
	combout => \inst3|lcd_data~53_combout\);

-- Location: FF_X27_Y27_N17
\inst3|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(5));

-- Location: LCCOMB_X32_Y30_N26
\inst2|dataStorage[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[5]~1_combout\ = !\inst3|lcd_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|lcd_data\(5),
	combout => \inst2|dataStorage[5]~1_combout\);

-- Location: FF_X32_Y30_N27
\inst2|dataStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[5]~1_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(5));

-- Location: LCCOMB_X27_Y28_N18
\inst3|lcd_posX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_posX[4]~feeder_combout\ = \inst3|charCount\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|charCount\(4),
	combout => \inst3|lcd_posX[4]~feeder_combout\);

-- Location: FF_X27_Y28_N19
\inst3|lcd_posX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_posX[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posX\(4));

-- Location: FF_X27_Y28_N17
\inst3|lcd_posX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|charCount\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posX\(3));

-- Location: FF_X27_Y28_N27
\inst3|lcd_posX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|charCount\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posX\(2));

-- Location: FF_X27_Y28_N9
\inst3|lcd_posY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lineCount\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posY\(1));

-- Location: LCCOMB_X32_Y30_N8
\inst2|addressStorage~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~0_combout\ = (\inst3|lcd_posY\(1) & ((\inst3|lcd_posX\(4)) # ((\inst3|lcd_posX\(3) & \inst3|lcd_posX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_posX\(4),
	datab => \inst3|lcd_posX\(3),
	datac => \inst3|lcd_posX\(2),
	datad => \inst3|lcd_posY\(1),
	combout => \inst2|addressStorage~0_combout\);

-- Location: FF_X32_Y30_N9
\inst2|addressStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~0_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(5));

-- Location: LCCOMB_X32_Y30_N0
\inst2|dataOut[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[5]~4_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(5))))) # (!\inst2|state.sendingAddress~q\ & (!\inst2|dataStorage\(5) & (\inst2|state.sendingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataStorage\(5),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|addressStorage\(5),
	datad => \inst2|state.sendingAddress~q\,
	combout => \inst2|dataOut[5]~4_combout\);

-- Location: LCCOMB_X35_Y30_N20
\inst2|dataOut[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[2]~5_combout\ = (\inst2|state.init7~q\) # (!\inst2|dataOut[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dataOut[1]~1_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[2]~5_combout\);

-- Location: LCCOMB_X35_Y30_N26
\inst2|dataOut[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[5]~6_combout\ = (\inst2|state.init0~q\ & (((\inst2|dataOut[5]~4_combout\ & !\inst2|dataOut[2]~5_combout\)) # (!\inst2|dataOut[1]~0_combout\))) # (!\inst2|state.init0~q\ & (\inst2|dataOut[5]~4_combout\ & ((!\inst2|dataOut[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init0~q\,
	datab => \inst2|dataOut[5]~4_combout\,
	datac => \inst2|dataOut[1]~0_combout\,
	datad => \inst2|dataOut[2]~5_combout\,
	combout => \inst2|dataOut[5]~6_combout\);

-- Location: LCCOMB_X32_Y30_N30
\inst2|addressStorage~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~1_combout\ = \inst3|lcd_posX\(4) $ (((\inst3|lcd_posY\(1) & ((!\inst3|lcd_posX\(2)) # (!\inst3|lcd_posX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_posX\(4),
	datab => \inst3|lcd_posX\(3),
	datac => \inst3|lcd_posX\(2),
	datad => \inst3|lcd_posY\(1),
	combout => \inst2|addressStorage~1_combout\);

-- Location: FF_X32_Y30_N31
\inst2|addressStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~1_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(4));

-- Location: LCCOMB_X26_Y27_N14
\inst3|lcd_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~16_combout\ = (\inst3|charCount\(0) & ((\inst3|charCount\(2) & (!\inst3|charCount\(3))) # (!\inst3|charCount\(2) & ((\inst3|charCount\(1)))))) # (!\inst3|charCount\(0) & (((\inst3|charCount\(3) & \inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~16_combout\);

-- Location: LCCOMB_X27_Y27_N22
\inst3|lcd_data~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~168_combout\ = (\inst3|charCount\(4) & (\inst3|lcd_data~51_combout\)) # (!\inst3|charCount\(4) & ((\inst3|lcd_data~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datac => \inst3|lcd_data~51_combout\,
	datad => \inst3|lcd_data~16_combout\,
	combout => \inst3|lcd_data~168_combout\);

-- Location: LCCOMB_X27_Y26_N4
\inst3|lcd_data~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~169_combout\ = (\inst3|charCount\(3) & (\inst3|charCount\(2) $ (((\inst3|charCount\(0)) # (\inst3|charCount\(1)))))) # (!\inst3|charCount\(3) & (((\inst3|charCount\(2) & !\inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~169_combout\);

-- Location: LCCOMB_X27_Y26_N26
\inst3|lcd_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~54_combout\ = (!\inst3|lineCount~0_combout\ & (!\inst3|charCount\(4) & (\inst3|lcd_data~169_combout\ & \inst3|display_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount~0_combout\,
	datab => \inst3|charCount\(4),
	datac => \inst3|lcd_data~169_combout\,
	datad => \inst3|display_state~q\,
	combout => \inst3|lcd_data~54_combout\);

-- Location: LCCOMB_X27_Y27_N10
\inst3|lcd_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~61_combout\ = (\inst3|charCount\(1) & ((\inst3|charCount\(0)) # ((\inst3|charCount\(3)) # (\inst3|charCount\(2))))) # (!\inst3|charCount\(1) & (\inst3|charCount\(2) $ (((\inst3|charCount\(0) & !\inst3|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~61_combout\);

-- Location: LCCOMB_X27_Y27_N20
\inst3|lcd_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~62_combout\ = (\inst3|charCount\(4) & (\inst3|Equal14~0_combout\ & (\inst3|Equal7~0_combout\))) # (!\inst3|charCount\(4) & (((\inst3|Equal14~0_combout\ & \inst3|Equal7~0_combout\)) # (!\inst3|lcd_data~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|Equal14~0_combout\,
	datac => \inst3|Equal7~0_combout\,
	datad => \inst3|lcd_data~61_combout\,
	combout => \inst3|lcd_data~62_combout\);

-- Location: LCCOMB_X26_Y26_N8
\inst3|lcd_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~56_combout\ = (!\inst3|charCount\(4) & (\inst3|charCount\(2) $ (\inst3|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(4),
	combout => \inst3|lcd_data~56_combout\);

-- Location: LCCOMB_X26_Y26_N22
\inst3|lcd_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~55_combout\ = (!\inst3|charCount\(1) & !\inst3|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~55_combout\);

-- Location: LCCOMB_X26_Y26_N2
\inst3|lcd_data~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~172_combout\ = (!\inst3|charCount\(4) & (!\inst3|charCount\(2) & ((\inst3|lcd_data~55_combout\) # (!\inst3|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|charCount\(2),
	datac => \inst3|lcd_data~55_combout\,
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~172_combout\);

-- Location: LCCOMB_X26_Y26_N10
\inst3|lcd_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~57_combout\ = (\inst3|charCount\(0) & (\inst3|charCount\(1) & ((\inst3|lcd_data~172_combout\)))) # (!\inst3|charCount\(0) & (!\inst3|charCount\(1) & (\inst3|lcd_data~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(1),
	datac => \inst3|lcd_data~56_combout\,
	datad => \inst3|lcd_data~172_combout\,
	combout => \inst3|lcd_data~57_combout\);

-- Location: LCCOMB_X27_Y26_N0
\inst3|lcd_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~58_combout\ = (\inst3|charCount\(3) & (!\inst3|charCount\(0) & (\inst3|charCount\(2) & !\inst3|charCount\(1)))) # (!\inst3|charCount\(3) & (\inst3|charCount\(1) & (\inst3|charCount\(0) $ (!\inst3|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~58_combout\);

-- Location: LCCOMB_X27_Y27_N14
\inst3|lcd_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~59_combout\ = (\inst3|charCount\(4) & (((\inst3|Equal14~0_combout\ & !\inst3|charCount\(1))))) # (!\inst3|charCount\(4) & ((\inst3|lcd_data~58_combout\) # ((\inst3|Equal14~0_combout\ & !\inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lcd_data~58_combout\,
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~59_combout\);

-- Location: LCCOMB_X27_Y27_N0
\inst3|lcd_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~60_combout\ = (\inst3|lineCount\(0) & (((\inst3|lcd_data~59_combout\) # (\inst3|lineCount\(1))))) # (!\inst3|lineCount\(0) & (\inst3|lcd_data\(4) & ((!\inst3|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(0),
	datab => \inst3|lcd_data\(4),
	datac => \inst3|lcd_data~59_combout\,
	datad => \inst3|lineCount\(1),
	combout => \inst3|lcd_data~60_combout\);

-- Location: LCCOMB_X27_Y27_N6
\inst3|lcd_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~63_combout\ = (\inst3|lineCount\(1) & ((\inst3|lcd_data~60_combout\ & (\inst3|lcd_data~62_combout\)) # (!\inst3|lcd_data~60_combout\ & ((\inst3|lcd_data~57_combout\))))) # (!\inst3|lineCount\(1) & (((\inst3|lcd_data~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(1),
	datab => \inst3|lcd_data~62_combout\,
	datac => \inst3|lcd_data~57_combout\,
	datad => \inst3|lcd_data~60_combout\,
	combout => \inst3|lcd_data~63_combout\);

-- Location: LCCOMB_X27_Y27_N28
\inst3|lcd_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~64_combout\ = (\inst3|lcd_data~54_combout\) # ((!\inst3|display_state~q\ & (!\inst3|lcd_data~38_combout\ & \inst3|lcd_data~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~38_combout\,
	datac => \inst3|lcd_data~54_combout\,
	datad => \inst3|lcd_data~63_combout\,
	combout => \inst3|lcd_data~64_combout\);

-- Location: LCCOMB_X27_Y27_N2
\inst3|lcd_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~65_combout\ = (\inst3|lcd_data~64_combout\) # ((!\inst3|display_state~q\ & (\inst3|lcd_data~38_combout\ & \inst3|lcd_data~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~38_combout\,
	datac => \inst3|lcd_data~168_combout\,
	datad => \inst3|lcd_data~64_combout\,
	combout => \inst3|lcd_data~65_combout\);

-- Location: FF_X27_Y27_N3
\inst3|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(4));

-- Location: FF_X32_Y30_N25
\inst2|dataStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lcd_data\(4),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(4));

-- Location: LCCOMB_X32_Y30_N24
\inst2|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[4]~7_combout\ = (\inst2|state.sendingAddress~q\ & (\inst2|addressStorage\(4))) # (!\inst2|state.sendingAddress~q\ & (((\inst2|state.sendingData~q\ & \inst2|dataStorage\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addressStorage\(4),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|dataStorage\(4),
	datad => \inst2|state.sendingAddress~q\,
	combout => \inst2|dataOut[4]~7_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst2|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[4]~8_combout\ = (\inst2|state.init0~q\ & (((!\inst2|dataOut[2]~5_combout\ & \inst2|dataOut[4]~7_combout\)) # (!\inst2|dataOut[1]~0_combout\))) # (!\inst2|state.init0~q\ & (!\inst2|dataOut[2]~5_combout\ & ((\inst2|dataOut[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init0~q\,
	datab => \inst2|dataOut[2]~5_combout\,
	datac => \inst2|dataOut[1]~0_combout\,
	datad => \inst2|dataOut[4]~7_combout\,
	combout => \inst2|dataOut[4]~8_combout\);

-- Location: LCCOMB_X35_Y30_N10
\inst2|dataOut[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~9_combout\ = (\inst2|state.init0~q\ & ((\inst2|state.init5~q\) # (!\inst2|dataOut[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init0~q\,
	datab => \inst2|dataOut[1]~0_combout\,
	datac => \inst2|state.init5~q\,
	combout => \inst2|dataOut[3]~9_combout\);

-- Location: LCCOMB_X32_Y30_N22
\inst2|addressStorage~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~2_combout\ = \inst3|lcd_posX\(3) $ (((\inst3|lcd_posY\(1) & \inst3|lcd_posX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_posY\(1),
	datac => \inst3|lcd_posX\(2),
	datad => \inst3|lcd_posX\(3),
	combout => \inst2|addressStorage~2_combout\);

-- Location: FF_X32_Y30_N23
\inst2|addressStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~2_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(3));

-- Location: LCCOMB_X25_Y27_N22
\inst3|lcd_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~67_combout\ = (\inst3|charCount\(3) & !\inst3|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~67_combout\);

-- Location: LCCOMB_X23_Y25_N16
\inst3|converterX|state.s0_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state.s0_s~0_combout\ = !\inst3|converterX|state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|state.s0~q\,
	combout => \inst3|converterX|state.s0_s~0_combout\);

-- Location: FF_X23_Y25_N17
\inst3|converterX|state.s0_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|state.s0_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s0_s~q\);

-- Location: LCCOMB_X23_Y25_N18
\inst3|converterX|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~21_combout\ = \inst3|converterX|state.s0~q\ $ (((\inst3|converterX|state.s0_s~q\ & \inst3|converterX|state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s0~q\,
	datab => \inst3|converterX|state.s0_s~q\,
	datad => \inst3|converterX|state~19_combout\,
	combout => \inst3|converterX|state~21_combout\);

-- Location: LCCOMB_X23_Y25_N22
\inst3|converterX|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~22_combout\ = (\inst3|converterX|state~21_combout\ & (((\inst3|converterX|state.s4~q\)))) # (!\inst3|converterX|state~21_combout\ & (\inst3|converterX|state.s3~q\ & (!\inst3|converterX|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s3~q\,
	datab => \inst3|converterX|state.s0~q\,
	datac => \inst3|converterX|state.s4~q\,
	datad => \inst3|converterX|state~21_combout\,
	combout => \inst3|converterX|state~22_combout\);

-- Location: FF_X23_Y25_N23
\inst3|converterX|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s4~q\);

-- Location: FF_X23_Y25_N1
\inst3|converterX|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|state.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s5~q\);

-- Location: LCCOMB_X21_Y25_N4
\inst3|converterX|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~0_combout\ = \inst3|converterX|number\(1) $ (VCC)
-- \inst3|converterX|Add5~1\ = CARRY(\inst3|converterX|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(1),
	datad => VCC,
	combout => \inst3|converterX|Add5~0_combout\,
	cout => \inst3|converterX|Add5~1\);

-- Location: LCCOMB_X23_Y25_N8
\inst3|converterX|number[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[9]~2_combout\ = ((\inst3|converterX|state.s2~q\ & !\inst3|converterX|state.s1~q\)) # (!\inst3|converterX|state.s0_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|state.s0_s~q\,
	datac => \inst3|converterX|state.s2~q\,
	datad => \inst3|converterX|state.s1~q\,
	combout => \inst3|converterX|number[9]~2_combout\);

-- Location: LCCOMB_X17_Y25_N6
\inst3|converterX|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~0_combout\ = \inst3|converterX|number\(3) $ (VCC)
-- \inst3|converterX|Add1~1\ = CARRY(\inst3|converterX|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(3),
	datad => VCC,
	combout => \inst3|converterX|Add1~0_combout\,
	cout => \inst3|converterX|Add1~1\);

-- Location: LCCOMB_X23_Y25_N2
\inst3|converterX|number[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[9]~1_combout\ = (\inst3|converterX|state.s0_s~q\ & !\inst3|converterX|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|state.s0_s~q\,
	datad => \inst3|converterX|state.s1~q\,
	combout => \inst3|converterX|number[9]~1_combout\);

-- Location: LCCOMB_X20_Y25_N4
\inst3|converterX|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|LessThan1~0_combout\ = (\inst3|converterX|number\(2)) # ((\inst3|converterX|number\(3)) # (\inst3|converterX|number\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(2),
	datab => \inst3|converterX|number\(3),
	datad => \inst3|converterX|number\(4),
	combout => \inst3|converterX|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y25_N14
\inst3|converterX|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|LessThan2~0_combout\ = (!\inst3|converterX|number\(7) & (!\inst3|converterX|number\(8) & (!\inst3|converterX|number\(9) & \inst3|converterX|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(7),
	datab => \inst3|converterX|number\(8),
	datac => \inst3|converterX|number\(9),
	datad => \inst3|converterX|digit_int_3~0_combout\,
	combout => \inst3|converterX|LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y25_N18
\inst3|converterX|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|LessThan1~1_combout\ = ((\inst3|converterX|number\(5) & (\inst3|converterX|number\(6) & \inst3|converterX|LessThan1~0_combout\))) # (!\inst3|converterX|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(5),
	datab => \inst3|converterX|number\(6),
	datac => \inst3|converterX|LessThan1~0_combout\,
	datad => \inst3|converterX|LessThan2~0_combout\,
	combout => \inst3|converterX|LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y25_N24
\inst3|converterX|number~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~5_combout\ = (!\inst3|converterX|state.s1~q\ & ((\inst3|converterX|state.s2~q\ & ((\inst3|converterX|LessThan1~1_combout\))) # (!\inst3|converterX|state.s2~q\ & (\inst3|converterX|number~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s2~q\,
	datab => \inst3|converterX|state.s1~q\,
	datac => \inst3|converterX|number~0_combout\,
	datad => \inst3|converterX|LessThan1~1_combout\,
	combout => \inst3|converterX|number~5_combout\);

-- Location: LCCOMB_X21_Y25_N6
\inst3|converterX|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~2_combout\ = (\inst3|converterX|number\(2) & (\inst3|converterX|Add5~1\ & VCC)) # (!\inst3|converterX|number\(2) & (!\inst3|converterX|Add5~1\))
-- \inst3|converterX|Add5~3\ = CARRY((!\inst3|converterX|number\(2) & !\inst3|converterX|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(2),
	datad => VCC,
	cin => \inst3|converterX|Add5~1\,
	combout => \inst3|converterX|Add5~2_combout\,
	cout => \inst3|converterX|Add5~3\);

-- Location: LCCOMB_X19_Y26_N8
\inst3|converterX|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~0_combout\ = \inst3|converterX|number\(2) $ (VCC)
-- \inst3|converterX|Add3~1\ = CARRY(\inst3|converterX|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(2),
	datad => VCC,
	combout => \inst3|converterX|Add3~0_combout\,
	cout => \inst3|converterX|Add3~1\);

-- Location: LCCOMB_X21_Y25_N0
\inst3|converterX|number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~8_combout\ = (\inst3|converterX|state.s2~q\ & ((\inst3|converterX|Add3~0_combout\))) # (!\inst3|converterX|state.s2~q\ & (\inst3|converterX|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add5~2_combout\,
	datac => \inst3|converterX|state.s2~q\,
	datad => \inst3|converterX|Add3~0_combout\,
	combout => \inst3|converterX|number~8_combout\);

-- Location: LCCOMB_X16_Y25_N30
\inst3|converterX|number[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[0]~feeder_combout\ = \inst3|converterX|number\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(0),
	combout => \inst3|converterX|number[0]~feeder_combout\);

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

-- Location: LCCOMB_X16_Y23_N24
\inst|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~8_combout\ = (\inst|transmission_count\(1) & \inst|transmission_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(0),
	combout => \inst|Decoder0~8_combout\);

-- Location: LCCOMB_X16_Y23_N0
\inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~3_combout\ = (\inst|transmission_count\(2) & (!\inst|transmission_count\(4) & (\inst|read_temp[1]~0_combout\ & \inst|transmission_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \inst|transmission_count\(4),
	datac => \inst|read_temp[1]~0_combout\,
	datad => \inst|transmission_count\(3),
	combout => \inst|Decoder0~3_combout\);

-- Location: LCCOMB_X16_Y23_N4
\inst|read_temp[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[0]~17_combout\ = (\inst|Decoder0~8_combout\ & ((\inst|Decoder0~3_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~3_combout\ & ((\inst|read_temp\(0)))))) # (!\inst|Decoder0~8_combout\ & (((\inst|read_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~input_o\,
	datab => \inst|Decoder0~8_combout\,
	datac => \inst|read_temp\(0),
	datad => \inst|Decoder0~3_combout\,
	combout => \inst|read_temp[0]~17_combout\);

-- Location: FF_X16_Y23_N5
\inst|read_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(0));

-- Location: LCCOMB_X16_Y26_N6
\inst|dataX[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[0]~feeder_combout\ = \inst|read_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(0),
	combout => \inst|dataX[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y23_N4
\inst|dataX[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[12]~0_combout\ = (\inst|transmission_count\(4) & (\inst|transmission_count\(3) & (\inst|Equal1~0_combout\ & \inst|state.readX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(4),
	datab => \inst|transmission_count\(3),
	datac => \inst|Equal1~0_combout\,
	datad => \inst|state.readX~q\,
	combout => \inst|dataX[12]~0_combout\);

-- Location: FF_X16_Y26_N7
\inst|dataX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[0]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(0));

-- Location: LCCOMB_X16_Y26_N4
\inst3|accX_v[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[0]~feeder_combout\ = \inst|dataX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(0),
	combout => \inst3|accX_v[0]~feeder_combout\);

-- Location: FF_X16_Y26_N5
\inst3|accX_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[0]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(0));

-- Location: FF_X16_Y25_N31
\inst3|converterX|number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[0]~feeder_combout\,
	asdata => \inst3|accX_v\(0),
	sload => \inst3|converterX|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(0));

-- Location: LCCOMB_X16_Y25_N0
\inst3|converterX|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~1_cout\ = CARRY(!\inst3|converterX|number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(0),
	datad => VCC,
	cout => \inst3|converterX|Add0~1_cout\);

-- Location: LCCOMB_X16_Y25_N2
\inst3|converterX|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~2_combout\ = (\inst3|converterX|number\(1) & (!\inst3|converterX|Add0~1_cout\)) # (!\inst3|converterX|number\(1) & (\inst3|converterX|Add0~1_cout\ & VCC))
-- \inst3|converterX|Add0~3\ = CARRY((\inst3|converterX|number\(1) & !\inst3|converterX|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(1),
	datad => VCC,
	cin => \inst3|converterX|Add0~1_cout\,
	combout => \inst3|converterX|Add0~2_combout\,
	cout => \inst3|converterX|Add0~3\);

-- Location: LCCOMB_X16_Y25_N4
\inst3|converterX|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~4_combout\ = (\inst3|converterX|number\(2) & (\inst3|converterX|Add0~3\ $ (GND))) # (!\inst3|converterX|number\(2) & ((GND) # (!\inst3|converterX|Add0~3\)))
-- \inst3|converterX|Add0~5\ = CARRY((!\inst3|converterX|Add0~3\) # (!\inst3|converterX|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(2),
	datad => VCC,
	cin => \inst3|converterX|Add0~3\,
	combout => \inst3|converterX|Add0~4_combout\,
	cout => \inst3|converterX|Add0~5\);

-- Location: LCCOMB_X18_Y25_N12
\inst3|converterX|number~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~9_combout\ = (\inst3|converterX|number\(12) & ((\inst3|converterX|state.s0_s~q\ & (\inst3|converterX|number\(2))) # (!\inst3|converterX|state.s0_s~q\ & ((\inst3|converterX|Add0~4_combout\))))) # (!\inst3|converterX|number\(12) & 
-- (\inst3|converterX|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(2),
	datab => \inst3|converterX|number\(12),
	datac => \inst3|converterX|Add0~4_combout\,
	datad => \inst3|converterX|state.s0_s~q\,
	combout => \inst3|converterX|number~9_combout\);

-- Location: LCCOMB_X19_Y25_N8
\inst3|converterX|number~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~10_combout\ = (\inst3|converterX|state.s0_s~q\ & ((\inst3|converterX|number~5_combout\ & (\inst3|converterX|number~8_combout\)) # (!\inst3|converterX|number~5_combout\ & ((\inst3|converterX|number~9_combout\))))) # 
-- (!\inst3|converterX|state.s0_s~q\ & (((\inst3|converterX|number~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s0_s~q\,
	datab => \inst3|converterX|number~5_combout\,
	datac => \inst3|converterX|number~8_combout\,
	datad => \inst3|converterX|number~9_combout\,
	combout => \inst3|converterX|number~10_combout\);

-- Location: LCCOMB_X20_Y25_N26
\inst3|converterX|number[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[2]~feeder_combout\ = \inst3|converterX|number~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~10_combout\,
	combout => \inst3|converterX|number[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N6
\inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (!\inst|transmission_count\(1) & \inst|transmission_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(0),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X16_Y23_N12
\inst|read_temp[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[2]~5_combout\ = (\inst|Equal2~2_combout\ & ((\inst|Decoder0~3_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~3_combout\ & ((\inst|read_temp\(2)))))) # (!\inst|Equal2~2_combout\ & (((\inst|read_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~input_o\,
	datab => \inst|Equal2~2_combout\,
	datac => \inst|read_temp\(2),
	datad => \inst|Decoder0~3_combout\,
	combout => \inst|read_temp[2]~5_combout\);

-- Location: FF_X16_Y23_N13
\inst|read_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(2));

-- Location: LCCOMB_X18_Y23_N10
\inst|dataX[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[2]~feeder_combout\ = \inst|read_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(2),
	combout => \inst|dataX[2]~feeder_combout\);

-- Location: FF_X18_Y23_N11
\inst|dataX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[2]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(2));

-- Location: LCCOMB_X18_Y23_N4
\inst3|accX_v[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[2]~feeder_combout\ = \inst|dataX\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(2),
	combout => \inst3|accX_v[2]~feeder_combout\);

-- Location: FF_X18_Y23_N5
\inst3|accX_v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[2]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(2));

-- Location: FF_X20_Y25_N27
\inst3|converterX|number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[2]~feeder_combout\,
	asdata => \inst3|accX_v\(2),
	sload => \inst3|converterX|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(2));

-- Location: LCCOMB_X16_Y25_N6
\inst3|converterX|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~6_combout\ = (\inst3|converterX|number\(3) & (!\inst3|converterX|Add0~5\)) # (!\inst3|converterX|number\(3) & (\inst3|converterX|Add0~5\ & VCC))
-- \inst3|converterX|Add0~7\ = CARRY((\inst3|converterX|number\(3) & !\inst3|converterX|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(3),
	datad => VCC,
	cin => \inst3|converterX|Add0~5\,
	combout => \inst3|converterX|Add0~6_combout\,
	cout => \inst3|converterX|Add0~7\);

-- Location: LCCOMB_X21_Y25_N8
\inst3|converterX|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~4_combout\ = (\inst3|converterX|number\(3) & (\inst3|converterX|Add5~3\ $ (GND))) # (!\inst3|converterX|number\(3) & (!\inst3|converterX|Add5~3\ & VCC))
-- \inst3|converterX|Add5~5\ = CARRY((\inst3|converterX|number\(3) & !\inst3|converterX|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(3),
	datad => VCC,
	cin => \inst3|converterX|Add5~3\,
	combout => \inst3|converterX|Add5~4_combout\,
	cout => \inst3|converterX|Add5~5\);

-- Location: LCCOMB_X19_Y26_N10
\inst3|converterX|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~2_combout\ = (\inst3|converterX|number\(3) & (\inst3|converterX|Add3~1\ & VCC)) # (!\inst3|converterX|number\(3) & (!\inst3|converterX|Add3~1\))
-- \inst3|converterX|Add3~3\ = CARRY((!\inst3|converterX|number\(3) & !\inst3|converterX|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(3),
	datad => VCC,
	cin => \inst3|converterX|Add3~1\,
	combout => \inst3|converterX|Add3~2_combout\,
	cout => \inst3|converterX|Add3~3\);

-- Location: LCCOMB_X18_Y25_N24
\inst3|converterX|number~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~3_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|Add3~2_combout\) # (!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & (\inst3|converterX|Add5~4_combout\ & 
-- (\inst3|converterX|number[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add5~4_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add3~2_combout\,
	combout => \inst3|converterX|number~3_combout\);

-- Location: LCCOMB_X18_Y25_N22
\inst3|converterX|number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~4_combout\ = (\inst3|converterX|number[9]~1_combout\ & (((\inst3|converterX|number~3_combout\)))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|number~3_combout\ & ((\inst3|converterX|Add0~6_combout\))) # 
-- (!\inst3|converterX|number~3_combout\ & (\inst3|converterX|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add1~0_combout\,
	datab => \inst3|converterX|number[9]~1_combout\,
	datac => \inst3|converterX|Add0~6_combout\,
	datad => \inst3|converterX|number~3_combout\,
	combout => \inst3|converterX|number~4_combout\);

-- Location: LCCOMB_X20_Y25_N0
\inst3|converterX|number[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[3]~feeder_combout\ = \inst3|converterX|number~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~4_combout\,
	combout => \inst3|converterX|number[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N12
\inst|read_temp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[3]~3_combout\ = (\inst|transmission_count\(1)) # ((\inst|transmission_count\(0)) # (!\inst|transmission_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(1),
	datac => \inst|transmission_count\(0),
	datad => \inst|transmission_count\(2),
	combout => \inst|read_temp[3]~3_combout\);

-- Location: LCCOMB_X15_Y23_N2
\inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (!\inst|transmission_count\(4) & (\inst|transmission_count\(3) & \inst|read_temp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|transmission_count\(4),
	datac => \inst|transmission_count\(3),
	datad => \inst|read_temp[1]~0_combout\,
	combout => \inst|Decoder0~2_combout\);

-- Location: LCCOMB_X15_Y23_N16
\inst|read_temp[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[3]~4_combout\ = (\inst|read_temp[3]~3_combout\ & (((\inst|read_temp\(3))))) # (!\inst|read_temp[3]~3_combout\ & ((\inst|Decoder0~2_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~2_combout\ & ((\inst|read_temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|read_temp[3]~3_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(3),
	datad => \inst|Decoder0~2_combout\,
	combout => \inst|read_temp[3]~4_combout\);

-- Location: FF_X15_Y23_N17
\inst|read_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(3));

-- Location: LCCOMB_X16_Y26_N10
\inst|dataX[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[3]~feeder_combout\ = \inst|read_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(3),
	combout => \inst|dataX[3]~feeder_combout\);

-- Location: FF_X16_Y26_N11
\inst|dataX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[3]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(3));

-- Location: LCCOMB_X16_Y26_N8
\inst3|accX_v[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[3]~feeder_combout\ = \inst|dataX\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(3),
	combout => \inst3|accX_v[3]~feeder_combout\);

-- Location: FF_X16_Y26_N9
\inst3|accX_v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[3]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(3));

-- Location: LCCOMB_X19_Y25_N0
\inst3|converterX|number[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[9]~6_combout\ = (\inst3|converterX|state.s0_s~q\ & ((\inst3|converterX|digit_int_3~3_combout\) # (\inst3|converterX|number~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_3~3_combout\,
	datac => \inst3|converterX|state.s0_s~q\,
	datad => \inst3|converterX|number~5_combout\,
	combout => \inst3|converterX|number[9]~6_combout\);

-- Location: LCCOMB_X19_Y25_N6
\inst3|converterX|number[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[9]~7_combout\ = (\inst3|converterX|state.s0~q\) # ((\inst3|converterX|number[9]~6_combout\) # ((\inst3|converterX|number\(12) & !\inst3|converterX|state.s0_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(12),
	datab => \inst3|converterX|state.s0~q\,
	datac => \inst3|converterX|state.s0_s~q\,
	datad => \inst3|converterX|number[9]~6_combout\,
	combout => \inst3|converterX|number[9]~7_combout\);

-- Location: FF_X20_Y25_N1
\inst3|converterX|number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[3]~feeder_combout\,
	asdata => \inst3|accX_v\(3),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(3));

-- Location: LCCOMB_X19_Y26_N12
\inst3|converterX|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~4_combout\ = (\inst3|converterX|number\(4) & ((GND) # (!\inst3|converterX|Add3~3\))) # (!\inst3|converterX|number\(4) & (\inst3|converterX|Add3~3\ $ (GND)))
-- \inst3|converterX|Add3~5\ = CARRY((\inst3|converterX|number\(4)) # (!\inst3|converterX|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(4),
	datad => VCC,
	cin => \inst3|converterX|Add3~3\,
	combout => \inst3|converterX|Add3~4_combout\,
	cout => \inst3|converterX|Add3~5\);

-- Location: LCCOMB_X17_Y25_N8
\inst3|converterX|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~2_combout\ = (\inst3|converterX|number\(4) & (\inst3|converterX|Add1~1\ & VCC)) # (!\inst3|converterX|number\(4) & (!\inst3|converterX|Add1~1\))
-- \inst3|converterX|Add1~3\ = CARRY((!\inst3|converterX|number\(4) & !\inst3|converterX|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(4),
	datad => VCC,
	cin => \inst3|converterX|Add1~1\,
	combout => \inst3|converterX|Add1~2_combout\,
	cout => \inst3|converterX|Add1~3\);

-- Location: LCCOMB_X21_Y25_N10
\inst3|converterX|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~6_combout\ = (\inst3|converterX|number\(4) & (\inst3|converterX|Add5~5\ & VCC)) # (!\inst3|converterX|number\(4) & (!\inst3|converterX|Add5~5\))
-- \inst3|converterX|Add5~7\ = CARRY((!\inst3|converterX|number\(4) & !\inst3|converterX|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(4),
	datad => VCC,
	cin => \inst3|converterX|Add5~5\,
	combout => \inst3|converterX|Add5~6_combout\,
	cout => \inst3|converterX|Add5~7\);

-- Location: LCCOMB_X21_Y25_N30
\inst3|converterX|number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~11_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & ((\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|Add5~6_combout\))) 
-- # (!\inst3|converterX|number[9]~1_combout\ & (\inst3|converterX|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add1~2_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add5~6_combout\,
	combout => \inst3|converterX|number~11_combout\);

-- Location: LCCOMB_X16_Y25_N8
\inst3|converterX|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~8_combout\ = (\inst3|converterX|number\(4) & (\inst3|converterX|Add0~7\ $ (GND))) # (!\inst3|converterX|number\(4) & ((GND) # (!\inst3|converterX|Add0~7\)))
-- \inst3|converterX|Add0~9\ = CARRY((!\inst3|converterX|Add0~7\) # (!\inst3|converterX|number\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(4),
	datad => VCC,
	cin => \inst3|converterX|Add0~7\,
	combout => \inst3|converterX|Add0~8_combout\,
	cout => \inst3|converterX|Add0~9\);

-- Location: LCCOMB_X20_Y25_N10
\inst3|converterX|number~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~12_combout\ = (\inst3|converterX|number[9]~2_combout\ & ((\inst3|converterX|number~11_combout\ & ((\inst3|converterX|Add0~8_combout\))) # (!\inst3|converterX|number~11_combout\ & (\inst3|converterX|Add3~4_combout\)))) # 
-- (!\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|number~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number[9]~2_combout\,
	datab => \inst3|converterX|Add3~4_combout\,
	datac => \inst3|converterX|number~11_combout\,
	datad => \inst3|converterX|Add0~8_combout\,
	combout => \inst3|converterX|number~12_combout\);

-- Location: LCCOMB_X20_Y25_N20
\inst3|converterX|number[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[4]~feeder_combout\ = \inst3|converterX|number~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~12_combout\,
	combout => \inst3|converterX|number[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N22
\inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (\inst|transmission_count\(1) & (\inst|transmission_count\(0) & !\inst|transmission_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(1),
	datac => \inst|transmission_count\(0),
	datad => \inst|transmission_count\(2),
	combout => \inst|Decoder0~0_combout\);

-- Location: LCCOMB_X15_Y23_N6
\inst|read_temp[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[4]~6_combout\ = (\inst|Decoder0~0_combout\ & ((\inst|Decoder0~2_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~2_combout\ & ((\inst|read_temp\(4)))))) # (!\inst|Decoder0~0_combout\ & (((\inst|read_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~0_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(4),
	datad => \inst|Decoder0~2_combout\,
	combout => \inst|read_temp[4]~6_combout\);

-- Location: FF_X15_Y23_N7
\inst|read_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(4));

-- Location: LCCOMB_X18_Y23_N16
\inst|dataX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[4]~feeder_combout\ = \inst|read_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(4),
	combout => \inst|dataX[4]~feeder_combout\);

-- Location: FF_X18_Y23_N17
\inst|dataX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[4]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(4));

-- Location: LCCOMB_X18_Y23_N22
\inst3|accX_v[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[4]~feeder_combout\ = \inst|dataX\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(4),
	combout => \inst3|accX_v[4]~feeder_combout\);

-- Location: FF_X18_Y23_N23
\inst3|accX_v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[4]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(4));

-- Location: FF_X20_Y25_N21
\inst3|converterX|number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[4]~feeder_combout\,
	asdata => \inst3|accX_v\(4),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(4));

-- Location: LCCOMB_X17_Y25_N10
\inst3|converterX|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~4_combout\ = (\inst3|converterX|number\(5) & (\inst3|converterX|Add1~3\ $ (GND))) # (!\inst3|converterX|number\(5) & (!\inst3|converterX|Add1~3\ & VCC))
-- \inst3|converterX|Add1~5\ = CARRY((\inst3|converterX|number\(5) & !\inst3|converterX|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(5),
	datad => VCC,
	cin => \inst3|converterX|Add1~3\,
	combout => \inst3|converterX|Add1~4_combout\,
	cout => \inst3|converterX|Add1~5\);

-- Location: LCCOMB_X16_Y25_N10
\inst3|converterX|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~10_combout\ = (\inst3|converterX|number\(5) & (!\inst3|converterX|Add0~9\)) # (!\inst3|converterX|number\(5) & (\inst3|converterX|Add0~9\ & VCC))
-- \inst3|converterX|Add0~11\ = CARRY((\inst3|converterX|number\(5) & !\inst3|converterX|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(5),
	datad => VCC,
	cin => \inst3|converterX|Add0~9\,
	combout => \inst3|converterX|Add0~10_combout\,
	cout => \inst3|converterX|Add0~11\);

-- Location: LCCOMB_X21_Y25_N12
\inst3|converterX|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~8_combout\ = (\inst3|converterX|number\(5) & ((GND) # (!\inst3|converterX|Add5~7\))) # (!\inst3|converterX|number\(5) & (\inst3|converterX|Add5~7\ $ (GND)))
-- \inst3|converterX|Add5~9\ = CARRY((\inst3|converterX|number\(5)) # (!\inst3|converterX|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(5),
	datad => VCC,
	cin => \inst3|converterX|Add5~7\,
	combout => \inst3|converterX|Add5~8_combout\,
	cout => \inst3|converterX|Add5~9\);

-- Location: LCCOMB_X19_Y26_N14
\inst3|converterX|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~6_combout\ = (\inst3|converterX|number\(5) & (!\inst3|converterX|Add3~5\)) # (!\inst3|converterX|number\(5) & ((\inst3|converterX|Add3~5\) # (GND)))
-- \inst3|converterX|Add3~7\ = CARRY((!\inst3|converterX|Add3~5\) # (!\inst3|converterX|number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(5),
	datad => VCC,
	cin => \inst3|converterX|Add3~5\,
	combout => \inst3|converterX|Add3~6_combout\,
	cout => \inst3|converterX|Add3~7\);

-- Location: LCCOMB_X18_Y25_N20
\inst3|converterX|number~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~15_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|Add3~6_combout\) # (!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & (\inst3|converterX|Add5~8_combout\ & 
-- (\inst3|converterX|number[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add5~8_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add3~6_combout\,
	combout => \inst3|converterX|number~15_combout\);

-- Location: LCCOMB_X18_Y25_N6
\inst3|converterX|number~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~16_combout\ = (\inst3|converterX|number[9]~1_combout\ & (((\inst3|converterX|number~15_combout\)))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|number~15_combout\ & ((\inst3|converterX|Add0~10_combout\))) # 
-- (!\inst3|converterX|number~15_combout\ & (\inst3|converterX|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add1~4_combout\,
	datab => \inst3|converterX|number[9]~1_combout\,
	datac => \inst3|converterX|Add0~10_combout\,
	datad => \inst3|converterX|number~15_combout\,
	combout => \inst3|converterX|number~16_combout\);

-- Location: LCCOMB_X20_Y25_N12
\inst3|converterX|number[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[5]~feeder_combout\ = \inst3|converterX|number~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~16_combout\,
	combout => \inst3|converterX|number[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N20
\inst|read_temp[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[5]~9_combout\ = (\inst|transmission_count\(2) & (((\inst|read_temp\(5))))) # (!\inst|transmission_count\(2) & ((\inst|transmission_count\(1) & (\SDIO~input_o\)) # (!\inst|transmission_count\(1) & ((\inst|read_temp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \SDIO~input_o\,
	datac => \inst|transmission_count\(1),
	datad => \inst|read_temp\(5),
	combout => \inst|read_temp[5]~9_combout\);

-- Location: LCCOMB_X16_Y23_N2
\inst|read_temp[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[5]~8_combout\ = ((\inst|transmission_count\(0)) # (\inst|transmission_count\(4))) # (!\inst|transmission_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(3),
	datab => \inst|transmission_count\(0),
	datad => \inst|transmission_count\(4),
	combout => \inst|read_temp[5]~8_combout\);

-- Location: LCCOMB_X16_Y23_N10
\inst|read_temp[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[5]~10_combout\ = (\inst|read_temp[1]~0_combout\ & ((\inst|read_temp[5]~8_combout\ & ((\inst|read_temp\(5)))) # (!\inst|read_temp[5]~8_combout\ & (\inst|read_temp[5]~9_combout\)))) # (!\inst|read_temp[1]~0_combout\ & 
-- (((\inst|read_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|read_temp[5]~9_combout\,
	datab => \inst|read_temp[1]~0_combout\,
	datac => \inst|read_temp\(5),
	datad => \inst|read_temp[5]~8_combout\,
	combout => \inst|read_temp[5]~10_combout\);

-- Location: FF_X16_Y23_N11
\inst|read_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(5));

-- Location: LCCOMB_X18_Y23_N20
\inst|dataX[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[5]~feeder_combout\ = \inst|read_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(5),
	combout => \inst|dataX[5]~feeder_combout\);

-- Location: FF_X18_Y23_N21
\inst|dataX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[5]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(5));

-- Location: LCCOMB_X18_Y23_N30
\inst3|accX_v[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[5]~feeder_combout\ = \inst|dataX\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(5),
	combout => \inst3|accX_v[5]~feeder_combout\);

-- Location: FF_X18_Y23_N31
\inst3|accX_v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[5]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(5));

-- Location: FF_X20_Y25_N13
\inst3|converterX|number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[5]~feeder_combout\,
	asdata => \inst3|accX_v\(5),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(5));

-- Location: LCCOMB_X19_Y26_N16
\inst3|converterX|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~8_combout\ = (\inst3|converterX|number\(6) & (\inst3|converterX|Add3~7\ $ (GND))) # (!\inst3|converterX|number\(6) & (!\inst3|converterX|Add3~7\ & VCC))
-- \inst3|converterX|Add3~9\ = CARRY((\inst3|converterX|number\(6) & !\inst3|converterX|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(6),
	datad => VCC,
	cin => \inst3|converterX|Add3~7\,
	combout => \inst3|converterX|Add3~8_combout\,
	cout => \inst3|converterX|Add3~9\);

-- Location: LCCOMB_X16_Y25_N12
\inst3|converterX|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~12_combout\ = (\inst3|converterX|number\(6) & (\inst3|converterX|Add0~11\ $ (GND))) # (!\inst3|converterX|number\(6) & ((GND) # (!\inst3|converterX|Add0~11\)))
-- \inst3|converterX|Add0~13\ = CARRY((!\inst3|converterX|Add0~11\) # (!\inst3|converterX|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(6),
	datad => VCC,
	cin => \inst3|converterX|Add0~11\,
	combout => \inst3|converterX|Add0~12_combout\,
	cout => \inst3|converterX|Add0~13\);

-- Location: LCCOMB_X17_Y25_N12
\inst3|converterX|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~6_combout\ = (\inst3|converterX|number\(6) & (!\inst3|converterX|Add1~5\)) # (!\inst3|converterX|number\(6) & ((\inst3|converterX|Add1~5\) # (GND)))
-- \inst3|converterX|Add1~7\ = CARRY((!\inst3|converterX|Add1~5\) # (!\inst3|converterX|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(6),
	datad => VCC,
	cin => \inst3|converterX|Add1~5\,
	combout => \inst3|converterX|Add1~6_combout\,
	cout => \inst3|converterX|Add1~7\);

-- Location: LCCOMB_X21_Y25_N14
\inst3|converterX|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~10_combout\ = (\inst3|converterX|number\(6) & (\inst3|converterX|Add5~9\ & VCC)) # (!\inst3|converterX|number\(6) & (!\inst3|converterX|Add5~9\))
-- \inst3|converterX|Add5~11\ = CARRY((!\inst3|converterX|number\(6) & !\inst3|converterX|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(6),
	datad => VCC,
	cin => \inst3|converterX|Add5~9\,
	combout => \inst3|converterX|Add5~10_combout\,
	cout => \inst3|converterX|Add5~11\);

-- Location: LCCOMB_X18_Y25_N2
\inst3|converterX|number~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~13_combout\ = (\inst3|converterX|number[9]~1_combout\ & (((\inst3|converterX|Add5~10_combout\ & !\inst3|converterX|number[9]~2_combout\)))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|Add1~6_combout\) # 
-- ((\inst3|converterX|number[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add1~6_combout\,
	datab => \inst3|converterX|number[9]~1_combout\,
	datac => \inst3|converterX|Add5~10_combout\,
	datad => \inst3|converterX|number[9]~2_combout\,
	combout => \inst3|converterX|number~13_combout\);

-- Location: LCCOMB_X19_Y25_N2
\inst3|converterX|number~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~14_combout\ = (\inst3|converterX|number[9]~2_combout\ & ((\inst3|converterX|number~13_combout\ & ((\inst3|converterX|Add0~12_combout\))) # (!\inst3|converterX|number~13_combout\ & (\inst3|converterX|Add3~8_combout\)))) # 
-- (!\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|number~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add3~8_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|Add0~12_combout\,
	datad => \inst3|converterX|number~13_combout\,
	combout => \inst3|converterX|number~14_combout\);

-- Location: LCCOMB_X20_Y25_N2
\inst3|converterX|number[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[6]~feeder_combout\ = \inst3|converterX|number~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~14_combout\,
	combout => \inst3|converterX|number[6]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N0
\inst|read_temp[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[6]~7_combout\ = (\inst|Equal2~0_combout\ & ((\inst|Decoder0~2_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~2_combout\ & ((\inst|read_temp\(6)))))) # (!\inst|Equal2~0_combout\ & (((\inst|read_temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(6),
	datad => \inst|Decoder0~2_combout\,
	combout => \inst|read_temp[6]~7_combout\);

-- Location: FF_X15_Y23_N1
\inst|read_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(6));

-- Location: FF_X18_Y23_N27
\inst|dataX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(6),
	sload => VCC,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(6));

-- Location: LCCOMB_X18_Y23_N28
\inst3|accX_v[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[6]~feeder_combout\ = \inst|dataX\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dataX\(6),
	combout => \inst3|accX_v[6]~feeder_combout\);

-- Location: FF_X18_Y23_N29
\inst3|accX_v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[6]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(6));

-- Location: FF_X20_Y25_N3
\inst3|converterX|number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[6]~feeder_combout\,
	asdata => \inst3|accX_v\(6),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(6));

-- Location: LCCOMB_X17_Y25_N14
\inst3|converterX|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~8_combout\ = (\inst3|converterX|number\(7) & (\inst3|converterX|Add1~7\ $ (GND))) # (!\inst3|converterX|number\(7) & (!\inst3|converterX|Add1~7\ & VCC))
-- \inst3|converterX|Add1~9\ = CARRY((\inst3|converterX|number\(7) & !\inst3|converterX|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(7),
	datad => VCC,
	cin => \inst3|converterX|Add1~7\,
	combout => \inst3|converterX|Add1~8_combout\,
	cout => \inst3|converterX|Add1~9\);

-- Location: LCCOMB_X16_Y25_N14
\inst3|converterX|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~14_combout\ = (\inst3|converterX|number\(7) & (!\inst3|converterX|Add0~13\)) # (!\inst3|converterX|number\(7) & (\inst3|converterX|Add0~13\ & VCC))
-- \inst3|converterX|Add0~15\ = CARRY((\inst3|converterX|number\(7) & !\inst3|converterX|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(7),
	datad => VCC,
	cin => \inst3|converterX|Add0~13\,
	combout => \inst3|converterX|Add0~14_combout\,
	cout => \inst3|converterX|Add0~15\);

-- Location: LCCOMB_X21_Y25_N16
\inst3|converterX|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~12_combout\ = (\inst3|converterX|number\(7) & ((GND) # (!\inst3|converterX|Add5~11\))) # (!\inst3|converterX|number\(7) & (\inst3|converterX|Add5~11\ $ (GND)))
-- \inst3|converterX|Add5~13\ = CARRY((\inst3|converterX|number\(7)) # (!\inst3|converterX|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(7),
	datad => VCC,
	cin => \inst3|converterX|Add5~11\,
	combout => \inst3|converterX|Add5~12_combout\,
	cout => \inst3|converterX|Add5~13\);

-- Location: LCCOMB_X19_Y26_N18
\inst3|converterX|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~10_combout\ = (\inst3|converterX|number\(7) & (\inst3|converterX|Add3~9\ & VCC)) # (!\inst3|converterX|number\(7) & (!\inst3|converterX|Add3~9\))
-- \inst3|converterX|Add3~11\ = CARRY((!\inst3|converterX|number\(7) & !\inst3|converterX|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(7),
	datad => VCC,
	cin => \inst3|converterX|Add3~9\,
	combout => \inst3|converterX|Add3~10_combout\,
	cout => \inst3|converterX|Add3~11\);

-- Location: LCCOMB_X18_Y25_N0
\inst3|converterX|number~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~29_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|Add3~10_combout\) # (!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & (\inst3|converterX|Add5~12_combout\ & 
-- (\inst3|converterX|number[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add5~12_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add3~10_combout\,
	combout => \inst3|converterX|number~29_combout\);

-- Location: LCCOMB_X18_Y25_N18
\inst3|converterX|number~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~30_combout\ = (\inst3|converterX|number[9]~1_combout\ & (((\inst3|converterX|number~29_combout\)))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|number~29_combout\ & ((\inst3|converterX|Add0~14_combout\))) # 
-- (!\inst3|converterX|number~29_combout\ & (\inst3|converterX|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add1~8_combout\,
	datab => \inst3|converterX|Add0~14_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|number~29_combout\,
	combout => \inst3|converterX|number~30_combout\);

-- Location: LCCOMB_X19_Y25_N10
\inst3|converterX|number[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[7]~feeder_combout\ = \inst3|converterX|number~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~30_combout\,
	combout => \inst3|converterX|number[7]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N28
\inst|read_temp[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[7]~15_combout\ = (\inst|Equal1~0_combout\ & ((\inst|Decoder0~2_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~2_combout\ & ((\inst|read_temp\(7)))))) # (!\inst|Equal1~0_combout\ & (((\inst|read_temp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(7),
	datad => \inst|Decoder0~2_combout\,
	combout => \inst|read_temp[7]~15_combout\);

-- Location: FF_X15_Y23_N29
\inst|read_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(7));

-- Location: FF_X16_Y26_N19
\inst|dataX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(7),
	sload => VCC,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(7));

-- Location: LCCOMB_X16_Y26_N0
\inst3|accX_v[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[7]~feeder_combout\ = \inst|dataX\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(7),
	combout => \inst3|accX_v[7]~feeder_combout\);

-- Location: FF_X16_Y26_N1
\inst3|accX_v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[7]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(7));

-- Location: FF_X19_Y25_N11
\inst3|converterX|number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[7]~feeder_combout\,
	asdata => \inst3|accX_v\(7),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(7));

-- Location: LCCOMB_X16_Y25_N16
\inst3|converterX|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~16_combout\ = (\inst3|converterX|number\(8) & (\inst3|converterX|Add0~15\ $ (GND))) # (!\inst3|converterX|number\(8) & ((GND) # (!\inst3|converterX|Add0~15\)))
-- \inst3|converterX|Add0~17\ = CARRY((!\inst3|converterX|Add0~15\) # (!\inst3|converterX|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(8),
	datad => VCC,
	cin => \inst3|converterX|Add0~15\,
	combout => \inst3|converterX|Add0~16_combout\,
	cout => \inst3|converterX|Add0~17\);

-- Location: LCCOMB_X17_Y25_N16
\inst3|converterX|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~10_combout\ = (\inst3|converterX|number\(8) & (!\inst3|converterX|Add1~9\)) # (!\inst3|converterX|number\(8) & ((\inst3|converterX|Add1~9\) # (GND)))
-- \inst3|converterX|Add1~11\ = CARRY((!\inst3|converterX|Add1~9\) # (!\inst3|converterX|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(8),
	datad => VCC,
	cin => \inst3|converterX|Add1~9\,
	combout => \inst3|converterX|Add1~10_combout\,
	cout => \inst3|converterX|Add1~11\);

-- Location: LCCOMB_X21_Y25_N18
\inst3|converterX|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~14_combout\ = (\inst3|converterX|number\(8) & (\inst3|converterX|Add5~13\ & VCC)) # (!\inst3|converterX|number\(8) & (!\inst3|converterX|Add5~13\))
-- \inst3|converterX|Add5~15\ = CARRY((!\inst3|converterX|number\(8) & !\inst3|converterX|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(8),
	datad => VCC,
	cin => \inst3|converterX|Add5~13\,
	combout => \inst3|converterX|Add5~14_combout\,
	cout => \inst3|converterX|Add5~15\);

-- Location: LCCOMB_X18_Y25_N4
\inst3|converterX|number~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~27_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & ((\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|Add5~14_combout\))) 
-- # (!\inst3|converterX|number[9]~1_combout\ & (\inst3|converterX|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add1~10_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add5~14_combout\,
	combout => \inst3|converterX|number~27_combout\);

-- Location: LCCOMB_X19_Y26_N20
\inst3|converterX|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~12_combout\ = (\inst3|converterX|number\(8) & ((GND) # (!\inst3|converterX|Add3~11\))) # (!\inst3|converterX|number\(8) & (\inst3|converterX|Add3~11\ $ (GND)))
-- \inst3|converterX|Add3~13\ = CARRY((\inst3|converterX|number\(8)) # (!\inst3|converterX|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(8),
	datad => VCC,
	cin => \inst3|converterX|Add3~11\,
	combout => \inst3|converterX|Add3~12_combout\,
	cout => \inst3|converterX|Add3~13\);

-- Location: LCCOMB_X18_Y25_N14
\inst3|converterX|number~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~28_combout\ = (\inst3|converterX|number[9]~2_combout\ & ((\inst3|converterX|number~27_combout\ & (\inst3|converterX|Add0~16_combout\)) # (!\inst3|converterX|number~27_combout\ & ((\inst3|converterX|Add3~12_combout\))))) # 
-- (!\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|number~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add0~16_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number~27_combout\,
	datad => \inst3|converterX|Add3~12_combout\,
	combout => \inst3|converterX|number~28_combout\);

-- Location: LCCOMB_X19_Y25_N16
\inst3|converterX|number[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[8]~feeder_combout\ = \inst3|converterX|number~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~28_combout\,
	combout => \inst3|converterX|number[8]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N20
\inst|read_temp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[1]~1_combout\ = (\inst|transmission_count\(2)) # ((\inst|transmission_count\(1) & \inst|transmission_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(1),
	datac => \inst|transmission_count\(0),
	datad => \inst|transmission_count\(2),
	combout => \inst|read_temp[1]~1_combout\);

-- Location: LCCOMB_X15_Y23_N8
\inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~5_combout\ = (!\inst|transmission_count\(3) & \inst|transmission_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|transmission_count\(3),
	datad => \inst|transmission_count\(4),
	combout => \inst|Decoder0~5_combout\);

-- Location: LCCOMB_X15_Y23_N14
\inst|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~6_combout\ = (\inst|transmission_count\(2) & (\inst|read_temp[1]~1_combout\ & (\inst|Decoder0~5_combout\ & \inst|read_temp[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \inst|read_temp[1]~1_combout\,
	datac => \inst|Decoder0~5_combout\,
	datad => \inst|read_temp[1]~0_combout\,
	combout => \inst|Decoder0~6_combout\);

-- Location: LCCOMB_X15_Y23_N18
\inst|read_temp[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[8]~14_combout\ = (\inst|Decoder0~6_combout\ & ((\inst|Decoder0~8_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~8_combout\ & ((\inst|read_temp\(8)))))) # (!\inst|Decoder0~6_combout\ & (((\inst|read_temp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~input_o\,
	datab => \inst|Decoder0~6_combout\,
	datac => \inst|read_temp\(8),
	datad => \inst|Decoder0~8_combout\,
	combout => \inst|read_temp[8]~14_combout\);

-- Location: FF_X15_Y23_N19
\inst|read_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(8));

-- Location: LCCOMB_X16_Y26_N12
\inst|dataX[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[8]~feeder_combout\ = \inst|read_temp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(8),
	combout => \inst|dataX[8]~feeder_combout\);

-- Location: FF_X16_Y26_N13
\inst|dataX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[8]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(8));

-- Location: LCCOMB_X16_Y26_N2
\inst3|accX_v[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[8]~feeder_combout\ = \inst|dataX\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(8),
	combout => \inst3|accX_v[8]~feeder_combout\);

-- Location: FF_X16_Y26_N3
\inst3|accX_v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[8]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(8));

-- Location: FF_X19_Y25_N17
\inst3|converterX|number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[8]~feeder_combout\,
	asdata => \inst3|accX_v\(8),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(8));

-- Location: LCCOMB_X16_Y25_N18
\inst3|converterX|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~18_combout\ = (\inst3|converterX|number\(9) & (!\inst3|converterX|Add0~17\)) # (!\inst3|converterX|number\(9) & (\inst3|converterX|Add0~17\ & VCC))
-- \inst3|converterX|Add0~19\ = CARRY((\inst3|converterX|number\(9) & !\inst3|converterX|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(9),
	datad => VCC,
	cin => \inst3|converterX|Add0~17\,
	combout => \inst3|converterX|Add0~18_combout\,
	cout => \inst3|converterX|Add0~19\);

-- Location: LCCOMB_X17_Y25_N18
\inst3|converterX|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~12_combout\ = (\inst3|converterX|number\(9) & (\inst3|converterX|Add1~11\ $ (GND))) # (!\inst3|converterX|number\(9) & (!\inst3|converterX|Add1~11\ & VCC))
-- \inst3|converterX|Add1~13\ = CARRY((\inst3|converterX|number\(9) & !\inst3|converterX|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(9),
	datad => VCC,
	cin => \inst3|converterX|Add1~11\,
	combout => \inst3|converterX|Add1~12_combout\,
	cout => \inst3|converterX|Add1~13\);

-- Location: LCCOMB_X21_Y25_N20
\inst3|converterX|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~16_combout\ = (\inst3|converterX|number\(9) & ((GND) # (!\inst3|converterX|Add5~15\))) # (!\inst3|converterX|number\(9) & (\inst3|converterX|Add5~15\ $ (GND)))
-- \inst3|converterX|Add5~17\ = CARRY((\inst3|converterX|number\(9)) # (!\inst3|converterX|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(9),
	datad => VCC,
	cin => \inst3|converterX|Add5~15\,
	combout => \inst3|converterX|Add5~16_combout\,
	cout => \inst3|converterX|Add5~17\);

-- Location: LCCOMB_X19_Y26_N22
\inst3|converterX|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~14_combout\ = (\inst3|converterX|number\(9) & (\inst3|converterX|Add3~13\ & VCC)) # (!\inst3|converterX|number\(9) & (!\inst3|converterX|Add3~13\))
-- \inst3|converterX|Add3~15\ = CARRY((!\inst3|converterX|number\(9) & !\inst3|converterX|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(9),
	datad => VCC,
	cin => \inst3|converterX|Add3~13\,
	combout => \inst3|converterX|Add3~14_combout\,
	cout => \inst3|converterX|Add3~15\);

-- Location: LCCOMB_X18_Y25_N16
\inst3|converterX|number~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~25_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|Add3~14_combout\) # (!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & (\inst3|converterX|Add5~16_combout\ & 
-- (\inst3|converterX|number[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add5~16_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add3~14_combout\,
	combout => \inst3|converterX|number~25_combout\);

-- Location: LCCOMB_X18_Y25_N10
\inst3|converterX|number~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~26_combout\ = (\inst3|converterX|number[9]~1_combout\ & (((\inst3|converterX|number~25_combout\)))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|number~25_combout\ & (\inst3|converterX|Add0~18_combout\)) # 
-- (!\inst3|converterX|number~25_combout\ & ((\inst3|converterX|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add0~18_combout\,
	datab => \inst3|converterX|Add1~12_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|number~25_combout\,
	combout => \inst3|converterX|number~26_combout\);

-- Location: LCCOMB_X19_Y25_N30
\inst3|converterX|number[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[9]~feeder_combout\ = \inst3|converterX|number~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~26_combout\,
	combout => \inst3|converterX|number[9]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N26
\inst|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~7_combout\ = (\inst|transmission_count\(1) & !\inst|transmission_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|transmission_count\(1),
	datad => \inst|transmission_count\(0),
	combout => \inst|Decoder0~7_combout\);

-- Location: LCCOMB_X16_Y23_N16
\inst|read_temp[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[9]~13_combout\ = (\inst|Decoder0~7_combout\ & ((\inst|Decoder0~6_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~6_combout\ & ((\inst|read_temp\(9)))))) # (!\inst|Decoder0~7_combout\ & (((\inst|read_temp\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~7_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(9),
	datad => \inst|Decoder0~6_combout\,
	combout => \inst|read_temp[9]~13_combout\);

-- Location: FF_X16_Y23_N17
\inst|read_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(9));

-- Location: FF_X18_Y23_N7
\inst|dataX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(9),
	sload => VCC,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(9));

-- Location: LCCOMB_X18_Y23_N0
\inst3|accX_v[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[9]~feeder_combout\ = \inst|dataX\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(9),
	combout => \inst3|accX_v[9]~feeder_combout\);

-- Location: FF_X18_Y23_N1
\inst3|accX_v[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[9]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(9));

-- Location: FF_X19_Y25_N31
\inst3|converterX|number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[9]~feeder_combout\,
	asdata => \inst3|accX_v\(9),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(9));

-- Location: LCCOMB_X16_Y25_N20
\inst3|converterX|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~20_combout\ = (\inst3|converterX|number\(10) & (\inst3|converterX|Add0~19\ $ (GND))) # (!\inst3|converterX|number\(10) & ((GND) # (!\inst3|converterX|Add0~19\)))
-- \inst3|converterX|Add0~21\ = CARRY((!\inst3|converterX|Add0~19\) # (!\inst3|converterX|number\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(10),
	datad => VCC,
	cin => \inst3|converterX|Add0~19\,
	combout => \inst3|converterX|Add0~20_combout\,
	cout => \inst3|converterX|Add0~21\);

-- Location: LCCOMB_X19_Y26_N24
\inst3|converterX|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~16_combout\ = (\inst3|converterX|number\(10) & ((GND) # (!\inst3|converterX|Add3~15\))) # (!\inst3|converterX|number\(10) & (\inst3|converterX|Add3~15\ $ (GND)))
-- \inst3|converterX|Add3~17\ = CARRY((\inst3|converterX|number\(10)) # (!\inst3|converterX|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(10),
	datad => VCC,
	cin => \inst3|converterX|Add3~15\,
	combout => \inst3|converterX|Add3~16_combout\,
	cout => \inst3|converterX|Add3~17\);

-- Location: LCCOMB_X21_Y25_N22
\inst3|converterX|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~18_combout\ = (\inst3|converterX|number\(10) & (\inst3|converterX|Add5~17\ & VCC)) # (!\inst3|converterX|number\(10) & (!\inst3|converterX|Add5~17\))
-- \inst3|converterX|Add5~19\ = CARRY((!\inst3|converterX|number\(10) & !\inst3|converterX|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(10),
	datad => VCC,
	cin => \inst3|converterX|Add5~17\,
	combout => \inst3|converterX|Add5~18_combout\,
	cout => \inst3|converterX|Add5~19\);

-- Location: LCCOMB_X17_Y25_N20
\inst3|converterX|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~14_combout\ = (\inst3|converterX|number\(10) & (\inst3|converterX|Add1~13\ & VCC)) # (!\inst3|converterX|number\(10) & (!\inst3|converterX|Add1~13\))
-- \inst3|converterX|Add1~15\ = CARRY((!\inst3|converterX|number\(10) & !\inst3|converterX|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(10),
	datad => VCC,
	cin => \inst3|converterX|Add1~13\,
	combout => \inst3|converterX|Add1~14_combout\,
	cout => \inst3|converterX|Add1~15\);

-- Location: LCCOMB_X19_Y25_N28
\inst3|converterX|number~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~23_combout\ = (\inst3|converterX|number[9]~1_combout\ & (!\inst3|converterX|number[9]~2_combout\ & (\inst3|converterX|Add5~18_combout\))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|number[9]~2_combout\) # 
-- ((\inst3|converterX|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number[9]~1_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|Add5~18_combout\,
	datad => \inst3|converterX|Add1~14_combout\,
	combout => \inst3|converterX|number~23_combout\);

-- Location: LCCOMB_X19_Y25_N18
\inst3|converterX|number~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~24_combout\ = (\inst3|converterX|number[9]~2_combout\ & ((\inst3|converterX|number~23_combout\ & (\inst3|converterX|Add0~20_combout\)) # (!\inst3|converterX|number~23_combout\ & ((\inst3|converterX|Add3~16_combout\))))) # 
-- (!\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|number~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number[9]~2_combout\,
	datab => \inst3|converterX|Add0~20_combout\,
	datac => \inst3|converterX|Add3~16_combout\,
	datad => \inst3|converterX|number~23_combout\,
	combout => \inst3|converterX|number~24_combout\);

-- Location: LCCOMB_X19_Y25_N24
\inst3|converterX|number[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[10]~feeder_combout\ = \inst3|converterX|number~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~24_combout\,
	combout => \inst3|converterX|number[10]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N4
\inst|read_temp[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[10]~12_combout\ = (\inst|Equal2~2_combout\ & ((\inst|Decoder0~6_combout\ & ((\SDIO~input_o\))) # (!\inst|Decoder0~6_combout\ & (\inst|read_temp\(10))))) # (!\inst|Equal2~2_combout\ & (((\inst|read_temp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~2_combout\,
	datab => \inst|Decoder0~6_combout\,
	datac => \inst|read_temp\(10),
	datad => \SDIO~input_o\,
	combout => \inst|read_temp[10]~12_combout\);

-- Location: FF_X15_Y23_N5
\inst|read_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[10]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(10));

-- Location: LCCOMB_X18_Y23_N24
\inst|dataX[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[10]~feeder_combout\ = \inst|read_temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(10),
	combout => \inst|dataX[10]~feeder_combout\);

-- Location: FF_X18_Y23_N25
\inst|dataX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[10]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(10));

-- Location: LCCOMB_X18_Y23_N14
\inst3|accX_v[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[10]~feeder_combout\ = \inst|dataX\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(10),
	combout => \inst3|accX_v[10]~feeder_combout\);

-- Location: FF_X18_Y23_N15
\inst3|accX_v[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[10]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(10));

-- Location: FF_X19_Y25_N25
\inst3|converterX|number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[10]~feeder_combout\,
	asdata => \inst3|accX_v\(10),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(10));

-- Location: LCCOMB_X16_Y25_N22
\inst3|converterX|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~22_combout\ = (\inst3|converterX|number\(11) & (!\inst3|converterX|Add0~21\)) # (!\inst3|converterX|number\(11) & (\inst3|converterX|Add0~21\ & VCC))
-- \inst3|converterX|Add0~23\ = CARRY((\inst3|converterX|number\(11) & !\inst3|converterX|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(11),
	datad => VCC,
	cin => \inst3|converterX|Add0~21\,
	combout => \inst3|converterX|Add0~22_combout\,
	cout => \inst3|converterX|Add0~23\);

-- Location: LCCOMB_X17_Y25_N22
\inst3|converterX|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~16_combout\ = (\inst3|converterX|number\(11) & ((GND) # (!\inst3|converterX|Add1~15\))) # (!\inst3|converterX|number\(11) & (\inst3|converterX|Add1~15\ $ (GND)))
-- \inst3|converterX|Add1~17\ = CARRY((\inst3|converterX|number\(11)) # (!\inst3|converterX|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(11),
	datad => VCC,
	cin => \inst3|converterX|Add1~15\,
	combout => \inst3|converterX|Add1~16_combout\,
	cout => \inst3|converterX|Add1~17\);

-- Location: LCCOMB_X21_Y25_N24
\inst3|converterX|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~20_combout\ = (\inst3|converterX|number\(11) & ((GND) # (!\inst3|converterX|Add5~19\))) # (!\inst3|converterX|number\(11) & (\inst3|converterX|Add5~19\ $ (GND)))
-- \inst3|converterX|Add5~21\ = CARRY((\inst3|converterX|number\(11)) # (!\inst3|converterX|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(11),
	datad => VCC,
	cin => \inst3|converterX|Add5~19\,
	combout => \inst3|converterX|Add5~20_combout\,
	cout => \inst3|converterX|Add5~21\);

-- Location: LCCOMB_X19_Y26_N26
\inst3|converterX|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~18_combout\ = (\inst3|converterX|number\(11) & (\inst3|converterX|Add3~17\ & VCC)) # (!\inst3|converterX|number\(11) & (!\inst3|converterX|Add3~17\))
-- \inst3|converterX|Add3~19\ = CARRY((!\inst3|converterX|number\(11) & !\inst3|converterX|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(11),
	datad => VCC,
	cin => \inst3|converterX|Add3~17\,
	combout => \inst3|converterX|Add3~18_combout\,
	cout => \inst3|converterX|Add3~19\);

-- Location: LCCOMB_X18_Y25_N28
\inst3|converterX|number~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~21_combout\ = (\inst3|converterX|number[9]~2_combout\ & (((\inst3|converterX|Add3~18_combout\) # (!\inst3|converterX|number[9]~1_combout\)))) # (!\inst3|converterX|number[9]~2_combout\ & (\inst3|converterX|Add5~20_combout\ & 
-- (\inst3|converterX|number[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add5~20_combout\,
	datab => \inst3|converterX|number[9]~2_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|Add3~18_combout\,
	combout => \inst3|converterX|number~21_combout\);

-- Location: LCCOMB_X18_Y25_N30
\inst3|converterX|number~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~22_combout\ = (\inst3|converterX|number[9]~1_combout\ & (((\inst3|converterX|number~21_combout\)))) # (!\inst3|converterX|number[9]~1_combout\ & ((\inst3|converterX|number~21_combout\ & (\inst3|converterX|Add0~22_combout\)) # 
-- (!\inst3|converterX|number~21_combout\ & ((\inst3|converterX|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|Add0~22_combout\,
	datab => \inst3|converterX|Add1~16_combout\,
	datac => \inst3|converterX|number[9]~1_combout\,
	datad => \inst3|converterX|number~21_combout\,
	combout => \inst3|converterX|number~22_combout\);

-- Location: LCCOMB_X19_Y25_N26
\inst3|converterX|number[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[11]~feeder_combout\ = \inst3|converterX|number~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~22_combout\,
	combout => \inst3|converterX|number[11]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N30
\inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~4_combout\ = (!\inst|transmission_count\(0) & !\inst|transmission_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|transmission_count\(0),
	datad => \inst|transmission_count\(1),
	combout => \inst|Decoder0~4_combout\);

-- Location: LCCOMB_X15_Y23_N26
\inst|read_temp[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[11]~11_combout\ = (\inst|Decoder0~4_combout\ & ((\inst|Decoder0~6_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~6_combout\ & ((\inst|read_temp\(11)))))) # (!\inst|Decoder0~4_combout\ & (((\inst|read_temp\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~4_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(11),
	datad => \inst|Decoder0~6_combout\,
	combout => \inst|read_temp[11]~11_combout\);

-- Location: FF_X15_Y23_N27
\inst|read_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(11));

-- Location: LCCOMB_X18_Y23_N2
\inst|dataX[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataX[11]~feeder_combout\ = \inst|read_temp\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(11),
	combout => \inst|dataX[11]~feeder_combout\);

-- Location: FF_X18_Y23_N3
\inst|dataX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataX[11]~feeder_combout\,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(11));

-- Location: LCCOMB_X18_Y23_N8
\inst3|accX_v[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[11]~feeder_combout\ = \inst|dataX\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(11),
	combout => \inst3|accX_v[11]~feeder_combout\);

-- Location: FF_X18_Y23_N9
\inst3|accX_v[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[11]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(11));

-- Location: FF_X19_Y25_N27
\inst3|converterX|number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[11]~feeder_combout\,
	asdata => \inst3|accX_v\(11),
	sload => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|number[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(11));

-- Location: LCCOMB_X19_Y25_N20
\inst3|converterX|digit_int_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_3~0_combout\ = (!\inst3|converterX|number\(10) & (!\inst3|converterX|number\(11) & !\inst3|converterX|number\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|number\(10),
	datac => \inst3|converterX|number\(11),
	datad => \inst3|converterX|number\(12),
	combout => \inst3|converterX|digit_int_3~0_combout\);

-- Location: LCCOMB_X19_Y25_N4
\inst3|converterX|digit_int_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_3~2_combout\ = (\inst3|converterX|number\(9) & (\inst3|converterX|number\(8) & \inst3|converterX|number\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(9),
	datab => \inst3|converterX|number\(8),
	datad => \inst3|converterX|number\(7),
	combout => \inst3|converterX|digit_int_3~2_combout\);

-- Location: LCCOMB_X20_Y25_N28
\inst3|converterX|digit_int_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_3~1_combout\ = (\inst3|converterX|number\(5) & (\inst3|converterX|number\(6) & ((\inst3|converterX|number\(4)) # (\inst3|converterX|number\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(5),
	datab => \inst3|converterX|number\(4),
	datac => \inst3|converterX|number\(3),
	datad => \inst3|converterX|number\(6),
	combout => \inst3|converterX|digit_int_3~1_combout\);

-- Location: LCCOMB_X19_Y25_N22
\inst3|converterX|digit_int_3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_3~3_combout\ = (\inst3|converterX|state.s1~q\ & (((\inst3|converterX|digit_int_3~2_combout\ & \inst3|converterX|digit_int_3~1_combout\)) # (!\inst3|converterX|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s1~q\,
	datab => \inst3|converterX|digit_int_3~0_combout\,
	datac => \inst3|converterX|digit_int_3~2_combout\,
	datad => \inst3|converterX|digit_int_3~1_combout\,
	combout => \inst3|converterX|digit_int_3~3_combout\);

-- Location: LCCOMB_X16_Y25_N24
\inst3|converterX|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add0~24_combout\ = \inst3|converterX|Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|converterX|Add0~23\,
	combout => \inst3|converterX|Add0~24_combout\);

-- Location: LCCOMB_X16_Y25_N28
\inst3|converterX|number~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~19_combout\ = (\inst3|converterX|state.s0_s~q\ & (!\inst3|converterX|digit_int_3~3_combout\ & (!\inst3|converterX|number~5_combout\))) # (!\inst3|converterX|state.s0_s~q\ & (((\inst3|converterX|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_3~3_combout\,
	datab => \inst3|converterX|number~5_combout\,
	datac => \inst3|converterX|state.s0_s~q\,
	datad => \inst3|converterX|Add0~24_combout\,
	combout => \inst3|converterX|number~19_combout\);

-- Location: LCCOMB_X17_Y25_N24
\inst3|converterX|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add1~18_combout\ = \inst3|converterX|Add1~17\ $ (!\inst3|converterX|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number\(12),
	cin => \inst3|converterX|Add1~17\,
	combout => \inst3|converterX|Add1~18_combout\);

-- Location: LCCOMB_X19_Y26_N28
\inst3|converterX|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add3~20_combout\ = \inst3|converterX|Add3~19\ $ (\inst3|converterX|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number\(12),
	cin => \inst3|converterX|Add3~19\,
	combout => \inst3|converterX|Add3~20_combout\);

-- Location: LCCOMB_X21_Y25_N26
\inst3|converterX|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add5~22_combout\ = \inst3|converterX|Add5~21\ $ (!\inst3|converterX|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number\(12),
	cin => \inst3|converterX|Add5~21\,
	combout => \inst3|converterX|Add5~22_combout\);

-- Location: LCCOMB_X20_Y25_N16
\inst3|converterX|number~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~17_combout\ = (!\inst3|converterX|state.s1~q\ & ((\inst3|converterX|state.s2~q\ & (\inst3|converterX|Add3~20_combout\)) # (!\inst3|converterX|state.s2~q\ & ((\inst3|converterX|Add5~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s2~q\,
	datab => \inst3|converterX|state.s1~q\,
	datac => \inst3|converterX|Add3~20_combout\,
	datad => \inst3|converterX|Add5~22_combout\,
	combout => \inst3|converterX|number~17_combout\);

-- Location: LCCOMB_X20_Y25_N22
\inst3|converterX|number~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~18_combout\ = (\inst3|converterX|number~17_combout\) # ((\inst3|converterX|state.s1~q\ & \inst3|converterX|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|state.s1~q\,
	datac => \inst3|converterX|Add1~18_combout\,
	datad => \inst3|converterX|number~17_combout\,
	combout => \inst3|converterX|number~18_combout\);

-- Location: LCCOMB_X19_Y25_N12
\inst3|converterX|number~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~20_combout\ = (\inst3|converterX|number~19_combout\ & ((\inst3|converterX|number\(12)) # ((\inst3|converterX|number[9]~6_combout\ & \inst3|converterX|number~18_combout\)))) # (!\inst3|converterX|number~19_combout\ & 
-- (\inst3|converterX|number[9]~6_combout\ & ((\inst3|converterX|number~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number~19_combout\,
	datab => \inst3|converterX|number[9]~6_combout\,
	datac => \inst3|converterX|number\(12),
	datad => \inst3|converterX|number~18_combout\,
	combout => \inst3|converterX|number~20_combout\);

-- Location: LCCOMB_X15_Y23_N10
\inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (\inst|transmission_count\(4) & (\inst|read_temp[1]~1_combout\ & (!\inst|transmission_count\(3) & \inst|read_temp[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(4),
	datab => \inst|read_temp[1]~1_combout\,
	datac => \inst|transmission_count\(3),
	datad => \inst|read_temp[1]~0_combout\,
	combout => \inst|Decoder0~1_combout\);

-- Location: LCCOMB_X15_Y23_N24
\inst|read_temp[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[12]~2_combout\ = (\inst|Decoder0~0_combout\ & ((\inst|Decoder0~1_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~1_combout\ & ((\inst|read_temp\(12)))))) # (!\inst|Decoder0~0_combout\ & (((\inst|read_temp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Decoder0~0_combout\,
	datab => \SDIO~input_o\,
	datac => \inst|read_temp\(12),
	datad => \inst|Decoder0~1_combout\,
	combout => \inst|read_temp[12]~2_combout\);

-- Location: FF_X15_Y23_N25
\inst|read_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(12));

-- Location: FF_X18_Y23_N19
\inst|dataX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(12),
	sload => VCC,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(12));

-- Location: LCCOMB_X18_Y23_N12
\inst3|accX_v[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[12]~feeder_combout\ = \inst|dataX\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(12),
	combout => \inst3|accX_v[12]~feeder_combout\);

-- Location: FF_X18_Y23_N13
\inst3|accX_v[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[12]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(12));

-- Location: FF_X19_Y25_N13
\inst3|converterX|number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number~20_combout\,
	asdata => \inst3|accX_v\(12),
	sload => \inst3|converterX|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(12));

-- Location: LCCOMB_X21_Y25_N28
\inst3|converterX|number~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~31_combout\ = (\inst3|converterX|number\(12) & ((\inst3|converterX|state.s0_s~q\ & (\inst3|converterX|number\(1))) # (!\inst3|converterX|state.s0_s~q\ & ((\inst3|converterX|Add0~2_combout\))))) # (!\inst3|converterX|number\(12) & 
-- (\inst3|converterX|number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(12),
	datab => \inst3|converterX|number\(1),
	datac => \inst3|converterX|state.s0_s~q\,
	datad => \inst3|converterX|Add0~2_combout\,
	combout => \inst3|converterX|number~31_combout\);

-- Location: LCCOMB_X21_Y25_N2
\inst3|converterX|number~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~32_combout\ = (\inst3|converterX|state.s0_s~q\ & ((\inst3|converterX|number~0_combout\ & (\inst3|converterX|Add5~0_combout\)) # (!\inst3|converterX|number~0_combout\ & ((\inst3|converterX|number~31_combout\))))) # 
-- (!\inst3|converterX|state.s0_s~q\ & (((\inst3|converterX|number~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s0_s~q\,
	datab => \inst3|converterX|Add5~0_combout\,
	datac => \inst3|converterX|number~0_combout\,
	datad => \inst3|converterX|number~31_combout\,
	combout => \inst3|converterX|number~32_combout\);

-- Location: LCCOMB_X20_Y25_N6
\inst3|converterX|number[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number[1]~feeder_combout\ = \inst3|converterX|number~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|number~32_combout\,
	combout => \inst3|converterX|number[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N18
\inst|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~9_combout\ = (\inst|transmission_count\(3) & !\inst|transmission_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(3),
	datad => \inst|transmission_count\(4),
	combout => \inst|Decoder0~9_combout\);

-- Location: LCCOMB_X16_Y23_N28
\inst|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~10_combout\ = (\inst|transmission_count\(2) & (\inst|Decoder0~9_combout\ & (\inst|read_temp[1]~0_combout\ & !\inst|transmission_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(2),
	datab => \inst|Decoder0~9_combout\,
	datac => \inst|read_temp[1]~0_combout\,
	datad => \inst|transmission_count\(0),
	combout => \inst|Decoder0~10_combout\);

-- Location: LCCOMB_X16_Y23_N14
\inst|read_temp[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|read_temp[1]~16_combout\ = (\inst|transmission_count\(1) & ((\inst|Decoder0~10_combout\ & (\SDIO~input_o\)) # (!\inst|Decoder0~10_combout\ & ((\inst|read_temp\(1)))))) # (!\inst|transmission_count\(1) & (((\inst|read_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDIO~input_o\,
	datab => \inst|transmission_count\(1),
	datac => \inst|read_temp\(1),
	datad => \inst|Decoder0~10_combout\,
	combout => \inst|read_temp[1]~16_combout\);

-- Location: FF_X16_Y23_N15
\inst|read_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|read_temp[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|read_temp\(1));

-- Location: FF_X16_Y26_N25
\inst|dataX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(1),
	sload => VCC,
	ena => \inst|dataX[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataX\(1));

-- Location: LCCOMB_X16_Y26_N30
\inst3|accX_v[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accX_v[1]~feeder_combout\ = \inst|dataX\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataX\(1),
	combout => \inst3|accX_v[1]~feeder_combout\);

-- Location: FF_X16_Y26_N31
\inst3|accX_v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accX_v[1]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accX_v\(1));

-- Location: FF_X20_Y25_N7
\inst3|converterX|number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|number[1]~feeder_combout\,
	asdata => \inst3|accX_v\(1),
	sload => \inst3|converterX|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|number\(1));

-- Location: LCCOMB_X20_Y25_N30
\inst3|converterX|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|LessThan2~1_combout\ = (\inst3|converterX|number\(6)) # ((\inst3|converterX|number\(3) & ((\inst3|converterX|number\(1)) # (\inst3|converterX|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|number\(1),
	datab => \inst3|converterX|number\(3),
	datac => \inst3|converterX|number\(2),
	datad => \inst3|converterX|number\(6),
	combout => \inst3|converterX|LessThan2~1_combout\);

-- Location: LCCOMB_X20_Y25_N8
\inst3|converterX|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|LessThan2~2_combout\ = (\inst3|converterX|number\(5)) # (\inst3|converterX|number\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|number\(5),
	datad => \inst3|converterX|number\(4),
	combout => \inst3|converterX|LessThan2~2_combout\);

-- Location: LCCOMB_X20_Y25_N14
\inst3|converterX|number~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|number~0_combout\ = (\inst3|converterX|state.s3~q\ & ((\inst3|converterX|LessThan2~1_combout\) # ((\inst3|converterX|LessThan2~2_combout\) # (!\inst3|converterX|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|LessThan2~1_combout\,
	datab => \inst3|converterX|LessThan2~2_combout\,
	datac => \inst3|converterX|state.s3~q\,
	datad => \inst3|converterX|LessThan2~0_combout\,
	combout => \inst3|converterX|number~0_combout\);

-- Location: LCCOMB_X23_Y25_N30
\inst3|converterX|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~18_combout\ = (\inst3|converterX|number~0_combout\) # ((!\inst3|converterX|state.s3~q\ & (!\inst3|converterX|state.s5~q\ & !\inst3|converterX|state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s3~q\,
	datab => \inst3|converterX|state.s5~q\,
	datac => \inst3|converterX|state.s4~q\,
	datad => \inst3|converterX|number~0_combout\,
	combout => \inst3|converterX|state~18_combout\);

-- Location: LCCOMB_X23_Y25_N28
\inst3|converterX|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~17_combout\ = (\inst3|converterX|digit_int_3~3_combout\) # ((!\inst3|converterX|state.s1~q\ & (\inst3|converterX|state.s2~q\ & \inst3|converterX|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_3~3_combout\,
	datab => \inst3|converterX|state.s1~q\,
	datac => \inst3|converterX|state.s2~q\,
	datad => \inst3|converterX|LessThan1~1_combout\,
	combout => \inst3|converterX|state~17_combout\);

-- Location: LCCOMB_X23_Y25_N24
\inst3|converterX|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~19_combout\ = (\inst3|converterX|state~17_combout\) # ((!\inst3|converterX|state.s2~q\ & (!\inst3|converterX|state.s1~q\ & \inst3|converterX|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s2~q\,
	datab => \inst3|converterX|state.s1~q\,
	datac => \inst3|converterX|state~18_combout\,
	datad => \inst3|converterX|state~17_combout\,
	combout => \inst3|converterX|state~19_combout\);

-- Location: LCCOMB_X23_Y25_N20
\inst3|converterX|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~24_combout\ = (\inst3|converterX|state.s0_s~q\ & (\inst3|converterX|state.s1~q\ & (\inst3|converterX|state.s0~q\ $ (\inst3|converterX|state~19_combout\)))) # (!\inst3|converterX|state.s0_s~q\ & (((\inst3|converterX|state.s1~q\)) # 
-- (!\inst3|converterX|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s0~q\,
	datab => \inst3|converterX|state.s0_s~q\,
	datac => \inst3|converterX|state.s1~q\,
	datad => \inst3|converterX|state~19_combout\,
	combout => \inst3|converterX|state~24_combout\);

-- Location: FF_X23_Y25_N21
\inst3|converterX|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s1~q\);

-- Location: LCCOMB_X23_Y25_N14
\inst3|converterX|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~23_combout\ = (\inst3|converterX|state~21_combout\ & (((\inst3|converterX|state.s2~q\)))) # (!\inst3|converterX|state~21_combout\ & (!\inst3|converterX|state.s0~q\ & (\inst3|converterX|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s0~q\,
	datab => \inst3|converterX|state.s1~q\,
	datac => \inst3|converterX|state.s2~q\,
	datad => \inst3|converterX|state~21_combout\,
	combout => \inst3|converterX|state~23_combout\);

-- Location: FF_X23_Y25_N15
\inst3|converterX|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s2~q\);

-- Location: LCCOMB_X23_Y25_N6
\inst3|converterX|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~25_combout\ = (\inst3|converterX|state~21_combout\ & (((\inst3|converterX|state.s3~q\)))) # (!\inst3|converterX|state~21_combout\ & (!\inst3|converterX|state.s0~q\ & (\inst3|converterX|state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s0~q\,
	datab => \inst3|converterX|state.s2~q\,
	datac => \inst3|converterX|state.s3~q\,
	datad => \inst3|converterX|state~21_combout\,
	combout => \inst3|converterX|state~25_combout\);

-- Location: FF_X23_Y25_N7
\inst3|converterX|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s3~q\);

-- Location: LCCOMB_X23_Y25_N10
\inst3|converterX|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~16_combout\ = (\inst3|converterX|state.s3~q\) # ((\inst3|converterX|state.s2~q\) # ((\inst3|converterX|state.s4~q\) # (!\inst3|converterX|number[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s3~q\,
	datab => \inst3|converterX|state.s2~q\,
	datac => \inst3|converterX|state.s4~q\,
	datad => \inst3|converterX|number[9]~1_combout\,
	combout => \inst3|converterX|state~16_combout\);

-- Location: LCCOMB_X23_Y25_N12
\inst3|converterX|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|state~20_combout\ = (!\inst3|converterX|state~16_combout\ & (!\inst3|converterX|state.s0~q\ & ((!\inst3|converterX|state~19_combout\) # (!\inst3|converterX|state.s0_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state~16_combout\,
	datab => \inst3|converterX|state.s0_s~q\,
	datac => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|state~19_combout\,
	combout => \inst3|converterX|state~20_combout\);

-- Location: FF_X23_Y25_N13
\inst3|converterX|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|state.s0~q\);

-- Location: LCCOMB_X21_Y27_N10
\inst3|converterX|digit_int_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_0~0_combout\ = (!\inst3|converterX|state.s0~q\ & \inst3|converterX|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|number\(3),
	combout => \inst3|converterX|digit_int_0~0_combout\);

-- Location: LCCOMB_X23_Y25_N4
\inst3|converterX|digit_int_0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_0[0]~1_combout\ = (\inst3|converterX|state.s4~q\) # (\inst3|converterX|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|state.s4~q\,
	datad => \inst3|converterX|state.s0~q\,
	combout => \inst3|converterX|digit_int_0[0]~1_combout\);

-- Location: FF_X21_Y27_N11
\inst3|converterX|digit_int_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_0~0_combout\,
	ena => \inst3|converterX|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_0\(3));

-- Location: FF_X25_Y27_N9
\inst3|converterX|digit_out_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_0\(3),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_0\(3));

-- Location: LCCOMB_X25_Y27_N8
\inst3|lcd_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~66_combout\ = (\inst3|lcd_data~41_combout\ & (((!\inst3|charCount\(0) & \inst3|converterX|digit_out_0\(3))) # (!\inst3|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|converterX|digit_out_0\(3),
	datad => \inst3|lcd_data~41_combout\,
	combout => \inst3|lcd_data~66_combout\);

-- Location: LCCOMB_X21_Y27_N16
\inst3|converterX|digit_int_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_1~1_combout\ = (!\inst3|converterX|state.s0~q\ & !\inst3|converterX|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|state.s0~q\,
	datac => \inst3|converterX|digit_int_1\(0),
	combout => \inst3|converterX|digit_int_1~1_combout\);

-- Location: LCCOMB_X21_Y27_N18
\inst3|converterX|digit_int_1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_1[2]~0_combout\ = (\inst3|converterX|state.s0~q\) # (\inst3|converterX|number~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|number~0_combout\,
	combout => \inst3|converterX|digit_int_1[2]~0_combout\);

-- Location: FF_X21_Y27_N17
\inst3|converterX|digit_int_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_1~1_combout\,
	ena => \inst3|converterX|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_1\(0));

-- Location: LCCOMB_X21_Y27_N20
\inst3|converterX|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add6~2_combout\ = \inst3|converterX|digit_int_1\(1) $ (\inst3|converterX|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|digit_int_1\(1),
	datad => \inst3|converterX|digit_int_1\(0),
	combout => \inst3|converterX|Add6~2_combout\);

-- Location: FF_X21_Y27_N21
\inst3|converterX|digit_int_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add6~2_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_1\(1));

-- Location: LCCOMB_X21_Y27_N6
\inst3|converterX|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add6~1_combout\ = \inst3|converterX|digit_int_1\(2) $ (((\inst3|converterX|digit_int_1\(0) & \inst3|converterX|digit_int_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|digit_int_1\(0),
	datac => \inst3|converterX|digit_int_1\(2),
	datad => \inst3|converterX|digit_int_1\(1),
	combout => \inst3|converterX|Add6~1_combout\);

-- Location: FF_X21_Y27_N7
\inst3|converterX|digit_int_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add6~1_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_1\(2));

-- Location: LCCOMB_X21_Y27_N28
\inst3|converterX|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add6~0_combout\ = \inst3|converterX|digit_int_1\(3) $ (((\inst3|converterX|digit_int_1\(2) & (\inst3|converterX|digit_int_1\(0) & \inst3|converterX|digit_int_1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_1\(2),
	datab => \inst3|converterX|digit_int_1\(0),
	datac => \inst3|converterX|digit_int_1\(3),
	datad => \inst3|converterX|digit_int_1\(1),
	combout => \inst3|converterX|Add6~0_combout\);

-- Location: FF_X21_Y27_N29
\inst3|converterX|digit_int_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add6~0_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_1\(3));

-- Location: LCCOMB_X24_Y27_N6
\inst3|converterX|digit_out_1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_out_1[3]~feeder_combout\ = \inst3|converterX|digit_int_1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|digit_int_1\(3),
	combout => \inst3|converterX|digit_out_1[3]~feeder_combout\);

-- Location: FF_X24_Y27_N7
\inst3|converterX|digit_out_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_out_1[3]~feeder_combout\,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_1\(3));

-- Location: LCCOMB_X23_Y27_N0
\inst3|converterX|digit_int_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_2~1_combout\ = (!\inst3|converterX|state.s0~q\ & !\inst3|converterX|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|state.s0~q\,
	datac => \inst3|converterX|digit_int_2\(0),
	combout => \inst3|converterX|digit_int_2~1_combout\);

-- Location: LCCOMB_X23_Y27_N12
\inst3|converterX|digit_int_2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_2[0]~0_combout\ = (\inst3|converterX|state.s0~q\) # ((\inst3|converterX|state.s2~q\ & \inst3|converterX|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|state.s2~q\,
	datab => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|LessThan1~1_combout\,
	combout => \inst3|converterX|digit_int_2[0]~0_combout\);

-- Location: FF_X23_Y27_N1
\inst3|converterX|digit_int_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_2~1_combout\,
	ena => \inst3|converterX|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_2\(0));

-- Location: LCCOMB_X23_Y27_N20
\inst3|converterX|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add4~2_combout\ = \inst3|converterX|digit_int_2\(1) $ (\inst3|converterX|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|digit_int_2\(1),
	datad => \inst3|converterX|digit_int_2\(0),
	combout => \inst3|converterX|Add4~2_combout\);

-- Location: FF_X23_Y27_N21
\inst3|converterX|digit_int_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add4~2_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_2\(1));

-- Location: LCCOMB_X23_Y27_N16
\inst3|converterX|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add4~1_combout\ = \inst3|converterX|digit_int_2\(2) $ (((\inst3|converterX|digit_int_2\(1) & \inst3|converterX|digit_int_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|digit_int_2\(1),
	datac => \inst3|converterX|digit_int_2\(2),
	datad => \inst3|converterX|digit_int_2\(0),
	combout => \inst3|converterX|Add4~1_combout\);

-- Location: FF_X23_Y27_N17
\inst3|converterX|digit_int_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add4~1_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_2\(2));

-- Location: LCCOMB_X23_Y27_N4
\inst3|converterX|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add4~0_combout\ = \inst3|converterX|digit_int_2\(3) $ (((\inst3|converterX|digit_int_2\(2) & (\inst3|converterX|digit_int_2\(1) & \inst3|converterX|digit_int_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_2\(2),
	datab => \inst3|converterX|digit_int_2\(1),
	datac => \inst3|converterX|digit_int_2\(3),
	datad => \inst3|converterX|digit_int_2\(0),
	combout => \inst3|converterX|Add4~0_combout\);

-- Location: FF_X23_Y27_N5
\inst3|converterX|digit_int_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add4~0_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_2\(3));

-- Location: FF_X24_Y27_N19
\inst3|converterX|digit_out_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_2\(3),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_2\(3));

-- Location: LCCOMB_X23_Y27_N22
\inst3|converterX|digit_int_3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_3~5_combout\ = (!\inst3|converterX|state.s0~q\ & !\inst3|converterX|digit_int_3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterX|state.s0~q\,
	datac => \inst3|converterX|digit_int_3\(0),
	combout => \inst3|converterX|digit_int_3~5_combout\);

-- Location: LCCOMB_X23_Y27_N2
\inst3|converterX|digit_int_3[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_3[2]~4_combout\ = (\inst3|converterX|state.s0~q\) # (\inst3|converterX|digit_int_3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|digit_int_3~3_combout\,
	combout => \inst3|converterX|digit_int_3[2]~4_combout\);

-- Location: FF_X23_Y27_N23
\inst3|converterX|digit_int_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_3~5_combout\,
	ena => \inst3|converterX|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_3\(0));

-- Location: LCCOMB_X23_Y27_N30
\inst3|converterX|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add2~2_combout\ = \inst3|converterX|digit_int_3\(0) $ (\inst3|converterX|digit_int_3\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_3\(0),
	datac => \inst3|converterX|digit_int_3\(1),
	combout => \inst3|converterX|Add2~2_combout\);

-- Location: FF_X23_Y27_N31
\inst3|converterX|digit_int_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add2~2_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_3\(1));

-- Location: LCCOMB_X23_Y27_N6
\inst3|converterX|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add2~1_combout\ = \inst3|converterX|digit_int_3\(2) $ (((\inst3|converterX|digit_int_3\(1) & \inst3|converterX|digit_int_3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_3\(1),
	datac => \inst3|converterX|digit_int_3\(2),
	datad => \inst3|converterX|digit_int_3\(0),
	combout => \inst3|converterX|Add2~1_combout\);

-- Location: FF_X23_Y27_N7
\inst3|converterX|digit_int_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add2~1_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_3\(2));

-- Location: LCCOMB_X23_Y27_N26
\inst3|converterX|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|Add2~0_combout\ = \inst3|converterX|digit_int_3\(3) $ (((\inst3|converterX|digit_int_3\(1) & (\inst3|converterX|digit_int_3\(0) & \inst3|converterX|digit_int_3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_int_3\(1),
	datab => \inst3|converterX|digit_int_3\(0),
	datac => \inst3|converterX|digit_int_3\(3),
	datad => \inst3|converterX|digit_int_3\(2),
	combout => \inst3|converterX|Add2~0_combout\);

-- Location: FF_X23_Y27_N27
\inst3|converterX|digit_int_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|Add2~0_combout\,
	sclr => \inst3|converterX|state.s0~q\,
	ena => \inst3|converterX|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_3\(3));

-- Location: FF_X24_Y27_N1
\inst3|converterX|digit_out_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_3\(3),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_3\(3));

-- Location: LCCOMB_X24_Y27_N0
\inst3|lcd_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~68_combout\ = (\inst3|charCount\(0) & (((\inst3|converterX|digit_out_3\(3)) # (\inst3|charCount\(1))))) # (!\inst3|charCount\(0) & (\inst3|accX_v\(12) & ((!\inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|accX_v\(12),
	datac => \inst3|converterX|digit_out_3\(3),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~68_combout\);

-- Location: LCCOMB_X24_Y27_N18
\inst3|lcd_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~69_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~68_combout\ & (\inst3|converterX|digit_out_1\(3))) # (!\inst3|lcd_data~68_combout\ & ((\inst3|converterX|digit_out_2\(3)))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_out_1\(3),
	datab => \inst3|charCount\(1),
	datac => \inst3|converterX|digit_out_2\(3),
	datad => \inst3|lcd_data~68_combout\,
	combout => \inst3|lcd_data~69_combout\);

-- Location: LCCOMB_X25_Y27_N28
\inst3|lcd_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~70_combout\ = (!\inst3|charCount\(4) & ((\inst3|lcd_data~66_combout\) # ((\inst3|lcd_data~67_combout\ & \inst3|lcd_data~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~67_combout\,
	datab => \inst3|charCount\(4),
	datac => \inst3|lcd_data~66_combout\,
	datad => \inst3|lcd_data~69_combout\,
	combout => \inst3|lcd_data~70_combout\);

-- Location: LCCOMB_X25_Y27_N30
\inst3|lcd_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~71_combout\ = (\inst3|charCount\(3) & ((\inst3|charCount\(1) & (!\inst3|charCount\(0))) # (!\inst3|charCount\(1) & ((!\inst3|charCount\(2)))))) # (!\inst3|charCount\(3) & (\inst3|charCount\(0) & (!\inst3|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~71_combout\);

-- Location: LCCOMB_X25_Y27_N12
\inst3|lcd_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~72_combout\ = (!\inst3|charCount\(4) & \inst3|lcd_data~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(4),
	datac => \inst3|lcd_data~71_combout\,
	combout => \inst3|lcd_data~72_combout\);

-- Location: LCCOMB_X25_Y27_N16
\inst3|lcd_data~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~26_combout\ = (\inst3|charCount\(1) & (!\inst3|charCount\(0) & (\inst3|charCount\(3) $ (\inst3|charCount\(2))))) # (!\inst3|charCount\(1) & (((!\inst3|charCount\(3) & !\inst3|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~26_combout\);

-- Location: LCCOMB_X25_Y27_N10
\inst3|lcd_data~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~170_combout\ = (!\inst3|charCount\(4) & \inst3|lcd_data~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|charCount\(4),
	datad => \inst3|lcd_data~26_combout\,
	combout => \inst3|lcd_data~170_combout\);

-- Location: LCCOMB_X25_Y27_N14
\inst3|lcd_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~73_combout\ = (\inst3|lineCount\(0) & (((\inst3|lineCount\(1))))) # (!\inst3|lineCount\(0) & ((\inst3|lineCount\(1) & (\inst3|lcd_data~170_combout\)) # (!\inst3|lineCount\(1) & ((\inst3|lcd_data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~170_combout\,
	datab => \inst3|lineCount\(0),
	datac => \inst3|lineCount\(1),
	datad => \inst3|lcd_data\(3),
	combout => \inst3|lcd_data~73_combout\);

-- Location: LCCOMB_X25_Y26_N12
\inst3|lcd_data~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~176_combout\ = (\inst3|charCount\(4) & (!\inst3|charCount\(3) & (!\inst3|charCount\(0) & !\inst3|charCount\(2)))) # (!\inst3|charCount\(4) & (\inst3|charCount\(0) $ (((\inst3|charCount\(3)) # (\inst3|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(0),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~176_combout\);

-- Location: LCCOMB_X25_Y26_N2
\inst3|lcd_data~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~177_combout\ = (\inst3|lcd_data~176_combout\ & (\inst3|charCount\(1) $ (((\inst3|charCount\(2)) # (!\inst3|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~176_combout\,
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~177_combout\);

-- Location: LCCOMB_X25_Y27_N4
\inst3|lcd_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~74_combout\ = (\inst3|lineCount\(0) & ((\inst3|lcd_data~73_combout\ & ((\inst3|lcd_data~177_combout\))) # (!\inst3|lcd_data~73_combout\ & (\inst3|lcd_data~72_combout\)))) # (!\inst3|lineCount\(0) & (((\inst3|lcd_data~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~72_combout\,
	datab => \inst3|lineCount\(0),
	datac => \inst3|lcd_data~73_combout\,
	datad => \inst3|lcd_data~177_combout\,
	combout => \inst3|lcd_data~74_combout\);

-- Location: LCCOMB_X26_Y27_N24
\inst3|lcd_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~76_combout\ = (\inst3|charCount\(2) & ((\inst3|charCount\(3)))) # (!\inst3|charCount\(2) & (!\inst3|charCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~76_combout\);

-- Location: LCCOMB_X26_Y27_N4
\inst3|lcd_data~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~165_combout\ = (\inst3|charCount\(0) & (!\inst3|charCount\(4) & ((\inst3|lcd_data~76_combout\)))) # (!\inst3|charCount\(0) & (((\inst3|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(4),
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|lcd_data~76_combout\,
	combout => \inst3|lcd_data~165_combout\);

-- Location: LCCOMB_X25_Y27_N26
\inst3|lcd_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~77_combout\ = (\inst3|display_state~q\ & (!\inst3|lcd_data~38_combout\)) # (!\inst3|display_state~q\ & ((\inst3|lcd_data~38_combout\ & ((\inst3|lcd_data~165_combout\))) # (!\inst3|lcd_data~38_combout\ & (\inst3|lcd_data~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~38_combout\,
	datac => \inst3|lcd_data~74_combout\,
	datad => \inst3|lcd_data~165_combout\,
	combout => \inst3|lcd_data~77_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst3|converterZ|number[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[10]~2_combout\ = ((\inst3|converterZ|state.s2~q\ & !\inst3|converterZ|state.s1~q\)) # (!\inst3|converterZ|state.s0_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|state.s2~q\,
	datac => \inst3|converterZ|state.s0_s~q\,
	datad => \inst3|converterZ|state.s1~q\,
	combout => \inst3|converterZ|number[10]~2_combout\);

-- Location: LCCOMB_X18_Y20_N0
\inst3|converterZ|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~0_combout\ = \inst3|converterZ|number\(3) $ (VCC)
-- \inst3|converterZ|Add1~1\ = CARRY(\inst3|converterZ|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(3),
	datad => VCC,
	combout => \inst3|converterZ|Add1~0_combout\,
	cout => \inst3|converterZ|Add1~1\);

-- Location: LCCOMB_X18_Y20_N2
\inst3|converterZ|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~2_combout\ = (\inst3|converterZ|number\(4) & (\inst3|converterZ|Add1~1\ & VCC)) # (!\inst3|converterZ|number\(4) & (!\inst3|converterZ|Add1~1\))
-- \inst3|converterZ|Add1~3\ = CARRY((!\inst3|converterZ|number\(4) & !\inst3|converterZ|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(4),
	datad => VCC,
	cin => \inst3|converterZ|Add1~1\,
	combout => \inst3|converterZ|Add1~2_combout\,
	cout => \inst3|converterZ|Add1~3\);

-- Location: LCCOMB_X20_Y20_N26
\inst3|converterZ|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|LessThan2~2_combout\ = (\inst3|converterZ|number\(4)) # (\inst3|converterZ|number\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|number\(4),
	datad => \inst3|converterZ|number\(5),
	combout => \inst3|converterZ|LessThan2~2_combout\);

-- Location: LCCOMB_X19_Y20_N4
\inst3|converterZ|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~0_combout\ = \inst3|converterZ|number\(1) $ (VCC)
-- \inst3|converterZ|Add5~1\ = CARRY(\inst3|converterZ|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(1),
	datad => VCC,
	combout => \inst3|converterZ|Add5~0_combout\,
	cout => \inst3|converterZ|Add5~1\);

-- Location: LCCOMB_X15_Y20_N0
\inst3|converterZ|number[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[0]~feeder_combout\ = \inst3|converterZ|number\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number\(0),
	combout => \inst3|converterZ|number[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y23_N30
\inst|dataZ[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[12]~0_combout\ = (\inst|transmission_count\(4) & (\inst|transmission_count\(3) & (\inst|Equal1~0_combout\ & \inst|state.readZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(4),
	datab => \inst|transmission_count\(3),
	datac => \inst|Equal1~0_combout\,
	datad => \inst|state.readZ~q\,
	combout => \inst|dataZ[12]~0_combout\);

-- Location: FF_X17_Y23_N3
\inst|dataZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(0),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(0));

-- Location: LCCOMB_X17_Y23_N16
\inst3|accZ_v[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[0]~feeder_combout\ = \inst|dataZ\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(0),
	combout => \inst3|accZ_v[0]~feeder_combout\);

-- Location: FF_X17_Y23_N17
\inst3|accZ_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[0]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(0));

-- Location: FF_X15_Y20_N1
\inst3|converterZ|number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[0]~feeder_combout\,
	asdata => \inst3|accZ_v\(0),
	sload => \inst3|converterZ|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(0));

-- Location: LCCOMB_X15_Y20_N2
\inst3|converterZ|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~1_cout\ = CARRY(!\inst3|converterZ|number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(0),
	datad => VCC,
	cout => \inst3|converterZ|Add0~1_cout\);

-- Location: LCCOMB_X15_Y20_N4
\inst3|converterZ|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~2_combout\ = (\inst3|converterZ|number\(1) & (!\inst3|converterZ|Add0~1_cout\)) # (!\inst3|converterZ|number\(1) & (\inst3|converterZ|Add0~1_cout\ & VCC))
-- \inst3|converterZ|Add0~3\ = CARRY((\inst3|converterZ|number\(1) & !\inst3|converterZ|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(1),
	datad => VCC,
	cin => \inst3|converterZ|Add0~1_cout\,
	combout => \inst3|converterZ|Add0~2_combout\,
	cout => \inst3|converterZ|Add0~3\);

-- Location: LCCOMB_X15_Y20_N16
\inst3|converterZ|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~14_combout\ = (\inst3|converterZ|number\(7) & (!\inst3|converterZ|Add0~13\)) # (!\inst3|converterZ|number\(7) & (\inst3|converterZ|Add0~13\ & VCC))
-- \inst3|converterZ|Add0~15\ = CARRY((\inst3|converterZ|number\(7) & !\inst3|converterZ|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(7),
	datad => VCC,
	cin => \inst3|converterZ|Add0~13\,
	combout => \inst3|converterZ|Add0~14_combout\,
	cout => \inst3|converterZ|Add0~15\);

-- Location: LCCOMB_X15_Y20_N18
\inst3|converterZ|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~16_combout\ = (\inst3|converterZ|number\(8) & (\inst3|converterZ|Add0~15\ $ (GND))) # (!\inst3|converterZ|number\(8) & ((GND) # (!\inst3|converterZ|Add0~15\)))
-- \inst3|converterZ|Add0~17\ = CARRY((!\inst3|converterZ|Add0~15\) # (!\inst3|converterZ|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(8),
	datad => VCC,
	cin => \inst3|converterZ|Add0~15\,
	combout => \inst3|converterZ|Add0~16_combout\,
	cout => \inst3|converterZ|Add0~17\);

-- Location: LCCOMB_X15_Y20_N20
\inst3|converterZ|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~18_combout\ = (\inst3|converterZ|number\(9) & (!\inst3|converterZ|Add0~17\)) # (!\inst3|converterZ|number\(9) & (\inst3|converterZ|Add0~17\ & VCC))
-- \inst3|converterZ|Add0~19\ = CARRY((\inst3|converterZ|number\(9) & !\inst3|converterZ|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(9),
	datad => VCC,
	cin => \inst3|converterZ|Add0~17\,
	combout => \inst3|converterZ|Add0~18_combout\,
	cout => \inst3|converterZ|Add0~19\);

-- Location: LCCOMB_X15_Y20_N22
\inst3|converterZ|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~20_combout\ = (\inst3|converterZ|number\(10) & (\inst3|converterZ|Add0~19\ $ (GND))) # (!\inst3|converterZ|number\(10) & ((GND) # (!\inst3|converterZ|Add0~19\)))
-- \inst3|converterZ|Add0~21\ = CARRY((!\inst3|converterZ|Add0~19\) # (!\inst3|converterZ|number\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(10),
	datad => VCC,
	cin => \inst3|converterZ|Add0~19\,
	combout => \inst3|converterZ|Add0~20_combout\,
	cout => \inst3|converterZ|Add0~21\);

-- Location: LCCOMB_X18_Y20_N12
\inst3|converterZ|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~12_combout\ = (\inst3|converterZ|number\(9) & (\inst3|converterZ|Add1~11\ $ (GND))) # (!\inst3|converterZ|number\(9) & (!\inst3|converterZ|Add1~11\ & VCC))
-- \inst3|converterZ|Add1~13\ = CARRY((\inst3|converterZ|number\(9) & !\inst3|converterZ|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(9),
	datad => VCC,
	cin => \inst3|converterZ|Add1~11\,
	combout => \inst3|converterZ|Add1~12_combout\,
	cout => \inst3|converterZ|Add1~13\);

-- Location: LCCOMB_X18_Y20_N14
\inst3|converterZ|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~14_combout\ = (\inst3|converterZ|number\(10) & (\inst3|converterZ|Add1~13\ & VCC)) # (!\inst3|converterZ|number\(10) & (!\inst3|converterZ|Add1~13\))
-- \inst3|converterZ|Add1~15\ = CARRY((!\inst3|converterZ|number\(10) & !\inst3|converterZ|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(10),
	datad => VCC,
	cin => \inst3|converterZ|Add1~13\,
	combout => \inst3|converterZ|Add1~14_combout\,
	cout => \inst3|converterZ|Add1~15\);

-- Location: LCCOMB_X19_Y20_N10
\inst3|converterZ|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~6_combout\ = (\inst3|converterZ|number\(4) & (\inst3|converterZ|Add5~5\ & VCC)) # (!\inst3|converterZ|number\(4) & (!\inst3|converterZ|Add5~5\))
-- \inst3|converterZ|Add5~7\ = CARRY((!\inst3|converterZ|number\(4) & !\inst3|converterZ|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(4),
	datad => VCC,
	cin => \inst3|converterZ|Add5~5\,
	combout => \inst3|converterZ|Add5~6_combout\,
	cout => \inst3|converterZ|Add5~7\);

-- Location: LCCOMB_X19_Y20_N12
\inst3|converterZ|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~8_combout\ = (\inst3|converterZ|number\(5) & ((GND) # (!\inst3|converterZ|Add5~7\))) # (!\inst3|converterZ|number\(5) & (\inst3|converterZ|Add5~7\ $ (GND)))
-- \inst3|converterZ|Add5~9\ = CARRY((\inst3|converterZ|number\(5)) # (!\inst3|converterZ|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(5),
	datad => VCC,
	cin => \inst3|converterZ|Add5~7\,
	combout => \inst3|converterZ|Add5~8_combout\,
	cout => \inst3|converterZ|Add5~9\);

-- Location: LCCOMB_X19_Y20_N14
\inst3|converterZ|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~10_combout\ = (\inst3|converterZ|number\(6) & (\inst3|converterZ|Add5~9\ & VCC)) # (!\inst3|converterZ|number\(6) & (!\inst3|converterZ|Add5~9\))
-- \inst3|converterZ|Add5~11\ = CARRY((!\inst3|converterZ|number\(6) & !\inst3|converterZ|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(6),
	datad => VCC,
	cin => \inst3|converterZ|Add5~9\,
	combout => \inst3|converterZ|Add5~10_combout\,
	cout => \inst3|converterZ|Add5~11\);

-- Location: LCCOMB_X19_Y20_N16
\inst3|converterZ|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~12_combout\ = (\inst3|converterZ|number\(7) & ((GND) # (!\inst3|converterZ|Add5~11\))) # (!\inst3|converterZ|number\(7) & (\inst3|converterZ|Add5~11\ $ (GND)))
-- \inst3|converterZ|Add5~13\ = CARRY((\inst3|converterZ|number\(7)) # (!\inst3|converterZ|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(7),
	datad => VCC,
	cin => \inst3|converterZ|Add5~11\,
	combout => \inst3|converterZ|Add5~12_combout\,
	cout => \inst3|converterZ|Add5~13\);

-- Location: LCCOMB_X19_Y20_N18
\inst3|converterZ|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~14_combout\ = (\inst3|converterZ|number\(8) & (\inst3|converterZ|Add5~13\ & VCC)) # (!\inst3|converterZ|number\(8) & (!\inst3|converterZ|Add5~13\))
-- \inst3|converterZ|Add5~15\ = CARRY((!\inst3|converterZ|number\(8) & !\inst3|converterZ|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(8),
	datad => VCC,
	cin => \inst3|converterZ|Add5~13\,
	combout => \inst3|converterZ|Add5~14_combout\,
	cout => \inst3|converterZ|Add5~15\);

-- Location: LCCOMB_X19_Y20_N20
\inst3|converterZ|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~16_combout\ = (\inst3|converterZ|number\(9) & ((GND) # (!\inst3|converterZ|Add5~15\))) # (!\inst3|converterZ|number\(9) & (\inst3|converterZ|Add5~15\ $ (GND)))
-- \inst3|converterZ|Add5~17\ = CARRY((\inst3|converterZ|number\(9)) # (!\inst3|converterZ|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(9),
	datad => VCC,
	cin => \inst3|converterZ|Add5~15\,
	combout => \inst3|converterZ|Add5~16_combout\,
	cout => \inst3|converterZ|Add5~17\);

-- Location: LCCOMB_X19_Y20_N22
\inst3|converterZ|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~18_combout\ = (\inst3|converterZ|number\(10) & (\inst3|converterZ|Add5~17\ & VCC)) # (!\inst3|converterZ|number\(10) & (!\inst3|converterZ|Add5~17\))
-- \inst3|converterZ|Add5~19\ = CARRY((!\inst3|converterZ|number\(10) & !\inst3|converterZ|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(10),
	datad => VCC,
	cin => \inst3|converterZ|Add5~17\,
	combout => \inst3|converterZ|Add5~18_combout\,
	cout => \inst3|converterZ|Add5~19\);

-- Location: LCCOMB_X18_Y20_N30
\inst3|converterZ|number~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~23_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~18_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\) 
-- # ((\inst3|converterZ|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add1~14_combout\,
	datad => \inst3|converterZ|Add5~18_combout\,
	combout => \inst3|converterZ|number~23_combout\);

-- Location: LCCOMB_X21_Y20_N16
\inst3|converterZ|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~12_combout\ = (\inst3|converterZ|number\(8) & ((GND) # (!\inst3|converterZ|Add3~11\))) # (!\inst3|converterZ|number\(8) & (\inst3|converterZ|Add3~11\ $ (GND)))
-- \inst3|converterZ|Add3~13\ = CARRY((\inst3|converterZ|number\(8)) # (!\inst3|converterZ|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(8),
	datad => VCC,
	cin => \inst3|converterZ|Add3~11\,
	combout => \inst3|converterZ|Add3~12_combout\,
	cout => \inst3|converterZ|Add3~13\);

-- Location: LCCOMB_X21_Y20_N18
\inst3|converterZ|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~14_combout\ = (\inst3|converterZ|number\(9) & (\inst3|converterZ|Add3~13\ & VCC)) # (!\inst3|converterZ|number\(9) & (!\inst3|converterZ|Add3~13\))
-- \inst3|converterZ|Add3~15\ = CARRY((!\inst3|converterZ|number\(9) & !\inst3|converterZ|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(9),
	datad => VCC,
	cin => \inst3|converterZ|Add3~13\,
	combout => \inst3|converterZ|Add3~14_combout\,
	cout => \inst3|converterZ|Add3~15\);

-- Location: LCCOMB_X21_Y20_N20
\inst3|converterZ|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~16_combout\ = (\inst3|converterZ|number\(10) & ((GND) # (!\inst3|converterZ|Add3~15\))) # (!\inst3|converterZ|number\(10) & (\inst3|converterZ|Add3~15\ $ (GND)))
-- \inst3|converterZ|Add3~17\ = CARRY((\inst3|converterZ|number\(10)) # (!\inst3|converterZ|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(10),
	datad => VCC,
	cin => \inst3|converterZ|Add3~15\,
	combout => \inst3|converterZ|Add3~16_combout\,
	cout => \inst3|converterZ|Add3~17\);

-- Location: LCCOMB_X18_Y20_N28
\inst3|converterZ|number~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~24_combout\ = (\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|number~23_combout\ & (\inst3|converterZ|Add0~20_combout\)) # (!\inst3|converterZ|number~23_combout\ & ((\inst3|converterZ|Add3~16_combout\))))) # 
-- (!\inst3|converterZ|number[10]~2_combout\ & (((\inst3|converterZ|number~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add0~20_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|number~23_combout\,
	datad => \inst3|converterZ|Add3~16_combout\,
	combout => \inst3|converterZ|number~24_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst3|converterZ|number[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[10]~feeder_combout\ = \inst3|converterZ|number~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~24_combout\,
	combout => \inst3|converterZ|number[10]~feeder_combout\);

-- Location: LCCOMB_X20_Y23_N2
\inst|dataZ[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[10]~feeder_combout\ = \inst|read_temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(10),
	combout => \inst|dataZ[10]~feeder_combout\);

-- Location: FF_X20_Y23_N3
\inst|dataZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataZ[10]~feeder_combout\,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(10));

-- Location: LCCOMB_X20_Y23_N8
\inst3|accZ_v[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[10]~feeder_combout\ = \inst|dataZ\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(10),
	combout => \inst3|accZ_v[10]~feeder_combout\);

-- Location: FF_X20_Y23_N9
\inst3|accZ_v[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[10]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(10));

-- Location: LCCOMB_X17_Y20_N2
\inst3|converterZ|number[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[10]~6_combout\ = (\inst3|converterZ|state.s0_s~q\ & ((\inst3|converterZ|digit_int_3~3_combout\) # (\inst3|converterZ|number~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0_s~q\,
	datac => \inst3|converterZ|digit_int_3~3_combout\,
	datad => \inst3|converterZ|number~5_combout\,
	combout => \inst3|converterZ|number[10]~6_combout\);

-- Location: LCCOMB_X17_Y20_N28
\inst3|converterZ|number[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[10]~7_combout\ = (\inst3|converterZ|state.s0~q\) # ((\inst3|converterZ|number[10]~6_combout\) # ((!\inst3|converterZ|state.s0_s~q\ & \inst3|converterZ|number\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0_s~q\,
	datab => \inst3|converterZ|number\(12),
	datac => \inst3|converterZ|state.s0~q\,
	datad => \inst3|converterZ|number[10]~6_combout\,
	combout => \inst3|converterZ|number[10]~7_combout\);

-- Location: FF_X17_Y20_N13
\inst3|converterZ|number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[10]~feeder_combout\,
	asdata => \inst3|accZ_v\(10),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(10));

-- Location: LCCOMB_X18_Y20_N16
\inst3|converterZ|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~16_combout\ = (\inst3|converterZ|number\(11) & ((GND) # (!\inst3|converterZ|Add1~15\))) # (!\inst3|converterZ|number\(11) & (\inst3|converterZ|Add1~15\ $ (GND)))
-- \inst3|converterZ|Add1~17\ = CARRY((\inst3|converterZ|number\(11)) # (!\inst3|converterZ|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(11),
	datad => VCC,
	cin => \inst3|converterZ|Add1~15\,
	combout => \inst3|converterZ|Add1~16_combout\,
	cout => \inst3|converterZ|Add1~17\);

-- Location: LCCOMB_X15_Y20_N24
\inst3|converterZ|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~22_combout\ = (\inst3|converterZ|number\(11) & (!\inst3|converterZ|Add0~21\)) # (!\inst3|converterZ|number\(11) & (\inst3|converterZ|Add0~21\ & VCC))
-- \inst3|converterZ|Add0~23\ = CARRY((\inst3|converterZ|number\(11) & !\inst3|converterZ|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(11),
	datad => VCC,
	cin => \inst3|converterZ|Add0~21\,
	combout => \inst3|converterZ|Add0~22_combout\,
	cout => \inst3|converterZ|Add0~23\);

-- Location: LCCOMB_X21_Y20_N22
\inst3|converterZ|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~18_combout\ = (\inst3|converterZ|number\(11) & (\inst3|converterZ|Add3~17\ & VCC)) # (!\inst3|converterZ|number\(11) & (!\inst3|converterZ|Add3~17\))
-- \inst3|converterZ|Add3~19\ = CARRY((!\inst3|converterZ|number\(11) & !\inst3|converterZ|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(11),
	datad => VCC,
	cin => \inst3|converterZ|Add3~17\,
	combout => \inst3|converterZ|Add3~18_combout\,
	cout => \inst3|converterZ|Add3~19\);

-- Location: LCCOMB_X19_Y20_N24
\inst3|converterZ|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~20_combout\ = (\inst3|converterZ|number\(11) & ((GND) # (!\inst3|converterZ|Add5~19\))) # (!\inst3|converterZ|number\(11) & (\inst3|converterZ|Add5~19\ $ (GND)))
-- \inst3|converterZ|Add5~21\ = CARRY((\inst3|converterZ|number\(11)) # (!\inst3|converterZ|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(11),
	datad => VCC,
	cin => \inst3|converterZ|Add5~19\,
	combout => \inst3|converterZ|Add5~20_combout\,
	cout => \inst3|converterZ|Add5~21\);

-- Location: LCCOMB_X19_Y20_N28
\inst3|converterZ|number~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~21_combout\ = (\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\ & (\inst3|converterZ|Add3~18_combout\)) # (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~20_combout\))))) # 
-- (!\inst3|converterZ|number[10]~1_combout\ & (\inst3|converterZ|number[10]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add3~18_combout\,
	datad => \inst3|converterZ|Add5~20_combout\,
	combout => \inst3|converterZ|number~21_combout\);

-- Location: LCCOMB_X18_Y20_N24
\inst3|converterZ|number~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~22_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number~21_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number~21_combout\ & ((\inst3|converterZ|Add0~22_combout\))) # 
-- (!\inst3|converterZ|number~21_combout\ & (\inst3|converterZ|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|Add1~16_combout\,
	datac => \inst3|converterZ|Add0~22_combout\,
	datad => \inst3|converterZ|number~21_combout\,
	combout => \inst3|converterZ|number~22_combout\);

-- Location: LCCOMB_X17_Y20_N30
\inst3|converterZ|number[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[11]~feeder_combout\ = \inst3|converterZ|number~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~22_combout\,
	combout => \inst3|converterZ|number[11]~feeder_combout\);

-- Location: FF_X20_Y23_N25
\inst|dataZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(11),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(11));

-- Location: LCCOMB_X20_Y23_N22
\inst3|accZ_v[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[11]~feeder_combout\ = \inst|dataZ\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(11),
	combout => \inst3|accZ_v[11]~feeder_combout\);

-- Location: FF_X20_Y23_N23
\inst3|accZ_v[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[11]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(11));

-- Location: FF_X17_Y20_N31
\inst3|converterZ|number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[11]~feeder_combout\,
	asdata => \inst3|accZ_v\(11),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(11));

-- Location: LCCOMB_X15_Y20_N26
\inst3|converterZ|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~24_combout\ = \inst3|converterZ|Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|converterZ|Add0~23\,
	combout => \inst3|converterZ|Add0~24_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst3|converterZ|number~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~19_combout\ = (\inst3|converterZ|state.s0_s~q\ & (!\inst3|converterZ|digit_int_3~3_combout\ & ((!\inst3|converterZ|number~5_combout\)))) # (!\inst3|converterZ|state.s0_s~q\ & (((\inst3|converterZ|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0_s~q\,
	datab => \inst3|converterZ|digit_int_3~3_combout\,
	datac => \inst3|converterZ|Add0~24_combout\,
	datad => \inst3|converterZ|number~5_combout\,
	combout => \inst3|converterZ|number~19_combout\);

-- Location: LCCOMB_X18_Y20_N18
\inst3|converterZ|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~18_combout\ = \inst3|converterZ|Add1~17\ $ (!\inst3|converterZ|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number\(12),
	cin => \inst3|converterZ|Add1~17\,
	combout => \inst3|converterZ|Add1~18_combout\);

-- Location: LCCOMB_X21_Y20_N24
\inst3|converterZ|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~20_combout\ = \inst3|converterZ|Add3~19\ $ (\inst3|converterZ|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number\(12),
	cin => \inst3|converterZ|Add3~19\,
	combout => \inst3|converterZ|Add3~20_combout\);

-- Location: LCCOMB_X19_Y20_N26
\inst3|converterZ|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~22_combout\ = \inst3|converterZ|Add5~21\ $ (!\inst3|converterZ|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number\(12),
	cin => \inst3|converterZ|Add5~21\,
	combout => \inst3|converterZ|Add5~22_combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst3|converterZ|number~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~17_combout\ = (!\inst3|converterZ|state.s1~q\ & ((\inst3|converterZ|state.s2~q\ & (\inst3|converterZ|Add3~20_combout\)) # (!\inst3|converterZ|state.s2~q\ & ((\inst3|converterZ|Add5~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s1~q\,
	datab => \inst3|converterZ|state.s2~q\,
	datac => \inst3|converterZ|Add3~20_combout\,
	datad => \inst3|converterZ|Add5~22_combout\,
	combout => \inst3|converterZ|number~17_combout\);

-- Location: LCCOMB_X16_Y20_N8
\inst3|converterZ|number~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~18_combout\ = (\inst3|converterZ|number~17_combout\) # ((\inst3|converterZ|state.s1~q\ & \inst3|converterZ|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s1~q\,
	datac => \inst3|converterZ|Add1~18_combout\,
	datad => \inst3|converterZ|number~17_combout\,
	combout => \inst3|converterZ|number~18_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst3|converterZ|number~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~20_combout\ = (\inst3|converterZ|number~19_combout\ & ((\inst3|converterZ|number\(12)) # ((\inst3|converterZ|number[10]~6_combout\ & \inst3|converterZ|number~18_combout\)))) # (!\inst3|converterZ|number~19_combout\ & 
-- (\inst3|converterZ|number[10]~6_combout\ & ((\inst3|converterZ|number~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number~19_combout\,
	datab => \inst3|converterZ|number[10]~6_combout\,
	datac => \inst3|converterZ|number\(12),
	datad => \inst3|converterZ|number~18_combout\,
	combout => \inst3|converterZ|number~20_combout\);

-- Location: LCCOMB_X20_Y23_N6
\inst|dataZ[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[12]~feeder_combout\ = \inst|read_temp\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(12),
	combout => \inst|dataZ[12]~feeder_combout\);

-- Location: FF_X20_Y23_N7
\inst|dataZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataZ[12]~feeder_combout\,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(12));

-- Location: LCCOMB_X20_Y23_N28
\inst3|accZ_v[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[12]~feeder_combout\ = \inst|dataZ\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(12),
	combout => \inst3|accZ_v[12]~feeder_combout\);

-- Location: FF_X20_Y23_N29
\inst3|accZ_v[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[12]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(12));

-- Location: FF_X17_Y20_N25
\inst3|converterZ|number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number~20_combout\,
	asdata => \inst3|accZ_v\(12),
	sload => \inst3|converterZ|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(12));

-- Location: LCCOMB_X15_Y20_N28
\inst3|converterZ|number~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~31_combout\ = (\inst3|converterZ|state.s0_s~q\ & (\inst3|converterZ|number\(1))) # (!\inst3|converterZ|state.s0_s~q\ & ((\inst3|converterZ|number\(12) & ((\inst3|converterZ|Add0~2_combout\))) # (!\inst3|converterZ|number\(12) & 
-- (\inst3|converterZ|number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0_s~q\,
	datab => \inst3|converterZ|number\(1),
	datac => \inst3|converterZ|Add0~2_combout\,
	datad => \inst3|converterZ|number\(12),
	combout => \inst3|converterZ|number~31_combout\);

-- Location: LCCOMB_X15_Y20_N30
\inst3|converterZ|number~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~32_combout\ = (\inst3|converterZ|state.s0_s~q\ & ((\inst3|converterZ|number~0_combout\ & (\inst3|converterZ|Add5~0_combout\)) # (!\inst3|converterZ|number~0_combout\ & ((\inst3|converterZ|number~31_combout\))))) # 
-- (!\inst3|converterZ|state.s0_s~q\ & (((\inst3|converterZ|number~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add5~0_combout\,
	datab => \inst3|converterZ|state.s0_s~q\,
	datac => \inst3|converterZ|number~0_combout\,
	datad => \inst3|converterZ|number~31_combout\,
	combout => \inst3|converterZ|number~32_combout\);

-- Location: LCCOMB_X20_Y20_N2
\inst3|converterZ|number[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[1]~feeder_combout\ = \inst3|converterZ|number~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~32_combout\,
	combout => \inst3|converterZ|number[1]~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N28
\inst|dataZ[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[1]~feeder_combout\ = \inst|read_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(1),
	combout => \inst|dataZ[1]~feeder_combout\);

-- Location: FF_X17_Y23_N29
\inst|dataZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataZ[1]~feeder_combout\,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(1));

-- Location: LCCOMB_X17_Y23_N10
\inst3|accZ_v[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[1]~feeder_combout\ = \inst|dataZ\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(1),
	combout => \inst3|accZ_v[1]~feeder_combout\);

-- Location: FF_X17_Y23_N11
\inst3|accZ_v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[1]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(1));

-- Location: FF_X20_Y20_N3
\inst3|converterZ|number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[1]~feeder_combout\,
	asdata => \inst3|accZ_v\(1),
	sload => \inst3|converterZ|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(1));

-- Location: LCCOMB_X20_Y20_N28
\inst3|converterZ|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|LessThan2~1_combout\ = (\inst3|converterZ|number\(6)) # ((\inst3|converterZ|number\(3) & ((\inst3|converterZ|number\(1)) # (\inst3|converterZ|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(3),
	datab => \inst3|converterZ|number\(1),
	datac => \inst3|converterZ|number\(6),
	datad => \inst3|converterZ|number\(2),
	combout => \inst3|converterZ|LessThan2~1_combout\);

-- Location: LCCOMB_X17_Y20_N16
\inst3|converterZ|digit_int_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_3~0_combout\ = (!\inst3|converterZ|number\(10) & (!\inst3|converterZ|number\(11) & !\inst3|converterZ|number\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(10),
	datac => \inst3|converterZ|number\(11),
	datad => \inst3|converterZ|number\(12),
	combout => \inst3|converterZ|digit_int_3~0_combout\);

-- Location: LCCOMB_X17_Y20_N18
\inst3|converterZ|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|LessThan2~0_combout\ = (!\inst3|converterZ|number\(9) & (!\inst3|converterZ|number\(8) & (!\inst3|converterZ|number\(7) & \inst3|converterZ|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(9),
	datab => \inst3|converterZ|number\(8),
	datac => \inst3|converterZ|number\(7),
	datad => \inst3|converterZ|digit_int_3~0_combout\,
	combout => \inst3|converterZ|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst3|converterZ|number~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~0_combout\ = (\inst3|converterZ|state.s3~q\ & ((\inst3|converterZ|LessThan2~2_combout\) # ((\inst3|converterZ|LessThan2~1_combout\) # (!\inst3|converterZ|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s3~q\,
	datab => \inst3|converterZ|LessThan2~2_combout\,
	datac => \inst3|converterZ|LessThan2~1_combout\,
	datad => \inst3|converterZ|LessThan2~0_combout\,
	combout => \inst3|converterZ|number~0_combout\);

-- Location: LCCOMB_X20_Y20_N8
\inst3|converterZ|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|LessThan1~0_combout\ = (\inst3|converterZ|number\(3)) # ((\inst3|converterZ|number\(4)) # (\inst3|converterZ|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(3),
	datac => \inst3|converterZ|number\(4),
	datad => \inst3|converterZ|number\(2),
	combout => \inst3|converterZ|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst3|converterZ|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|LessThan1~1_combout\ = ((\inst3|converterZ|number\(5) & (\inst3|converterZ|number\(6) & \inst3|converterZ|LessThan1~0_combout\))) # (!\inst3|converterZ|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(5),
	datab => \inst3|converterZ|number\(6),
	datac => \inst3|converterZ|LessThan1~0_combout\,
	datad => \inst3|converterZ|LessThan2~0_combout\,
	combout => \inst3|converterZ|LessThan1~1_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst3|converterZ|number~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~5_combout\ = (!\inst3|converterZ|state.s1~q\ & ((\inst3|converterZ|state.s2~q\ & ((\inst3|converterZ|LessThan1~1_combout\))) # (!\inst3|converterZ|state.s2~q\ & (\inst3|converterZ|number~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s2~q\,
	datab => \inst3|converterZ|state.s1~q\,
	datac => \inst3|converterZ|number~0_combout\,
	datad => \inst3|converterZ|LessThan1~1_combout\,
	combout => \inst3|converterZ|number~5_combout\);

-- Location: LCCOMB_X15_Y20_N6
\inst3|converterZ|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~4_combout\ = (\inst3|converterZ|number\(2) & (\inst3|converterZ|Add0~3\ $ (GND))) # (!\inst3|converterZ|number\(2) & ((GND) # (!\inst3|converterZ|Add0~3\)))
-- \inst3|converterZ|Add0~5\ = CARRY((!\inst3|converterZ|Add0~3\) # (!\inst3|converterZ|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(2),
	datad => VCC,
	cin => \inst3|converterZ|Add0~3\,
	combout => \inst3|converterZ|Add0~4_combout\,
	cout => \inst3|converterZ|Add0~5\);

-- Location: LCCOMB_X20_Y20_N30
\inst3|converterZ|number~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~9_combout\ = (\inst3|converterZ|state.s0_s~q\ & (\inst3|converterZ|number\(2))) # (!\inst3|converterZ|state.s0_s~q\ & ((\inst3|converterZ|number\(12) & ((\inst3|converterZ|Add0~4_combout\))) # (!\inst3|converterZ|number\(12) & 
-- (\inst3|converterZ|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(2),
	datab => \inst3|converterZ|state.s0_s~q\,
	datac => \inst3|converterZ|number\(12),
	datad => \inst3|converterZ|Add0~4_combout\,
	combout => \inst3|converterZ|number~9_combout\);

-- Location: LCCOMB_X21_Y20_N4
\inst3|converterZ|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~0_combout\ = \inst3|converterZ|number\(2) $ (VCC)
-- \inst3|converterZ|Add3~1\ = CARRY(\inst3|converterZ|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(2),
	datad => VCC,
	combout => \inst3|converterZ|Add3~0_combout\,
	cout => \inst3|converterZ|Add3~1\);

-- Location: LCCOMB_X19_Y20_N6
\inst3|converterZ|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~2_combout\ = (\inst3|converterZ|number\(2) & (\inst3|converterZ|Add5~1\ & VCC)) # (!\inst3|converterZ|number\(2) & (!\inst3|converterZ|Add5~1\))
-- \inst3|converterZ|Add5~3\ = CARRY((!\inst3|converterZ|number\(2) & !\inst3|converterZ|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(2),
	datad => VCC,
	cin => \inst3|converterZ|Add5~1\,
	combout => \inst3|converterZ|Add5~2_combout\,
	cout => \inst3|converterZ|Add5~3\);

-- Location: LCCOMB_X21_Y20_N26
\inst3|converterZ|number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~8_combout\ = (\inst3|converterZ|state.s2~q\ & (\inst3|converterZ|Add3~0_combout\)) # (!\inst3|converterZ|state.s2~q\ & ((\inst3|converterZ|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s2~q\,
	datac => \inst3|converterZ|Add3~0_combout\,
	datad => \inst3|converterZ|Add5~2_combout\,
	combout => \inst3|converterZ|number~8_combout\);

-- Location: LCCOMB_X20_Y20_N24
\inst3|converterZ|number~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~10_combout\ = (\inst3|converterZ|number~5_combout\ & ((\inst3|converterZ|state.s0_s~q\ & ((\inst3|converterZ|number~8_combout\))) # (!\inst3|converterZ|state.s0_s~q\ & (\inst3|converterZ|number~9_combout\)))) # 
-- (!\inst3|converterZ|number~5_combout\ & (((\inst3|converterZ|number~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number~5_combout\,
	datab => \inst3|converterZ|state.s0_s~q\,
	datac => \inst3|converterZ|number~9_combout\,
	datad => \inst3|converterZ|number~8_combout\,
	combout => \inst3|converterZ|number~10_combout\);

-- Location: LCCOMB_X20_Y20_N10
\inst3|converterZ|number[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[2]~feeder_combout\ = \inst3|converterZ|number~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~10_combout\,
	combout => \inst3|converterZ|number[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y23_N12
\inst|dataZ[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[2]~feeder_combout\ = \inst|read_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(2),
	combout => \inst|dataZ[2]~feeder_combout\);

-- Location: FF_X20_Y23_N13
\inst|dataZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataZ[2]~feeder_combout\,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(2));

-- Location: LCCOMB_X20_Y23_N30
\inst3|accZ_v[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[2]~feeder_combout\ = \inst|dataZ\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(2),
	combout => \inst3|accZ_v[2]~feeder_combout\);

-- Location: FF_X20_Y23_N31
\inst3|accZ_v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[2]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(2));

-- Location: FF_X20_Y20_N11
\inst3|converterZ|number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[2]~feeder_combout\,
	asdata => \inst3|accZ_v\(2),
	sload => \inst3|converterZ|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(2));

-- Location: LCCOMB_X19_Y20_N8
\inst3|converterZ|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add5~4_combout\ = (\inst3|converterZ|number\(3) & (\inst3|converterZ|Add5~3\ $ (GND))) # (!\inst3|converterZ|number\(3) & (!\inst3|converterZ|Add5~3\ & VCC))
-- \inst3|converterZ|Add5~5\ = CARRY((\inst3|converterZ|number\(3) & !\inst3|converterZ|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(3),
	datad => VCC,
	cin => \inst3|converterZ|Add5~3\,
	combout => \inst3|converterZ|Add5~4_combout\,
	cout => \inst3|converterZ|Add5~5\);

-- Location: LCCOMB_X19_Y20_N0
\inst3|converterZ|number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~11_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~6_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\) 
-- # ((\inst3|converterZ|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add1~2_combout\,
	datad => \inst3|converterZ|Add5~6_combout\,
	combout => \inst3|converterZ|number~11_combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst3|converterZ|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~2_combout\ = (\inst3|converterZ|number\(3) & (\inst3|converterZ|Add3~1\ & VCC)) # (!\inst3|converterZ|number\(3) & (!\inst3|converterZ|Add3~1\))
-- \inst3|converterZ|Add3~3\ = CARRY((!\inst3|converterZ|number\(3) & !\inst3|converterZ|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(3),
	datad => VCC,
	cin => \inst3|converterZ|Add3~1\,
	combout => \inst3|converterZ|Add3~2_combout\,
	cout => \inst3|converterZ|Add3~3\);

-- Location: LCCOMB_X21_Y20_N8
\inst3|converterZ|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~4_combout\ = (\inst3|converterZ|number\(4) & ((GND) # (!\inst3|converterZ|Add3~3\))) # (!\inst3|converterZ|number\(4) & (\inst3|converterZ|Add3~3\ $ (GND)))
-- \inst3|converterZ|Add3~5\ = CARRY((\inst3|converterZ|number\(4)) # (!\inst3|converterZ|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(4),
	datad => VCC,
	cin => \inst3|converterZ|Add3~3\,
	combout => \inst3|converterZ|Add3~4_combout\,
	cout => \inst3|converterZ|Add3~5\);

-- Location: LCCOMB_X15_Y20_N8
\inst3|converterZ|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~6_combout\ = (\inst3|converterZ|number\(3) & (!\inst3|converterZ|Add0~5\)) # (!\inst3|converterZ|number\(3) & (\inst3|converterZ|Add0~5\ & VCC))
-- \inst3|converterZ|Add0~7\ = CARRY((\inst3|converterZ|number\(3) & !\inst3|converterZ|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(3),
	datad => VCC,
	cin => \inst3|converterZ|Add0~5\,
	combout => \inst3|converterZ|Add0~6_combout\,
	cout => \inst3|converterZ|Add0~7\);

-- Location: LCCOMB_X15_Y20_N10
\inst3|converterZ|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~8_combout\ = (\inst3|converterZ|number\(4) & (\inst3|converterZ|Add0~7\ $ (GND))) # (!\inst3|converterZ|number\(4) & ((GND) # (!\inst3|converterZ|Add0~7\)))
-- \inst3|converterZ|Add0~9\ = CARRY((!\inst3|converterZ|Add0~7\) # (!\inst3|converterZ|number\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(4),
	datad => VCC,
	cin => \inst3|converterZ|Add0~7\,
	combout => \inst3|converterZ|Add0~8_combout\,
	cout => \inst3|converterZ|Add0~9\);

-- Location: LCCOMB_X20_Y20_N6
\inst3|converterZ|number~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~12_combout\ = (\inst3|converterZ|number~11_combout\ & (((\inst3|converterZ|Add0~8_combout\)) # (!\inst3|converterZ|number[10]~2_combout\))) # (!\inst3|converterZ|number~11_combout\ & (\inst3|converterZ|number[10]~2_combout\ & 
-- (\inst3|converterZ|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number~11_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add3~4_combout\,
	datad => \inst3|converterZ|Add0~8_combout\,
	combout => \inst3|converterZ|number~12_combout\);

-- Location: LCCOMB_X20_Y20_N4
\inst3|converterZ|number[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[4]~feeder_combout\ = \inst3|converterZ|number~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~12_combout\,
	combout => \inst3|converterZ|number[4]~feeder_combout\);

-- Location: FF_X20_Y23_N27
\inst|dataZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(4),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(4));

-- Location: LCCOMB_X20_Y23_N4
\inst3|accZ_v[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[4]~feeder_combout\ = \inst|dataZ\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dataZ\(4),
	combout => \inst3|accZ_v[4]~feeder_combout\);

-- Location: FF_X20_Y23_N5
\inst3|accZ_v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[4]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(4));

-- Location: FF_X20_Y20_N5
\inst3|converterZ|number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[4]~feeder_combout\,
	asdata => \inst3|accZ_v\(4),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(4));

-- Location: LCCOMB_X18_Y20_N4
\inst3|converterZ|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~4_combout\ = (\inst3|converterZ|number\(5) & (\inst3|converterZ|Add1~3\ $ (GND))) # (!\inst3|converterZ|number\(5) & (!\inst3|converterZ|Add1~3\ & VCC))
-- \inst3|converterZ|Add1~5\ = CARRY((\inst3|converterZ|number\(5) & !\inst3|converterZ|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(5),
	datad => VCC,
	cin => \inst3|converterZ|Add1~3\,
	combout => \inst3|converterZ|Add1~4_combout\,
	cout => \inst3|converterZ|Add1~5\);

-- Location: LCCOMB_X15_Y20_N12
\inst3|converterZ|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~10_combout\ = (\inst3|converterZ|number\(5) & (!\inst3|converterZ|Add0~9\)) # (!\inst3|converterZ|number\(5) & (\inst3|converterZ|Add0~9\ & VCC))
-- \inst3|converterZ|Add0~11\ = CARRY((\inst3|converterZ|number\(5) & !\inst3|converterZ|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(5),
	datad => VCC,
	cin => \inst3|converterZ|Add0~9\,
	combout => \inst3|converterZ|Add0~10_combout\,
	cout => \inst3|converterZ|Add0~11\);

-- Location: LCCOMB_X21_Y20_N10
\inst3|converterZ|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~6_combout\ = (\inst3|converterZ|number\(5) & (!\inst3|converterZ|Add3~5\)) # (!\inst3|converterZ|number\(5) & ((\inst3|converterZ|Add3~5\) # (GND)))
-- \inst3|converterZ|Add3~7\ = CARRY((!\inst3|converterZ|Add3~5\) # (!\inst3|converterZ|number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(5),
	datad => VCC,
	cin => \inst3|converterZ|Add3~5\,
	combout => \inst3|converterZ|Add3~6_combout\,
	cout => \inst3|converterZ|Add3~7\);

-- Location: LCCOMB_X21_Y20_N2
\inst3|converterZ|number~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~15_combout\ = (\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\ & (\inst3|converterZ|Add3~6_combout\)) # (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~8_combout\))))) # 
-- (!\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add3~6_combout\,
	datab => \inst3|converterZ|number[10]~1_combout\,
	datac => \inst3|converterZ|number[10]~2_combout\,
	datad => \inst3|converterZ|Add5~8_combout\,
	combout => \inst3|converterZ|number~15_combout\);

-- Location: LCCOMB_X20_Y20_N18
\inst3|converterZ|number~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~16_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number~15_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number~15_combout\ & ((\inst3|converterZ|Add0~10_combout\))) # 
-- (!\inst3|converterZ|number~15_combout\ & (\inst3|converterZ|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|Add1~4_combout\,
	datac => \inst3|converterZ|Add0~10_combout\,
	datad => \inst3|converterZ|number~15_combout\,
	combout => \inst3|converterZ|number~16_combout\);

-- Location: LCCOMB_X20_Y20_N0
\inst3|converterZ|number[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[5]~feeder_combout\ = \inst3|converterZ|number~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~16_combout\,
	combout => \inst3|converterZ|number[5]~feeder_combout\);

-- Location: FF_X20_Y23_N19
\inst|dataZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(5),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(5));

-- Location: LCCOMB_X20_Y23_N20
\inst3|accZ_v[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[5]~feeder_combout\ = \inst|dataZ\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(5),
	combout => \inst3|accZ_v[5]~feeder_combout\);

-- Location: FF_X20_Y23_N21
\inst3|accZ_v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[5]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(5));

-- Location: FF_X20_Y20_N1
\inst3|converterZ|number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[5]~feeder_combout\,
	asdata => \inst3|accZ_v\(5),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(5));

-- Location: LCCOMB_X15_Y20_N14
\inst3|converterZ|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add0~12_combout\ = (\inst3|converterZ|number\(6) & (\inst3|converterZ|Add0~11\ $ (GND))) # (!\inst3|converterZ|number\(6) & ((GND) # (!\inst3|converterZ|Add0~11\)))
-- \inst3|converterZ|Add0~13\ = CARRY((!\inst3|converterZ|Add0~11\) # (!\inst3|converterZ|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(6),
	datad => VCC,
	cin => \inst3|converterZ|Add0~11\,
	combout => \inst3|converterZ|Add0~12_combout\,
	cout => \inst3|converterZ|Add0~13\);

-- Location: LCCOMB_X21_Y20_N12
\inst3|converterZ|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~8_combout\ = (\inst3|converterZ|number\(6) & (\inst3|converterZ|Add3~7\ $ (GND))) # (!\inst3|converterZ|number\(6) & (!\inst3|converterZ|Add3~7\ & VCC))
-- \inst3|converterZ|Add3~9\ = CARRY((\inst3|converterZ|number\(6) & !\inst3|converterZ|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(6),
	datad => VCC,
	cin => \inst3|converterZ|Add3~7\,
	combout => \inst3|converterZ|Add3~8_combout\,
	cout => \inst3|converterZ|Add3~9\);

-- Location: LCCOMB_X18_Y20_N6
\inst3|converterZ|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~6_combout\ = (\inst3|converterZ|number\(6) & (!\inst3|converterZ|Add1~5\)) # (!\inst3|converterZ|number\(6) & ((\inst3|converterZ|Add1~5\) # (GND)))
-- \inst3|converterZ|Add1~7\ = CARRY((!\inst3|converterZ|Add1~5\) # (!\inst3|converterZ|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(6),
	datad => VCC,
	cin => \inst3|converterZ|Add1~5\,
	combout => \inst3|converterZ|Add1~6_combout\,
	cout => \inst3|converterZ|Add1~7\);

-- Location: LCCOMB_X19_Y20_N30
\inst3|converterZ|number~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~13_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~10_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\) 
-- # ((\inst3|converterZ|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add1~6_combout\,
	datad => \inst3|converterZ|Add5~10_combout\,
	combout => \inst3|converterZ|number~13_combout\);

-- Location: LCCOMB_X20_Y20_N20
\inst3|converterZ|number~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~14_combout\ = (\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|number~13_combout\ & (\inst3|converterZ|Add0~12_combout\)) # (!\inst3|converterZ|number~13_combout\ & ((\inst3|converterZ|Add3~8_combout\))))) # 
-- (!\inst3|converterZ|number[10]~2_combout\ & (((\inst3|converterZ|number~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add0~12_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add3~8_combout\,
	datad => \inst3|converterZ|number~13_combout\,
	combout => \inst3|converterZ|number~14_combout\);

-- Location: LCCOMB_X20_Y20_N14
\inst3|converterZ|number[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[6]~feeder_combout\ = \inst3|converterZ|number~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~14_combout\,
	combout => \inst3|converterZ|number[6]~feeder_combout\);

-- Location: FF_X20_Y23_N17
\inst|dataZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(6),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(6));

-- Location: LCCOMB_X20_Y23_N14
\inst3|accZ_v[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[6]~feeder_combout\ = \inst|dataZ\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(6),
	combout => \inst3|accZ_v[6]~feeder_combout\);

-- Location: FF_X20_Y23_N15
\inst3|accZ_v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[6]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(6));

-- Location: FF_X20_Y20_N15
\inst3|converterZ|number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[6]~feeder_combout\,
	asdata => \inst3|accZ_v\(6),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(6));

-- Location: LCCOMB_X18_Y20_N8
\inst3|converterZ|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~8_combout\ = (\inst3|converterZ|number\(7) & (\inst3|converterZ|Add1~7\ $ (GND))) # (!\inst3|converterZ|number\(7) & (!\inst3|converterZ|Add1~7\ & VCC))
-- \inst3|converterZ|Add1~9\ = CARRY((\inst3|converterZ|number\(7) & !\inst3|converterZ|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(7),
	datad => VCC,
	cin => \inst3|converterZ|Add1~7\,
	combout => \inst3|converterZ|Add1~8_combout\,
	cout => \inst3|converterZ|Add1~9\);

-- Location: LCCOMB_X21_Y20_N14
\inst3|converterZ|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add3~10_combout\ = (\inst3|converterZ|number\(7) & (\inst3|converterZ|Add3~9\ & VCC)) # (!\inst3|converterZ|number\(7) & (!\inst3|converterZ|Add3~9\))
-- \inst3|converterZ|Add3~11\ = CARRY((!\inst3|converterZ|number\(7) & !\inst3|converterZ|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(7),
	datad => VCC,
	cin => \inst3|converterZ|Add3~9\,
	combout => \inst3|converterZ|Add3~10_combout\,
	cout => \inst3|converterZ|Add3~11\);

-- Location: LCCOMB_X16_Y20_N10
\inst3|converterZ|number~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~29_combout\ = (\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\ & (\inst3|converterZ|Add3~10_combout\)) # (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~12_combout\))))) # 
-- (!\inst3|converterZ|number[10]~1_combout\ & (\inst3|converterZ|number[10]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add3~10_combout\,
	datad => \inst3|converterZ|Add5~12_combout\,
	combout => \inst3|converterZ|number~29_combout\);

-- Location: LCCOMB_X16_Y20_N18
\inst3|converterZ|number~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~30_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number~29_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number~29_combout\ & (\inst3|converterZ|Add0~14_combout\)) # 
-- (!\inst3|converterZ|number~29_combout\ & ((\inst3|converterZ|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add0~14_combout\,
	datab => \inst3|converterZ|number[10]~1_combout\,
	datac => \inst3|converterZ|Add1~8_combout\,
	datad => \inst3|converterZ|number~29_combout\,
	combout => \inst3|converterZ|number~30_combout\);

-- Location: LCCOMB_X17_Y20_N26
\inst3|converterZ|number[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[7]~feeder_combout\ = \inst3|converterZ|number~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~30_combout\,
	combout => \inst3|converterZ|number[7]~feeder_combout\);

-- Location: FF_X17_Y23_N7
\inst|dataZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(7),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(7));

-- Location: LCCOMB_X17_Y23_N0
\inst3|accZ_v[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[7]~feeder_combout\ = \inst|dataZ\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(7),
	combout => \inst3|accZ_v[7]~feeder_combout\);

-- Location: FF_X17_Y23_N1
\inst3|accZ_v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[7]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(7));

-- Location: FF_X17_Y20_N27
\inst3|converterZ|number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[7]~feeder_combout\,
	asdata => \inst3|accZ_v\(7),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(7));

-- Location: LCCOMB_X18_Y20_N10
\inst3|converterZ|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add1~10_combout\ = (\inst3|converterZ|number\(8) & (!\inst3|converterZ|Add1~9\)) # (!\inst3|converterZ|number\(8) & ((\inst3|converterZ|Add1~9\) # (GND)))
-- \inst3|converterZ|Add1~11\ = CARRY((!\inst3|converterZ|Add1~9\) # (!\inst3|converterZ|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|number\(8),
	datad => VCC,
	cin => \inst3|converterZ|Add1~9\,
	combout => \inst3|converterZ|Add1~10_combout\,
	cout => \inst3|converterZ|Add1~11\);

-- Location: LCCOMB_X18_Y20_N20
\inst3|converterZ|number~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~27_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (\inst3|converterZ|Add5~14_combout\ & (!\inst3|converterZ|number[10]~2_combout\))) # (!\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number[10]~2_combout\) 
-- # (\inst3|converterZ|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|Add5~14_combout\,
	datac => \inst3|converterZ|number[10]~2_combout\,
	datad => \inst3|converterZ|Add1~10_combout\,
	combout => \inst3|converterZ|number~27_combout\);

-- Location: LCCOMB_X18_Y20_N22
\inst3|converterZ|number~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~28_combout\ = (\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|number~27_combout\ & ((\inst3|converterZ|Add0~16_combout\))) # (!\inst3|converterZ|number~27_combout\ & (\inst3|converterZ|Add3~12_combout\)))) # 
-- (!\inst3|converterZ|number[10]~2_combout\ & (((\inst3|converterZ|number~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add3~12_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add0~16_combout\,
	datad => \inst3|converterZ|number~27_combout\,
	combout => \inst3|converterZ|number~28_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst3|converterZ|number[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[8]~feeder_combout\ = \inst3|converterZ|number~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~28_combout\,
	combout => \inst3|converterZ|number[8]~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N12
\inst|dataZ[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[8]~feeder_combout\ = \inst|read_temp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(8),
	combout => \inst|dataZ[8]~feeder_combout\);

-- Location: FF_X17_Y23_N13
\inst|dataZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataZ[8]~feeder_combout\,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(8));

-- Location: LCCOMB_X17_Y23_N14
\inst3|accZ_v[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[8]~feeder_combout\ = \inst|dataZ\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(8),
	combout => \inst3|accZ_v[8]~feeder_combout\);

-- Location: FF_X17_Y23_N15
\inst3|accZ_v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[8]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(8));

-- Location: FF_X17_Y20_N5
\inst3|converterZ|number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[8]~feeder_combout\,
	asdata => \inst3|accZ_v\(8),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(8));

-- Location: LCCOMB_X19_Y20_N2
\inst3|converterZ|number~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~25_combout\ = (\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\ & (\inst3|converterZ|Add3~14_combout\)) # (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~16_combout\))))) # 
-- (!\inst3|converterZ|number[10]~1_combout\ & (\inst3|converterZ|number[10]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|number[10]~2_combout\,
	datac => \inst3|converterZ|Add3~14_combout\,
	datad => \inst3|converterZ|Add5~16_combout\,
	combout => \inst3|converterZ|number~25_combout\);

-- Location: LCCOMB_X18_Y20_N26
\inst3|converterZ|number~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~26_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number~25_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number~25_combout\ & ((\inst3|converterZ|Add0~18_combout\))) # 
-- (!\inst3|converterZ|number~25_combout\ & (\inst3|converterZ|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|Add1~12_combout\,
	datac => \inst3|converterZ|Add0~18_combout\,
	datad => \inst3|converterZ|number~25_combout\,
	combout => \inst3|converterZ|number~26_combout\);

-- Location: LCCOMB_X17_Y20_N22
\inst3|converterZ|number[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[9]~feeder_combout\ = \inst3|converterZ|number~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~26_combout\,
	combout => \inst3|converterZ|number[9]~feeder_combout\);

-- Location: FF_X17_Y23_N19
\inst|dataZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(9),
	sload => VCC,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(9));

-- Location: LCCOMB_X17_Y23_N20
\inst3|accZ_v[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[9]~feeder_combout\ = \inst|dataZ\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(9),
	combout => \inst3|accZ_v[9]~feeder_combout\);

-- Location: FF_X17_Y23_N21
\inst3|accZ_v[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[9]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(9));

-- Location: FF_X17_Y20_N23
\inst3|converterZ|number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[9]~feeder_combout\,
	asdata => \inst3|accZ_v\(9),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(9));

-- Location: LCCOMB_X17_Y20_N10
\inst3|converterZ|digit_int_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_3~2_combout\ = (\inst3|converterZ|number\(9) & (\inst3|converterZ|number\(8) & \inst3|converterZ|number\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(9),
	datab => \inst3|converterZ|number\(8),
	datac => \inst3|converterZ|number\(7),
	combout => \inst3|converterZ|digit_int_3~2_combout\);

-- Location: LCCOMB_X20_Y20_N22
\inst3|converterZ|digit_int_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_3~1_combout\ = (\inst3|converterZ|number\(6) & (\inst3|converterZ|number\(5) & ((\inst3|converterZ|number\(3)) # (\inst3|converterZ|number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number\(3),
	datab => \inst3|converterZ|number\(4),
	datac => \inst3|converterZ|number\(6),
	datad => \inst3|converterZ|number\(5),
	combout => \inst3|converterZ|digit_int_3~1_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst3|converterZ|digit_int_3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_3~3_combout\ = (\inst3|converterZ|state.s1~q\ & (((\inst3|converterZ|digit_int_3~2_combout\ & \inst3|converterZ|digit_int_3~1_combout\)) # (!\inst3|converterZ|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_3~2_combout\,
	datab => \inst3|converterZ|digit_int_3~0_combout\,
	datac => \inst3|converterZ|state.s1~q\,
	datad => \inst3|converterZ|digit_int_3~1_combout\,
	combout => \inst3|converterZ|digit_int_3~3_combout\);

-- Location: LCCOMB_X16_Y20_N30
\inst3|converterZ|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~22_combout\ = (\inst3|converterZ|state~18_combout\ & (((\inst3|converterZ|state.s4~q\)))) # (!\inst3|converterZ|state~18_combout\ & (\inst3|converterZ|state.s3~q\ & (!\inst3|converterZ|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s3~q\,
	datab => \inst3|converterZ|state.s0~q\,
	datac => \inst3|converterZ|state.s4~q\,
	datad => \inst3|converterZ|state~18_combout\,
	combout => \inst3|converterZ|state~22_combout\);

-- Location: FF_X16_Y20_N31
\inst3|converterZ|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s4~q\);

-- Location: FF_X16_Y20_N23
\inst3|converterZ|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|state.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s5~q\);

-- Location: LCCOMB_X16_Y20_N28
\inst3|converterZ|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~16_combout\ = (!\inst3|converterZ|number~0_combout\ & ((\inst3|converterZ|state.s3~q\) # ((\inst3|converterZ|state.s5~q\) # (\inst3|converterZ|state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s3~q\,
	datab => \inst3|converterZ|state.s5~q\,
	datac => \inst3|converterZ|state.s4~q\,
	datad => \inst3|converterZ|number~0_combout\,
	combout => \inst3|converterZ|state~16_combout\);

-- Location: LCCOMB_X16_Y20_N24
\inst3|converterZ|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~17_combout\ = (\inst3|converterZ|state.s1~q\) # ((\inst3|converterZ|state.s2~q\ & (!\inst3|converterZ|LessThan1~1_combout\)) # (!\inst3|converterZ|state.s2~q\ & ((\inst3|converterZ|state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s1~q\,
	datab => \inst3|converterZ|state.s2~q\,
	datac => \inst3|converterZ|LessThan1~1_combout\,
	datad => \inst3|converterZ|state~16_combout\,
	combout => \inst3|converterZ|state~17_combout\);

-- Location: LCCOMB_X16_Y20_N2
\inst3|converterZ|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~18_combout\ = \inst3|converterZ|state.s0~q\ $ (((\inst3|converterZ|state.s0_s~q\ & ((\inst3|converterZ|digit_int_3~3_combout\) # (!\inst3|converterZ|state~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0~q\,
	datab => \inst3|converterZ|state.s0_s~q\,
	datac => \inst3|converterZ|digit_int_3~3_combout\,
	datad => \inst3|converterZ|state~17_combout\,
	combout => \inst3|converterZ|state~18_combout\);

-- Location: LCCOMB_X16_Y20_N6
\inst3|converterZ|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~23_combout\ = (\inst3|converterZ|state~18_combout\ & (((\inst3|converterZ|state.s1~q\)))) # (!\inst3|converterZ|state~18_combout\ & (!\inst3|converterZ|state.s0~q\ & (!\inst3|converterZ|state.s0_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0~q\,
	datab => \inst3|converterZ|state.s0_s~q\,
	datac => \inst3|converterZ|state.s1~q\,
	datad => \inst3|converterZ|state~18_combout\,
	combout => \inst3|converterZ|state~23_combout\);

-- Location: FF_X16_Y20_N7
\inst3|converterZ|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s1~q\);

-- Location: LCCOMB_X16_Y20_N16
\inst3|converterZ|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~21_combout\ = (\inst3|converterZ|state~18_combout\ & (((\inst3|converterZ|state.s2~q\)))) # (!\inst3|converterZ|state~18_combout\ & (\inst3|converterZ|state.s1~q\ & (!\inst3|converterZ|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s1~q\,
	datab => \inst3|converterZ|state.s0~q\,
	datac => \inst3|converterZ|state.s2~q\,
	datad => \inst3|converterZ|state~18_combout\,
	combout => \inst3|converterZ|state~21_combout\);

-- Location: FF_X16_Y20_N17
\inst3|converterZ|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s2~q\);

-- Location: LCCOMB_X16_Y20_N12
\inst3|converterZ|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~24_combout\ = (\inst3|converterZ|state~18_combout\ & (((\inst3|converterZ|state.s3~q\)))) # (!\inst3|converterZ|state~18_combout\ & (!\inst3|converterZ|state.s0~q\ & (\inst3|converterZ|state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0~q\,
	datab => \inst3|converterZ|state.s2~q\,
	datac => \inst3|converterZ|state.s3~q\,
	datad => \inst3|converterZ|state~18_combout\,
	combout => \inst3|converterZ|state~24_combout\);

-- Location: FF_X16_Y20_N13
\inst3|converterZ|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s3~q\);

-- Location: LCCOMB_X16_Y20_N22
\inst3|converterZ|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~19_combout\ = (\inst3|converterZ|state.s3~q\) # (((\inst3|converterZ|state.s4~q\) # (\inst3|converterZ|state.s2~q\)) # (!\inst3|converterZ|number[10]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s3~q\,
	datab => \inst3|converterZ|number[10]~1_combout\,
	datac => \inst3|converterZ|state.s4~q\,
	datad => \inst3|converterZ|state.s2~q\,
	combout => \inst3|converterZ|state~19_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst3|converterZ|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state~20_combout\ = (!\inst3|converterZ|state~19_combout\ & (!\inst3|converterZ|state.s0~q\ & !\inst3|converterZ|state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state~19_combout\,
	datac => \inst3|converterZ|state.s0~q\,
	datad => \inst3|converterZ|state~18_combout\,
	combout => \inst3|converterZ|state~20_combout\);

-- Location: FF_X16_Y20_N27
\inst3|converterZ|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s0~q\);

-- Location: LCCOMB_X16_Y20_N14
\inst3|converterZ|state.s0_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|state.s0_s~0_combout\ = !\inst3|converterZ|state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|state.s0_s~0_combout\);

-- Location: FF_X16_Y20_N15
\inst3|converterZ|state.s0_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|state.s0_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|state.s0_s~q\);

-- Location: LCCOMB_X16_Y20_N4
\inst3|converterZ|number[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[10]~1_combout\ = (\inst3|converterZ|state.s0_s~q\ & !\inst3|converterZ|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|state.s0_s~q\,
	datad => \inst3|converterZ|state.s1~q\,
	combout => \inst3|converterZ|number[10]~1_combout\);

-- Location: LCCOMB_X21_Y20_N28
\inst3|converterZ|number~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~3_combout\ = (\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number[10]~2_combout\ & (\inst3|converterZ|Add3~2_combout\)) # (!\inst3|converterZ|number[10]~2_combout\ & ((\inst3|converterZ|Add5~4_combout\))))) # 
-- (!\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|Add3~2_combout\,
	datab => \inst3|converterZ|number[10]~1_combout\,
	datac => \inst3|converterZ|number[10]~2_combout\,
	datad => \inst3|converterZ|Add5~4_combout\,
	combout => \inst3|converterZ|number~3_combout\);

-- Location: LCCOMB_X20_Y20_N16
\inst3|converterZ|number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number~4_combout\ = (\inst3|converterZ|number[10]~1_combout\ & (((\inst3|converterZ|number~3_combout\)))) # (!\inst3|converterZ|number[10]~1_combout\ & ((\inst3|converterZ|number~3_combout\ & ((\inst3|converterZ|Add0~6_combout\))) # 
-- (!\inst3|converterZ|number~3_combout\ & (\inst3|converterZ|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|number[10]~1_combout\,
	datab => \inst3|converterZ|Add1~0_combout\,
	datac => \inst3|converterZ|Add0~6_combout\,
	datad => \inst3|converterZ|number~3_combout\,
	combout => \inst3|converterZ|number~4_combout\);

-- Location: LCCOMB_X20_Y20_N12
\inst3|converterZ|number[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|number[3]~feeder_combout\ = \inst3|converterZ|number~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|number~4_combout\,
	combout => \inst3|converterZ|number[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y23_N10
\inst|dataZ[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataZ[3]~feeder_combout\ = \inst|read_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(3),
	combout => \inst|dataZ[3]~feeder_combout\);

-- Location: FF_X20_Y23_N11
\inst|dataZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataZ[3]~feeder_combout\,
	ena => \inst|dataZ[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataZ\(3));

-- Location: LCCOMB_X20_Y23_N0
\inst3|accZ_v[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accZ_v[3]~feeder_combout\ = \inst|dataZ\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataZ\(3),
	combout => \inst3|accZ_v[3]~feeder_combout\);

-- Location: FF_X20_Y23_N1
\inst3|accZ_v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accZ_v[3]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accZ_v\(3));

-- Location: FF_X20_Y20_N13
\inst3|converterZ|number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|number[3]~feeder_combout\,
	asdata => \inst3|accZ_v\(3),
	sload => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|number[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|number\(3));

-- Location: LCCOMB_X23_Y20_N14
\inst3|converterZ|digit_int_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_0~0_combout\ = (\inst3|converterZ|number\(3) & !\inst3|converterZ|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|number\(3),
	datad => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|digit_int_0~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst3|converterZ|digit_int_0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_0[1]~1_combout\ = (\inst3|converterZ|state.s4~q\) # (\inst3|converterZ|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|state.s4~q\,
	datad => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|digit_int_0[1]~1_combout\);

-- Location: FF_X23_Y20_N15
\inst3|converterZ|digit_int_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_0~0_combout\,
	ena => \inst3|converterZ|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_0\(3));

-- Location: LCCOMB_X24_Y24_N8
\inst3|converterZ|digit_out_0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_out_0[3]~feeder_combout\ = \inst3|converterZ|digit_int_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|digit_int_0\(3),
	combout => \inst3|converterZ|digit_out_0[3]~feeder_combout\);

-- Location: FF_X24_Y24_N9
\inst3|converterZ|digit_out_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_out_0[3]~feeder_combout\,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_0\(3));

-- Location: LCCOMB_X29_Y23_N30
\inst3|converterY|number[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[6]~2_combout\ = ((\inst3|converterY|state.s2~q\ & !\inst3|converterY|state.s1~q\)) # (!\inst3|converterY|state.s0_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s2~q\,
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|state.s1~q\,
	combout => \inst3|converterY|number[6]~2_combout\);

-- Location: LCCOMB_X29_Y23_N4
\inst3|converterY|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|LessThan2~0_combout\ = (!\inst3|converterY|number\(7) & (!\inst3|converterY|number\(8) & (!\inst3|converterY|number\(9) & \inst3|converterY|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(7),
	datab => \inst3|converterY|number\(8),
	datac => \inst3|converterY|number\(9),
	datad => \inst3|converterY|digit_int_3~0_combout\,
	combout => \inst3|converterY|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y23_N18
\inst3|converterY|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|LessThan1~0_combout\ = (\inst3|converterY|number\(4)) # ((\inst3|converterY|number\(3)) # (\inst3|converterY|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(4),
	datab => \inst3|converterY|number\(3),
	datac => \inst3|converterY|number\(2),
	combout => \inst3|converterY|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y23_N22
\inst3|converterY|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|LessThan1~1_combout\ = ((\inst3|converterY|number\(6) & (\inst3|converterY|number\(5) & \inst3|converterY|LessThan1~0_combout\))) # (!\inst3|converterY|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(6),
	datab => \inst3|converterY|number\(5),
	datac => \inst3|converterY|LessThan2~0_combout\,
	datad => \inst3|converterY|LessThan1~0_combout\,
	combout => \inst3|converterY|LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y23_N16
\inst3|converterY|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|LessThan2~2_combout\ = (\inst3|converterY|number\(4)) # (\inst3|converterY|number\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|number\(4),
	datad => \inst3|converterY|number\(5),
	combout => \inst3|converterY|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y23_N28
\inst3|converterY|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~24_combout\ = (\inst3|converterY|state~18_combout\ & (((\inst3|converterY|state.s3~q\)))) # (!\inst3|converterY|state~18_combout\ & (\inst3|converterY|state.s2~q\ & (!\inst3|converterY|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s2~q\,
	datab => \inst3|converterY|state.s0~q\,
	datac => \inst3|converterY|state.s3~q\,
	datad => \inst3|converterY|state~18_combout\,
	combout => \inst3|converterY|state~24_combout\);

-- Location: FF_X29_Y23_N29
\inst3|converterY|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s3~q\);

-- Location: LCCOMB_X24_Y23_N4
\inst3|converterY|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~0_combout\ = \inst3|converterY|number\(1) $ (VCC)
-- \inst3|converterY|Add5~1\ = CARRY(\inst3|converterY|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(1),
	datad => VCC,
	combout => \inst3|converterY|Add5~0_combout\,
	cout => \inst3|converterY|Add5~1\);

-- Location: LCCOMB_X23_Y23_N2
\inst3|converterY|number[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[0]~feeder_combout\ = \inst3|converterY|number\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number\(0),
	combout => \inst3|converterY|number[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y26_N18
\inst|dataY[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[0]~feeder_combout\ = \inst|read_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(0),
	combout => \inst|dataY[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y23_N16
\inst|dataY[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[12]~0_combout\ = (\inst|transmission_count\(4) & (\inst|Equal1~0_combout\ & (\inst|transmission_count\(3) & \inst|state.readY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|transmission_count\(4),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|transmission_count\(3),
	datad => \inst|state.readY~q\,
	combout => \inst|dataY[12]~0_combout\);

-- Location: FF_X17_Y26_N19
\inst|dataY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[0]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(0));

-- Location: LCCOMB_X17_Y26_N8
\inst3|accY_v[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[0]~feeder_combout\ = \inst|dataY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(0),
	combout => \inst3|accY_v[0]~feeder_combout\);

-- Location: FF_X17_Y26_N9
\inst3|accY_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[0]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(0));

-- Location: FF_X23_Y23_N3
\inst3|converterY|number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[0]~feeder_combout\,
	asdata => \inst3|accY_v\(0),
	sload => \inst3|converterY|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(0));

-- Location: LCCOMB_X23_Y23_N6
\inst3|converterY|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~1_cout\ = CARRY(!\inst3|converterY|number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(0),
	datad => VCC,
	cout => \inst3|converterY|Add0~1_cout\);

-- Location: LCCOMB_X23_Y23_N8
\inst3|converterY|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~2_combout\ = (\inst3|converterY|number\(1) & (!\inst3|converterY|Add0~1_cout\)) # (!\inst3|converterY|number\(1) & (\inst3|converterY|Add0~1_cout\ & VCC))
-- \inst3|converterY|Add0~3\ = CARRY((\inst3|converterY|number\(1) & !\inst3|converterY|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(1),
	datad => VCC,
	cin => \inst3|converterY|Add0~1_cout\,
	combout => \inst3|converterY|Add0~2_combout\,
	cout => \inst3|converterY|Add0~3\);

-- Location: LCCOMB_X24_Y23_N0
\inst3|converterY|number~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~31_combout\ = (\inst3|converterY|number\(12) & ((\inst3|converterY|state.s0_s~q\ & (\inst3|converterY|number\(1))) # (!\inst3|converterY|state.s0_s~q\ & ((\inst3|converterY|Add0~2_combout\))))) # (!\inst3|converterY|number\(12) & 
-- (\inst3|converterY|number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(12),
	datab => \inst3|converterY|number\(1),
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|Add0~2_combout\,
	combout => \inst3|converterY|number~31_combout\);

-- Location: LCCOMB_X24_Y23_N2
\inst3|converterY|number~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~32_combout\ = (\inst3|converterY|number~0_combout\ & ((\inst3|converterY|state.s0_s~q\ & (\inst3|converterY|Add5~0_combout\)) # (!\inst3|converterY|state.s0_s~q\ & ((\inst3|converterY|number~31_combout\))))) # 
-- (!\inst3|converterY|number~0_combout\ & (((\inst3|converterY|number~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number~0_combout\,
	datab => \inst3|converterY|Add5~0_combout\,
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|number~31_combout\,
	combout => \inst3|converterY|number~32_combout\);

-- Location: LCCOMB_X24_Y23_N28
\inst3|converterY|number[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[1]~feeder_combout\ = \inst3|converterY|number~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~32_combout\,
	combout => \inst3|converterY|number[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y26_N18
\inst|dataY[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[1]~feeder_combout\ = \inst|read_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(1),
	combout => \inst|dataY[1]~feeder_combout\);

-- Location: FF_X20_Y26_N19
\inst|dataY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[1]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(1));

-- Location: LCCOMB_X20_Y26_N6
\inst3|accY_v[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[1]~feeder_combout\ = \inst|dataY\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(1),
	combout => \inst3|accY_v[1]~feeder_combout\);

-- Location: FF_X20_Y26_N7
\inst3|accY_v[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[1]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(1));

-- Location: FF_X24_Y23_N29
\inst3|converterY|number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[1]~feeder_combout\,
	asdata => \inst3|accY_v\(1),
	sload => \inst3|converterY|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(1));

-- Location: LCCOMB_X29_Y23_N2
\inst3|converterY|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|LessThan2~1_combout\ = (\inst3|converterY|number\(6)) # ((\inst3|converterY|number\(3) & ((\inst3|converterY|number\(2)) # (\inst3|converterY|number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(6),
	datab => \inst3|converterY|number\(3),
	datac => \inst3|converterY|number\(2),
	datad => \inst3|converterY|number\(1),
	combout => \inst3|converterY|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y23_N20
\inst3|converterY|number~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~0_combout\ = (\inst3|converterY|state.s3~q\ & ((\inst3|converterY|LessThan2~2_combout\) # ((\inst3|converterY|LessThan2~1_combout\) # (!\inst3|converterY|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|LessThan2~2_combout\,
	datab => \inst3|converterY|state.s3~q\,
	datac => \inst3|converterY|LessThan2~0_combout\,
	datad => \inst3|converterY|LessThan2~1_combout\,
	combout => \inst3|converterY|number~0_combout\);

-- Location: LCCOMB_X29_Y23_N16
\inst3|converterY|number~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~5_combout\ = (!\inst3|converterY|state.s1~q\ & ((\inst3|converterY|state.s2~q\ & (\inst3|converterY|LessThan1~1_combout\)) # (!\inst3|converterY|state.s2~q\ & ((\inst3|converterY|number~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s2~q\,
	datab => \inst3|converterY|state.s1~q\,
	datac => \inst3|converterY|LessThan1~1_combout\,
	datad => \inst3|converterY|number~0_combout\,
	combout => \inst3|converterY|number~5_combout\);

-- Location: LCCOMB_X28_Y23_N2
\inst3|converterY|number[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[6]~6_combout\ = (\inst3|converterY|state.s0_s~q\ & ((\inst3|converterY|digit_int_3~3_combout\) # (\inst3|converterY|number~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|digit_int_3~3_combout\,
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|number~5_combout\,
	combout => \inst3|converterY|number[6]~6_combout\);

-- Location: LCCOMB_X23_Y23_N16
\inst3|converterY|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~10_combout\ = (\inst3|converterY|number\(5) & (!\inst3|converterY|Add0~9\)) # (!\inst3|converterY|number\(5) & (\inst3|converterY|Add0~9\ & VCC))
-- \inst3|converterY|Add0~11\ = CARRY((\inst3|converterY|number\(5) & !\inst3|converterY|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(5),
	datad => VCC,
	cin => \inst3|converterY|Add0~9\,
	combout => \inst3|converterY|Add0~10_combout\,
	cout => \inst3|converterY|Add0~11\);

-- Location: LCCOMB_X23_Y23_N18
\inst3|converterY|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~12_combout\ = (\inst3|converterY|number\(6) & (\inst3|converterY|Add0~11\ $ (GND))) # (!\inst3|converterY|number\(6) & ((GND) # (!\inst3|converterY|Add0~11\)))
-- \inst3|converterY|Add0~13\ = CARRY((!\inst3|converterY|Add0~11\) # (!\inst3|converterY|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(6),
	datad => VCC,
	cin => \inst3|converterY|Add0~11\,
	combout => \inst3|converterY|Add0~12_combout\,
	cout => \inst3|converterY|Add0~13\);

-- Location: LCCOMB_X23_Y23_N20
\inst3|converterY|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~14_combout\ = (\inst3|converterY|number\(7) & (!\inst3|converterY|Add0~13\)) # (!\inst3|converterY|number\(7) & (\inst3|converterY|Add0~13\ & VCC))
-- \inst3|converterY|Add0~15\ = CARRY((\inst3|converterY|number\(7) & !\inst3|converterY|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(7),
	datad => VCC,
	cin => \inst3|converterY|Add0~13\,
	combout => \inst3|converterY|Add0~14_combout\,
	cout => \inst3|converterY|Add0~15\);

-- Location: LCCOMB_X23_Y23_N22
\inst3|converterY|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~16_combout\ = (\inst3|converterY|number\(8) & (\inst3|converterY|Add0~15\ $ (GND))) # (!\inst3|converterY|number\(8) & ((GND) # (!\inst3|converterY|Add0~15\)))
-- \inst3|converterY|Add0~17\ = CARRY((!\inst3|converterY|Add0~15\) # (!\inst3|converterY|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(8),
	datad => VCC,
	cin => \inst3|converterY|Add0~15\,
	combout => \inst3|converterY|Add0~16_combout\,
	cout => \inst3|converterY|Add0~17\);

-- Location: LCCOMB_X23_Y23_N24
\inst3|converterY|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~18_combout\ = (\inst3|converterY|number\(9) & (!\inst3|converterY|Add0~17\)) # (!\inst3|converterY|number\(9) & (\inst3|converterY|Add0~17\ & VCC))
-- \inst3|converterY|Add0~19\ = CARRY((\inst3|converterY|number\(9) & !\inst3|converterY|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(9),
	datad => VCC,
	cin => \inst3|converterY|Add0~17\,
	combout => \inst3|converterY|Add0~18_combout\,
	cout => \inst3|converterY|Add0~19\);

-- Location: LCCOMB_X23_Y23_N26
\inst3|converterY|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~20_combout\ = (\inst3|converterY|number\(10) & (\inst3|converterY|Add0~19\ $ (GND))) # (!\inst3|converterY|number\(10) & ((GND) # (!\inst3|converterY|Add0~19\)))
-- \inst3|converterY|Add0~21\ = CARRY((!\inst3|converterY|Add0~19\) # (!\inst3|converterY|number\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(10),
	datad => VCC,
	cin => \inst3|converterY|Add0~19\,
	combout => \inst3|converterY|Add0~20_combout\,
	cout => \inst3|converterY|Add0~21\);

-- Location: LCCOMB_X23_Y23_N28
\inst3|converterY|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~22_combout\ = (\inst3|converterY|number\(11) & (!\inst3|converterY|Add0~21\)) # (!\inst3|converterY|number\(11) & (\inst3|converterY|Add0~21\ & VCC))
-- \inst3|converterY|Add0~23\ = CARRY((\inst3|converterY|number\(11) & !\inst3|converterY|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(11),
	datad => VCC,
	cin => \inst3|converterY|Add0~21\,
	combout => \inst3|converterY|Add0~22_combout\,
	cout => \inst3|converterY|Add0~23\);

-- Location: LCCOMB_X23_Y23_N30
\inst3|converterY|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~24_combout\ = \inst3|converterY|Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|converterY|Add0~23\,
	combout => \inst3|converterY|Add0~24_combout\);

-- Location: LCCOMB_X28_Y23_N0
\inst3|converterY|number~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~19_combout\ = (\inst3|converterY|state.s0_s~q\ & (!\inst3|converterY|number~5_combout\ & (!\inst3|converterY|digit_int_3~3_combout\))) # (!\inst3|converterY|state.s0_s~q\ & (((\inst3|converterY|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number~5_combout\,
	datab => \inst3|converterY|digit_int_3~3_combout\,
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|Add0~24_combout\,
	combout => \inst3|converterY|number~19_combout\);

-- Location: LCCOMB_X30_Y23_N18
\inst3|converterY|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~16_combout\ = (\inst3|converterY|number\(11) & ((GND) # (!\inst3|converterY|Add1~15\))) # (!\inst3|converterY|number\(11) & (\inst3|converterY|Add1~15\ $ (GND)))
-- \inst3|converterY|Add1~17\ = CARRY((\inst3|converterY|number\(11)) # (!\inst3|converterY|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(11),
	datad => VCC,
	cin => \inst3|converterY|Add1~15\,
	combout => \inst3|converterY|Add1~16_combout\,
	cout => \inst3|converterY|Add1~17\);

-- Location: LCCOMB_X30_Y23_N20
\inst3|converterY|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~18_combout\ = \inst3|converterY|number\(12) $ (!\inst3|converterY|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(12),
	cin => \inst3|converterY|Add1~17\,
	combout => \inst3|converterY|Add1~18_combout\);

-- Location: LCCOMB_X24_Y23_N16
\inst3|converterY|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~12_combout\ = (\inst3|converterY|number\(7) & ((GND) # (!\inst3|converterY|Add5~11\))) # (!\inst3|converterY|number\(7) & (\inst3|converterY|Add5~11\ $ (GND)))
-- \inst3|converterY|Add5~13\ = CARRY((\inst3|converterY|number\(7)) # (!\inst3|converterY|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(7),
	datad => VCC,
	cin => \inst3|converterY|Add5~11\,
	combout => \inst3|converterY|Add5~12_combout\,
	cout => \inst3|converterY|Add5~13\);

-- Location: LCCOMB_X24_Y23_N18
\inst3|converterY|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~14_combout\ = (\inst3|converterY|number\(8) & (\inst3|converterY|Add5~13\ & VCC)) # (!\inst3|converterY|number\(8) & (!\inst3|converterY|Add5~13\))
-- \inst3|converterY|Add5~15\ = CARRY((!\inst3|converterY|number\(8) & !\inst3|converterY|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(8),
	datad => VCC,
	cin => \inst3|converterY|Add5~13\,
	combout => \inst3|converterY|Add5~14_combout\,
	cout => \inst3|converterY|Add5~15\);

-- Location: LCCOMB_X24_Y23_N20
\inst3|converterY|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~16_combout\ = (\inst3|converterY|number\(9) & ((GND) # (!\inst3|converterY|Add5~15\))) # (!\inst3|converterY|number\(9) & (\inst3|converterY|Add5~15\ $ (GND)))
-- \inst3|converterY|Add5~17\ = CARRY((\inst3|converterY|number\(9)) # (!\inst3|converterY|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(9),
	datad => VCC,
	cin => \inst3|converterY|Add5~15\,
	combout => \inst3|converterY|Add5~16_combout\,
	cout => \inst3|converterY|Add5~17\);

-- Location: LCCOMB_X24_Y23_N22
\inst3|converterY|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~18_combout\ = (\inst3|converterY|number\(10) & (\inst3|converterY|Add5~17\ & VCC)) # (!\inst3|converterY|number\(10) & (!\inst3|converterY|Add5~17\))
-- \inst3|converterY|Add5~19\ = CARRY((!\inst3|converterY|number\(10) & !\inst3|converterY|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(10),
	datad => VCC,
	cin => \inst3|converterY|Add5~17\,
	combout => \inst3|converterY|Add5~18_combout\,
	cout => \inst3|converterY|Add5~19\);

-- Location: LCCOMB_X24_Y23_N24
\inst3|converterY|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~20_combout\ = (\inst3|converterY|number\(11) & ((GND) # (!\inst3|converterY|Add5~19\))) # (!\inst3|converterY|number\(11) & (\inst3|converterY|Add5~19\ $ (GND)))
-- \inst3|converterY|Add5~21\ = CARRY((\inst3|converterY|number\(11)) # (!\inst3|converterY|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(11),
	datad => VCC,
	cin => \inst3|converterY|Add5~19\,
	combout => \inst3|converterY|Add5~20_combout\,
	cout => \inst3|converterY|Add5~21\);

-- Location: LCCOMB_X24_Y23_N26
\inst3|converterY|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~22_combout\ = \inst3|converterY|Add5~21\ $ (!\inst3|converterY|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number\(12),
	cin => \inst3|converterY|Add5~21\,
	combout => \inst3|converterY|Add5~22_combout\);

-- Location: LCCOMB_X26_Y23_N26
\inst3|converterY|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~16_combout\ = (\inst3|converterY|number\(10) & ((GND) # (!\inst3|converterY|Add3~15\))) # (!\inst3|converterY|number\(10) & (\inst3|converterY|Add3~15\ $ (GND)))
-- \inst3|converterY|Add3~17\ = CARRY((\inst3|converterY|number\(10)) # (!\inst3|converterY|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(10),
	datad => VCC,
	cin => \inst3|converterY|Add3~15\,
	combout => \inst3|converterY|Add3~16_combout\,
	cout => \inst3|converterY|Add3~17\);

-- Location: LCCOMB_X26_Y23_N28
\inst3|converterY|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~18_combout\ = (\inst3|converterY|number\(11) & (\inst3|converterY|Add3~17\ & VCC)) # (!\inst3|converterY|number\(11) & (!\inst3|converterY|Add3~17\))
-- \inst3|converterY|Add3~19\ = CARRY((!\inst3|converterY|number\(11) & !\inst3|converterY|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(11),
	datad => VCC,
	cin => \inst3|converterY|Add3~17\,
	combout => \inst3|converterY|Add3~18_combout\,
	cout => \inst3|converterY|Add3~19\);

-- Location: LCCOMB_X26_Y23_N30
\inst3|converterY|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~20_combout\ = \inst3|converterY|number\(12) $ (\inst3|converterY|Add3~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(12),
	cin => \inst3|converterY|Add3~19\,
	combout => \inst3|converterY|Add3~20_combout\);

-- Location: LCCOMB_X27_Y23_N14
\inst3|converterY|number~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~17_combout\ = (!\inst3|converterY|state.s1~q\ & ((\inst3|converterY|state.s2~q\ & ((\inst3|converterY|Add3~20_combout\))) # (!\inst3|converterY|state.s2~q\ & (\inst3|converterY|Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s2~q\,
	datab => \inst3|converterY|state.s1~q\,
	datac => \inst3|converterY|Add5~22_combout\,
	datad => \inst3|converterY|Add3~20_combout\,
	combout => \inst3|converterY|number~17_combout\);

-- Location: LCCOMB_X28_Y23_N6
\inst3|converterY|number~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~18_combout\ = (\inst3|converterY|number~17_combout\) # ((\inst3|converterY|state.s1~q\ & \inst3|converterY|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s1~q\,
	datac => \inst3|converterY|Add1~18_combout\,
	datad => \inst3|converterY|number~17_combout\,
	combout => \inst3|converterY|number~18_combout\);

-- Location: LCCOMB_X28_Y23_N4
\inst3|converterY|number~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~20_combout\ = (\inst3|converterY|number[6]~6_combout\ & ((\inst3|converterY|number~18_combout\) # ((\inst3|converterY|number~19_combout\ & \inst3|converterY|number\(12))))) # (!\inst3|converterY|number[6]~6_combout\ & 
-- (\inst3|converterY|number~19_combout\ & (\inst3|converterY|number\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~6_combout\,
	datab => \inst3|converterY|number~19_combout\,
	datac => \inst3|converterY|number\(12),
	datad => \inst3|converterY|number~18_combout\,
	combout => \inst3|converterY|number~20_combout\);

-- Location: FF_X14_Y25_N19
\inst|dataY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(12),
	sload => VCC,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(12));

-- Location: LCCOMB_X14_Y25_N16
\inst3|accY_v[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[12]~feeder_combout\ = \inst|dataY\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(12),
	combout => \inst3|accY_v[12]~feeder_combout\);

-- Location: FF_X14_Y25_N17
\inst3|accY_v[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[12]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(12));

-- Location: FF_X28_Y23_N5
\inst3|converterY|number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number~20_combout\,
	asdata => \inst3|accY_v\(12),
	sload => \inst3|converterY|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(12));

-- Location: LCCOMB_X23_Y23_N10
\inst3|converterY|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~4_combout\ = (\inst3|converterY|number\(2) & (\inst3|converterY|Add0~3\ $ (GND))) # (!\inst3|converterY|number\(2) & ((GND) # (!\inst3|converterY|Add0~3\)))
-- \inst3|converterY|Add0~5\ = CARRY((!\inst3|converterY|Add0~3\) # (!\inst3|converterY|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(2),
	datad => VCC,
	cin => \inst3|converterY|Add0~3\,
	combout => \inst3|converterY|Add0~4_combout\,
	cout => \inst3|converterY|Add0~5\);

-- Location: LCCOMB_X24_Y23_N30
\inst3|converterY|number~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~9_combout\ = (\inst3|converterY|number\(12) & ((\inst3|converterY|state.s0_s~q\ & (\inst3|converterY|number\(2))) # (!\inst3|converterY|state.s0_s~q\ & ((\inst3|converterY|Add0~4_combout\))))) # (!\inst3|converterY|number\(12) & 
-- (\inst3|converterY|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(12),
	datab => \inst3|converterY|number\(2),
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|Add0~4_combout\,
	combout => \inst3|converterY|number~9_combout\);

-- Location: LCCOMB_X24_Y23_N6
\inst3|converterY|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~2_combout\ = (\inst3|converterY|number\(2) & (\inst3|converterY|Add5~1\ & VCC)) # (!\inst3|converterY|number\(2) & (!\inst3|converterY|Add5~1\))
-- \inst3|converterY|Add5~3\ = CARRY((!\inst3|converterY|number\(2) & !\inst3|converterY|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(2),
	datad => VCC,
	cin => \inst3|converterY|Add5~1\,
	combout => \inst3|converterY|Add5~2_combout\,
	cout => \inst3|converterY|Add5~3\);

-- Location: LCCOMB_X26_Y23_N10
\inst3|converterY|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~0_combout\ = \inst3|converterY|number\(2) $ (VCC)
-- \inst3|converterY|Add3~1\ = CARRY(\inst3|converterY|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(2),
	datad => VCC,
	combout => \inst3|converterY|Add3~0_combout\,
	cout => \inst3|converterY|Add3~1\);

-- Location: LCCOMB_X25_Y23_N8
\inst3|converterY|number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~8_combout\ = (\inst3|converterY|state.s2~q\ & ((\inst3|converterY|Add3~0_combout\))) # (!\inst3|converterY|state.s2~q\ & (\inst3|converterY|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|Add5~2_combout\,
	datac => \inst3|converterY|Add3~0_combout\,
	datad => \inst3|converterY|state.s2~q\,
	combout => \inst3|converterY|number~8_combout\);

-- Location: LCCOMB_X23_Y23_N0
\inst3|converterY|number~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~10_combout\ = (\inst3|converterY|state.s0_s~q\ & ((\inst3|converterY|number~5_combout\ & ((\inst3|converterY|number~8_combout\))) # (!\inst3|converterY|number~5_combout\ & (\inst3|converterY|number~9_combout\)))) # 
-- (!\inst3|converterY|state.s0_s~q\ & (\inst3|converterY|number~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number~9_combout\,
	datab => \inst3|converterY|state.s0_s~q\,
	datac => \inst3|converterY|number~5_combout\,
	datad => \inst3|converterY|number~8_combout\,
	combout => \inst3|converterY|number~10_combout\);

-- Location: LCCOMB_X23_Y23_N4
\inst3|converterY|number[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[2]~feeder_combout\ = \inst3|converterY|number~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~10_combout\,
	combout => \inst3|converterY|number[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N18
\inst|dataY[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[2]~feeder_combout\ = \inst|read_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(2),
	combout => \inst|dataY[2]~feeder_combout\);

-- Location: FF_X21_Y23_N19
\inst|dataY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[2]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(2));

-- Location: LCCOMB_X21_Y23_N14
\inst3|accY_v[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[2]~feeder_combout\ = \inst|dataY\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(2),
	combout => \inst3|accY_v[2]~feeder_combout\);

-- Location: FF_X21_Y23_N15
\inst3|accY_v[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[2]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(2));

-- Location: FF_X23_Y23_N5
\inst3|converterY|number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[2]~feeder_combout\,
	asdata => \inst3|accY_v\(2),
	sload => \inst3|converterY|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(2));

-- Location: LCCOMB_X26_Y23_N12
\inst3|converterY|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~2_combout\ = (\inst3|converterY|number\(3) & (\inst3|converterY|Add3~1\ & VCC)) # (!\inst3|converterY|number\(3) & (!\inst3|converterY|Add3~1\))
-- \inst3|converterY|Add3~3\ = CARRY((!\inst3|converterY|number\(3) & !\inst3|converterY|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(3),
	datad => VCC,
	cin => \inst3|converterY|Add3~1\,
	combout => \inst3|converterY|Add3~2_combout\,
	cout => \inst3|converterY|Add3~3\);

-- Location: LCCOMB_X26_Y23_N14
\inst3|converterY|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~4_combout\ = (\inst3|converterY|number\(4) & ((GND) # (!\inst3|converterY|Add3~3\))) # (!\inst3|converterY|number\(4) & (\inst3|converterY|Add3~3\ $ (GND)))
-- \inst3|converterY|Add3~5\ = CARRY((\inst3|converterY|number\(4)) # (!\inst3|converterY|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(4),
	datad => VCC,
	cin => \inst3|converterY|Add3~3\,
	combout => \inst3|converterY|Add3~4_combout\,
	cout => \inst3|converterY|Add3~5\);

-- Location: LCCOMB_X23_Y23_N12
\inst3|converterY|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~6_combout\ = (\inst3|converterY|number\(3) & (!\inst3|converterY|Add0~5\)) # (!\inst3|converterY|number\(3) & (\inst3|converterY|Add0~5\ & VCC))
-- \inst3|converterY|Add0~7\ = CARRY((\inst3|converterY|number\(3) & !\inst3|converterY|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(3),
	datad => VCC,
	cin => \inst3|converterY|Add0~5\,
	combout => \inst3|converterY|Add0~6_combout\,
	cout => \inst3|converterY|Add0~7\);

-- Location: LCCOMB_X23_Y23_N14
\inst3|converterY|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add0~8_combout\ = (\inst3|converterY|number\(4) & (\inst3|converterY|Add0~7\ $ (GND))) # (!\inst3|converterY|number\(4) & ((GND) # (!\inst3|converterY|Add0~7\)))
-- \inst3|converterY|Add0~9\ = CARRY((!\inst3|converterY|Add0~7\) # (!\inst3|converterY|number\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(4),
	datad => VCC,
	cin => \inst3|converterY|Add0~7\,
	combout => \inst3|converterY|Add0~8_combout\,
	cout => \inst3|converterY|Add0~9\);

-- Location: LCCOMB_X24_Y23_N8
\inst3|converterY|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~4_combout\ = (\inst3|converterY|number\(3) & (\inst3|converterY|Add5~3\ $ (GND))) # (!\inst3|converterY|number\(3) & (!\inst3|converterY|Add5~3\ & VCC))
-- \inst3|converterY|Add5~5\ = CARRY((\inst3|converterY|number\(3) & !\inst3|converterY|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(3),
	datad => VCC,
	cin => \inst3|converterY|Add5~3\,
	combout => \inst3|converterY|Add5~4_combout\,
	cout => \inst3|converterY|Add5~5\);

-- Location: LCCOMB_X24_Y23_N10
\inst3|converterY|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~6_combout\ = (\inst3|converterY|number\(4) & (\inst3|converterY|Add5~5\ & VCC)) # (!\inst3|converterY|number\(4) & (!\inst3|converterY|Add5~5\))
-- \inst3|converterY|Add5~7\ = CARRY((!\inst3|converterY|number\(4) & !\inst3|converterY|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(4),
	datad => VCC,
	cin => \inst3|converterY|Add5~5\,
	combout => \inst3|converterY|Add5~6_combout\,
	cout => \inst3|converterY|Add5~7\);

-- Location: LCCOMB_X30_Y23_N2
\inst3|converterY|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~0_combout\ = \inst3|converterY|number\(3) $ (VCC)
-- \inst3|converterY|Add1~1\ = CARRY(\inst3|converterY|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(3),
	datad => VCC,
	combout => \inst3|converterY|Add1~0_combout\,
	cout => \inst3|converterY|Add1~1\);

-- Location: LCCOMB_X30_Y23_N4
\inst3|converterY|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~2_combout\ = (\inst3|converterY|number\(4) & (\inst3|converterY|Add1~1\ & VCC)) # (!\inst3|converterY|number\(4) & (!\inst3|converterY|Add1~1\))
-- \inst3|converterY|Add1~3\ = CARRY((!\inst3|converterY|number\(4) & !\inst3|converterY|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(4),
	datad => VCC,
	cin => \inst3|converterY|Add1~1\,
	combout => \inst3|converterY|Add1~2_combout\,
	cout => \inst3|converterY|Add1~3\);

-- Location: LCCOMB_X27_Y23_N18
\inst3|converterY|number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~11_combout\ = (\inst3|converterY|number[6]~1_combout\ & (!\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add5~6_combout\))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\) # 
-- ((\inst3|converterY|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add5~6_combout\,
	datad => \inst3|converterY|Add1~2_combout\,
	combout => \inst3|converterY|number~11_combout\);

-- Location: LCCOMB_X27_Y23_N0
\inst3|converterY|number~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~12_combout\ = (\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|number~11_combout\ & ((\inst3|converterY|Add0~8_combout\))) # (!\inst3|converterY|number~11_combout\ & (\inst3|converterY|Add3~4_combout\)))) # 
-- (!\inst3|converterY|number[6]~2_combout\ & (((\inst3|converterY|number~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|Add3~4_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add0~8_combout\,
	datad => \inst3|converterY|number~11_combout\,
	combout => \inst3|converterY|number~12_combout\);

-- Location: LCCOMB_X27_Y23_N8
\inst3|converterY|number[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[4]~feeder_combout\ = \inst3|converterY|number~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~12_combout\,
	combout => \inst3|converterY|number[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N12
\inst|dataY[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[4]~feeder_combout\ = \inst|read_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(4),
	combout => \inst|dataY[4]~feeder_combout\);

-- Location: FF_X21_Y23_N13
\inst|dataY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[4]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(4));

-- Location: LCCOMB_X21_Y23_N4
\inst3|accY_v[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[4]~feeder_combout\ = \inst|dataY\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(4),
	combout => \inst3|accY_v[4]~feeder_combout\);

-- Location: FF_X21_Y23_N5
\inst3|accY_v[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[4]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(4));

-- Location: LCCOMB_X28_Y23_N8
\inst3|converterY|number[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[6]~7_combout\ = (\inst3|converterY|state.s0~q\) # ((\inst3|converterY|number[6]~6_combout\) # ((\inst3|converterY|number\(12) & !\inst3|converterY|state.s0_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(12),
	datab => \inst3|converterY|state.s0_s~q\,
	datac => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|number[6]~6_combout\,
	combout => \inst3|converterY|number[6]~7_combout\);

-- Location: FF_X27_Y23_N9
\inst3|converterY|number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[4]~feeder_combout\,
	asdata => \inst3|accY_v\(4),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(4));

-- Location: LCCOMB_X30_Y23_N6
\inst3|converterY|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~4_combout\ = (\inst3|converterY|number\(5) & (\inst3|converterY|Add1~3\ $ (GND))) # (!\inst3|converterY|number\(5) & (!\inst3|converterY|Add1~3\ & VCC))
-- \inst3|converterY|Add1~5\ = CARRY((\inst3|converterY|number\(5) & !\inst3|converterY|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(5),
	datad => VCC,
	cin => \inst3|converterY|Add1~3\,
	combout => \inst3|converterY|Add1~4_combout\,
	cout => \inst3|converterY|Add1~5\);

-- Location: LCCOMB_X26_Y23_N16
\inst3|converterY|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~6_combout\ = (\inst3|converterY|number\(5) & (!\inst3|converterY|Add3~5\)) # (!\inst3|converterY|number\(5) & ((\inst3|converterY|Add3~5\) # (GND)))
-- \inst3|converterY|Add3~7\ = CARRY((!\inst3|converterY|Add3~5\) # (!\inst3|converterY|number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(5),
	datad => VCC,
	cin => \inst3|converterY|Add3~5\,
	combout => \inst3|converterY|Add3~6_combout\,
	cout => \inst3|converterY|Add3~7\);

-- Location: LCCOMB_X24_Y23_N12
\inst3|converterY|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~8_combout\ = (\inst3|converterY|number\(5) & ((GND) # (!\inst3|converterY|Add5~7\))) # (!\inst3|converterY|number\(5) & (\inst3|converterY|Add5~7\ $ (GND)))
-- \inst3|converterY|Add5~9\ = CARRY((\inst3|converterY|number\(5)) # (!\inst3|converterY|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(5),
	datad => VCC,
	cin => \inst3|converterY|Add5~7\,
	combout => \inst3|converterY|Add5~8_combout\,
	cout => \inst3|converterY|Add5~9\);

-- Location: LCCOMB_X27_Y23_N2
\inst3|converterY|number~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~15_combout\ = (\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add3~6_combout\)) # (!\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|Add5~8_combout\))))) # 
-- (!\inst3|converterY|number[6]~1_combout\ & (\inst3|converterY|number[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add3~6_combout\,
	datad => \inst3|converterY|Add5~8_combout\,
	combout => \inst3|converterY|number~15_combout\);

-- Location: LCCOMB_X27_Y23_N28
\inst3|converterY|number~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~16_combout\ = (\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number~15_combout\)))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number~15_combout\ & (\inst3|converterY|Add0~10_combout\)) # 
-- (!\inst3|converterY|number~15_combout\ & ((\inst3|converterY|Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|Add0~10_combout\,
	datac => \inst3|converterY|Add1~4_combout\,
	datad => \inst3|converterY|number~15_combout\,
	combout => \inst3|converterY|number~16_combout\);

-- Location: LCCOMB_X27_Y23_N10
\inst3|converterY|number[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[5]~feeder_combout\ = \inst3|converterY|number~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~16_combout\,
	combout => \inst3|converterY|number[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N24
\inst|dataY[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[5]~feeder_combout\ = \inst|read_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(5),
	combout => \inst|dataY[5]~feeder_combout\);

-- Location: FF_X21_Y23_N25
\inst|dataY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[5]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(5));

-- Location: LCCOMB_X21_Y23_N8
\inst3|accY_v[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[5]~feeder_combout\ = \inst|dataY\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(5),
	combout => \inst3|accY_v[5]~feeder_combout\);

-- Location: FF_X21_Y23_N9
\inst3|accY_v[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[5]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(5));

-- Location: FF_X27_Y23_N11
\inst3|converterY|number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[5]~feeder_combout\,
	asdata => \inst3|accY_v\(5),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(5));

-- Location: LCCOMB_X26_Y23_N18
\inst3|converterY|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~8_combout\ = (\inst3|converterY|number\(6) & (\inst3|converterY|Add3~7\ $ (GND))) # (!\inst3|converterY|number\(6) & (!\inst3|converterY|Add3~7\ & VCC))
-- \inst3|converterY|Add3~9\ = CARRY((\inst3|converterY|number\(6) & !\inst3|converterY|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(6),
	datad => VCC,
	cin => \inst3|converterY|Add3~7\,
	combout => \inst3|converterY|Add3~8_combout\,
	cout => \inst3|converterY|Add3~9\);

-- Location: LCCOMB_X24_Y23_N14
\inst3|converterY|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add5~10_combout\ = (\inst3|converterY|number\(6) & (\inst3|converterY|Add5~9\ & VCC)) # (!\inst3|converterY|number\(6) & (!\inst3|converterY|Add5~9\))
-- \inst3|converterY|Add5~11\ = CARRY((!\inst3|converterY|number\(6) & !\inst3|converterY|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(6),
	datad => VCC,
	cin => \inst3|converterY|Add5~9\,
	combout => \inst3|converterY|Add5~10_combout\,
	cout => \inst3|converterY|Add5~11\);

-- Location: LCCOMB_X30_Y23_N8
\inst3|converterY|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~6_combout\ = (\inst3|converterY|number\(6) & (!\inst3|converterY|Add1~5\)) # (!\inst3|converterY|number\(6) & ((\inst3|converterY|Add1~5\) # (GND)))
-- \inst3|converterY|Add1~7\ = CARRY((!\inst3|converterY|Add1~5\) # (!\inst3|converterY|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(6),
	datad => VCC,
	cin => \inst3|converterY|Add1~5\,
	combout => \inst3|converterY|Add1~6_combout\,
	cout => \inst3|converterY|Add1~7\);

-- Location: LCCOMB_X27_Y23_N6
\inst3|converterY|number~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~13_combout\ = (\inst3|converterY|number[6]~1_combout\ & (!\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add5~10_combout\))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\) # 
-- ((\inst3|converterY|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add5~10_combout\,
	datad => \inst3|converterY|Add1~6_combout\,
	combout => \inst3|converterY|number~13_combout\);

-- Location: LCCOMB_X27_Y23_N20
\inst3|converterY|number~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~14_combout\ = (\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|number~13_combout\ & ((\inst3|converterY|Add0~12_combout\))) # (!\inst3|converterY|number~13_combout\ & (\inst3|converterY|Add3~8_combout\)))) # 
-- (!\inst3|converterY|number[6]~2_combout\ & (((\inst3|converterY|number~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|Add3~8_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add0~12_combout\,
	datad => \inst3|converterY|number~13_combout\,
	combout => \inst3|converterY|number~14_combout\);

-- Location: LCCOMB_X28_Y23_N14
\inst3|converterY|number[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[6]~feeder_combout\ = \inst3|converterY|number~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~14_combout\,
	combout => \inst3|converterY|number[6]~feeder_combout\);

-- Location: FF_X21_Y23_N7
\inst|dataY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(6),
	sload => VCC,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(6));

-- Location: LCCOMB_X21_Y23_N22
\inst3|accY_v[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[6]~feeder_combout\ = \inst|dataY\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(6),
	combout => \inst3|accY_v[6]~feeder_combout\);

-- Location: FF_X21_Y23_N23
\inst3|accY_v[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[6]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(6));

-- Location: FF_X28_Y23_N15
\inst3|converterY|number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[6]~feeder_combout\,
	asdata => \inst3|accY_v\(6),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(6));

-- Location: LCCOMB_X26_Y23_N20
\inst3|converterY|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~10_combout\ = (\inst3|converterY|number\(7) & (\inst3|converterY|Add3~9\ & VCC)) # (!\inst3|converterY|number\(7) & (!\inst3|converterY|Add3~9\))
-- \inst3|converterY|Add3~11\ = CARRY((!\inst3|converterY|number\(7) & !\inst3|converterY|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(7),
	datad => VCC,
	cin => \inst3|converterY|Add3~9\,
	combout => \inst3|converterY|Add3~10_combout\,
	cout => \inst3|converterY|Add3~11\);

-- Location: LCCOMB_X25_Y23_N28
\inst3|converterY|number~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~29_combout\ = (\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|Add3~10_combout\))) # (!\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add5~12_combout\)))) # 
-- (!\inst3|converterY|number[6]~1_combout\ & (\inst3|converterY|number[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add5~12_combout\,
	datad => \inst3|converterY|Add3~10_combout\,
	combout => \inst3|converterY|number~29_combout\);

-- Location: LCCOMB_X30_Y23_N10
\inst3|converterY|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~8_combout\ = (\inst3|converterY|number\(7) & (\inst3|converterY|Add1~7\ $ (GND))) # (!\inst3|converterY|number\(7) & (!\inst3|converterY|Add1~7\ & VCC))
-- \inst3|converterY|Add1~9\ = CARRY((\inst3|converterY|number\(7) & !\inst3|converterY|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(7),
	datad => VCC,
	cin => \inst3|converterY|Add1~7\,
	combout => \inst3|converterY|Add1~8_combout\,
	cout => \inst3|converterY|Add1~9\);

-- Location: LCCOMB_X25_Y23_N18
\inst3|converterY|number~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~30_combout\ = (\inst3|converterY|number[6]~1_combout\ & (\inst3|converterY|number~29_combout\)) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number~29_combout\ & ((\inst3|converterY|Add0~14_combout\))) # 
-- (!\inst3|converterY|number~29_combout\ & (\inst3|converterY|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|number~29_combout\,
	datac => \inst3|converterY|Add1~8_combout\,
	datad => \inst3|converterY|Add0~14_combout\,
	combout => \inst3|converterY|number~30_combout\);

-- Location: LCCOMB_X25_Y23_N20
\inst3|converterY|number[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[7]~feeder_combout\ = \inst3|converterY|number~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~30_combout\,
	combout => \inst3|converterY|number[7]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N10
\inst|dataY[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[7]~feeder_combout\ = \inst|read_temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(7),
	combout => \inst|dataY[7]~feeder_combout\);

-- Location: FF_X21_Y23_N11
\inst|dataY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[7]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(7));

-- Location: LCCOMB_X21_Y23_N26
\inst3|accY_v[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[7]~feeder_combout\ = \inst|dataY\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(7),
	combout => \inst3|accY_v[7]~feeder_combout\);

-- Location: FF_X21_Y23_N27
\inst3|accY_v[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[7]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(7));

-- Location: FF_X25_Y23_N21
\inst3|converterY|number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[7]~feeder_combout\,
	asdata => \inst3|accY_v\(7),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(7));

-- Location: LCCOMB_X26_Y23_N22
\inst3|converterY|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~12_combout\ = (\inst3|converterY|number\(8) & ((GND) # (!\inst3|converterY|Add3~11\))) # (!\inst3|converterY|number\(8) & (\inst3|converterY|Add3~11\ $ (GND)))
-- \inst3|converterY|Add3~13\ = CARRY((\inst3|converterY|number\(8)) # (!\inst3|converterY|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(8),
	datad => VCC,
	cin => \inst3|converterY|Add3~11\,
	combout => \inst3|converterY|Add3~12_combout\,
	cout => \inst3|converterY|Add3~13\);

-- Location: LCCOMB_X30_Y23_N12
\inst3|converterY|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~10_combout\ = (\inst3|converterY|number\(8) & (!\inst3|converterY|Add1~9\)) # (!\inst3|converterY|number\(8) & ((\inst3|converterY|Add1~9\) # (GND)))
-- \inst3|converterY|Add1~11\ = CARRY((!\inst3|converterY|Add1~9\) # (!\inst3|converterY|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(8),
	datad => VCC,
	cin => \inst3|converterY|Add1~9\,
	combout => \inst3|converterY|Add1~10_combout\,
	cout => \inst3|converterY|Add1~11\);

-- Location: LCCOMB_X25_Y23_N16
\inst3|converterY|number~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~27_combout\ = (\inst3|converterY|number[6]~1_combout\ & (\inst3|converterY|Add5~14_combout\ & (!\inst3|converterY|number[6]~2_combout\))) # (!\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number[6]~2_combout\) # 
-- (\inst3|converterY|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|Add5~14_combout\,
	datac => \inst3|converterY|number[6]~2_combout\,
	datad => \inst3|converterY|Add1~10_combout\,
	combout => \inst3|converterY|number~27_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst3|converterY|number~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~28_combout\ = (\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|number~27_combout\ & ((\inst3|converterY|Add0~16_combout\))) # (!\inst3|converterY|number~27_combout\ & (\inst3|converterY|Add3~12_combout\)))) # 
-- (!\inst3|converterY|number[6]~2_combout\ & (((\inst3|converterY|number~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~2_combout\,
	datab => \inst3|converterY|Add3~12_combout\,
	datac => \inst3|converterY|Add0~16_combout\,
	datad => \inst3|converterY|number~27_combout\,
	combout => \inst3|converterY|number~28_combout\);

-- Location: LCCOMB_X28_Y23_N28
\inst3|converterY|number[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[8]~feeder_combout\ = \inst3|converterY|number~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~28_combout\,
	combout => \inst3|converterY|number[8]~feeder_combout\);

-- Location: LCCOMB_X20_Y24_N18
\inst|dataY[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[8]~feeder_combout\ = \inst|read_temp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(8),
	combout => \inst|dataY[8]~feeder_combout\);

-- Location: FF_X20_Y24_N19
\inst|dataY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[8]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(8));

-- Location: LCCOMB_X20_Y24_N24
\inst3|accY_v[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[8]~feeder_combout\ = \inst|dataY\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(8),
	combout => \inst3|accY_v[8]~feeder_combout\);

-- Location: FF_X20_Y24_N25
\inst3|accY_v[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[8]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(8));

-- Location: FF_X28_Y23_N29
\inst3|converterY|number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[8]~feeder_combout\,
	asdata => \inst3|accY_v\(8),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(8));

-- Location: LCCOMB_X30_Y23_N14
\inst3|converterY|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~12_combout\ = (\inst3|converterY|number\(9) & (\inst3|converterY|Add1~11\ $ (GND))) # (!\inst3|converterY|number\(9) & (!\inst3|converterY|Add1~11\ & VCC))
-- \inst3|converterY|Add1~13\ = CARRY((\inst3|converterY|number\(9) & !\inst3|converterY|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(9),
	datad => VCC,
	cin => \inst3|converterY|Add1~11\,
	combout => \inst3|converterY|Add1~12_combout\,
	cout => \inst3|converterY|Add1~13\);

-- Location: LCCOMB_X26_Y23_N24
\inst3|converterY|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add3~14_combout\ = (\inst3|converterY|number\(9) & (\inst3|converterY|Add3~13\ & VCC)) # (!\inst3|converterY|number\(9) & (!\inst3|converterY|Add3~13\))
-- \inst3|converterY|Add3~15\ = CARRY((!\inst3|converterY|number\(9) & !\inst3|converterY|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(9),
	datad => VCC,
	cin => \inst3|converterY|Add3~13\,
	combout => \inst3|converterY|Add3~14_combout\,
	cout => \inst3|converterY|Add3~15\);

-- Location: LCCOMB_X25_Y23_N12
\inst3|converterY|number~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~25_combout\ = (\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add3~14_combout\)) # (!\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|Add5~16_combout\))))) # 
-- (!\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|Add3~14_combout\,
	datac => \inst3|converterY|number[6]~2_combout\,
	datad => \inst3|converterY|Add5~16_combout\,
	combout => \inst3|converterY|number~25_combout\);

-- Location: LCCOMB_X25_Y23_N6
\inst3|converterY|number~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~26_combout\ = (\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number~25_combout\)))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number~25_combout\ & ((\inst3|converterY|Add0~18_combout\))) # 
-- (!\inst3|converterY|number~25_combout\ & (\inst3|converterY|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|Add1~12_combout\,
	datac => \inst3|converterY|Add0~18_combout\,
	datad => \inst3|converterY|number~25_combout\,
	combout => \inst3|converterY|number~26_combout\);

-- Location: LCCOMB_X28_Y23_N22
\inst3|converterY|number[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[9]~feeder_combout\ = \inst3|converterY|number~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~26_combout\,
	combout => \inst3|converterY|number[9]~feeder_combout\);

-- Location: LCCOMB_X20_Y26_N28
\inst|dataY[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[9]~feeder_combout\ = \inst|read_temp\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(9),
	combout => \inst|dataY[9]~feeder_combout\);

-- Location: FF_X20_Y26_N29
\inst|dataY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[9]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(9));

-- Location: LCCOMB_X20_Y26_N16
\inst3|accY_v[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[9]~feeder_combout\ = \inst|dataY\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(9),
	combout => \inst3|accY_v[9]~feeder_combout\);

-- Location: FF_X20_Y26_N17
\inst3|accY_v[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[9]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(9));

-- Location: FF_X28_Y23_N23
\inst3|converterY|number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[9]~feeder_combout\,
	asdata => \inst3|accY_v\(9),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(9));

-- Location: LCCOMB_X30_Y23_N16
\inst3|converterY|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add1~14_combout\ = (\inst3|converterY|number\(10) & (\inst3|converterY|Add1~13\ & VCC)) # (!\inst3|converterY|number\(10) & (!\inst3|converterY|Add1~13\))
-- \inst3|converterY|Add1~15\ = CARRY((!\inst3|converterY|number\(10) & !\inst3|converterY|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(10),
	datad => VCC,
	cin => \inst3|converterY|Add1~13\,
	combout => \inst3|converterY|Add1~14_combout\,
	cout => \inst3|converterY|Add1~15\);

-- Location: LCCOMB_X27_Y23_N12
\inst3|converterY|number~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~23_combout\ = (\inst3|converterY|number[6]~1_combout\ & (!\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add5~18_combout\))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\) # 
-- ((\inst3|converterY|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add5~18_combout\,
	datad => \inst3|converterY|Add1~14_combout\,
	combout => \inst3|converterY|number~23_combout\);

-- Location: LCCOMB_X27_Y23_N30
\inst3|converterY|number~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~24_combout\ = (\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|number~23_combout\ & ((\inst3|converterY|Add0~20_combout\))) # (!\inst3|converterY|number~23_combout\ & (\inst3|converterY|Add3~16_combout\)))) # 
-- (!\inst3|converterY|number[6]~2_combout\ & (((\inst3|converterY|number~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|Add3~16_combout\,
	datab => \inst3|converterY|number[6]~2_combout\,
	datac => \inst3|converterY|Add0~20_combout\,
	datad => \inst3|converterY|number~23_combout\,
	combout => \inst3|converterY|number~24_combout\);

-- Location: LCCOMB_X28_Y23_N12
\inst3|converterY|number[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[10]~feeder_combout\ = \inst3|converterY|number~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~24_combout\,
	combout => \inst3|converterY|number[10]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N28
\inst|dataY[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[10]~feeder_combout\ = \inst|read_temp\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(10),
	combout => \inst|dataY[10]~feeder_combout\);

-- Location: FF_X21_Y23_N29
\inst|dataY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[10]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(10));

-- Location: LCCOMB_X21_Y23_N20
\inst3|accY_v[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[10]~feeder_combout\ = \inst|dataY\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(10),
	combout => \inst3|accY_v[10]~feeder_combout\);

-- Location: FF_X21_Y23_N21
\inst3|accY_v[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[10]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(10));

-- Location: FF_X28_Y23_N13
\inst3|converterY|number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[10]~feeder_combout\,
	asdata => \inst3|accY_v\(10),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(10));

-- Location: LCCOMB_X25_Y23_N2
\inst3|converterY|number~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~21_combout\ = (\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add3~18_combout\)) # (!\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|Add5~20_combout\))))) # 
-- (!\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|Add3~18_combout\,
	datac => \inst3|converterY|number[6]~2_combout\,
	datad => \inst3|converterY|Add5~20_combout\,
	combout => \inst3|converterY|number~21_combout\);

-- Location: LCCOMB_X28_Y23_N18
\inst3|converterY|number~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~22_combout\ = (\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number~21_combout\)))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number~21_combout\ & ((\inst3|converterY|Add0~22_combout\))) # 
-- (!\inst3|converterY|number~21_combout\ & (\inst3|converterY|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|Add1~16_combout\,
	datab => \inst3|converterY|number[6]~1_combout\,
	datac => \inst3|converterY|Add0~22_combout\,
	datad => \inst3|converterY|number~21_combout\,
	combout => \inst3|converterY|number~22_combout\);

-- Location: LCCOMB_X28_Y23_N26
\inst3|converterY|number[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[11]~feeder_combout\ = \inst3|converterY|number~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~22_combout\,
	combout => \inst3|converterY|number[11]~feeder_combout\);

-- Location: FF_X21_Y23_N3
\inst|dataY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	asdata => \inst|read_temp\(11),
	sload => VCC,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(11));

-- Location: LCCOMB_X21_Y23_N30
\inst3|accY_v[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[11]~feeder_combout\ = \inst|dataY\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(11),
	combout => \inst3|accY_v[11]~feeder_combout\);

-- Location: FF_X21_Y23_N31
\inst3|accY_v[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[11]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(11));

-- Location: FF_X28_Y23_N27
\inst3|converterY|number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[11]~feeder_combout\,
	asdata => \inst3|accY_v\(11),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(11));

-- Location: LCCOMB_X28_Y23_N10
\inst3|converterY|digit_int_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_3~0_combout\ = (!\inst3|converterY|number\(11) & (!\inst3|converterY|number\(12) & !\inst3|converterY|number\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(11),
	datac => \inst3|converterY|number\(12),
	datad => \inst3|converterY|number\(10),
	combout => \inst3|converterY|digit_int_3~0_combout\);

-- Location: LCCOMB_X28_Y23_N16
\inst3|converterY|digit_int_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_3~1_combout\ = (\inst3|converterY|number\(5) & (\inst3|converterY|number\(6) & ((\inst3|converterY|number\(3)) # (\inst3|converterY|number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number\(5),
	datab => \inst3|converterY|number\(3),
	datac => \inst3|converterY|number\(6),
	datad => \inst3|converterY|number\(4),
	combout => \inst3|converterY|digit_int_3~1_combout\);

-- Location: LCCOMB_X28_Y23_N30
\inst3|converterY|digit_int_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_3~2_combout\ = (\inst3|converterY|number\(8) & (\inst3|converterY|number\(9) & \inst3|converterY|number\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|number\(8),
	datac => \inst3|converterY|number\(9),
	datad => \inst3|converterY|number\(7),
	combout => \inst3|converterY|digit_int_3~2_combout\);

-- Location: LCCOMB_X28_Y23_N24
\inst3|converterY|digit_int_3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_3~3_combout\ = (\inst3|converterY|state.s1~q\ & (((\inst3|converterY|digit_int_3~1_combout\ & \inst3|converterY|digit_int_3~2_combout\)) # (!\inst3|converterY|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_3~0_combout\,
	datab => \inst3|converterY|digit_int_3~1_combout\,
	datac => \inst3|converterY|digit_int_3~2_combout\,
	datad => \inst3|converterY|state.s1~q\,
	combout => \inst3|converterY|digit_int_3~3_combout\);

-- Location: LCCOMB_X29_Y23_N0
\inst3|converterY|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~22_combout\ = (\inst3|converterY|state~18_combout\ & (((\inst3|converterY|state.s4~q\)))) # (!\inst3|converterY|state~18_combout\ & (!\inst3|converterY|state.s0~q\ & (\inst3|converterY|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s0~q\,
	datab => \inst3|converterY|state.s3~q\,
	datac => \inst3|converterY|state.s4~q\,
	datad => \inst3|converterY|state~18_combout\,
	combout => \inst3|converterY|state~22_combout\);

-- Location: FF_X29_Y23_N1
\inst3|converterY|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s4~q\);

-- Location: FF_X29_Y23_N13
\inst3|converterY|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|state.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s5~q\);

-- Location: LCCOMB_X29_Y23_N14
\inst3|converterY|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~16_combout\ = (!\inst3|converterY|number~0_combout\ & ((\inst3|converterY|state.s5~q\) # ((\inst3|converterY|state.s3~q\) # (\inst3|converterY|state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s5~q\,
	datab => \inst3|converterY|state.s3~q\,
	datac => \inst3|converterY|state.s4~q\,
	datad => \inst3|converterY|number~0_combout\,
	combout => \inst3|converterY|state~16_combout\);

-- Location: LCCOMB_X29_Y23_N8
\inst3|converterY|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~17_combout\ = (\inst3|converterY|state.s1~q\) # ((\inst3|converterY|state.s2~q\ & (!\inst3|converterY|LessThan1~1_combout\)) # (!\inst3|converterY|state.s2~q\ & ((\inst3|converterY|state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s2~q\,
	datab => \inst3|converterY|state.s1~q\,
	datac => \inst3|converterY|LessThan1~1_combout\,
	datad => \inst3|converterY|state~16_combout\,
	combout => \inst3|converterY|state~17_combout\);

-- Location: LCCOMB_X29_Y23_N6
\inst3|converterY|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~18_combout\ = \inst3|converterY|state.s0~q\ $ (((\inst3|converterY|state.s0_s~q\ & ((\inst3|converterY|digit_int_3~3_combout\) # (!\inst3|converterY|state~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s0_s~q\,
	datab => \inst3|converterY|digit_int_3~3_combout\,
	datac => \inst3|converterY|state~17_combout\,
	datad => \inst3|converterY|state.s0~q\,
	combout => \inst3|converterY|state~18_combout\);

-- Location: LCCOMB_X29_Y23_N24
\inst3|converterY|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~23_combout\ = (\inst3|converterY|state~18_combout\ & (((\inst3|converterY|state.s1~q\)))) # (!\inst3|converterY|state~18_combout\ & (!\inst3|converterY|state.s0~q\ & (!\inst3|converterY|state.s0_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s0~q\,
	datab => \inst3|converterY|state.s0_s~q\,
	datac => \inst3|converterY|state.s1~q\,
	datad => \inst3|converterY|state~18_combout\,
	combout => \inst3|converterY|state~23_combout\);

-- Location: FF_X29_Y23_N25
\inst3|converterY|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s1~q\);

-- Location: LCCOMB_X29_Y23_N10
\inst3|converterY|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~21_combout\ = (\inst3|converterY|state~18_combout\ & (((\inst3|converterY|state.s2~q\)))) # (!\inst3|converterY|state~18_combout\ & (!\inst3|converterY|state.s0~q\ & (\inst3|converterY|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s0~q\,
	datab => \inst3|converterY|state.s1~q\,
	datac => \inst3|converterY|state.s2~q\,
	datad => \inst3|converterY|state~18_combout\,
	combout => \inst3|converterY|state~21_combout\);

-- Location: FF_X29_Y23_N11
\inst3|converterY|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s2~q\);

-- Location: LCCOMB_X29_Y23_N12
\inst3|converterY|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~19_combout\ = ((\inst3|converterY|state.s1~q\) # ((\inst3|converterY|state.s4~q\) # (\inst3|converterY|state.s3~q\))) # (!\inst3|converterY|state.s0_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s0_s~q\,
	datab => \inst3|converterY|state.s1~q\,
	datac => \inst3|converterY|state.s4~q\,
	datad => \inst3|converterY|state.s3~q\,
	combout => \inst3|converterY|state~19_combout\);

-- Location: LCCOMB_X29_Y23_N26
\inst3|converterY|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state~20_combout\ = (!\inst3|converterY|state.s2~q\ & (!\inst3|converterY|state~19_combout\ & (!\inst3|converterY|state.s0~q\ & !\inst3|converterY|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|state.s2~q\,
	datab => \inst3|converterY|state~19_combout\,
	datac => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|state~18_combout\,
	combout => \inst3|converterY|state~20_combout\);

-- Location: FF_X29_Y23_N27
\inst3|converterY|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s0~q\);

-- Location: LCCOMB_X26_Y23_N8
\inst3|converterY|state.s0_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|state.s0_s~0_combout\ = !\inst3|converterY|state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|state.s0~q\,
	combout => \inst3|converterY|state.s0_s~0_combout\);

-- Location: FF_X26_Y23_N9
\inst3|converterY|state.s0_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|state.s0_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|state.s0_s~q\);

-- Location: LCCOMB_X27_Y23_N22
\inst3|converterY|number[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[6]~1_combout\ = (\inst3|converterY|state.s0_s~q\ & !\inst3|converterY|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|state.s0_s~q\,
	datad => \inst3|converterY|state.s1~q\,
	combout => \inst3|converterY|number[6]~1_combout\);

-- Location: LCCOMB_X26_Y23_N6
\inst3|converterY|number~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~3_combout\ = (\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number[6]~2_combout\ & (\inst3|converterY|Add3~2_combout\)) # (!\inst3|converterY|number[6]~2_combout\ & ((\inst3|converterY|Add5~4_combout\))))) # 
-- (!\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|Add3~2_combout\,
	datab => \inst3|converterY|number[6]~1_combout\,
	datac => \inst3|converterY|number[6]~2_combout\,
	datad => \inst3|converterY|Add5~4_combout\,
	combout => \inst3|converterY|number~3_combout\);

-- Location: LCCOMB_X27_Y23_N24
\inst3|converterY|number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number~4_combout\ = (\inst3|converterY|number[6]~1_combout\ & (((\inst3|converterY|number~3_combout\)))) # (!\inst3|converterY|number[6]~1_combout\ & ((\inst3|converterY|number~3_combout\ & ((\inst3|converterY|Add0~6_combout\))) # 
-- (!\inst3|converterY|number~3_combout\ & (\inst3|converterY|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|number[6]~1_combout\,
	datab => \inst3|converterY|Add1~0_combout\,
	datac => \inst3|converterY|number~3_combout\,
	datad => \inst3|converterY|Add0~6_combout\,
	combout => \inst3|converterY|number~4_combout\);

-- Location: LCCOMB_X28_Y23_N20
\inst3|converterY|number[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|number[3]~feeder_combout\ = \inst3|converterY|number~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|number~4_combout\,
	combout => \inst3|converterY|number[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N0
\inst|dataY[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataY[3]~feeder_combout\ = \inst|read_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|read_temp\(3),
	combout => \inst|dataY[3]~feeder_combout\);

-- Location: FF_X21_Y23_N1
\inst|dataY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_SCLK_int~clkctrl_outclk\,
	d => \inst|dataY[3]~feeder_combout\,
	ena => \inst|dataY[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataY\(3));

-- Location: LCCOMB_X21_Y23_N16
\inst3|accY_v[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|accY_v[3]~feeder_combout\ = \inst|dataY\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|dataY\(3),
	combout => \inst3|accY_v[3]~feeder_combout\);

-- Location: FF_X21_Y23_N17
\inst3|accY_v[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|accY_v[3]~feeder_combout\,
	ena => \inst3|process_0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|accY_v\(3));

-- Location: FF_X28_Y23_N21
\inst3|converterY|number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|number[3]~feeder_combout\,
	asdata => \inst3|accY_v\(3),
	sload => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|number[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|number\(3));

-- Location: LCCOMB_X26_Y23_N0
\inst3|converterY|digit_int_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_0~0_combout\ = (\inst3|converterY|number\(3) & !\inst3|converterY|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|number\(3),
	datad => \inst3|converterY|state.s0~q\,
	combout => \inst3|converterY|digit_int_0~0_combout\);

-- Location: LCCOMB_X26_Y23_N2
\inst3|converterY|digit_int_0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_0[0]~1_combout\ = (\inst3|converterY|state.s4~q\) # (\inst3|converterY|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|state.s4~q\,
	datad => \inst3|converterY|state.s0~q\,
	combout => \inst3|converterY|digit_int_0[0]~1_combout\);

-- Location: FF_X26_Y23_N1
\inst3|converterY|digit_int_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_0~0_combout\,
	ena => \inst3|converterY|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_0\(3));

-- Location: FF_X26_Y27_N11
\inst3|converterY|digit_out_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_0\(3),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_0\(3));

-- Location: LCCOMB_X26_Y27_N10
\inst3|lcd_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~84_combout\ = (!\inst3|charCount\(0) & ((\inst3|lineCount\(0) & ((\inst3|converterY|digit_out_0\(3)))) # (!\inst3|lineCount\(0) & (\inst3|converterZ|digit_out_0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(0),
	datab => \inst3|converterZ|digit_out_0\(3),
	datac => \inst3|converterY|digit_out_0\(3),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~84_combout\);

-- Location: LCCOMB_X26_Y27_N20
\inst3|lcd_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~85_combout\ = (\inst3|lcd_data~84_combout\ & ((\inst3|lineCount\(0) $ (\inst3|lineCount\(1))))) # (!\inst3|lcd_data~84_combout\ & (!\inst3|charCount\(3) & (\inst3|lineCount\(0) $ (\inst3|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~84_combout\,
	datab => \inst3|charCount\(3),
	datac => \inst3|lineCount\(0),
	datad => \inst3|lineCount\(1),
	combout => \inst3|lcd_data~85_combout\);

-- Location: LCCOMB_X28_Y25_N28
\inst3|converterY|digit_int_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_2~1_combout\ = (!\inst3|converterY|state.s0~q\ & !\inst3|converterY|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s0~q\,
	datac => \inst3|converterY|digit_int_2\(0),
	combout => \inst3|converterY|digit_int_2~1_combout\);

-- Location: LCCOMB_X28_Y25_N12
\inst3|converterY|digit_int_2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_2[0]~0_combout\ = (\inst3|converterY|state.s0~q\) # ((\inst3|converterY|state.s2~q\ & \inst3|converterY|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s2~q\,
	datac => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|LessThan1~1_combout\,
	combout => \inst3|converterY|digit_int_2[0]~0_combout\);

-- Location: FF_X28_Y25_N29
\inst3|converterY|digit_int_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_2~1_combout\,
	ena => \inst3|converterY|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_2\(0));

-- Location: LCCOMB_X28_Y25_N22
\inst3|converterY|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add4~2_combout\ = \inst3|converterY|digit_int_2\(1) $ (\inst3|converterY|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|digit_int_2\(1),
	datad => \inst3|converterY|digit_int_2\(0),
	combout => \inst3|converterY|Add4~2_combout\);

-- Location: FF_X28_Y25_N23
\inst3|converterY|digit_int_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add4~2_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_2\(1));

-- Location: LCCOMB_X28_Y25_N2
\inst3|converterY|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add4~1_combout\ = \inst3|converterY|digit_int_2\(2) $ (((\inst3|converterY|digit_int_2\(1) & \inst3|converterY|digit_int_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_2\(1),
	datab => \inst3|converterY|digit_int_2\(0),
	datac => \inst3|converterY|digit_int_2\(2),
	combout => \inst3|converterY|Add4~1_combout\);

-- Location: FF_X28_Y25_N3
\inst3|converterY|digit_int_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add4~1_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_2\(2));

-- Location: LCCOMB_X28_Y25_N24
\inst3|converterY|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add4~0_combout\ = \inst3|converterY|digit_int_2\(3) $ (((\inst3|converterY|digit_int_2\(1) & (\inst3|converterY|digit_int_2\(0) & \inst3|converterY|digit_int_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_2\(1),
	datab => \inst3|converterY|digit_int_2\(0),
	datac => \inst3|converterY|digit_int_2\(3),
	datad => \inst3|converterY|digit_int_2\(2),
	combout => \inst3|converterY|Add4~0_combout\);

-- Location: FF_X28_Y25_N25
\inst3|converterY|digit_int_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add4~0_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_2\(3));

-- Location: LCCOMB_X25_Y25_N8
\inst3|converterY|digit_out_2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_out_2[3]~feeder_combout\ = \inst3|converterY|digit_int_2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|digit_int_2\(3),
	combout => \inst3|converterY|digit_out_2[3]~feeder_combout\);

-- Location: FF_X25_Y25_N9
\inst3|converterY|digit_out_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_out_2[3]~feeder_combout\,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_2\(3));

-- Location: LCCOMB_X25_Y24_N22
\inst3|converterY|digit_int_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_1~1_combout\ = (!\inst3|converterY|state.s0~q\ & !\inst3|converterY|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s0~q\,
	datac => \inst3|converterY|digit_int_1\(0),
	combout => \inst3|converterY|digit_int_1~1_combout\);

-- Location: LCCOMB_X25_Y24_N16
\inst3|converterY|digit_int_1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_1[3]~0_combout\ = (\inst3|converterY|state.s0~q\) # (\inst3|converterY|number~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|number~0_combout\,
	combout => \inst3|converterY|digit_int_1[3]~0_combout\);

-- Location: FF_X25_Y24_N23
\inst3|converterY|digit_int_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_1~1_combout\,
	ena => \inst3|converterY|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_1\(0));

-- Location: LCCOMB_X25_Y24_N0
\inst3|converterY|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add6~2_combout\ = \inst3|converterY|digit_int_1\(0) $ (\inst3|converterY|digit_int_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_1\(0),
	datac => \inst3|converterY|digit_int_1\(1),
	combout => \inst3|converterY|Add6~2_combout\);

-- Location: FF_X25_Y24_N1
\inst3|converterY|digit_int_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add6~2_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_1\(1));

-- Location: LCCOMB_X25_Y24_N10
\inst3|converterY|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add6~1_combout\ = \inst3|converterY|digit_int_1\(2) $ (((\inst3|converterY|digit_int_1\(0) & \inst3|converterY|digit_int_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_1\(0),
	datac => \inst3|converterY|digit_int_1\(2),
	datad => \inst3|converterY|digit_int_1\(1),
	combout => \inst3|converterY|Add6~1_combout\);

-- Location: FF_X25_Y24_N11
\inst3|converterY|digit_int_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add6~1_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_1\(2));

-- Location: LCCOMB_X25_Y24_N12
\inst3|converterY|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add6~0_combout\ = \inst3|converterY|digit_int_1\(3) $ (((\inst3|converterY|digit_int_1\(0) & (\inst3|converterY|digit_int_1\(1) & \inst3|converterY|digit_int_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_1\(0),
	datab => \inst3|converterY|digit_int_1\(1),
	datac => \inst3|converterY|digit_int_1\(3),
	datad => \inst3|converterY|digit_int_1\(2),
	combout => \inst3|converterY|Add6~0_combout\);

-- Location: FF_X25_Y24_N13
\inst3|converterY|digit_int_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add6~0_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_1\(3));

-- Location: FF_X25_Y25_N5
\inst3|converterY|digit_out_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_1\(3),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_1\(3));

-- Location: LCCOMB_X28_Y25_N10
\inst3|converterY|digit_int_3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_3~5_combout\ = (!\inst3|converterY|state.s0~q\ & !\inst3|converterY|digit_int_3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s0~q\,
	datac => \inst3|converterY|digit_int_3\(0),
	combout => \inst3|converterY|digit_int_3~5_combout\);

-- Location: LCCOMB_X28_Y25_N26
\inst3|converterY|digit_int_3[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_3[1]~4_combout\ = (\inst3|converterY|state.s0~q\) # (\inst3|converterY|digit_int_3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|digit_int_3~3_combout\,
	combout => \inst3|converterY|digit_int_3[1]~4_combout\);

-- Location: FF_X28_Y25_N11
\inst3|converterY|digit_int_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_3~5_combout\,
	ena => \inst3|converterY|digit_int_3[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_3\(0));

-- Location: LCCOMB_X28_Y25_N4
\inst3|converterY|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add2~2_combout\ = \inst3|converterY|digit_int_3\(1) $ (\inst3|converterY|digit_int_3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|digit_int_3\(1),
	datad => \inst3|converterY|digit_int_3\(0),
	combout => \inst3|converterY|Add2~2_combout\);

-- Location: FF_X28_Y25_N5
\inst3|converterY|digit_int_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add2~2_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_3[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_3\(1));

-- Location: LCCOMB_X28_Y25_N8
\inst3|converterY|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add2~1_combout\ = \inst3|converterY|digit_int_3\(2) $ (((\inst3|converterY|digit_int_3\(0) & \inst3|converterY|digit_int_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_3\(0),
	datab => \inst3|converterY|digit_int_3\(1),
	datac => \inst3|converterY|digit_int_3\(2),
	combout => \inst3|converterY|Add2~1_combout\);

-- Location: FF_X28_Y25_N9
\inst3|converterY|digit_int_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add2~1_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_3[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_3\(2));

-- Location: LCCOMB_X28_Y25_N18
\inst3|converterY|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|Add2~0_combout\ = \inst3|converterY|digit_int_3\(3) $ (((\inst3|converterY|digit_int_3\(0) & (\inst3|converterY|digit_int_3\(1) & \inst3|converterY|digit_int_3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_int_3\(0),
	datab => \inst3|converterY|digit_int_3\(1),
	datac => \inst3|converterY|digit_int_3\(3),
	datad => \inst3|converterY|digit_int_3\(2),
	combout => \inst3|converterY|Add2~0_combout\);

-- Location: FF_X28_Y25_N19
\inst3|converterY|digit_int_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|Add2~0_combout\,
	sclr => \inst3|converterY|state.s0~q\,
	ena => \inst3|converterY|digit_int_3[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_3\(3));

-- Location: FF_X25_Y25_N7
\inst3|converterY|digit_out_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_3\(3),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_3\(3));

-- Location: LCCOMB_X25_Y25_N6
\inst3|lcd_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~80_combout\ = (\inst3|charCount\(1) & (\inst3|charCount\(0))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(0) & (\inst3|converterY|digit_out_3\(3))) # (!\inst3|charCount\(0) & ((\inst3|accY_v\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterY|digit_out_3\(3),
	datad => \inst3|accY_v\(12),
	combout => \inst3|lcd_data~80_combout\);

-- Location: LCCOMB_X25_Y25_N4
\inst3|lcd_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~81_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~80_combout\ & ((\inst3|converterY|digit_out_1\(3)))) # (!\inst3|lcd_data~80_combout\ & (\inst3|converterY|digit_out_2\(3))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|converterY|digit_out_2\(3),
	datac => \inst3|converterY|digit_out_1\(3),
	datad => \inst3|lcd_data~80_combout\,
	combout => \inst3|lcd_data~81_combout\);

-- Location: LCCOMB_X24_Y21_N10
\inst3|converterZ|digit_int_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_1~1_combout\ = (!\inst3|converterZ|state.s0~q\ & !\inst3|converterZ|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0~q\,
	datac => \inst3|converterZ|digit_int_1\(0),
	combout => \inst3|converterZ|digit_int_1~1_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst3|converterZ|digit_int_1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_1[3]~0_combout\ = (\inst3|converterZ|state.s0~q\) # (\inst3|converterZ|number~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|state.s0~q\,
	datad => \inst3|converterZ|number~0_combout\,
	combout => \inst3|converterZ|digit_int_1[3]~0_combout\);

-- Location: FF_X24_Y21_N11
\inst3|converterZ|digit_int_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_1~1_combout\,
	ena => \inst3|converterZ|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_1\(0));

-- Location: LCCOMB_X24_Y21_N20
\inst3|converterZ|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add6~2_combout\ = \inst3|converterZ|digit_int_1\(1) $ (\inst3|converterZ|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|digit_int_1\(1),
	datad => \inst3|converterZ|digit_int_1\(0),
	combout => \inst3|converterZ|Add6~2_combout\);

-- Location: FF_X24_Y21_N21
\inst3|converterZ|digit_int_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add6~2_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_1\(1));

-- Location: LCCOMB_X24_Y21_N18
\inst3|converterZ|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add6~1_combout\ = \inst3|converterZ|digit_int_1\(2) $ (((\inst3|converterZ|digit_int_1\(0) & \inst3|converterZ|digit_int_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_1\(0),
	datac => \inst3|converterZ|digit_int_1\(2),
	datad => \inst3|converterZ|digit_int_1\(1),
	combout => \inst3|converterZ|Add6~1_combout\);

-- Location: FF_X24_Y21_N19
\inst3|converterZ|digit_int_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add6~1_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_1\(2));

-- Location: LCCOMB_X24_Y21_N22
\inst3|converterZ|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add6~0_combout\ = \inst3|converterZ|digit_int_1\(3) $ (((\inst3|converterZ|digit_int_1\(0) & (\inst3|converterZ|digit_int_1\(2) & \inst3|converterZ|digit_int_1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_1\(0),
	datab => \inst3|converterZ|digit_int_1\(2),
	datac => \inst3|converterZ|digit_int_1\(3),
	datad => \inst3|converterZ|digit_int_1\(1),
	combout => \inst3|converterZ|Add6~0_combout\);

-- Location: FF_X24_Y21_N23
\inst3|converterZ|digit_int_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add6~0_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_1[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_1\(3));

-- Location: LCCOMB_X24_Y25_N0
\inst3|converterZ|digit_out_1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_out_1[3]~feeder_combout\ = \inst3|converterZ|digit_int_1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|digit_int_1\(3),
	combout => \inst3|converterZ|digit_out_1[3]~feeder_combout\);

-- Location: FF_X24_Y25_N1
\inst3|converterZ|digit_out_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_out_1[3]~feeder_combout\,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_1\(3));

-- Location: LCCOMB_X24_Y21_N8
\inst3|converterZ|digit_int_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_2~1_combout\ = (!\inst3|converterZ|state.s0~q\ & !\inst3|converterZ|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s0~q\,
	datac => \inst3|converterZ|digit_int_2\(0),
	combout => \inst3|converterZ|digit_int_2~1_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst3|converterZ|digit_int_2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_2[2]~0_combout\ = (\inst3|converterZ|state.s0~q\) # ((\inst3|converterZ|state.s2~q\ & \inst3|converterZ|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|state.s2~q\,
	datac => \inst3|converterZ|state.s0~q\,
	datad => \inst3|converterZ|LessThan1~1_combout\,
	combout => \inst3|converterZ|digit_int_2[2]~0_combout\);

-- Location: FF_X24_Y21_N9
\inst3|converterZ|digit_int_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_2~1_combout\,
	ena => \inst3|converterZ|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_2\(0));

-- Location: LCCOMB_X24_Y21_N30
\inst3|converterZ|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add4~2_combout\ = \inst3|converterZ|digit_int_2\(0) $ (\inst3|converterZ|digit_int_2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|digit_int_2\(0),
	datac => \inst3|converterZ|digit_int_2\(1),
	combout => \inst3|converterZ|Add4~2_combout\);

-- Location: FF_X24_Y21_N31
\inst3|converterZ|digit_int_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add4~2_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_2\(1));

-- Location: LCCOMB_X24_Y21_N12
\inst3|converterZ|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add4~1_combout\ = \inst3|converterZ|digit_int_2\(2) $ (((\inst3|converterZ|digit_int_2\(1) & \inst3|converterZ|digit_int_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_2\(1),
	datab => \inst3|converterZ|digit_int_2\(0),
	datac => \inst3|converterZ|digit_int_2\(2),
	combout => \inst3|converterZ|Add4~1_combout\);

-- Location: FF_X24_Y21_N13
\inst3|converterZ|digit_int_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add4~1_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_2\(2));

-- Location: LCCOMB_X24_Y21_N16
\inst3|converterZ|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add4~0_combout\ = \inst3|converterZ|digit_int_2\(3) $ (((\inst3|converterZ|digit_int_2\(1) & (\inst3|converterZ|digit_int_2\(0) & \inst3|converterZ|digit_int_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_2\(1),
	datab => \inst3|converterZ|digit_int_2\(0),
	datac => \inst3|converterZ|digit_int_2\(3),
	datad => \inst3|converterZ|digit_int_2\(2),
	combout => \inst3|converterZ|Add4~0_combout\);

-- Location: FF_X24_Y21_N17
\inst3|converterZ|digit_int_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add4~0_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_2\(3));

-- Location: FF_X24_Y25_N17
\inst3|converterZ|digit_out_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_2\(3),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_2\(3));

-- Location: LCCOMB_X23_Y20_N22
\inst3|converterZ|digit_int_3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_3~5_combout\ = (!\inst3|converterZ|digit_int_3\(0) & !\inst3|converterZ|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|digit_int_3\(0),
	datad => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|digit_int_3~5_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst3|converterZ|digit_int_3[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_3[0]~4_combout\ = (\inst3|converterZ|state.s0~q\) # (\inst3|converterZ|digit_int_3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterZ|state.s0~q\,
	datad => \inst3|converterZ|digit_int_3~3_combout\,
	combout => \inst3|converterZ|digit_int_3[0]~4_combout\);

-- Location: FF_X23_Y20_N23
\inst3|converterZ|digit_int_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_3~5_combout\,
	ena => \inst3|converterZ|digit_int_3[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_3\(0));

-- Location: LCCOMB_X23_Y20_N4
\inst3|converterZ|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add2~2_combout\ = \inst3|converterZ|digit_int_3\(0) $ (\inst3|converterZ|digit_int_3\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_3\(0),
	datac => \inst3|converterZ|digit_int_3\(1),
	combout => \inst3|converterZ|Add2~2_combout\);

-- Location: FF_X23_Y20_N5
\inst3|converterZ|digit_int_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add2~2_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_3[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_3\(1));

-- Location: LCCOMB_X23_Y20_N6
\inst3|converterZ|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add2~1_combout\ = \inst3|converterZ|digit_int_3\(2) $ (((\inst3|converterZ|digit_int_3\(0) & \inst3|converterZ|digit_int_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_3\(0),
	datab => \inst3|converterZ|digit_int_3\(1),
	datac => \inst3|converterZ|digit_int_3\(2),
	combout => \inst3|converterZ|Add2~1_combout\);

-- Location: FF_X23_Y20_N7
\inst3|converterZ|digit_int_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add2~1_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_3[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_3\(2));

-- Location: LCCOMB_X23_Y20_N0
\inst3|converterZ|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|Add2~0_combout\ = \inst3|converterZ|digit_int_3\(3) $ (((\inst3|converterZ|digit_int_3\(0) & (\inst3|converterZ|digit_int_3\(1) & \inst3|converterZ|digit_int_3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_int_3\(0),
	datab => \inst3|converterZ|digit_int_3\(1),
	datac => \inst3|converterZ|digit_int_3\(3),
	datad => \inst3|converterZ|digit_int_3\(2),
	combout => \inst3|converterZ|Add2~0_combout\);

-- Location: FF_X23_Y20_N1
\inst3|converterZ|digit_int_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|Add2~0_combout\,
	sclr => \inst3|converterZ|state.s0~q\,
	ena => \inst3|converterZ|digit_int_3[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_3\(3));

-- Location: FF_X24_Y25_N11
\inst3|converterZ|digit_out_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_3\(3),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_3\(3));

-- Location: LCCOMB_X24_Y25_N10
\inst3|lcd_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~78_combout\ = (\inst3|charCount\(1) & (\inst3|charCount\(0))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(0) & (\inst3|converterZ|digit_out_3\(3))) # (!\inst3|charCount\(0) & ((\inst3|accZ_v\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterZ|digit_out_3\(3),
	datad => \inst3|accZ_v\(12),
	combout => \inst3|lcd_data~78_combout\);

-- Location: LCCOMB_X24_Y25_N16
\inst3|lcd_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~79_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~78_combout\ & (\inst3|converterZ|digit_out_1\(3))) # (!\inst3|lcd_data~78_combout\ & ((\inst3|converterZ|digit_out_2\(3)))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|converterZ|digit_out_1\(3),
	datac => \inst3|converterZ|digit_out_2\(3),
	datad => \inst3|lcd_data~78_combout\,
	combout => \inst3|lcd_data~79_combout\);

-- Location: LCCOMB_X25_Y27_N20
\inst3|lcd_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~82_combout\ = (\inst3|lineCount\(1) & (!\inst3|lineCount\(0) & ((\inst3|lcd_data~79_combout\)))) # (!\inst3|lineCount\(1) & (\inst3|lineCount\(0) & (\inst3|lcd_data~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(1),
	datab => \inst3|lineCount\(0),
	datac => \inst3|lcd_data~81_combout\,
	datad => \inst3|lcd_data~79_combout\,
	combout => \inst3|lcd_data~82_combout\);

-- Location: LCCOMB_X25_Y27_N18
\inst3|lcd_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~83_combout\ = (\inst3|Equal7~1_combout\ & ((\inst3|lcd_data~82_combout\) # ((\inst3|lcd_data\(3) & \inst3|lcd_data~38_combout\)))) # (!\inst3|Equal7~1_combout\ & (\inst3|lcd_data\(3) & (\inst3|lcd_data~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal7~1_combout\,
	datab => \inst3|lcd_data\(3),
	datac => \inst3|lcd_data~38_combout\,
	datad => \inst3|lcd_data~82_combout\,
	combout => \inst3|lcd_data~83_combout\);

-- Location: LCCOMB_X25_Y27_N24
\inst3|lcd_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~86_combout\ = (\inst3|lcd_data~83_combout\) # ((\inst3|lcd_data~41_combout\ & (!\inst3|charCount\(4) & \inst3|lcd_data~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~41_combout\,
	datab => \inst3|charCount\(4),
	datac => \inst3|lcd_data~85_combout\,
	datad => \inst3|lcd_data~83_combout\,
	combout => \inst3|lcd_data~86_combout\);

-- Location: LCCOMB_X25_Y27_N0
\inst3|lcd_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~87_combout\ = (\inst3|display_state~q\ & ((\inst3|lcd_data~77_combout\ & ((\inst3|lcd_data~86_combout\))) # (!\inst3|lcd_data~77_combout\ & (\inst3|lcd_data~70_combout\)))) # (!\inst3|display_state~q\ & (((\inst3|lcd_data~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~70_combout\,
	datac => \inst3|lcd_data~77_combout\,
	datad => \inst3|lcd_data~86_combout\,
	combout => \inst3|lcd_data~87_combout\);

-- Location: FF_X25_Y27_N1
\inst3|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(3));

-- Location: FF_X32_Y30_N17
\inst2|dataStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lcd_data\(3),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(3));

-- Location: LCCOMB_X32_Y30_N16
\inst2|dataOut[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~10_combout\ = (\inst2|state.sendingAddress~q\ & (\inst2|addressStorage\(3))) # (!\inst2|state.sendingAddress~q\ & (((\inst2|state.sendingData~q\ & \inst2|dataStorage\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addressStorage\(3),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|dataStorage\(3),
	datad => \inst2|state.sendingAddress~q\,
	combout => \inst2|dataOut[3]~10_combout\);

-- Location: LCCOMB_X35_Y30_N24
\inst2|dataOut[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~11_combout\ = (\inst2|dataOut[3]~9_combout\) # ((\inst2|dataOut[1]~1_combout\ & (\inst2|dataOut[3]~10_combout\ & !\inst2|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[3]~9_combout\,
	datab => \inst2|dataOut[1]~1_combout\,
	datac => \inst2|dataOut[3]~10_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[3]~11_combout\);

-- Location: LCCOMB_X32_Y30_N6
\inst2|addressStorage~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~3_combout\ = \inst3|lcd_posX\(2) $ (\inst3|lcd_posY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|lcd_posX\(2),
	datad => \inst3|lcd_posY\(1),
	combout => \inst2|addressStorage~3_combout\);

-- Location: FF_X32_Y30_N7
\inst2|addressStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~3_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(2));

-- Location: LCCOMB_X26_Y26_N0
\inst3|lcd_data~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~166_combout\ = (\inst3|charCount\(3) & (\inst3|charCount\(2) & (\inst3|lcd_data~55_combout\ & !\inst3|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(3),
	datab => \inst3|charCount\(2),
	datac => \inst3|lcd_data~55_combout\,
	datad => \inst3|charCount\(4),
	combout => \inst3|lcd_data~166_combout\);

-- Location: LCCOMB_X21_Y27_N12
\inst3|converterX|digit_int_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_0~2_combout\ = (!\inst3|converterX|state.s0~q\ & \inst3|converterX|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|number\(2),
	combout => \inst3|converterX|digit_int_0~2_combout\);

-- Location: FF_X21_Y27_N13
\inst3|converterX|digit_int_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_0~2_combout\,
	ena => \inst3|converterX|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_0\(2));

-- Location: FF_X24_Y27_N29
\inst3|converterX|digit_out_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_0\(2),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_0\(2));

-- Location: LCCOMB_X24_Y27_N26
\inst3|converterX|digit_out_1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_out_1[2]~feeder_combout\ = \inst3|converterX|digit_int_1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|digit_int_1\(2),
	combout => \inst3|converterX|digit_out_1[2]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\inst3|converterX|digit_out_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_out_1[2]~feeder_combout\,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_1\(2));

-- Location: FF_X24_Y27_N3
\inst3|converterX|digit_out_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_2\(2),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_2\(2));

-- Location: FF_X24_Y27_N13
\inst3|converterX|digit_out_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_3\(2),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_3\(2));

-- Location: LCCOMB_X24_Y27_N12
\inst3|lcd_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~88_combout\ = (\inst3|charCount\(0) & (((\inst3|converterX|digit_out_3\(2)) # (\inst3|charCount\(1))))) # (!\inst3|charCount\(0) & (\inst3|accX_v\(12) & ((!\inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|accX_v\(12),
	datac => \inst3|converterX|digit_out_3\(2),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~88_combout\);

-- Location: LCCOMB_X24_Y27_N2
\inst3|lcd_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~89_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~88_combout\ & (\inst3|converterX|digit_out_1\(2))) # (!\inst3|lcd_data~88_combout\ & ((\inst3|converterX|digit_out_2\(2)))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_out_1\(2),
	datab => \inst3|charCount\(1),
	datac => \inst3|converterX|digit_out_2\(2),
	datad => \inst3|lcd_data~88_combout\,
	combout => \inst3|lcd_data~89_combout\);

-- Location: LCCOMB_X24_Y27_N28
\inst3|lcd_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~90_combout\ = (\inst3|Equal7~1_combout\ & ((\inst3|lcd_data~89_combout\) # ((\inst3|lcd_data~166_combout\ & \inst3|converterX|digit_out_0\(2))))) # (!\inst3|Equal7~1_combout\ & (\inst3|lcd_data~166_combout\ & 
-- (\inst3|converterX|digit_out_0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal7~1_combout\,
	datab => \inst3|lcd_data~166_combout\,
	datac => \inst3|converterX|digit_out_0\(2),
	datad => \inst3|lcd_data~89_combout\,
	combout => \inst3|lcd_data~90_combout\);

-- Location: LCCOMB_X27_Y25_N30
\inst3|lcd_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~100_combout\ = (\inst3|charCount\(1) & (!\inst3|charCount\(0) & (\inst3|charCount\(2) & \inst3|charCount\(3)))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(2) $ (\inst3|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~100_combout\);

-- Location: LCCOMB_X27_Y25_N24
\inst3|lcd_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~99_combout\ = (\inst3|Equal14~0_combout\ & (\inst3|charCount\(1) $ (\inst3|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|Equal14~0_combout\,
	combout => \inst3|lcd_data~99_combout\);

-- Location: LCCOMB_X27_Y25_N16
\inst3|lcd_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~101_combout\ = (\inst3|lcd_data~99_combout\) # ((!\inst3|charCount\(4) & \inst3|lcd_data~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datac => \inst3|lcd_data~100_combout\,
	datad => \inst3|lcd_data~99_combout\,
	combout => \inst3|lcd_data~101_combout\);

-- Location: LCCOMB_X26_Y27_N26
\inst3|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal14~1_combout\ = (!\inst3|charCount\(1) & (!\inst3|charCount\(2) & (\inst3|charCount\(4) & !\inst3|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(4),
	datad => \inst3|charCount\(3),
	combout => \inst3|Equal14~1_combout\);

-- Location: LCCOMB_X26_Y27_N6
\inst3|lcd_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~96_combout\ = (\inst3|charCount\(2) & ((\inst3|charCount\(3) $ (!\inst3|charCount\(0))))) # (!\inst3|charCount\(2) & (\inst3|charCount\(1) $ (((\inst3|charCount\(3) & !\inst3|charCount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~96_combout\);

-- Location: LCCOMB_X26_Y27_N12
\inst3|lcd_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~97_combout\ = (\inst3|charCount\(4) & (\inst3|charCount\(0) & (\inst3|Equal14~1_combout\))) # (!\inst3|charCount\(4) & (((!\inst3|lcd_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(4),
	datac => \inst3|Equal14~1_combout\,
	datad => \inst3|lcd_data~96_combout\,
	combout => \inst3|lcd_data~97_combout\);

-- Location: LCCOMB_X26_Y27_N28
\inst3|lcd_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~93_combout\ = (\inst3|charCount\(3) & (\inst3|charCount\(2) $ (((\inst3|charCount\(1)) # (!\inst3|charCount\(0)))))) # (!\inst3|charCount\(3) & (((\inst3|charCount\(2) & \inst3|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~93_combout\);

-- Location: LCCOMB_X26_Y27_N18
\inst3|lcd_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~94_combout\ = (\inst3|charCount\(0) & (!\inst3|charCount\(4) & ((\inst3|lcd_data~93_combout\)))) # (!\inst3|charCount\(0) & ((\inst3|Equal14~0_combout\) # ((!\inst3|charCount\(4) & \inst3|lcd_data~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(4),
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|lcd_data~93_combout\,
	combout => \inst3|lcd_data~94_combout\);

-- Location: LCCOMB_X26_Y27_N8
\inst3|lcd_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~95_combout\ = (\inst3|lineCount\(1) & (((\inst3|lineCount\(0))))) # (!\inst3|lineCount\(1) & ((\inst3|lineCount\(0) & ((\inst3|lcd_data~94_combout\))) # (!\inst3|lineCount\(0) & (\inst3|lcd_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data\(2),
	datab => \inst3|lineCount\(1),
	datac => \inst3|lineCount\(0),
	datad => \inst3|lcd_data~94_combout\,
	combout => \inst3|lcd_data~95_combout\);

-- Location: LCCOMB_X27_Y26_N6
\inst3|lcd_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~91_combout\ = (!\inst3|charCount\(2) & (\inst3|charCount\(0) $ (((\inst3|charCount\(1) & \inst3|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~91_combout\);

-- Location: LCCOMB_X26_Y27_N2
\inst3|lcd_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~92_combout\ = (!\inst3|charCount\(4) & \inst3|lcd_data~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|charCount\(4),
	datad => \inst3|lcd_data~91_combout\,
	combout => \inst3|lcd_data~92_combout\);

-- Location: LCCOMB_X26_Y27_N22
\inst3|lcd_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~98_combout\ = (\inst3|lineCount\(1) & ((\inst3|lcd_data~95_combout\ & (\inst3|lcd_data~97_combout\)) # (!\inst3|lcd_data~95_combout\ & ((\inst3|lcd_data~92_combout\))))) # (!\inst3|lineCount\(1) & (((\inst3|lcd_data~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~97_combout\,
	datab => \inst3|lineCount\(1),
	datac => \inst3|lcd_data~95_combout\,
	datad => \inst3|lcd_data~92_combout\,
	combout => \inst3|lcd_data~98_combout\);

-- Location: LCCOMB_X24_Y27_N8
\inst3|lcd_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~102_combout\ = (\inst3|lcd_data~38_combout\ & (!\inst3|display_state~q\ & (\inst3|lcd_data~101_combout\))) # (!\inst3|lcd_data~38_combout\ & ((\inst3|display_state~q\) # ((\inst3|lcd_data~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~38_combout\,
	datab => \inst3|display_state~q\,
	datac => \inst3|lcd_data~101_combout\,
	datad => \inst3|lcd_data~98_combout\,
	combout => \inst3|lcd_data~102_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst3|converterZ|digit_int_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_0~2_combout\ = (\inst3|converterZ|number\(2) & !\inst3|converterZ|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|number\(2),
	datad => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|digit_int_0~2_combout\);

-- Location: FF_X23_Y20_N25
\inst3|converterZ|digit_int_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_0~2_combout\,
	ena => \inst3|converterZ|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_0\(2));

-- Location: LCCOMB_X24_Y24_N14
\inst3|converterZ|digit_out_0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_out_0[2]~feeder_combout\ = \inst3|converterZ|digit_int_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|digit_int_0\(2),
	combout => \inst3|converterZ|digit_out_0[2]~feeder_combout\);

-- Location: FF_X24_Y24_N15
\inst3|converterZ|digit_out_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_out_0[2]~feeder_combout\,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_0\(2));

-- Location: LCCOMB_X25_Y23_N26
\inst3|converterY|digit_int_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_0~2_combout\ = (!\inst3|converterY|state.s0~q\ & \inst3|converterY|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|number\(2),
	combout => \inst3|converterY|digit_int_0~2_combout\);

-- Location: FF_X25_Y23_N27
\inst3|converterY|digit_int_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_0~2_combout\,
	ena => \inst3|converterY|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_0\(2));

-- Location: FF_X25_Y25_N23
\inst3|converterY|digit_out_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_0\(2),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_0\(2));

-- Location: LCCOMB_X25_Y25_N22
\inst3|lcd_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~103_combout\ = (\inst3|lineCount\(1) & (\inst3|converterZ|digit_out_0\(2) & ((!\inst3|lineCount\(0))))) # (!\inst3|lineCount\(1) & (((\inst3|converterY|digit_out_0\(2) & \inst3|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_out_0\(2),
	datab => \inst3|lineCount\(1),
	datac => \inst3|converterY|digit_out_0\(2),
	datad => \inst3|lineCount\(0),
	combout => \inst3|lcd_data~103_combout\);

-- Location: LCCOMB_X24_Y27_N22
\inst3|lcd_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~104_combout\ = (\inst3|lcd_data~38_combout\ & ((\inst3|lcd_data\(2)) # ((\inst3|lcd_data~103_combout\ & \inst3|lcd_data~166_combout\)))) # (!\inst3|lcd_data~38_combout\ & (((\inst3|lcd_data~103_combout\ & \inst3|lcd_data~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~38_combout\,
	datab => \inst3|lcd_data\(2),
	datac => \inst3|lcd_data~103_combout\,
	datad => \inst3|lcd_data~166_combout\,
	combout => \inst3|lcd_data~104_combout\);

-- Location: LCCOMB_X24_Y25_N14
\inst3|converterZ|digit_out_2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_out_2[2]~feeder_combout\ = \inst3|converterZ|digit_int_2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|digit_int_2\(2),
	combout => \inst3|converterZ|digit_out_2[2]~feeder_combout\);

-- Location: FF_X24_Y25_N15
\inst3|converterZ|digit_out_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_out_2[2]~feeder_combout\,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_2\(2));

-- Location: FF_X24_Y25_N7
\inst3|converterZ|digit_out_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_1\(2),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_1\(2));

-- Location: FF_X24_Y25_N21
\inst3|converterZ|digit_out_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_3\(2),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_3\(2));

-- Location: LCCOMB_X24_Y25_N20
\inst3|lcd_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~105_combout\ = (\inst3|charCount\(1) & (\inst3|charCount\(0))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(0) & (\inst3|converterZ|digit_out_3\(2))) # (!\inst3|charCount\(0) & ((\inst3|accZ_v\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterZ|digit_out_3\(2),
	datad => \inst3|accZ_v\(12),
	combout => \inst3|lcd_data~105_combout\);

-- Location: LCCOMB_X24_Y25_N6
\inst3|lcd_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~106_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~105_combout\ & ((\inst3|converterZ|digit_out_1\(2)))) # (!\inst3|lcd_data~105_combout\ & (\inst3|converterZ|digit_out_2\(2))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|converterZ|digit_out_2\(2),
	datac => \inst3|converterZ|digit_out_1\(2),
	datad => \inst3|lcd_data~105_combout\,
	combout => \inst3|lcd_data~106_combout\);

-- Location: LCCOMB_X25_Y25_N12
\inst3|converterY|digit_out_3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_out_3[2]~feeder_combout\ = \inst3|converterY|digit_int_3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|digit_int_3\(2),
	combout => \inst3|converterY|digit_out_3[2]~feeder_combout\);

-- Location: FF_X25_Y25_N13
\inst3|converterY|digit_out_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_out_3[2]~feeder_combout\,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_3\(2));

-- Location: FF_X25_Y25_N17
\inst3|converterY|digit_out_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_1\(2),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_1\(2));

-- Location: FF_X25_Y25_N19
\inst3|converterY|digit_out_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_2\(2),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_2\(2));

-- Location: LCCOMB_X25_Y25_N18
\inst3|lcd_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~107_combout\ = (\inst3|charCount\(1) & ((\inst3|charCount\(0)) # ((\inst3|converterY|digit_out_2\(2))))) # (!\inst3|charCount\(1) & (!\inst3|charCount\(0) & ((\inst3|accY_v\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterY|digit_out_2\(2),
	datad => \inst3|accY_v\(12),
	combout => \inst3|lcd_data~107_combout\);

-- Location: LCCOMB_X25_Y25_N16
\inst3|lcd_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~108_combout\ = (\inst3|charCount\(0) & ((\inst3|lcd_data~107_combout\ & ((\inst3|converterY|digit_out_1\(2)))) # (!\inst3|lcd_data~107_combout\ & (\inst3|converterY|digit_out_3\(2))))) # (!\inst3|charCount\(0) & 
-- (((\inst3|lcd_data~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterY|digit_out_3\(2),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterY|digit_out_1\(2),
	datad => \inst3|lcd_data~107_combout\,
	combout => \inst3|lcd_data~108_combout\);

-- Location: LCCOMB_X25_Y25_N2
\inst3|lcd_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~109_combout\ = (\inst3|lineCount\(0) & (!\inst3|lineCount\(1) & ((\inst3|lcd_data~108_combout\)))) # (!\inst3|lineCount\(0) & (\inst3|lineCount\(1) & (\inst3|lcd_data~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(0),
	datab => \inst3|lineCount\(1),
	datac => \inst3|lcd_data~106_combout\,
	datad => \inst3|lcd_data~108_combout\,
	combout => \inst3|lcd_data~109_combout\);

-- Location: LCCOMB_X24_Y27_N24
\inst3|lcd_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~110_combout\ = (\inst3|lcd_data~104_combout\) # ((\inst3|Equal7~1_combout\ & \inst3|lcd_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal7~1_combout\,
	datac => \inst3|lcd_data~104_combout\,
	datad => \inst3|lcd_data~109_combout\,
	combout => \inst3|lcd_data~110_combout\);

-- Location: LCCOMB_X24_Y27_N16
\inst3|lcd_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~111_combout\ = (\inst3|display_state~q\ & ((\inst3|lcd_data~102_combout\ & ((\inst3|lcd_data~110_combout\))) # (!\inst3|lcd_data~102_combout\ & (\inst3|lcd_data~90_combout\)))) # (!\inst3|display_state~q\ & 
-- (((\inst3|lcd_data~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~90_combout\,
	datac => \inst3|lcd_data~102_combout\,
	datad => \inst3|lcd_data~110_combout\,
	combout => \inst3|lcd_data~111_combout\);

-- Location: FF_X24_Y27_N17
\inst3|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(2));

-- Location: LCCOMB_X32_Y30_N4
\inst2|dataStorage[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[2]~2_combout\ = !\inst3|lcd_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|lcd_data\(2),
	combout => \inst2|dataStorage[2]~2_combout\);

-- Location: FF_X32_Y30_N5
\inst2|dataStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[2]~2_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(2));

-- Location: LCCOMB_X32_Y30_N14
\inst2|dataOut[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[2]~12_combout\ = (\inst2|state.sendingAddress~q\ & (\inst2|addressStorage\(2))) # (!\inst2|state.sendingAddress~q\ & (((\inst2|state.sendingData~q\ & !\inst2|dataStorage\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addressStorage\(2),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|dataStorage\(2),
	datad => \inst2|state.sendingAddress~q\,
	combout => \inst2|dataOut[2]~12_combout\);

-- Location: LCCOMB_X35_Y30_N2
\inst2|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[2]~13_combout\ = (\inst2|dataOut[2]~5_combout\ & (((\inst2|state.init0~q\ & !\inst2|state.init6~q\)))) # (!\inst2|dataOut[2]~5_combout\ & (\inst2|dataOut[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[2]~12_combout\,
	datab => \inst2|dataOut[2]~5_combout\,
	datac => \inst2|state.init0~q\,
	datad => \inst2|state.init6~q\,
	combout => \inst2|dataOut[2]~13_combout\);

-- Location: LCCOMB_X26_Y27_N16
\inst3|lcd_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~115_combout\ = (\inst3|charCount\(0) & ((\inst3|charCount\(2) & ((\inst3|charCount\(3)))) # (!\inst3|charCount\(2) & ((\inst3|charCount\(1)) # (!\inst3|charCount\(3)))))) # (!\inst3|charCount\(0) & (\inst3|charCount\(1) $ 
-- (((\inst3|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~115_combout\);

-- Location: LCCOMB_X26_Y27_N30
\inst3|lcd_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~116_combout\ = (\inst3|charCount\(0) & (!\inst3|charCount\(4) & ((\inst3|lcd_data~115_combout\)))) # (!\inst3|charCount\(0) & ((\inst3|Equal14~0_combout\) # ((!\inst3|charCount\(4) & \inst3|lcd_data~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(4),
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|lcd_data~115_combout\,
	combout => \inst3|lcd_data~116_combout\);

-- Location: LCCOMB_X25_Y26_N24
\inst3|lcd_data~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~29_combout\ = (\inst3|charCount\(3) & (!\inst3|charCount\(0) & (!\inst3|charCount\(1) & !\inst3|charCount\(2)))) # (!\inst3|charCount\(3) & (((!\inst3|charCount\(0) & !\inst3|charCount\(2))) # (!\inst3|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~29_combout\);

-- Location: LCCOMB_X25_Y26_N22
\inst3|lcd_data~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~173_combout\ = (!\inst3|charCount\(4) & \inst3|lcd_data~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|charCount\(4),
	datad => \inst3|lcd_data~29_combout\,
	combout => \inst3|lcd_data~173_combout\);

-- Location: LCCOMB_X25_Y26_N8
\inst3|lcd_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~114_combout\ = (\inst3|lineCount\(1) & ((\inst3|lcd_data~173_combout\) # ((\inst3|lineCount\(0))))) # (!\inst3|lineCount\(1) & (((\inst3|lcd_data\(1) & !\inst3|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~173_combout\,
	datab => \inst3|lcd_data\(1),
	datac => \inst3|lineCount\(1),
	datad => \inst3|lineCount\(0),
	combout => \inst3|lcd_data~114_combout\);

-- Location: LCCOMB_X27_Y25_N6
\inst3|lcd_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~112_combout\ = (\inst3|charCount\(3) & (\inst3|charCount\(1) $ (((!\inst3|charCount\(0)))))) # (!\inst3|charCount\(3) & (\inst3|charCount\(1) & (!\inst3|charCount\(2) & !\inst3|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~112_combout\);

-- Location: LCCOMB_X27_Y25_N0
\inst3|lcd_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~113_combout\ = (\inst3|lcd_data~99_combout\) # ((\inst3|lcd_data~112_combout\ & !\inst3|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~112_combout\,
	datac => \inst3|charCount\(4),
	datad => \inst3|lcd_data~99_combout\,
	combout => \inst3|lcd_data~113_combout\);

-- Location: LCCOMB_X25_Y26_N18
\inst3|lcd_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~117_combout\ = (\inst3|lineCount\(0) & ((\inst3|lcd_data~114_combout\ & (\inst3|lcd_data~116_combout\)) # (!\inst3|lcd_data~114_combout\ & ((\inst3|lcd_data~113_combout\))))) # (!\inst3|lineCount\(0) & (((\inst3|lcd_data~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~116_combout\,
	datab => \inst3|lineCount\(0),
	datac => \inst3|lcd_data~114_combout\,
	datad => \inst3|lcd_data~113_combout\,
	combout => \inst3|lcd_data~117_combout\);

-- Location: LCCOMB_X26_Y26_N4
\inst3|lcd_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~123_combout\ = (\inst3|charCount\(1) & ((!\inst3|charCount\(2)) # (!\inst3|charCount\(3)))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~123_combout\);

-- Location: LCCOMB_X26_Y26_N6
\inst3|lcd_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~75_combout\ = (\inst3|charCount\(0) & !\inst3|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datad => \inst3|charCount\(4),
	combout => \inst3|lcd_data~75_combout\);

-- Location: LCCOMB_X26_Y26_N26
\inst3|lcd_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~124_combout\ = (\inst3|Equal14~0_combout\ & ((\inst3|lcd_data~55_combout\) # ((\inst3|lcd_data~123_combout\ & \inst3|lcd_data~75_combout\)))) # (!\inst3|Equal14~0_combout\ & (\inst3|lcd_data~123_combout\ & ((\inst3|lcd_data~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal14~0_combout\,
	datab => \inst3|lcd_data~123_combout\,
	datac => \inst3|lcd_data~55_combout\,
	datad => \inst3|lcd_data~75_combout\,
	combout => \inst3|lcd_data~124_combout\);

-- Location: LCCOMB_X24_Y26_N12
\inst3|converterX|digit_out_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_out_1[1]~feeder_combout\ = \inst3|converterX|digit_int_1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|digit_int_1\(1),
	combout => \inst3|converterX|digit_out_1[1]~feeder_combout\);

-- Location: FF_X24_Y26_N13
\inst3|converterX|digit_out_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_out_1[1]~feeder_combout\,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_1\(1));

-- Location: FF_X24_Y26_N11
\inst3|converterX|digit_out_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_3\(1),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_3\(1));

-- Location: LCCOMB_X24_Y26_N10
\inst3|lcd_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~119_combout\ = (\inst3|charCount\(1) & (\inst3|converterX|digit_out_1\(1))) # (!\inst3|charCount\(1) & ((\inst3|converterX|digit_out_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_out_1\(1),
	datac => \inst3|converterX|digit_out_3\(1),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~119_combout\);

-- Location: LCCOMB_X23_Y25_N26
\inst3|converterX|digit_int_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_0~3_combout\ = (\inst3|converterX|number\(1) & !\inst3|converterX|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|number\(1),
	datad => \inst3|converterX|state.s0~q\,
	combout => \inst3|converterX|digit_int_0~3_combout\);

-- Location: FF_X23_Y25_N27
\inst3|converterX|digit_int_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_0~3_combout\,
	ena => \inst3|converterX|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_0\(1));

-- Location: LCCOMB_X23_Y26_N16
\inst3|converterX|digit_out_0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_out_0[1]~feeder_combout\ = \inst3|converterX|digit_int_0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|digit_int_0\(1),
	combout => \inst3|converterX|digit_out_0[1]~feeder_combout\);

-- Location: FF_X23_Y26_N17
\inst3|converterX|digit_out_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_out_0[1]~feeder_combout\,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_0\(1));

-- Location: FF_X24_Y26_N19
\inst3|converterX|digit_out_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_2\(1),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_2\(1));

-- Location: LCCOMB_X24_Y26_N18
\inst3|lcd_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~118_combout\ = (\inst3|charCount\(2) & (\inst3|converterX|digit_out_0\(1))) # (!\inst3|charCount\(2) & (((\inst3|converterX|digit_out_2\(1) & \inst3|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_out_0\(1),
	datab => \inst3|charCount\(2),
	datac => \inst3|converterX|digit_out_2\(1),
	datad => \inst3|Equal7~0_combout\,
	combout => \inst3|lcd_data~118_combout\);

-- Location: LCCOMB_X24_Y26_N16
\inst3|lcd_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~120_combout\ = (\inst3|lcd_data~118_combout\) # ((\inst3|lcd_data~119_combout\ & \inst3|charCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~119_combout\,
	datac => \inst3|charCount\(0),
	datad => \inst3|lcd_data~118_combout\,
	combout => \inst3|lcd_data~120_combout\);

-- Location: LCCOMB_X25_Y26_N16
\inst3|lcd_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~121_combout\ = (\inst3|charCount\(0) & ((\inst3|charCount\(3) & ((\inst3|charCount\(2)))) # (!\inst3|charCount\(3) & (!\inst3|charCount\(1))))) # (!\inst3|charCount\(0) & (\inst3|charCount\(1) & (\inst3|charCount\(3) $ 
-- (!\inst3|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~121_combout\);

-- Location: LCCOMB_X25_Y26_N10
\inst3|lcd_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~122_combout\ = (!\inst3|charCount\(4) & ((\inst3|charCount\(3) & (\inst3|lcd_data~120_combout\ & !\inst3|lcd_data~121_combout\)) # (!\inst3|charCount\(3) & ((\inst3|lcd_data~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|charCount\(3),
	datac => \inst3|lcd_data~120_combout\,
	datad => \inst3|lcd_data~121_combout\,
	combout => \inst3|lcd_data~122_combout\);

-- Location: LCCOMB_X25_Y26_N4
\inst3|lcd_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~125_combout\ = (\inst3|display_state~q\ & (((\inst3|lcd_data~122_combout\) # (!\inst3|lcd_data~38_combout\)))) # (!\inst3|display_state~q\ & (\inst3|lcd_data~124_combout\ & (\inst3|lcd_data~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|display_state~q\,
	datab => \inst3|lcd_data~124_combout\,
	datac => \inst3|lcd_data~38_combout\,
	datad => \inst3|lcd_data~122_combout\,
	combout => \inst3|lcd_data~125_combout\);

-- Location: LCCOMB_X25_Y26_N26
\inst3|lcd_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~130_combout\ = (!\inst3|charCount\(4) & (!\inst3|lineCount\(1) & \inst3|lineCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datac => \inst3|lineCount\(1),
	datad => \inst3|lineCount\(0),
	combout => \inst3|lcd_data~130_combout\);

-- Location: LCCOMB_X25_Y23_N24
\inst3|converterY|digit_int_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_0~3_combout\ = (!\inst3|converterY|state.s0~q\ & \inst3|converterY|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|converterY|state.s0~q\,
	datad => \inst3|converterY|number\(1),
	combout => \inst3|converterY|digit_int_0~3_combout\);

-- Location: FF_X25_Y23_N25
\inst3|converterY|digit_int_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_0~3_combout\,
	ena => \inst3|converterY|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_0\(1));

-- Location: FF_X25_Y25_N31
\inst3|converterY|digit_out_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_0\(1),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_0\(1));

-- Location: LCCOMB_X25_Y25_N30
\inst3|lcd_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~128_combout\ = (!\inst3|charCount\(1) & (\inst3|converterY|digit_out_0\(1) & !\inst3|charCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datac => \inst3|converterY|digit_out_0\(1),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~128_combout\);

-- Location: LCCOMB_X25_Y26_N14
\inst3|lcd_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~127_combout\ = (\inst3|charCount\(3) & (((\inst3|charCount\(2))))) # (!\inst3|charCount\(3) & ((\inst3|charCount\(0) & (!\inst3|charCount\(1))) # (!\inst3|charCount\(0) & (\inst3|charCount\(1) & !\inst3|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(1),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~127_combout\);

-- Location: FF_X25_Y25_N1
\inst3|converterY|digit_out_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_2\(1),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_2\(1));

-- Location: FF_X25_Y25_N11
\inst3|converterY|digit_out_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_3\(1),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_3\(1));

-- Location: LCCOMB_X25_Y25_N24
\inst3|converterY|digit_out_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_out_1[1]~feeder_combout\ = \inst3|converterY|digit_int_1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|digit_int_1\(1),
	combout => \inst3|converterY|digit_out_1[1]~feeder_combout\);

-- Location: FF_X25_Y25_N25
\inst3|converterY|digit_out_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_out_1[1]~feeder_combout\,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_1\(1));

-- Location: LCCOMB_X25_Y25_N10
\inst3|lcd_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~126_combout\ = (\inst3|charCount\(0) & ((\inst3|charCount\(1) & ((\inst3|converterY|digit_out_1\(1)))) # (!\inst3|charCount\(1) & (\inst3|converterY|digit_out_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterY|digit_out_3\(1),
	datad => \inst3|converterY|digit_out_1\(1),
	combout => \inst3|lcd_data~126_combout\);

-- Location: LCCOMB_X25_Y25_N0
\inst3|lcd_data~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~167_combout\ = (\inst3|lcd_data~126_combout\) # ((\inst3|charCount\(1) & (!\inst3|charCount\(0) & \inst3|converterY|digit_out_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterY|digit_out_2\(1),
	datad => \inst3|lcd_data~126_combout\,
	combout => \inst3|lcd_data~167_combout\);

-- Location: LCCOMB_X25_Y26_N28
\inst3|lcd_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~129_combout\ = (\inst3|charCount\(3) & ((\inst3|lcd_data~127_combout\ & (\inst3|lcd_data~128_combout\)) # (!\inst3|lcd_data~127_combout\ & ((\inst3|lcd_data~167_combout\))))) # (!\inst3|charCount\(3) & (((\inst3|lcd_data~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~128_combout\,
	datab => \inst3|charCount\(3),
	datac => \inst3|lcd_data~127_combout\,
	datad => \inst3|lcd_data~167_combout\,
	combout => \inst3|lcd_data~129_combout\);

-- Location: LCCOMB_X24_Y25_N12
\inst3|converterZ|digit_out_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_out_1[1]~feeder_combout\ = \inst3|converterZ|digit_int_1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|digit_int_1\(1),
	combout => \inst3|converterZ|digit_out_1[1]~feeder_combout\);

-- Location: FF_X24_Y25_N13
\inst3|converterZ|digit_out_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_out_1[1]~feeder_combout\,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_1\(1));

-- Location: FF_X24_Y25_N3
\inst3|converterZ|digit_out_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_2\(1),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_2\(1));

-- Location: LCCOMB_X24_Y25_N2
\inst3|lcd_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~131_combout\ = (\inst3|charCount\(0) & (\inst3|converterZ|digit_out_1\(1) & ((\inst3|charCount\(3))))) # (!\inst3|charCount\(0) & (((\inst3|converterZ|digit_out_2\(1)) # (!\inst3|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterZ|digit_out_1\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterZ|digit_out_2\(1),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~131_combout\);

-- Location: FF_X24_Y25_N25
\inst3|converterZ|digit_out_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_3\(1),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_3\(1));

-- Location: LCCOMB_X23_Y20_N10
\inst3|converterZ|digit_int_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_0~3_combout\ = (\inst3|converterZ|number\(1) & !\inst3|converterZ|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|number\(1),
	datad => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|digit_int_0~3_combout\);

-- Location: FF_X23_Y20_N11
\inst3|converterZ|digit_int_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_0~3_combout\,
	ena => \inst3|converterZ|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_0\(1));

-- Location: FF_X24_Y25_N19
\inst3|converterZ|digit_out_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_0\(1),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_0\(1));

-- Location: LCCOMB_X24_Y25_N18
\inst3|lcd_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~132_combout\ = (\inst3|charCount\(3) & ((\inst3|charCount\(0)) # (!\inst3|converterZ|digit_out_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datac => \inst3|converterZ|digit_out_0\(1),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~132_combout\);

-- Location: LCCOMB_X24_Y25_N24
\inst3|lcd_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~133_combout\ = (\inst3|charCount\(2) & (((\inst3|lcd_data~132_combout\)))) # (!\inst3|charCount\(2) & (\inst3|charCount\(0) & ((\inst3|converterZ|digit_out_3\(1)) # (!\inst3|lcd_data~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(2),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterZ|digit_out_3\(1),
	datad => \inst3|lcd_data~132_combout\,
	combout => \inst3|lcd_data~133_combout\);

-- Location: LCCOMB_X24_Y25_N8
\inst3|lcd_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~134_combout\ = (\inst3|charCount\(1) & (!\inst3|charCount\(2) & (\inst3|lcd_data~131_combout\))) # (!\inst3|charCount\(1) & (\inst3|charCount\(2) $ (((\inst3|lcd_data~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(2),
	datab => \inst3|lcd_data~131_combout\,
	datac => \inst3|charCount\(1),
	datad => \inst3|lcd_data~133_combout\,
	combout => \inst3|lcd_data~134_combout\);

-- Location: LCCOMB_X25_Y26_N20
\inst3|lcd_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~135_combout\ = (\inst3|lineCount\(1) & (!\inst3|charCount\(4) & ((\inst3|lcd_data~134_combout\)))) # (!\inst3|lineCount\(1) & (((\inst3|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lcd_data\(1),
	datac => \inst3|lineCount\(1),
	datad => \inst3|lcd_data~134_combout\,
	combout => \inst3|lcd_data~135_combout\);

-- Location: LCCOMB_X25_Y26_N6
\inst3|lcd_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~136_combout\ = (\inst3|lcd_data~130_combout\ & ((\inst3|lcd_data~129_combout\) # ((!\inst3|lineCount\(0) & \inst3|lcd_data~135_combout\)))) # (!\inst3|lcd_data~130_combout\ & (!\inst3|lineCount\(0) & ((\inst3|lcd_data~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~130_combout\,
	datab => \inst3|lineCount\(0),
	datac => \inst3|lcd_data~129_combout\,
	datad => \inst3|lcd_data~135_combout\,
	combout => \inst3|lcd_data~136_combout\);

-- Location: LCCOMB_X25_Y26_N0
\inst3|lcd_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~137_combout\ = (\inst3|lcd_data~38_combout\ & (((\inst3|lcd_data~125_combout\)))) # (!\inst3|lcd_data~38_combout\ & ((\inst3|lcd_data~125_combout\ & ((\inst3|lcd_data~136_combout\))) # (!\inst3|lcd_data~125_combout\ & 
-- (\inst3|lcd_data~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~38_combout\,
	datab => \inst3|lcd_data~117_combout\,
	datac => \inst3|lcd_data~125_combout\,
	datad => \inst3|lcd_data~136_combout\,
	combout => \inst3|lcd_data~137_combout\);

-- Location: FF_X25_Y26_N1
\inst3|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(1));

-- Location: LCCOMB_X32_Y30_N10
\inst2|dataStorage[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[1]~3_combout\ = !\inst3|lcd_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|lcd_data\(1),
	combout => \inst2|dataStorage[1]~3_combout\);

-- Location: FF_X32_Y30_N11
\inst2|dataStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[1]~3_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(1));

-- Location: FF_X27_Y28_N21
\inst3|lcd_posX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|charCount\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posX\(1));

-- Location: FF_X32_Y30_N21
\inst2|addressStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lcd_posX\(1),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(1));

-- Location: LCCOMB_X32_Y30_N20
\inst2|dataOut[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~14_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(1))))) # (!\inst2|state.sendingAddress~q\ & (!\inst2|dataStorage\(1) & (\inst2|state.sendingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataStorage\(1),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|addressStorage\(1),
	datad => \inst2|state.sendingAddress~q\,
	combout => \inst2|dataOut[1]~14_combout\);

-- Location: LCCOMB_X35_Y30_N12
\inst2|dataOut[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~15_combout\ = (\inst2|dataOut[1]~1_combout\ & ((\inst2|dataOut[1]~14_combout\) # (\inst2|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dataOut[1]~1_combout\,
	datac => \inst2|dataOut[1]~14_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[1]~15_combout\);

-- Location: FF_X27_Y28_N11
\inst3|lcd_posX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|charCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_posX\(0));

-- Location: LCCOMB_X32_Y30_N12
\inst2|addressStorage[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage[0]~feeder_combout\ = \inst3|lcd_posX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|lcd_posX\(0),
	combout => \inst2|addressStorage[0]~feeder_combout\);

-- Location: FF_X32_Y30_N13
\inst2|addressStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage[0]~feeder_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(0));

-- Location: LCCOMB_X26_Y25_N28
\inst3|lcd_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~144_combout\ = (!\inst3|charCount\(4) & (\inst3|charCount\(0) $ (((\inst3|charCount\(3) & \inst3|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(4),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~144_combout\);

-- Location: LCCOMB_X26_Y25_N10
\inst3|lcd_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~145_combout\ = (\inst3|lcd_data~144_combout\) # ((!\inst3|charCount\(0) & \inst3|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datac => \inst3|Equal14~0_combout\,
	datad => \inst3|lcd_data~144_combout\,
	combout => \inst3|lcd_data~145_combout\);

-- Location: LCCOMB_X26_Y25_N16
\inst3|lcd_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~146_combout\ = (\inst3|lineCount\(1) & (((\inst3|lineCount\(0))))) # (!\inst3|lineCount\(1) & ((\inst3|lineCount\(0) & ((\inst3|lcd_data~145_combout\))) # (!\inst3|lineCount\(0) & (\inst3|lcd_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(1),
	datab => \inst3|lcd_data\(0),
	datac => \inst3|lineCount\(0),
	datad => \inst3|lcd_data~145_combout\,
	combout => \inst3|lcd_data~146_combout\);

-- Location: LCCOMB_X27_Y25_N14
\inst3|lcd_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~147_combout\ = (\inst3|charCount\(3) & (\inst3|charCount\(1) & (\inst3|charCount\(2)))) # (!\inst3|charCount\(3) & ((\inst3|charCount\(2) & ((\inst3|charCount\(0)))) # (!\inst3|charCount\(2) & (\inst3|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~147_combout\);

-- Location: LCCOMB_X26_Y25_N2
\inst3|lcd_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~143_combout\ = (\inst3|charCount\(0) & (!\inst3|charCount\(3) & ((\inst3|charCount\(1)) # (\inst3|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(1),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~143_combout\);

-- Location: LCCOMB_X26_Y25_N12
\inst3|lcd_data~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~174_combout\ = (\inst3|lineCount\(1) & ((\inst3|lcd_data~146_combout\ & ((\inst3|Equal14~1_combout\))) # (!\inst3|lcd_data~146_combout\ & (\inst3|lcd_data~143_combout\)))) # (!\inst3|lineCount\(1) & (((\inst3|lcd_data~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lineCount\(1),
	datab => \inst3|lcd_data~143_combout\,
	datac => \inst3|Equal14~1_combout\,
	datad => \inst3|lcd_data~146_combout\,
	combout => \inst3|lcd_data~174_combout\);

-- Location: LCCOMB_X26_Y25_N14
\inst3|lcd_data~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~175_combout\ = (\inst3|charCount\(4) & (\inst3|lcd_data~146_combout\ & ((\inst3|lcd_data~174_combout\)))) # (!\inst3|charCount\(4) & ((\inst3|lcd_data~174_combout\) # ((\inst3|lcd_data~146_combout\ & \inst3|lcd_data~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lcd_data~146_combout\,
	datac => \inst3|lcd_data~147_combout\,
	datad => \inst3|lcd_data~174_combout\,
	combout => \inst3|lcd_data~175_combout\);

-- Location: LCCOMB_X27_Y25_N10
\inst3|lcd_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~149_combout\ = (\inst3|charCount\(1) & ((\inst3|charCount\(3) & (\inst3|charCount\(2) & \inst3|charCount\(0))) # (!\inst3|charCount\(3) & ((!\inst3|charCount\(0)))))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(3)) # 
-- ((\inst3|charCount\(2) & \inst3|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(2),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~149_combout\);

-- Location: LCCOMB_X27_Y25_N12
\inst3|lcd_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~148_combout\ = (!\inst3|charCount\(1)) # (!\inst3|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|charCount\(0),
	datac => \inst3|charCount\(1),
	combout => \inst3|lcd_data~148_combout\);

-- Location: LCCOMB_X27_Y25_N28
\inst3|lcd_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~150_combout\ = (\inst3|lcd_data~149_combout\ & (((\inst3|Equal14~0_combout\ & \inst3|lcd_data~148_combout\)) # (!\inst3|charCount\(4)))) # (!\inst3|lcd_data~149_combout\ & (\inst3|Equal14~0_combout\ & ((\inst3|lcd_data~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~149_combout\,
	datab => \inst3|Equal14~0_combout\,
	datac => \inst3|charCount\(4),
	datad => \inst3|lcd_data~148_combout\,
	combout => \inst3|lcd_data~150_combout\);

-- Location: LCCOMB_X26_Y25_N6
\inst3|lcd_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~151_combout\ = (\inst3|lcd_data~38_combout\ & (!\inst3|display_state~q\ & ((\inst3|lcd_data~150_combout\)))) # (!\inst3|lcd_data~38_combout\ & ((\inst3|display_state~q\) # ((\inst3|lcd_data~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~38_combout\,
	datab => \inst3|display_state~q\,
	datac => \inst3|lcd_data~175_combout\,
	datad => \inst3|lcd_data~150_combout\,
	combout => \inst3|lcd_data~151_combout\);

-- Location: LCCOMB_X26_Y25_N30
\inst3|lcd_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~158_combout\ = (!\inst3|charCount\(4) & (!\inst3|lineCount\(0) & \inst3|lineCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(4),
	datab => \inst3|lineCount\(0),
	datac => \inst3|lineCount\(1),
	combout => \inst3|lcd_data~158_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst3|converterZ|digit_int_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_int_0~4_combout\ = (\inst3|converterZ|number\(0) & !\inst3|converterZ|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterZ|number\(0),
	datad => \inst3|converterZ|state.s0~q\,
	combout => \inst3|converterZ|digit_int_0~4_combout\);

-- Location: FF_X23_Y20_N17
\inst3|converterZ|digit_int_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_int_0~4_combout\,
	ena => \inst3|converterZ|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_int_0\(0));

-- Location: FF_X24_Y25_N23
\inst3|converterZ|digit_out_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_0\(0),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_0\(0));

-- Location: LCCOMB_X24_Y25_N22
\inst3|lcd_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~159_combout\ = (\inst3|charCount\(2) & (\inst3|lcd_data~55_combout\ & (\inst3|converterZ|digit_out_0\(0) & \inst3|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(2),
	datab => \inst3|lcd_data~55_combout\,
	datac => \inst3|converterZ|digit_out_0\(0),
	datad => \inst3|charCount\(3),
	combout => \inst3|lcd_data~159_combout\);

-- Location: LCCOMB_X25_Y23_N10
\inst3|converterY|digit_int_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_int_0~4_combout\ = (\inst3|converterY|number\(0) & !\inst3|converterY|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterY|number\(0),
	datad => \inst3|converterY|state.s0~q\,
	combout => \inst3|converterY|digit_int_0~4_combout\);

-- Location: FF_X25_Y23_N11
\inst3|converterY|digit_int_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_int_0~4_combout\,
	ena => \inst3|converterY|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_int_0\(0));

-- Location: FF_X25_Y25_N15
\inst3|converterY|digit_out_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_0\(0),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_0\(0));

-- Location: LCCOMB_X25_Y25_N14
\inst3|lcd_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~155_combout\ = (!\inst3|charCount\(1) & (\inst3|converterY|digit_out_0\(0) & !\inst3|charCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datac => \inst3|converterY|digit_out_0\(0),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~155_combout\);

-- Location: LCCOMB_X26_Y25_N4
\inst3|lcd_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~154_combout\ = (\inst3|charCount\(3) & (((\inst3|charCount\(2))))) # (!\inst3|charCount\(3) & ((\inst3|charCount\(0) & (!\inst3|charCount\(1) & !\inst3|charCount\(2))) # (!\inst3|charCount\(0) & ((!\inst3|charCount\(2)) # 
-- (!\inst3|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(1),
	datac => \inst3|charCount\(3),
	datad => \inst3|charCount\(2),
	combout => \inst3|lcd_data~154_combout\);

-- Location: LCCOMB_X25_Y25_N20
\inst3|converterY|digit_out_1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterY|digit_out_1[0]~feeder_combout\ = \inst3|converterY|digit_int_1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterY|digit_int_1\(0),
	combout => \inst3|converterY|digit_out_1[0]~feeder_combout\);

-- Location: FF_X25_Y25_N21
\inst3|converterY|digit_out_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterY|digit_out_1[0]~feeder_combout\,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_1\(0));

-- Location: FF_X25_Y25_N29
\inst3|converterY|digit_out_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_2\(0),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_2\(0));

-- Location: FF_X25_Y25_N27
\inst3|converterY|digit_out_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterY|digit_int_3\(0),
	sload => VCC,
	ena => \inst3|converterY|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterY|digit_out_3\(0));

-- Location: LCCOMB_X25_Y25_N26
\inst3|lcd_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~152_combout\ = (\inst3|charCount\(1) & (\inst3|charCount\(0))) # (!\inst3|charCount\(1) & ((\inst3|charCount\(0) & (\inst3|converterY|digit_out_3\(0))) # (!\inst3|charCount\(0) & ((\inst3|accY_v\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterY|digit_out_3\(0),
	datad => \inst3|accY_v\(12),
	combout => \inst3|lcd_data~152_combout\);

-- Location: LCCOMB_X25_Y25_N28
\inst3|lcd_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~153_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~152_combout\ & (\inst3|converterY|digit_out_1\(0))) # (!\inst3|lcd_data~152_combout\ & ((\inst3|converterY|digit_out_2\(0)))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|converterY|digit_out_1\(0),
	datac => \inst3|converterY|digit_out_2\(0),
	datad => \inst3|lcd_data~152_combout\,
	combout => \inst3|lcd_data~153_combout\);

-- Location: LCCOMB_X26_Y25_N18
\inst3|lcd_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~156_combout\ = (\inst3|charCount\(3) & ((\inst3|lcd_data~154_combout\ & (\inst3|lcd_data~155_combout\)) # (!\inst3|lcd_data~154_combout\ & ((\inst3|lcd_data~153_combout\))))) # (!\inst3|charCount\(3) & (((\inst3|lcd_data~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~155_combout\,
	datab => \inst3|charCount\(3),
	datac => \inst3|lcd_data~154_combout\,
	datad => \inst3|lcd_data~153_combout\,
	combout => \inst3|lcd_data~156_combout\);

-- Location: LCCOMB_X26_Y25_N8
\inst3|lcd_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~157_combout\ = (\inst3|lcd_data~38_combout\ & ((\inst3|lcd_data\(0)) # ((\inst3|lcd_data~130_combout\ & \inst3|lcd_data~156_combout\)))) # (!\inst3|lcd_data~38_combout\ & (((\inst3|lcd_data~130_combout\ & \inst3|lcd_data~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~38_combout\,
	datab => \inst3|lcd_data\(0),
	datac => \inst3|lcd_data~130_combout\,
	datad => \inst3|lcd_data~156_combout\,
	combout => \inst3|lcd_data~157_combout\);

-- Location: FF_X24_Y25_N27
\inst3|converterZ|digit_out_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_2\(0),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_2\(0));

-- Location: LCCOMB_X24_Y25_N26
\inst3|lcd_data~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~160_combout\ = (\inst3|charCount\(1) & ((\inst3|charCount\(0)) # ((\inst3|converterZ|digit_out_2\(0))))) # (!\inst3|charCount\(1) & (!\inst3|charCount\(0) & ((\inst3|accZ_v\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(1),
	datab => \inst3|charCount\(0),
	datac => \inst3|converterZ|digit_out_2\(0),
	datad => \inst3|accZ_v\(12),
	combout => \inst3|lcd_data~160_combout\);

-- Location: LCCOMB_X24_Y25_N4
\inst3|converterZ|digit_out_3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterZ|digit_out_3[0]~feeder_combout\ = \inst3|converterZ|digit_int_3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterZ|digit_int_3\(0),
	combout => \inst3|converterZ|digit_out_3[0]~feeder_combout\);

-- Location: FF_X24_Y25_N5
\inst3|converterZ|digit_out_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterZ|digit_out_3[0]~feeder_combout\,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_3\(0));

-- Location: FF_X24_Y25_N29
\inst3|converterZ|digit_out_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterZ|digit_int_1\(0),
	sload => VCC,
	ena => \inst3|converterZ|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterZ|digit_out_1\(0));

-- Location: LCCOMB_X24_Y25_N28
\inst3|lcd_data~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~161_combout\ = (\inst3|lcd_data~160_combout\ & (((\inst3|converterZ|digit_out_1\(0)) # (!\inst3|charCount\(0))))) # (!\inst3|lcd_data~160_combout\ & (\inst3|converterZ|digit_out_3\(0) & ((\inst3|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~160_combout\,
	datab => \inst3|converterZ|digit_out_3\(0),
	datac => \inst3|converterZ|digit_out_1\(0),
	datad => \inst3|charCount\(0),
	combout => \inst3|lcd_data~161_combout\);

-- Location: LCCOMB_X26_Y25_N24
\inst3|lcd_data~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~162_combout\ = (!\inst3|charCount\(2) & ((\inst3|charCount\(3) & ((\inst3|lcd_data~161_combout\))) # (!\inst3|charCount\(3) & (\inst3|lcd_data~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(2),
	datab => \inst3|charCount\(3),
	datac => \inst3|lcd_data~148_combout\,
	datad => \inst3|lcd_data~161_combout\,
	combout => \inst3|lcd_data~162_combout\);

-- Location: LCCOMB_X26_Y25_N22
\inst3|lcd_data~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~163_combout\ = (\inst3|lcd_data~157_combout\) # ((\inst3|lcd_data~158_combout\ & ((\inst3|lcd_data~159_combout\) # (\inst3|lcd_data~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~158_combout\,
	datab => \inst3|lcd_data~159_combout\,
	datac => \inst3|lcd_data~157_combout\,
	datad => \inst3|lcd_data~162_combout\,
	combout => \inst3|lcd_data~163_combout\);

-- Location: LCCOMB_X26_Y25_N26
\inst3|lcd_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~141_combout\ = (!\inst3|charCount\(2) & (!\inst3|charCount\(3) & ((!\inst3|charCount\(1)) # (!\inst3|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(2),
	datab => \inst3|charCount\(3),
	datac => \inst3|charCount\(0),
	datad => \inst3|charCount\(1),
	combout => \inst3|lcd_data~141_combout\);

-- Location: LCCOMB_X21_Y27_N2
\inst3|converterX|digit_int_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_int_0~4_combout\ = (!\inst3|converterX|state.s0~q\ & \inst3|converterX|number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|converterX|state.s0~q\,
	datad => \inst3|converterX|number\(0),
	combout => \inst3|converterX|digit_int_0~4_combout\);

-- Location: FF_X21_Y27_N3
\inst3|converterX|digit_int_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_int_0~4_combout\,
	ena => \inst3|converterX|digit_int_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_int_0\(0));

-- Location: FF_X25_Y27_N7
\inst3|converterX|digit_out_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_0\(0),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_0\(0));

-- Location: LCCOMB_X24_Y27_N10
\inst3|converterX|digit_out_1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|converterX|digit_out_1[0]~feeder_combout\ = \inst3|converterX|digit_int_1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|converterX|digit_int_1\(0),
	combout => \inst3|converterX|digit_out_1[0]~feeder_combout\);

-- Location: FF_X24_Y27_N11
\inst3|converterX|digit_out_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|converterX|digit_out_1[0]~feeder_combout\,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_1\(0));

-- Location: FF_X24_Y27_N31
\inst3|converterX|digit_out_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_2\(0),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_2\(0));

-- Location: FF_X24_Y27_N21
\inst3|converterX|digit_out_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|converterX|digit_int_3\(0),
	sload => VCC,
	ena => \inst3|converterX|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|converterX|digit_out_3\(0));

-- Location: LCCOMB_X24_Y27_N20
\inst3|lcd_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~138_combout\ = (\inst3|charCount\(0) & ((\inst3|charCount\(1)) # ((\inst3|converterX|digit_out_3\(0))))) # (!\inst3|charCount\(0) & (!\inst3|charCount\(1) & ((\inst3|accX_v\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|charCount\(0),
	datab => \inst3|charCount\(1),
	datac => \inst3|converterX|digit_out_3\(0),
	datad => \inst3|accX_v\(12),
	combout => \inst3|lcd_data~138_combout\);

-- Location: LCCOMB_X24_Y27_N30
\inst3|lcd_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~139_combout\ = (\inst3|charCount\(1) & ((\inst3|lcd_data~138_combout\ & (\inst3|converterX|digit_out_1\(0))) # (!\inst3|lcd_data~138_combout\ & ((\inst3|converterX|digit_out_2\(0)))))) # (!\inst3|charCount\(1) & 
-- (((\inst3|lcd_data~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|converterX|digit_out_1\(0),
	datab => \inst3|charCount\(1),
	datac => \inst3|converterX|digit_out_2\(0),
	datad => \inst3|lcd_data~138_combout\,
	combout => \inst3|lcd_data~139_combout\);

-- Location: LCCOMB_X25_Y27_N6
\inst3|lcd_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~140_combout\ = (\inst3|lcd_data~166_combout\ & ((\inst3|converterX|digit_out_0\(0)) # ((\inst3|Equal7~1_combout\ & \inst3|lcd_data~139_combout\)))) # (!\inst3|lcd_data~166_combout\ & (\inst3|Equal7~1_combout\ & 
-- ((\inst3|lcd_data~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~166_combout\,
	datab => \inst3|Equal7~1_combout\,
	datac => \inst3|converterX|digit_out_0\(0),
	datad => \inst3|lcd_data~139_combout\,
	combout => \inst3|lcd_data~140_combout\);

-- Location: LCCOMB_X26_Y25_N0
\inst3|lcd_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~142_combout\ = (\inst3|lcd_data~140_combout\) # ((\inst3|lcd_data~141_combout\ & !\inst3|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~141_combout\,
	datac => \inst3|charCount\(4),
	datad => \inst3|lcd_data~140_combout\,
	combout => \inst3|lcd_data~142_combout\);

-- Location: LCCOMB_X26_Y25_N20
\inst3|lcd_data~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|lcd_data~164_combout\ = (\inst3|lcd_data~151_combout\ & (((\inst3|lcd_data~163_combout\)) # (!\inst3|display_state~q\))) # (!\inst3|lcd_data~151_combout\ & (\inst3|display_state~q\ & ((\inst3|lcd_data~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|lcd_data~151_combout\,
	datab => \inst3|display_state~q\,
	datac => \inst3|lcd_data~163_combout\,
	datad => \inst3|lcd_data~142_combout\,
	combout => \inst3|lcd_data~164_combout\);

-- Location: FF_X26_Y25_N21
\inst3|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst3|lcd_data~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|lcd_data\(0));

-- Location: FF_X32_Y30_N19
\inst2|dataStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst3|lcd_data\(0),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(0));

-- Location: LCCOMB_X32_Y30_N18
\inst2|dataOut[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[0]~16_combout\ = (\inst2|state.sendingAddress~q\ & (\inst2|addressStorage\(0))) # (!\inst2|state.sendingAddress~q\ & (((\inst2|state.sendingData~q\ & \inst2|dataStorage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|addressStorage\(0),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|dataStorage\(0),
	datad => \inst2|state.sendingAddress~q\,
	combout => \inst2|dataOut[0]~16_combout\);

-- Location: LCCOMB_X35_Y30_N18
\inst2|dataOut[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[0]~17_combout\ = (\inst2|dataOut[0]~16_combout\ & (((\inst2|state.init0~q\ & \inst2|state.init6~q\)) # (!\inst2|dataOut[2]~5_combout\))) # (!\inst2|dataOut[0]~16_combout\ & (((\inst2|state.init0~q\ & \inst2|state.init6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[0]~16_combout\,
	datab => \inst2|dataOut[2]~5_combout\,
	datac => \inst2|state.init0~q\,
	datad => \inst2|state.init6~q\,
	combout => \inst2|dataOut[0]~17_combout\);

ww_CS_N <= \CS_N~output_o\;

ww_SCLK <= \SCLK~output_o\;

ww_rs <= \rs~output_o\;

ww_rw <= \rw~output_o\;

ww_e <= \e~output_o\;

ww_data(7) <= \data[7]~output_o\;

ww_data(6) <= \data[6]~output_o\;

ww_data(5) <= \data[5]~output_o\;

ww_data(4) <= \data[4]~output_o\;

ww_data(3) <= \data[3]~output_o\;

ww_data(2) <= \data[2]~output_o\;

ww_data(1) <= \data[1]~output_o\;

ww_data(0) <= \data[0]~output_o\;

SDIO <= \SDIO~output_o\;
END structure;


