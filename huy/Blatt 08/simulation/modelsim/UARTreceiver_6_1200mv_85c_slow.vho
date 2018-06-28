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

-- DATE "06/28/2018 14:27:08"

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

ENTITY 	UARTreader IS
    PORT (
	LCD_rs : OUT std_logic;
	clk_50 : IN std_logic;
	serial_in : IN std_logic;
	LCD_rw : OUT std_logic;
	LCD_e : OUT std_logic;
	motorA1 : OUT std_logic;
	motorA2 : OUT std_logic;
	motorB1 : OUT std_logic;
	motorB2 : OUT std_logic;
	LCD_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END UARTreader;

-- Design Ports Information
-- LCD_rs	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_rw	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_e	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motorA1	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motorA2	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motorB1	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motorB2	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_data[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- serial_in	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UARTreader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LCD_rs : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_serial_in : std_logic;
SIGNAL ww_LCD_rw : std_logic;
SIGNAL ww_LCD_e : std_logic;
SIGNAL ww_motorA1 : std_logic;
SIGNAL ww_motorA2 : std_logic;
SIGNAL ww_motorB1 : std_logic;
SIGNAL ww_motorB2 : std_logic;
SIGNAL ww_LCD_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|dataReady~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_rs~output_o\ : std_logic;
SIGNAL \LCD_rw~output_o\ : std_logic;
SIGNAL \LCD_e~output_o\ : std_logic;
SIGNAL \motorA1~output_o\ : std_logic;
SIGNAL \motorA2~output_o\ : std_logic;
SIGNAL \motorB1~output_o\ : std_logic;
SIGNAL \motorB2~output_o\ : std_logic;
SIGNAL \LCD_data[7]~output_o\ : std_logic;
SIGNAL \LCD_data[6]~output_o\ : std_logic;
SIGNAL \LCD_data[5]~output_o\ : std_logic;
SIGNAL \LCD_data[4]~output_o\ : std_logic;
SIGNAL \LCD_data[3]~output_o\ : std_logic;
SIGNAL \LCD_data[2]~output_o\ : std_logic;
SIGNAL \LCD_data[1]~output_o\ : std_logic;
SIGNAL \LCD_data[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|counter[0]~31_combout\ : std_logic;
SIGNAL \inst5|charCount[0]~5_combout\ : std_logic;
SIGNAL \inst5|lineCount~0_combout\ : std_logic;
SIGNAL \inst5|lineCount[0]~1_combout\ : std_logic;
SIGNAL \inst5|lineCount[1]~2_combout\ : std_logic;
SIGNAL \inst5|state~7_combout\ : std_logic;
SIGNAL \inst5|state~13_combout\ : std_logic;
SIGNAL \inst5|state.update~q\ : std_logic;
SIGNAL \inst5|counter[8]~96_combout\ : std_logic;
SIGNAL \inst5|charCount[0]~6\ : std_logic;
SIGNAL \inst5|charCount[1]~7_combout\ : std_logic;
SIGNAL \inst5|charCount[1]~8\ : std_logic;
SIGNAL \inst5|charCount[2]~9_combout\ : std_logic;
SIGNAL \inst5|charCount[2]~10\ : std_logic;
SIGNAL \inst5|charCount[3]~11_combout\ : std_logic;
SIGNAL \inst5|charCount[3]~12\ : std_logic;
SIGNAL \inst5|charCount[4]~13_combout\ : std_logic;
SIGNAL \inst5|lcd_data~111_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|counter[2]~36\ : std_logic;
SIGNAL \inst5|counter[3]~37_combout\ : std_logic;
SIGNAL \inst5|counter[8]~41_combout\ : std_logic;
SIGNAL \inst5|counter[3]~38\ : std_logic;
SIGNAL \inst5|counter[4]~39_combout\ : std_logic;
SIGNAL \inst5|counter[4]~40\ : std_logic;
SIGNAL \inst5|counter[5]~44_combout\ : std_logic;
SIGNAL \inst5|counter[5]~45\ : std_logic;
SIGNAL \inst5|counter[6]~46_combout\ : std_logic;
SIGNAL \inst5|counter[6]~47\ : std_logic;
SIGNAL \inst5|counter[7]~48_combout\ : std_logic;
SIGNAL \inst5|counter[7]~49\ : std_logic;
SIGNAL \inst5|counter[8]~50_combout\ : std_logic;
SIGNAL \inst5|counter[8]~51\ : std_logic;
SIGNAL \inst5|counter[9]~52_combout\ : std_logic;
SIGNAL \inst5|counter[9]~53\ : std_logic;
SIGNAL \inst5|counter[10]~54_combout\ : std_logic;
SIGNAL \inst5|counter[10]~55\ : std_logic;
SIGNAL \inst5|counter[11]~56_combout\ : std_logic;
SIGNAL \inst5|counter[11]~57\ : std_logic;
SIGNAL \inst5|counter[12]~58_combout\ : std_logic;
SIGNAL \inst5|counter[12]~59\ : std_logic;
SIGNAL \inst5|counter[13]~60_combout\ : std_logic;
SIGNAL \inst5|counter[13]~61\ : std_logic;
SIGNAL \inst5|counter[14]~62_combout\ : std_logic;
SIGNAL \inst5|counter[14]~63\ : std_logic;
SIGNAL \inst5|counter[15]~64_combout\ : std_logic;
SIGNAL \inst5|counter[15]~65\ : std_logic;
SIGNAL \inst5|counter[16]~66_combout\ : std_logic;
SIGNAL \inst5|counter[16]~67\ : std_logic;
SIGNAL \inst5|counter[17]~68_combout\ : std_logic;
SIGNAL \inst5|counter[17]~69\ : std_logic;
SIGNAL \inst5|counter[18]~70_combout\ : std_logic;
SIGNAL \inst5|counter[18]~71\ : std_logic;
SIGNAL \inst5|counter[19]~72_combout\ : std_logic;
SIGNAL \inst5|counter[19]~73\ : std_logic;
SIGNAL \inst5|counter[20]~74_combout\ : std_logic;
SIGNAL \inst5|counter[20]~75\ : std_logic;
SIGNAL \inst5|counter[21]~76_combout\ : std_logic;
SIGNAL \inst5|counter[21]~77\ : std_logic;
SIGNAL \inst5|counter[22]~78_combout\ : std_logic;
SIGNAL \inst5|process_1~7_combout\ : std_logic;
SIGNAL \inst5|process_1~6_combout\ : std_logic;
SIGNAL \inst5|counter[22]~79\ : std_logic;
SIGNAL \inst5|counter[23]~80_combout\ : std_logic;
SIGNAL \inst5|counter[23]~81\ : std_logic;
SIGNAL \inst5|counter[24]~82_combout\ : std_logic;
SIGNAL \inst5|counter[24]~83\ : std_logic;
SIGNAL \inst5|counter[25]~84_combout\ : std_logic;
SIGNAL \inst5|counter[25]~85\ : std_logic;
SIGNAL \inst5|counter[26]~86_combout\ : std_logic;
SIGNAL \inst5|counter[26]~87\ : std_logic;
SIGNAL \inst5|counter[27]~88_combout\ : std_logic;
SIGNAL \inst5|counter[27]~89\ : std_logic;
SIGNAL \inst5|counter[28]~90_combout\ : std_logic;
SIGNAL \inst5|counter[28]~91\ : std_logic;
SIGNAL \inst5|counter[29]~92_combout\ : std_logic;
SIGNAL \inst5|counter[29]~93\ : std_logic;
SIGNAL \inst5|counter[30]~94_combout\ : std_logic;
SIGNAL \inst5|process_1~2_combout\ : std_logic;
SIGNAL \inst5|process_1~3_combout\ : std_logic;
SIGNAL \inst5|process_1~0_combout\ : std_logic;
SIGNAL \inst5|process_1~1_combout\ : std_logic;
SIGNAL \inst5|process_1~4_combout\ : std_logic;
SIGNAL \inst5|process_1~5_combout\ : std_logic;
SIGNAL \inst5|process_1~8_combout\ : std_logic;
SIGNAL \inst5|counter[8]~42_combout\ : std_logic;
SIGNAL \inst5|counter[8]~43_combout\ : std_logic;
SIGNAL \inst5|counter[0]~32\ : std_logic;
SIGNAL \inst5|counter[1]~33_combout\ : std_logic;
SIGNAL \inst5|counter[1]~34\ : std_logic;
SIGNAL \inst5|counter[2]~35_combout\ : std_logic;
SIGNAL \inst5|state~8_combout\ : std_logic;
SIGNAL \inst5|state~9_combout\ : std_logic;
SIGNAL \inst5|state~10_combout\ : std_logic;
SIGNAL \inst5|state~11_combout\ : std_logic;
SIGNAL \inst5|state~12_combout\ : std_logic;
SIGNAL \inst5|state.pause~0_combout\ : std_logic;
SIGNAL \inst5|state.pause~1_combout\ : std_logic;
SIGNAL \inst5|state.pause~q\ : std_logic;
SIGNAL \inst5|process_1~9_combout\ : std_logic;
SIGNAL \inst5|process_1~10_combout\ : std_logic;
SIGNAL \inst5|lcd_write_n~q\ : std_logic;
SIGNAL \inst8|process_0~19_combout\ : std_logic;
SIGNAL \inst8|counter[0]~31_combout\ : std_logic;
SIGNAL \inst8|counter[0]~32\ : std_logic;
SIGNAL \inst8|counter[1]~33_combout\ : std_logic;
SIGNAL \inst8|counter[1]~34\ : std_logic;
SIGNAL \inst8|counter[2]~35_combout\ : std_logic;
SIGNAL \inst8|counter[2]~36\ : std_logic;
SIGNAL \inst8|counter[3]~37_combout\ : std_logic;
SIGNAL \inst8|counter[3]~38\ : std_logic;
SIGNAL \inst8|counter[4]~39_combout\ : std_logic;
SIGNAL \inst8|counter[4]~40\ : std_logic;
SIGNAL \inst8|counter[5]~41_combout\ : std_logic;
SIGNAL \inst8|counter[5]~42\ : std_logic;
SIGNAL \inst8|counter[6]~43_combout\ : std_logic;
SIGNAL \inst8|counter[6]~44\ : std_logic;
SIGNAL \inst8|counter[7]~45_combout\ : std_logic;
SIGNAL \inst8|counter[7]~46\ : std_logic;
SIGNAL \inst8|counter[8]~47_combout\ : std_logic;
SIGNAL \inst8|counter[8]~48\ : std_logic;
SIGNAL \inst8|counter[9]~49_combout\ : std_logic;
SIGNAL \inst8|counter[9]~50\ : std_logic;
SIGNAL \inst8|counter[10]~51_combout\ : std_logic;
SIGNAL \inst8|counter[10]~52\ : std_logic;
SIGNAL \inst8|counter[11]~53_combout\ : std_logic;
SIGNAL \inst8|counter[11]~54\ : std_logic;
SIGNAL \inst8|counter[12]~55_combout\ : std_logic;
SIGNAL \inst8|process_0~12_combout\ : std_logic;
SIGNAL \inst8|counter[12]~56\ : std_logic;
SIGNAL \inst8|counter[13]~57_combout\ : std_logic;
SIGNAL \inst8|counter[13]~58\ : std_logic;
SIGNAL \inst8|counter[14]~59_combout\ : std_logic;
SIGNAL \inst8|counter[14]~60\ : std_logic;
SIGNAL \inst8|counter[15]~61_combout\ : std_logic;
SIGNAL \inst8|counter[15]~62\ : std_logic;
SIGNAL \inst8|counter[16]~63_combout\ : std_logic;
SIGNAL \inst8|counter[16]~64\ : std_logic;
SIGNAL \inst8|counter[17]~65_combout\ : std_logic;
SIGNAL \inst8|counter[17]~66\ : std_logic;
SIGNAL \inst8|counter[18]~67_combout\ : std_logic;
SIGNAL \inst8|counter[18]~68\ : std_logic;
SIGNAL \inst8|counter[19]~69_combout\ : std_logic;
SIGNAL \inst8|counter[19]~70\ : std_logic;
SIGNAL \inst8|counter[20]~71_combout\ : std_logic;
SIGNAL \inst8|counter[20]~72\ : std_logic;
SIGNAL \inst8|counter[21]~73_combout\ : std_logic;
SIGNAL \inst8|counter[21]~74\ : std_logic;
SIGNAL \inst8|counter[22]~75_combout\ : std_logic;
SIGNAL \inst8|counter[22]~76\ : std_logic;
SIGNAL \inst8|counter[23]~77_combout\ : std_logic;
SIGNAL \inst8|e~1_combout\ : std_logic;
SIGNAL \inst8|Equal5~1_combout\ : std_logic;
SIGNAL \inst8|counter[23]~78\ : std_logic;
SIGNAL \inst8|counter[24]~79_combout\ : std_logic;
SIGNAL \inst8|counter[24]~80\ : std_logic;
SIGNAL \inst8|counter[25]~81_combout\ : std_logic;
SIGNAL \inst8|counter[25]~82\ : std_logic;
SIGNAL \inst8|counter[26]~83_combout\ : std_logic;
SIGNAL \inst8|counter[26]~84\ : std_logic;
SIGNAL \inst8|counter[27]~85_combout\ : std_logic;
SIGNAL \inst8|e~2_combout\ : std_logic;
SIGNAL \inst8|counter[27]~86\ : std_logic;
SIGNAL \inst8|counter[28]~87_combout\ : std_logic;
SIGNAL \inst8|counter[28]~88\ : std_logic;
SIGNAL \inst8|counter[29]~89_combout\ : std_logic;
SIGNAL \inst8|counter[29]~90\ : std_logic;
SIGNAL \inst8|counter[30]~91_combout\ : std_logic;
SIGNAL \inst8|e~3_combout\ : std_logic;
SIGNAL \inst8|Equal5~2_combout\ : std_logic;
SIGNAL \inst8|process_0~11_combout\ : std_logic;
SIGNAL \inst8|state.init0~feeder_combout\ : std_logic;
SIGNAL \inst8|state.init0~q\ : std_logic;
SIGNAL \inst8|process_0~13_combout\ : std_logic;
SIGNAL \inst8|process_0~14_combout\ : std_logic;
SIGNAL \inst8|process_0~15_combout\ : std_logic;
SIGNAL \inst8|process_0~16_combout\ : std_logic;
SIGNAL \inst8|state~27_combout\ : std_logic;
SIGNAL \inst8|state.init1~q\ : std_logic;
SIGNAL \inst8|Equal6~4_combout\ : std_logic;
SIGNAL \inst8|Equal5~0_combout\ : std_logic;
SIGNAL \inst8|Equal5~4_combout\ : std_logic;
SIGNAL \inst8|Equal6~2_combout\ : std_logic;
SIGNAL \inst8|Equal5~5_combout\ : std_logic;
SIGNAL \inst8|Equal5~3_combout\ : std_logic;
SIGNAL \inst8|Equal5~6_combout\ : std_logic;
SIGNAL \inst8|process_0~21_combout\ : std_logic;
SIGNAL \inst8|state~28_combout\ : std_logic;
SIGNAL \inst8|state.init2~q\ : std_logic;
SIGNAL \inst8|Equal6~3_combout\ : std_logic;
SIGNAL \inst8|Equal6~9_combout\ : std_logic;
SIGNAL \inst8|process_0~17_combout\ : std_logic;
SIGNAL \inst8|process_0~18_combout\ : std_logic;
SIGNAL \inst8|state~24_combout\ : std_logic;
SIGNAL \inst8|state.init3~q\ : std_logic;
SIGNAL \inst8|Equal6~5_combout\ : std_logic;
SIGNAL \inst8|Equal6~6_combout\ : std_logic;
SIGNAL \inst8|Equal6~7_combout\ : std_logic;
SIGNAL \inst8|Equal6~8_combout\ : std_logic;
SIGNAL \inst8|state~25_combout\ : std_logic;
SIGNAL \inst8|state~26_combout\ : std_logic;
SIGNAL \inst8|state.init4~q\ : std_logic;
SIGNAL \inst8|state~30_combout\ : std_logic;
SIGNAL \inst8|state.init5~q\ : std_logic;
SIGNAL \inst8|state~18_combout\ : std_logic;
SIGNAL \inst8|state~29_combout\ : std_logic;
SIGNAL \inst8|state.init6~q\ : std_logic;
SIGNAL \inst8|state~19_combout\ : std_logic;
SIGNAL \inst8|state~20_combout\ : std_logic;
SIGNAL \inst8|state~21_combout\ : std_logic;
SIGNAL \inst8|state~23_combout\ : std_logic;
SIGNAL \inst8|state.sendingData~q\ : std_logic;
SIGNAL \inst8|process_0~22_combout\ : std_logic;
SIGNAL \inst8|state~31_combout\ : std_logic;
SIGNAL \inst8|state.init7~q\ : std_logic;
SIGNAL \inst8|state~17_combout\ : std_logic;
SIGNAL \inst8|state~33_combout\ : std_logic;
SIGNAL \inst8|state.sendingAddress~q\ : std_logic;
SIGNAL \inst8|process_0~20_combout\ : std_logic;
SIGNAL \inst8|state~32_combout\ : std_logic;
SIGNAL \inst8|state~22_combout\ : std_logic;
SIGNAL \inst8|state.ready~q\ : std_logic;
SIGNAL \inst8|process_1~0_combout\ : std_logic;
SIGNAL \inst8|e~6_combout\ : std_logic;
SIGNAL \inst8|e~4_combout\ : std_logic;
SIGNAL \inst8|e~0_combout\ : std_logic;
SIGNAL \inst8|e~5_combout\ : std_logic;
SIGNAL \inst8|e~7_combout\ : std_logic;
SIGNAL \inst8|dataOut[1]~0_combout\ : std_logic;
SIGNAL \inst8|dataOut[1]~1_combout\ : std_logic;
SIGNAL \inst5|lcd_data~34_combout\ : std_logic;
SIGNAL \inst5|lcd_data~35_combout\ : std_logic;
SIGNAL \inst5|lcd_data~43_combout\ : std_logic;
SIGNAL \inst5|lcd_data~44_combout\ : std_logic;
SIGNAL \inst5|display_counter[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst5|display_counter[0]~32\ : std_logic;
SIGNAL \inst5|display_counter[1]~33_combout\ : std_logic;
SIGNAL \inst5|display_counter[1]~34\ : std_logic;
SIGNAL \inst5|display_counter[2]~35_combout\ : std_logic;
SIGNAL \inst5|display_counter[2]~36\ : std_logic;
SIGNAL \inst5|display_counter[3]~37_combout\ : std_logic;
SIGNAL \inst5|display_counter[3]~38\ : std_logic;
SIGNAL \inst5|display_counter[4]~39_combout\ : std_logic;
SIGNAL \inst5|display_counter[4]~40\ : std_logic;
SIGNAL \inst5|display_counter[5]~41_combout\ : std_logic;
SIGNAL \inst5|display_counter[5]~42\ : std_logic;
SIGNAL \inst5|display_counter[6]~43_combout\ : std_logic;
SIGNAL \inst5|display_counter[6]~44\ : std_logic;
SIGNAL \inst5|display_counter[7]~45_combout\ : std_logic;
SIGNAL \inst5|display_counter[7]~46\ : std_logic;
SIGNAL \inst5|display_counter[8]~47_combout\ : std_logic;
SIGNAL \inst5|display_counter[8]~48\ : std_logic;
SIGNAL \inst5|display_counter[9]~49_combout\ : std_logic;
SIGNAL \inst5|display_counter[9]~50\ : std_logic;
SIGNAL \inst5|display_counter[10]~51_combout\ : std_logic;
SIGNAL \inst5|display_counter[10]~52\ : std_logic;
SIGNAL \inst5|display_counter[11]~53_combout\ : std_logic;
SIGNAL \inst5|display_counter[11]~54\ : std_logic;
SIGNAL \inst5|display_counter[12]~55_combout\ : std_logic;
SIGNAL \inst5|display_counter[12]~56\ : std_logic;
SIGNAL \inst5|display_counter[13]~57_combout\ : std_logic;
SIGNAL \inst5|display_counter[13]~58\ : std_logic;
SIGNAL \inst5|display_counter[14]~59_combout\ : std_logic;
SIGNAL \inst5|display_counter[14]~60\ : std_logic;
SIGNAL \inst5|display_counter[15]~61_combout\ : std_logic;
SIGNAL \inst5|display_counter[15]~62\ : std_logic;
SIGNAL \inst5|display_counter[16]~63_combout\ : std_logic;
SIGNAL \inst5|display_counter[16]~64\ : std_logic;
SIGNAL \inst5|display_counter[17]~65_combout\ : std_logic;
SIGNAL \inst5|display_counter[17]~66\ : std_logic;
SIGNAL \inst5|display_counter[18]~67_combout\ : std_logic;
SIGNAL \inst5|display_counter[18]~68\ : std_logic;
SIGNAL \inst5|display_counter[19]~69_combout\ : std_logic;
SIGNAL \inst5|display_counter[19]~70\ : std_logic;
SIGNAL \inst5|display_counter[20]~71_combout\ : std_logic;
SIGNAL \inst5|display_counter[20]~72\ : std_logic;
SIGNAL \inst5|display_counter[21]~73_combout\ : std_logic;
SIGNAL \inst5|display_counter[21]~74\ : std_logic;
SIGNAL \inst5|display_counter[22]~75_combout\ : std_logic;
SIGNAL \inst5|display_counter[22]~76\ : std_logic;
SIGNAL \inst5|display_counter[23]~77_combout\ : std_logic;
SIGNAL \inst5|display_counter[23]~78\ : std_logic;
SIGNAL \inst5|display_counter[24]~79_combout\ : std_logic;
SIGNAL \inst5|display_counter[24]~80\ : std_logic;
SIGNAL \inst5|display_counter[25]~81_combout\ : std_logic;
SIGNAL \inst5|display_counter[25]~82\ : std_logic;
SIGNAL \inst5|display_counter[26]~83_combout\ : std_logic;
SIGNAL \inst5|display_counter[26]~84\ : std_logic;
SIGNAL \inst5|display_counter[27]~85_combout\ : std_logic;
SIGNAL \inst5|display_counter[27]~86\ : std_logic;
SIGNAL \inst5|display_counter[28]~87_combout\ : std_logic;
SIGNAL \inst5|display_counter[28]~88\ : std_logic;
SIGNAL \inst5|display_counter[29]~89_combout\ : std_logic;
SIGNAL \inst5|display_counter[29]~90\ : std_logic;
SIGNAL \inst5|display_counter[30]~91_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~5_combout\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|LessThan1~2_combout\ : std_logic;
SIGNAL \inst5|LessThan1~3_combout\ : std_logic;
SIGNAL \inst5|LessThan1~4_combout\ : std_logic;
SIGNAL \inst5|LessThan1~6_combout\ : std_logic;
SIGNAL \inst5|LessThan1~7_combout\ : std_logic;
SIGNAL \inst5|display_state~feeder_combout\ : std_logic;
SIGNAL \inst5|display_state~q\ : std_logic;
SIGNAL \inst5|lcd_data~155_combout\ : std_logic;
SIGNAL \inst5|lcd_data~40_combout\ : std_logic;
SIGNAL \inst5|lcd_data~41_combout\ : std_logic;
SIGNAL \inst5|Equal14~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~169_combout\ : std_logic;
SIGNAL \inst5|lcd_data~170_combout\ : std_logic;
SIGNAL \inst5|lcd_data~37_combout\ : std_logic;
SIGNAL \inst5|lcd_data~36_combout\ : std_logic;
SIGNAL \inst5|lcd_data~38_combout\ : std_logic;
SIGNAL \inst5|Equal11~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~39_combout\ : std_logic;
SIGNAL \inst5|lcd_data~167_combout\ : std_logic;
SIGNAL \inst5|lcd_data~168_combout\ : std_logic;
SIGNAL \inst5|lcd_data~42_combout\ : std_logic;
SIGNAL \inst5|lcd_data~45_combout\ : std_logic;
SIGNAL \inst8|dataStorage[6]~0_combout\ : std_logic;
SIGNAL \inst8|dataOut[6]~2_combout\ : std_logic;
SIGNAL \inst8|dataOut[6]~3_combout\ : std_logic;
SIGNAL \inst8|dataOut[5]~5_combout\ : std_logic;
SIGNAL \inst5|lcd_posY[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|lcd_posX[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|lcd_posX[4]~feeder_combout\ : std_logic;
SIGNAL \inst8|addressStorage~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~50_combout\ : std_logic;
SIGNAL \inst5|lcd_data~54_combout\ : std_logic;
SIGNAL \inst5|lcd_data~55_combout\ : std_logic;
SIGNAL \inst5|lcd_data~51_combout\ : std_logic;
SIGNAL \inst5|lcd_data~52_combout\ : std_logic;
SIGNAL \inst5|lcd_data~53_combout\ : std_logic;
SIGNAL \inst5|lcd_data~56_combout\ : std_logic;
SIGNAL \inst5|lcd_data~46_combout\ : std_logic;
SIGNAL \inst5|lcd_data~47_combout\ : std_logic;
SIGNAL \inst5|lcd_data~48_combout\ : std_logic;
SIGNAL \inst5|lcd_data~49_combout\ : std_logic;
SIGNAL \inst5|lcd_data~57_combout\ : std_logic;
SIGNAL \inst8|dataStorage[5]~1_combout\ : std_logic;
SIGNAL \inst8|dataOut[5]~4_combout\ : std_logic;
SIGNAL \inst8|dataOut[5]~6_combout\ : std_logic;
SIGNAL \inst8|addressStorage~1_combout\ : std_logic;
SIGNAL \inst5|lcd_data~67_combout\ : std_logic;
SIGNAL \inst5|lcd_data~68_combout\ : std_logic;
SIGNAL \inst5|lcd_data~157_combout\ : std_logic;
SIGNAL \inst5|lcd_data~165_combout\ : std_logic;
SIGNAL \inst5|lcd_data~166_combout\ : std_logic;
SIGNAL \inst5|lcd_data~69_combout\ : std_logic;
SIGNAL \inst5|lcd_data~64_combout\ : std_logic;
SIGNAL \inst5|Equal9~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~65_combout\ : std_logic;
SIGNAL \inst5|lcd_data~58_combout\ : std_logic;
SIGNAL \inst5|lcd_data~59_combout\ : std_logic;
SIGNAL \inst5|lcd_data~60_combout\ : std_logic;
SIGNAL \inst5|lcd_data~156_combout\ : std_logic;
SIGNAL \inst5|lcd_data~61_combout\ : std_logic;
SIGNAL \inst5|lcd_data~62_combout\ : std_logic;
SIGNAL \inst5|lcd_data~63_combout\ : std_logic;
SIGNAL \inst5|lcd_data~66_combout\ : std_logic;
SIGNAL \inst5|lcd_data~158_combout\ : std_logic;
SIGNAL \inst5|lcd_data~70_combout\ : std_logic;
SIGNAL \inst5|lcd_data~71_combout\ : std_logic;
SIGNAL \inst8|dataOut[4]~7_combout\ : std_logic;
SIGNAL \inst8|dataOut[4]~8_combout\ : std_logic;
SIGNAL \inst8|dataOut[3]~9_combout\ : std_logic;
SIGNAL \inst8|addressStorage~2_combout\ : std_logic;
SIGNAL \inst5|converter3|LessThan2~1_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~0_combout\ : std_logic;
SIGNAL \inst5|converter3|number~9_combout\ : std_logic;
SIGNAL \inst5|converter3|LessThan2~0_combout\ : std_logic;
SIGNAL \inst5|converter3|LessThan2~2_combout\ : std_logic;
SIGNAL \inst5|converter3|number~6_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_2~0_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_2~1_combout\ : std_logic;
SIGNAL \inst5|converter3|number~7_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~0_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~1\ : std_logic;
SIGNAL \inst5|converter3|Add4~2_combout\ : std_logic;
SIGNAL \inst5|converter3|number~10_combout\ : std_logic;
SIGNAL \inst5|converter3|number~11_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~1\ : std_logic;
SIGNAL \inst5|converter3|Add2~2_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~3\ : std_logic;
SIGNAL \inst5|converter3|Add4~4_combout\ : std_logic;
SIGNAL \inst5|converter3|number[3]~4_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~0_combout\ : std_logic;
SIGNAL \inst5|converter3|state~15_combout\ : std_logic;
SIGNAL \inst5|converter3|state~16_combout\ : std_logic;
SIGNAL \inst5|converter3|number~8_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~3\ : std_logic;
SIGNAL \inst5|converter3|Add2~4_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~5\ : std_logic;
SIGNAL \inst5|converter3|Add4~6_combout\ : std_logic;
SIGNAL \inst5|converter3|number[4]~5_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~1\ : std_logic;
SIGNAL \inst5|converter3|Add0~2_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~7\ : std_logic;
SIGNAL \inst5|converter3|Add4~8_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~5\ : std_logic;
SIGNAL \inst5|converter3|Add2~6_combout\ : std_logic;
SIGNAL \inst5|converter3|number[5]~2_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~3\ : std_logic;
SIGNAL \inst5|converter3|Add0~4_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~7\ : std_logic;
SIGNAL \inst5|converter3|Add2~8_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~9\ : std_logic;
SIGNAL \inst5|converter3|Add4~10_combout\ : std_logic;
SIGNAL \inst5|converter3|number[6]~3_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~5\ : std_logic;
SIGNAL \inst5|converter3|Add0~6_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~9\ : std_logic;
SIGNAL \inst5|converter3|Add2~10_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~11\ : std_logic;
SIGNAL \inst5|converter3|Add4~12_combout\ : std_logic;
SIGNAL \inst5|converter3|number[7]~0_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~7\ : std_logic;
SIGNAL \inst5|converter3|Add0~9_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~13\ : std_logic;
SIGNAL \inst5|converter3|Add4~14_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~11\ : std_logic;
SIGNAL \inst5|converter3|Add2~12_combout\ : std_logic;
SIGNAL \inst5|converter3|number[8]~1_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~10\ : std_logic;
SIGNAL \inst5|converter3|Add0~11_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~12\ : std_logic;
SIGNAL \inst5|converter3|Add0~13_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~15\ : std_logic;
SIGNAL \inst5|converter3|Add4~16_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~13\ : std_logic;
SIGNAL \inst5|converter3|Add2~14_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~22_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~23_combout\ : std_logic;
SIGNAL \inst5|converter3|number[9]~12_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~14\ : std_logic;
SIGNAL \inst5|converter3|Add0~15_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~15\ : std_logic;
SIGNAL \inst5|converter3|Add2~16_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~17\ : std_logic;
SIGNAL \inst5|converter3|Add4~18_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~20_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~21_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~16\ : std_logic;
SIGNAL \inst5|converter3|Add0~17_combout\ : std_logic;
SIGNAL \inst5|converter3|Add2~17\ : std_logic;
SIGNAL \inst5|converter3|Add2~18_combout\ : std_logic;
SIGNAL \inst5|converter3|Add4~19\ : std_logic;
SIGNAL \inst5|converter3|Add4~20_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~8_combout\ : std_logic;
SIGNAL \inst5|converter3|Add0~19_combout\ : std_logic;
SIGNAL \inst5|converter3|state~14_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s5~feeder_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s5~q\ : std_logic;
SIGNAL \inst5|converter3|state~17_combout\ : std_logic;
SIGNAL \inst5|converter3|state~18_combout\ : std_logic;
SIGNAL \inst5|converter3|state~19_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s1~0_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s1~q\ : std_logic;
SIGNAL \inst5|converter3|state~24_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s2~q\ : std_logic;
SIGNAL \inst5|converter3|state~23_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s3~q\ : std_logic;
SIGNAL \inst5|converter3|state~22_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s4~q\ : std_logic;
SIGNAL \inst5|converter3|digit_int_0[3]~1_combout\ : std_logic;
SIGNAL \inst5|converter3|state~20_combout\ : std_logic;
SIGNAL \inst5|converter3|state~21_combout\ : std_logic;
SIGNAL \inst5|converter3|state.s0~q\ : std_logic;
SIGNAL \inst5|converter3|digit_int_2~3_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_2[2]~2_combout\ : std_logic;
SIGNAL \inst5|converter3|Add3~2_combout\ : std_logic;
SIGNAL \inst5|converter3|Add3~1_combout\ : std_logic;
SIGNAL \inst5|converter3|Add3~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~89_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_0~0_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_out_0[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_1~1_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_1[1]~0_combout\ : std_logic;
SIGNAL \inst5|converter3|Add5~2_combout\ : std_logic;
SIGNAL \inst5|converter3|Add5~1_combout\ : std_logic;
SIGNAL \inst5|converter3|Add5~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~87_combout\ : std_logic;
SIGNAL \inst5|lcd_data~160_combout\ : std_logic;
SIGNAL \inst5|lcd_data~86_combout\ : std_logic;
SIGNAL \inst5|lcd_data~90_combout\ : std_logic;
SIGNAL \inst5|lcd_data~91_combout\ : std_logic;
SIGNAL \inst5|lcd_data~75_combout\ : std_logic;
SIGNAL \inst5|converter1|number[6]~2_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~1\ : std_logic;
SIGNAL \inst5|converter1|Add0~2_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~0_combout\ : std_logic;
SIGNAL \inst5|converter1|number~25_combout\ : std_logic;
SIGNAL \inst|state.startBit~0_combout\ : std_logic;
SIGNAL \serial_in~input_o\ : std_logic;
SIGNAL \inst|time_count[0]~11_combout\ : std_logic;
SIGNAL \inst|state.stopBit~q\ : std_logic;
SIGNAL \inst|time_count[0]~33_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|time_count[0]~34_combout\ : std_logic;
SIGNAL \inst|state~18_combout\ : std_logic;
SIGNAL \inst|state~19_combout\ : std_logic;
SIGNAL \inst|state~30_combout\ : std_logic;
SIGNAL \inst|state.timeout~q\ : std_logic;
SIGNAL \inst|time_count[0]~35_combout\ : std_logic;
SIGNAL \inst|time_count[0]~12\ : std_logic;
SIGNAL \inst|time_count[1]~13_combout\ : std_logic;
SIGNAL \inst|time_count[1]~14\ : std_logic;
SIGNAL \inst|time_count[2]~15_combout\ : std_logic;
SIGNAL \inst|time_count[2]~16\ : std_logic;
SIGNAL \inst|time_count[3]~17_combout\ : std_logic;
SIGNAL \inst|time_count[3]~18\ : std_logic;
SIGNAL \inst|time_count[4]~19_combout\ : std_logic;
SIGNAL \inst|time_count[4]~20\ : std_logic;
SIGNAL \inst|time_count[5]~21_combout\ : std_logic;
SIGNAL \inst|time_count[5]~22\ : std_logic;
SIGNAL \inst|time_count[6]~23_combout\ : std_logic;
SIGNAL \inst|time_count[6]~24\ : std_logic;
SIGNAL \inst|time_count[7]~25_combout\ : std_logic;
SIGNAL \inst|time_count[7]~26\ : std_logic;
SIGNAL \inst|time_count[8]~27_combout\ : std_logic;
SIGNAL \inst|time_count[8]~28\ : std_logic;
SIGNAL \inst|time_count[9]~29_combout\ : std_logic;
SIGNAL \inst|time_count[9]~30\ : std_logic;
SIGNAL \inst|time_count[10]~31_combout\ : std_logic;
SIGNAL \inst|state~25_combout\ : std_logic;
SIGNAL \inst|state~29_combout\ : std_logic;
SIGNAL \inst|data_index~1_combout\ : std_logic;
SIGNAL \inst|data_index~0_combout\ : std_logic;
SIGNAL \inst|data_index[0]~2_combout\ : std_logic;
SIGNAL \inst|data_index~3_combout\ : std_logic;
SIGNAL \inst|data_index~4_combout\ : std_logic;
SIGNAL \inst|state~20_combout\ : std_logic;
SIGNAL \inst|state~21_combout\ : std_logic;
SIGNAL \inst|state~26_combout\ : std_logic;
SIGNAL \inst|state~27_combout\ : std_logic;
SIGNAL \inst|state.startBit~q\ : std_logic;
SIGNAL \inst|state.dataBits~2_combout\ : std_logic;
SIGNAL \inst|state.dataBits~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|state~28_combout\ : std_logic;
SIGNAL \inst|state~22_combout\ : std_logic;
SIGNAL \inst|state.dataBits~3_combout\ : std_logic;
SIGNAL \inst|state.dataBits~q\ : std_logic;
SIGNAL \inst|state~23_combout\ : std_logic;
SIGNAL \inst|state~24_combout\ : std_logic;
SIGNAL \inst|state.idle~q\ : std_logic;
SIGNAL \inst|dataReady~1_combout\ : std_logic;
SIGNAL \inst|dataReady~2_combout\ : std_logic;
SIGNAL \inst|dataReady~0_combout\ : std_logic;
SIGNAL \inst|dataReady~q\ : std_logic;
SIGNAL \inst|dataReady~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|data[0]~10_combout\ : std_logic;
SIGNAL \inst|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|heading_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst5|converter1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst5|converter1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst5|converter1|LessThan2~3_combout\ : std_logic;
SIGNAL \inst5|converter1|number~0_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_2~0_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_2~1_combout\ : std_logic;
SIGNAL \inst5|converter1|number~5_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~0_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~1\ : std_logic;
SIGNAL \inst5|converter1|Add4~2_combout\ : std_logic;
SIGNAL \inst5|converter1|number~21_combout\ : std_logic;
SIGNAL \inst5|converter1|number~22_combout\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|data[1]~8_combout\ : std_logic;
SIGNAL \inst|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|heading_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~3\ : std_logic;
SIGNAL \inst5|converter1|Add4~5\ : std_logic;
SIGNAL \inst5|converter1|Add4~6_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~1\ : std_logic;
SIGNAL \inst5|converter1|Add2~3\ : std_logic;
SIGNAL \inst5|converter1|Add2~4_combout\ : std_logic;
SIGNAL \inst5|converter1|number~19_combout\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|data[3]~7_combout\ : std_logic;
SIGNAL \inst5|converter1|number~20_combout\ : std_logic;
SIGNAL \inst5|converter1|number[6]~6_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~5\ : std_logic;
SIGNAL \inst5|converter1|Add2~6_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~7\ : std_logic;
SIGNAL \inst5|converter1|Add4~8_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~3\ : std_logic;
SIGNAL \inst5|converter1|Add0~4_combout\ : std_logic;
SIGNAL \inst5|converter1|number~7_combout\ : std_logic;
SIGNAL \inst|data[4]~1_combout\ : std_logic;
SIGNAL \inst|data[4]~2_combout\ : std_logic;
SIGNAL \inst|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|number~8_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~5\ : std_logic;
SIGNAL \inst5|converter1|Add0~6_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~9\ : std_logic;
SIGNAL \inst5|converter1|Add4~10_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~7\ : std_logic;
SIGNAL \inst5|converter1|Add2~8_combout\ : std_logic;
SIGNAL \inst5|converter1|number~23_combout\ : std_logic;
SIGNAL \inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|data[5]~9_combout\ : std_logic;
SIGNAL \inst5|converter1|number~24_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~7\ : std_logic;
SIGNAL \inst5|converter1|Add0~8_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~11\ : std_logic;
SIGNAL \inst5|converter1|Add4~12_combout\ : std_logic;
SIGNAL \inst5|converter1|number~13_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~9\ : std_logic;
SIGNAL \inst5|converter1|Add2~10_combout\ : std_logic;
SIGNAL \inst|data[6]~3_combout\ : std_logic;
SIGNAL \inst|data[6]~4_combout\ : std_logic;
SIGNAL \inst|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|number~14_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~9\ : std_logic;
SIGNAL \inst5|converter1|Add0~10_combout\ : std_logic;
SIGNAL \inst|data[7]~5_combout\ : std_logic;
SIGNAL \inst|data[7]~6_combout\ : std_logic;
SIGNAL \inst|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~11\ : std_logic;
SIGNAL \inst5|converter1|Add2~12_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~13\ : std_logic;
SIGNAL \inst5|converter1|Add4~14_combout\ : std_logic;
SIGNAL \inst5|converter1|number~15_combout\ : std_logic;
SIGNAL \inst5|converter1|number~16_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~15\ : std_logic;
SIGNAL \inst5|converter1|Add4~16_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~13\ : std_logic;
SIGNAL \inst5|converter1|Add2~14_combout\ : std_logic;
SIGNAL \inst5|converter1|number~17_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~11\ : std_logic;
SIGNAL \inst5|converter1|Add0~12_combout\ : std_logic;
SIGNAL \inst5|converter1|number~18_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~13\ : std_logic;
SIGNAL \inst5|converter1|Add0~14_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~17\ : std_logic;
SIGNAL \inst5|converter1|Add4~18_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~15\ : std_logic;
SIGNAL \inst5|converter1|Add2~16_combout\ : std_logic;
SIGNAL \inst5|converter1|number~11_combout\ : std_logic;
SIGNAL \inst5|converter1|number~12_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~17\ : std_logic;
SIGNAL \inst5|converter1|Add2~18_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~19\ : std_logic;
SIGNAL \inst5|converter1|Add4~20_combout\ : std_logic;
SIGNAL \inst5|converter1|number~9_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~15\ : std_logic;
SIGNAL \inst5|converter1|Add0~16_combout\ : std_logic;
SIGNAL \inst5|converter1|number~10_combout\ : std_logic;
SIGNAL \inst5|converter1|state~14_combout\ : std_logic;
SIGNAL \inst5|converter1|state~15_combout\ : std_logic;
SIGNAL \inst5|converter1|state~16_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s1~0_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s1~q\ : std_logic;
SIGNAL \inst5|converter1|state.s5~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s5~q\ : std_logic;
SIGNAL \inst5|converter1|state~17_combout\ : std_logic;
SIGNAL \inst5|converter1|state~18_combout\ : std_logic;
SIGNAL \inst5|converter1|state~19_combout\ : std_logic;
SIGNAL \inst5|converter1|state~24_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s3~q\ : std_logic;
SIGNAL \inst5|converter1|state~22_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s4~q\ : std_logic;
SIGNAL \inst5|converter1|digit_int_0[1]~1_combout\ : std_logic;
SIGNAL \inst5|converter1|state~20_combout\ : std_logic;
SIGNAL \inst5|converter1|state~21_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s0~q\ : std_logic;
SIGNAL \inst5|converter1|state~23_combout\ : std_logic;
SIGNAL \inst5|converter1|state.s2~q\ : std_logic;
SIGNAL \inst5|converter1|number[6]~1_combout\ : std_logic;
SIGNAL \inst5|converter1|Add2~2_combout\ : std_logic;
SIGNAL \inst5|converter1|Add0~0_combout\ : std_logic;
SIGNAL \inst5|converter1|Add4~4_combout\ : std_logic;
SIGNAL \inst5|converter1|number~3_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|data[2]~0_combout\ : std_logic;
SIGNAL \inst|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|heading_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|number~4_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_0~0_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_2~3_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_2[1]~2_combout\ : std_logic;
SIGNAL \inst5|converter1|Add3~2_combout\ : std_logic;
SIGNAL \inst5|converter1|Add3~1_combout\ : std_logic;
SIGNAL \inst5|converter1|Add3~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~73_combout\ : std_logic;
SIGNAL \inst5|lcd_data~72_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_1~1_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_1[2]~0_combout\ : std_logic;
SIGNAL \inst5|converter1|Add5~2_combout\ : std_logic;
SIGNAL \inst5|converter1|Add5~1_combout\ : std_logic;
SIGNAL \inst5|converter1|Add5~0_combout\ : std_logic;
SIGNAL \inst5|lcd_data~74_combout\ : std_logic;
SIGNAL \inst5|lcd_data~76_combout\ : std_logic;
SIGNAL \inst5|lcd_data~84_combout\ : std_logic;
SIGNAL \inst5|lcd_data~159_combout\ : std_logic;
SIGNAL \inst5|lcd_data~79_combout\ : std_logic;
SIGNAL \inst5|lcd_data~80_combout\ : std_logic;
SIGNAL \inst5|lcd_data~81_combout\ : std_logic;
SIGNAL \inst5|lcd_data~163_combout\ : std_logic;
SIGNAL \inst5|lcd_data~164_combout\ : std_logic;
SIGNAL \inst5|lcd_data~77_combout\ : std_logic;
SIGNAL \inst5|lcd_data~78_combout\ : std_logic;
SIGNAL \inst5|lcd_data~82_combout\ : std_logic;
SIGNAL \inst5|lcd_data~85_combout\ : std_logic;
SIGNAL \inst5|lcd_data~92_combout\ : std_logic;
SIGNAL \inst8|dataOut[3]~10_combout\ : std_logic;
SIGNAL \inst8|dataOut[3]~11_combout\ : std_logic;
SIGNAL \inst8|addressStorage~3_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_0~2_combout\ : std_logic;
SIGNAL \inst5|lcd_data~109_combout\ : std_logic;
SIGNAL \inst5|lcd_data~108_combout\ : std_logic;
SIGNAL \inst5|lcd_data~110_combout\ : std_logic;
SIGNAL \inst5|lcd_data~104_combout\ : std_logic;
SIGNAL \inst5|lcd_data~112_combout\ : std_logic;
SIGNAL \inst5|lcd_data~113_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_0~2_combout\ : std_logic;
SIGNAL \inst5|lcd_data~100_combout\ : std_logic;
SIGNAL \inst5|lcd_data~101_combout\ : std_logic;
SIGNAL \inst5|lcd_data~102_combout\ : std_logic;
SIGNAL \inst5|lcd_data~103_combout\ : std_logic;
SIGNAL \inst5|lcd_data~105_combout\ : std_logic;
SIGNAL \inst5|lcd_data~106_combout\ : std_logic;
SIGNAL \inst5|lcd_data~107_combout\ : std_logic;
SIGNAL \inst5|lcd_data~161_combout\ : std_logic;
SIGNAL \inst5|lcd_data~162_combout\ : std_logic;
SIGNAL \inst5|lcd_data~94_combout\ : std_logic;
SIGNAL \inst5|lcd_data~83_combout\ : std_logic;
SIGNAL \inst5|lcd_data~93_combout\ : std_logic;
SIGNAL \inst5|lcd_data~95_combout\ : std_logic;
SIGNAL \inst5|lcd_data~96_combout\ : std_logic;
SIGNAL \inst5|lcd_data~97_combout\ : std_logic;
SIGNAL \inst5|lcd_data~98_combout\ : std_logic;
SIGNAL \inst5|lcd_data~99_combout\ : std_logic;
SIGNAL \inst5|lcd_data~114_combout\ : std_logic;
SIGNAL \inst8|dataStorage[2]~2_combout\ : std_logic;
SIGNAL \inst8|dataOut[2]~12_combout\ : std_logic;
SIGNAL \inst8|dataOut[2]~13_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_out_1[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|converter1|digit_int_0~3_combout\ : std_logic;
SIGNAL \inst5|lcd_data~115_combout\ : std_logic;
SIGNAL \inst5|lcd_data~116_combout\ : std_logic;
SIGNAL \inst5|lcd_data~117_combout\ : std_logic;
SIGNAL \inst5|lcd_data~126_combout\ : std_logic;
SIGNAL \inst5|lcd_data~127_combout\ : std_logic;
SIGNAL \inst5|lcd_data~123_combout\ : std_logic;
SIGNAL \inst5|lcd_data~124_combout\ : std_logic;
SIGNAL \inst5|lcd_data~120_combout\ : std_logic;
SIGNAL \inst5|lcd_data~121_combout\ : std_logic;
SIGNAL \inst5|lcd_data~122_combout\ : std_logic;
SIGNAL \inst5|lcd_data~118_combout\ : std_logic;
SIGNAL \inst5|lcd_data~119_combout\ : std_logic;
SIGNAL \inst5|lcd_data~125_combout\ : std_logic;
SIGNAL \inst5|lcd_data~128_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_int_0~3_combout\ : std_logic;
SIGNAL \inst5|converter3|digit_out_0[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|lcd_data~130_combout\ : std_logic;
SIGNAL \inst5|lcd_data~129_combout\ : std_logic;
SIGNAL \inst5|lcd_data~131_combout\ : std_logic;
SIGNAL \inst5|lcd_data~132_combout\ : std_logic;
SIGNAL \inst5|lcd_data~133_combout\ : std_logic;
SIGNAL \inst5|lcd_data~134_combout\ : std_logic;
SIGNAL \inst8|dataStorage[1]~3_combout\ : std_logic;
SIGNAL \inst8|dataOut[1]~14_combout\ : std_logic;
SIGNAL \inst8|dataOut[1]~15_combout\ : std_logic;
SIGNAL \inst5|lcd_posX[0]~feeder_combout\ : std_logic;
SIGNAL \inst8|addressStorage[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|lcd_data~150_combout\ : std_logic;
SIGNAL \inst5|lcd_data~151_combout\ : std_logic;
SIGNAL \inst5|lcd_data~88_combout\ : std_logic;
SIGNAL \inst5|lcd_data~149_combout\ : std_logic;
SIGNAL \inst5|lcd_data~152_combout\ : std_logic;
SIGNAL \inst5|lcd_data~153_combout\ : std_logic;
SIGNAL \inst5|lcd_data~146_combout\ : std_logic;
SIGNAL \inst5|lcd_data~145_combout\ : std_logic;
SIGNAL \inst5|lcd_data~147_combout\ : std_logic;
SIGNAL \inst5|lcd_data~143_combout\ : std_logic;
SIGNAL \inst5|lcd_data~142_combout\ : std_logic;
SIGNAL \inst5|lcd_data~144_combout\ : std_logic;
SIGNAL \inst5|lcd_data~148_combout\ : std_logic;
SIGNAL \inst5|lcd_data~135_combout\ : std_logic;
SIGNAL \inst5|lcd_data~136_combout\ : std_logic;
SIGNAL \inst5|lcd_data~137_combout\ : std_logic;
SIGNAL \inst5|lcd_data~138_combout\ : std_logic;
SIGNAL \inst5|lcd_data~139_combout\ : std_logic;
SIGNAL \inst5|lcd_data~140_combout\ : std_logic;
SIGNAL \inst5|lcd_data~141_combout\ : std_logic;
SIGNAL \inst5|lcd_data~154_combout\ : std_logic;
SIGNAL \inst8|dataOut[0]~16_combout\ : std_logic;
SIGNAL \inst8|dataOut[0]~17_combout\ : std_logic;
SIGNAL \inst8|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|converter1|number\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst5|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|converter3|digit_int_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|charCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|heading_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst5|display_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|converter1|digit_int_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter1|digit_int_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter3|digit_int_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter3|number\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|time_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst8|addressStorage\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst8|dataStorage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|lcd_posY\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|lcd_posX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|lineCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|converter1|digit_out_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter1|digit_out_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter1|digit_out_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter3|digit_out_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter3|digit_out_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter3|digit_out_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter1|digit_int_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|converter3|digit_int_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|data_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|converter3|ALT_INV_state.s1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LCD_rs <= ww_LCD_rs;
ww_clk_50 <= clk_50;
ww_serial_in <= serial_in;
LCD_rw <= ww_LCD_rw;
LCD_e <= ww_LCD_e;
motorA1 <= ww_motorA1;
motorA2 <= ww_motorA2;
motorB1 <= ww_motorB1;
motorB2 <= ww_motorB2;
LCD_data <= ww_LCD_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|dataReady~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|dataReady~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst5|converter3|ALT_INV_state.s1~q\ <= NOT \inst5|converter3|state.s1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N23
\LCD_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|process_1~0_combout\,
	devoe => ww_devoe,
	o => \LCD_rs~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\LCD_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_rw~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\LCD_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|e~7_combout\,
	devoe => ww_devoe,
	o => \LCD_e~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\motorA1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motorA1~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\motorA2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motorA2~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\motorB1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motorB1~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\motorB2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motorB2~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\LCD_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|state.sendingAddress~q\,
	devoe => ww_devoe,
	o => \LCD_data[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\LCD_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[6]~3_combout\,
	devoe => ww_devoe,
	o => \LCD_data[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\LCD_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[5]~6_combout\,
	devoe => ww_devoe,
	o => \LCD_data[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\LCD_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \LCD_data[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\LCD_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[3]~11_combout\,
	devoe => ww_devoe,
	o => \LCD_data[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\LCD_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[2]~13_combout\,
	devoe => ww_devoe,
	o => \LCD_data[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\LCD_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[1]~15_combout\,
	devoe => ww_devoe,
	o => \LCD_data[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\LCD_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|dataOut[0]~17_combout\,
	devoe => ww_devoe,
	o => \LCD_data[0]~output_o\);

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

-- Location: LCCOMB_X45_Y30_N2
\inst5|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[0]~31_combout\ = \inst5|counter\(0) $ (VCC)
-- \inst5|counter[0]~32\ = CARRY(\inst5|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(0),
	datad => VCC,
	combout => \inst5|counter[0]~31_combout\,
	cout => \inst5|counter[0]~32\);

-- Location: LCCOMB_X47_Y28_N6
\inst5|charCount[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCount[0]~5_combout\ = \inst5|charCount\(0) $ (VCC)
-- \inst5|charCount[0]~6\ = CARRY(\inst5|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datad => VCC,
	combout => \inst5|charCount[0]~5_combout\,
	cout => \inst5|charCount[0]~6\);

-- Location: LCCOMB_X47_Y29_N6
\inst5|lineCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lineCount~0_combout\ = (\inst5|state~12_combout\) # ((!\inst5|Equal0~0_combout\ & \inst5|state~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|state~12_combout\,
	datad => \inst5|state~7_combout\,
	combout => \inst5|lineCount~0_combout\);

-- Location: LCCOMB_X47_Y29_N18
\inst5|lineCount[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lineCount[0]~1_combout\ = (\inst5|lineCount\(0) & ((!\inst5|lineCount~0_combout\))) # (!\inst5|lineCount\(0) & (!\inst5|state.update~q\ & \inst5|lineCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.update~q\,
	datac => \inst5|lineCount\(0),
	datad => \inst5|lineCount~0_combout\,
	combout => \inst5|lineCount[0]~1_combout\);

-- Location: FF_X47_Y29_N19
\inst5|lineCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lineCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lineCount\(0));

-- Location: LCCOMB_X47_Y29_N20
\inst5|lineCount[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lineCount[1]~2_combout\ = (\inst5|lineCount~0_combout\ & (!\inst5|state.update~q\ & (\inst5|lineCount\(0) $ (\inst5|lineCount\(1))))) # (!\inst5|lineCount~0_combout\ & (((\inst5|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lineCount\(0),
	datab => \inst5|state.update~q\,
	datac => \inst5|lineCount\(1),
	datad => \inst5|lineCount~0_combout\,
	combout => \inst5|lineCount[1]~2_combout\);

-- Location: FF_X47_Y29_N21
\inst5|lineCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lineCount[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lineCount\(1));

-- Location: LCCOMB_X47_Y29_N10
\inst5|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~7_combout\ = (!\inst5|state.update~q\ & (((\inst5|Equal0~0_combout\) # (!\inst5|lineCount\(0))) # (!\inst5|lineCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.update~q\,
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|state~7_combout\);

-- Location: LCCOMB_X46_Y29_N28
\inst5|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~13_combout\ = (!\inst5|state~7_combout\ & !\inst5|state~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state~7_combout\,
	datad => \inst5|state~12_combout\,
	combout => \inst5|state~13_combout\);

-- Location: FF_X46_Y29_N29
\inst5|state.update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.update~q\);

-- Location: LCCOMB_X47_Y29_N28
\inst5|counter[8]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~96_combout\ = (\inst5|state.update~q\) # (!\inst5|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.update~q\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|counter[8]~96_combout\);

-- Location: FF_X47_Y28_N7
\inst5|charCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCount[0]~5_combout\,
	sclr => \inst5|counter[8]~96_combout\,
	ena => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCount\(0));

-- Location: LCCOMB_X47_Y28_N8
\inst5|charCount[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCount[1]~7_combout\ = (\inst5|charCount\(1) & (!\inst5|charCount[0]~6\)) # (!\inst5|charCount\(1) & ((\inst5|charCount[0]~6\) # (GND)))
-- \inst5|charCount[1]~8\ = CARRY((!\inst5|charCount[0]~6\) # (!\inst5|charCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCount\(1),
	datad => VCC,
	cin => \inst5|charCount[0]~6\,
	combout => \inst5|charCount[1]~7_combout\,
	cout => \inst5|charCount[1]~8\);

-- Location: FF_X47_Y28_N9
\inst5|charCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCount[1]~7_combout\,
	sclr => \inst5|counter[8]~96_combout\,
	ena => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCount\(1));

-- Location: LCCOMB_X47_Y28_N10
\inst5|charCount[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCount[2]~9_combout\ = (\inst5|charCount\(2) & (\inst5|charCount[1]~8\ $ (GND))) # (!\inst5|charCount\(2) & (!\inst5|charCount[1]~8\ & VCC))
-- \inst5|charCount[2]~10\ = CARRY((\inst5|charCount\(2) & !\inst5|charCount[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datad => VCC,
	cin => \inst5|charCount[1]~8\,
	combout => \inst5|charCount[2]~9_combout\,
	cout => \inst5|charCount[2]~10\);

-- Location: FF_X47_Y28_N11
\inst5|charCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCount[2]~9_combout\,
	sclr => \inst5|counter[8]~96_combout\,
	ena => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCount\(2));

-- Location: LCCOMB_X47_Y28_N12
\inst5|charCount[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCount[3]~11_combout\ = (\inst5|charCount\(3) & (!\inst5|charCount[2]~10\)) # (!\inst5|charCount\(3) & ((\inst5|charCount[2]~10\) # (GND)))
-- \inst5|charCount[3]~12\ = CARRY((!\inst5|charCount[2]~10\) # (!\inst5|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datad => VCC,
	cin => \inst5|charCount[2]~10\,
	combout => \inst5|charCount[3]~11_combout\,
	cout => \inst5|charCount[3]~12\);

-- Location: FF_X47_Y28_N13
\inst5|charCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCount[3]~11_combout\,
	sclr => \inst5|counter[8]~96_combout\,
	ena => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCount\(3));

-- Location: LCCOMB_X47_Y28_N14
\inst5|charCount[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCount[4]~13_combout\ = \inst5|charCount\(4) $ (!\inst5|charCount[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCount\(4),
	cin => \inst5|charCount[3]~12\,
	combout => \inst5|charCount[4]~13_combout\);

-- Location: FF_X47_Y28_N15
\inst5|charCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCount[4]~13_combout\,
	sclr => \inst5|counter[8]~96_combout\,
	ena => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCount\(4));

-- Location: LCCOMB_X47_Y28_N2
\inst5|lcd_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~111_combout\ = (\inst5|charCount\(2) & !\inst5|charCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datad => \inst5|charCount\(3),
	combout => \inst5|lcd_data~111_combout\);

-- Location: LCCOMB_X47_Y28_N0
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|charCount\(0)) # (((\inst5|charCount\(1)) # (!\inst5|lcd_data~111_combout\)) # (!\inst5|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(4),
	datac => \inst5|charCount\(1),
	datad => \inst5|lcd_data~111_combout\,
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y30_N6
\inst5|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[2]~35_combout\ = (\inst5|counter\(2) & (\inst5|counter[1]~34\ $ (GND))) # (!\inst5|counter\(2) & (!\inst5|counter[1]~34\ & VCC))
-- \inst5|counter[2]~36\ = CARRY((\inst5|counter\(2) & !\inst5|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datad => VCC,
	cin => \inst5|counter[1]~34\,
	combout => \inst5|counter[2]~35_combout\,
	cout => \inst5|counter[2]~36\);

-- Location: LCCOMB_X45_Y30_N8
\inst5|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[3]~37_combout\ = (\inst5|counter\(3) & (!\inst5|counter[2]~36\)) # (!\inst5|counter\(3) & ((\inst5|counter[2]~36\) # (GND)))
-- \inst5|counter[3]~38\ = CARRY((!\inst5|counter[2]~36\) # (!\inst5|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(3),
	datad => VCC,
	cin => \inst5|counter[2]~36\,
	combout => \inst5|counter[3]~37_combout\,
	cout => \inst5|counter[3]~38\);

-- Location: FF_X45_Y30_N9
\inst5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[3]~37_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(3));

-- Location: LCCOMB_X46_Y29_N8
\inst5|counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~41_combout\ = ((!\inst5|counter\(2) & ((!\inst5|counter\(1)) # (!\inst5|counter\(0))))) # (!\inst5|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(0),
	datad => \inst5|counter\(1),
	combout => \inst5|counter[8]~41_combout\);

-- Location: LCCOMB_X45_Y30_N10
\inst5|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[4]~39_combout\ = (\inst5|counter\(4) & (\inst5|counter[3]~38\ $ (GND))) # (!\inst5|counter\(4) & (!\inst5|counter[3]~38\ & VCC))
-- \inst5|counter[4]~40\ = CARRY((\inst5|counter\(4) & !\inst5|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(4),
	datad => VCC,
	cin => \inst5|counter[3]~38\,
	combout => \inst5|counter[4]~39_combout\,
	cout => \inst5|counter[4]~40\);

-- Location: FF_X45_Y30_N11
\inst5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[4]~39_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(4));

-- Location: LCCOMB_X45_Y30_N12
\inst5|counter[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[5]~44_combout\ = (\inst5|counter\(5) & (!\inst5|counter[4]~40\)) # (!\inst5|counter\(5) & ((\inst5|counter[4]~40\) # (GND)))
-- \inst5|counter[5]~45\ = CARRY((!\inst5|counter[4]~40\) # (!\inst5|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(5),
	datad => VCC,
	cin => \inst5|counter[4]~40\,
	combout => \inst5|counter[5]~44_combout\,
	cout => \inst5|counter[5]~45\);

-- Location: FF_X45_Y30_N13
\inst5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[5]~44_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(5));

-- Location: LCCOMB_X45_Y30_N14
\inst5|counter[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[6]~46_combout\ = (\inst5|counter\(6) & (\inst5|counter[5]~45\ $ (GND))) # (!\inst5|counter\(6) & (!\inst5|counter[5]~45\ & VCC))
-- \inst5|counter[6]~47\ = CARRY((\inst5|counter\(6) & !\inst5|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(6),
	datad => VCC,
	cin => \inst5|counter[5]~45\,
	combout => \inst5|counter[6]~46_combout\,
	cout => \inst5|counter[6]~47\);

-- Location: FF_X45_Y30_N15
\inst5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[6]~46_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(6));

-- Location: LCCOMB_X45_Y30_N16
\inst5|counter[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[7]~48_combout\ = (\inst5|counter\(7) & (!\inst5|counter[6]~47\)) # (!\inst5|counter\(7) & ((\inst5|counter[6]~47\) # (GND)))
-- \inst5|counter[7]~49\ = CARRY((!\inst5|counter[6]~47\) # (!\inst5|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(7),
	datad => VCC,
	cin => \inst5|counter[6]~47\,
	combout => \inst5|counter[7]~48_combout\,
	cout => \inst5|counter[7]~49\);

-- Location: FF_X45_Y30_N17
\inst5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[7]~48_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(7));

-- Location: LCCOMB_X45_Y30_N18
\inst5|counter[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~50_combout\ = (\inst5|counter\(8) & (\inst5|counter[7]~49\ $ (GND))) # (!\inst5|counter\(8) & (!\inst5|counter[7]~49\ & VCC))
-- \inst5|counter[8]~51\ = CARRY((\inst5|counter\(8) & !\inst5|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(8),
	datad => VCC,
	cin => \inst5|counter[7]~49\,
	combout => \inst5|counter[8]~50_combout\,
	cout => \inst5|counter[8]~51\);

-- Location: FF_X45_Y30_N19
\inst5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[8]~50_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(8));

-- Location: LCCOMB_X45_Y30_N20
\inst5|counter[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[9]~52_combout\ = (\inst5|counter\(9) & (!\inst5|counter[8]~51\)) # (!\inst5|counter\(9) & ((\inst5|counter[8]~51\) # (GND)))
-- \inst5|counter[9]~53\ = CARRY((!\inst5|counter[8]~51\) # (!\inst5|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(9),
	datad => VCC,
	cin => \inst5|counter[8]~51\,
	combout => \inst5|counter[9]~52_combout\,
	cout => \inst5|counter[9]~53\);

-- Location: FF_X45_Y30_N21
\inst5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[9]~52_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(9));

-- Location: LCCOMB_X45_Y30_N22
\inst5|counter[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[10]~54_combout\ = (\inst5|counter\(10) & (\inst5|counter[9]~53\ $ (GND))) # (!\inst5|counter\(10) & (!\inst5|counter[9]~53\ & VCC))
-- \inst5|counter[10]~55\ = CARRY((\inst5|counter\(10) & !\inst5|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(10),
	datad => VCC,
	cin => \inst5|counter[9]~53\,
	combout => \inst5|counter[10]~54_combout\,
	cout => \inst5|counter[10]~55\);

-- Location: FF_X45_Y30_N23
\inst5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[10]~54_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(10));

-- Location: LCCOMB_X45_Y30_N24
\inst5|counter[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[11]~56_combout\ = (\inst5|counter\(11) & (!\inst5|counter[10]~55\)) # (!\inst5|counter\(11) & ((\inst5|counter[10]~55\) # (GND)))
-- \inst5|counter[11]~57\ = CARRY((!\inst5|counter[10]~55\) # (!\inst5|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(11),
	datad => VCC,
	cin => \inst5|counter[10]~55\,
	combout => \inst5|counter[11]~56_combout\,
	cout => \inst5|counter[11]~57\);

-- Location: FF_X45_Y30_N25
\inst5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[11]~56_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(11));

-- Location: LCCOMB_X45_Y30_N26
\inst5|counter[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[12]~58_combout\ = (\inst5|counter\(12) & (\inst5|counter[11]~57\ $ (GND))) # (!\inst5|counter\(12) & (!\inst5|counter[11]~57\ & VCC))
-- \inst5|counter[12]~59\ = CARRY((\inst5|counter\(12) & !\inst5|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(12),
	datad => VCC,
	cin => \inst5|counter[11]~57\,
	combout => \inst5|counter[12]~58_combout\,
	cout => \inst5|counter[12]~59\);

-- Location: FF_X45_Y30_N27
\inst5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[12]~58_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(12));

-- Location: LCCOMB_X45_Y30_N28
\inst5|counter[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[13]~60_combout\ = (\inst5|counter\(13) & (!\inst5|counter[12]~59\)) # (!\inst5|counter\(13) & ((\inst5|counter[12]~59\) # (GND)))
-- \inst5|counter[13]~61\ = CARRY((!\inst5|counter[12]~59\) # (!\inst5|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(13),
	datad => VCC,
	cin => \inst5|counter[12]~59\,
	combout => \inst5|counter[13]~60_combout\,
	cout => \inst5|counter[13]~61\);

-- Location: FF_X45_Y30_N29
\inst5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[13]~60_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(13));

-- Location: LCCOMB_X45_Y30_N30
\inst5|counter[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[14]~62_combout\ = (\inst5|counter\(14) & (\inst5|counter[13]~61\ $ (GND))) # (!\inst5|counter\(14) & (!\inst5|counter[13]~61\ & VCC))
-- \inst5|counter[14]~63\ = CARRY((\inst5|counter\(14) & !\inst5|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datad => VCC,
	cin => \inst5|counter[13]~61\,
	combout => \inst5|counter[14]~62_combout\,
	cout => \inst5|counter[14]~63\);

-- Location: FF_X45_Y30_N31
\inst5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[14]~62_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(14));

-- Location: LCCOMB_X45_Y29_N0
\inst5|counter[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[15]~64_combout\ = (\inst5|counter\(15) & (!\inst5|counter[14]~63\)) # (!\inst5|counter\(15) & ((\inst5|counter[14]~63\) # (GND)))
-- \inst5|counter[15]~65\ = CARRY((!\inst5|counter[14]~63\) # (!\inst5|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(15),
	datad => VCC,
	cin => \inst5|counter[14]~63\,
	combout => \inst5|counter[15]~64_combout\,
	cout => \inst5|counter[15]~65\);

-- Location: FF_X45_Y29_N1
\inst5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[15]~64_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(15));

-- Location: LCCOMB_X45_Y29_N2
\inst5|counter[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[16]~66_combout\ = (\inst5|counter\(16) & (\inst5|counter[15]~65\ $ (GND))) # (!\inst5|counter\(16) & (!\inst5|counter[15]~65\ & VCC))
-- \inst5|counter[16]~67\ = CARRY((\inst5|counter\(16) & !\inst5|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(16),
	datad => VCC,
	cin => \inst5|counter[15]~65\,
	combout => \inst5|counter[16]~66_combout\,
	cout => \inst5|counter[16]~67\);

-- Location: FF_X45_Y29_N3
\inst5|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[16]~66_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(16));

-- Location: LCCOMB_X45_Y29_N4
\inst5|counter[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[17]~68_combout\ = (\inst5|counter\(17) & (!\inst5|counter[16]~67\)) # (!\inst5|counter\(17) & ((\inst5|counter[16]~67\) # (GND)))
-- \inst5|counter[17]~69\ = CARRY((!\inst5|counter[16]~67\) # (!\inst5|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(17),
	datad => VCC,
	cin => \inst5|counter[16]~67\,
	combout => \inst5|counter[17]~68_combout\,
	cout => \inst5|counter[17]~69\);

-- Location: FF_X45_Y29_N5
\inst5|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[17]~68_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(17));

-- Location: LCCOMB_X45_Y29_N6
\inst5|counter[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[18]~70_combout\ = (\inst5|counter\(18) & (\inst5|counter[17]~69\ $ (GND))) # (!\inst5|counter\(18) & (!\inst5|counter[17]~69\ & VCC))
-- \inst5|counter[18]~71\ = CARRY((\inst5|counter\(18) & !\inst5|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(18),
	datad => VCC,
	cin => \inst5|counter[17]~69\,
	combout => \inst5|counter[18]~70_combout\,
	cout => \inst5|counter[18]~71\);

-- Location: FF_X45_Y29_N7
\inst5|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[18]~70_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(18));

-- Location: LCCOMB_X45_Y29_N8
\inst5|counter[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[19]~72_combout\ = (\inst5|counter\(19) & (!\inst5|counter[18]~71\)) # (!\inst5|counter\(19) & ((\inst5|counter[18]~71\) # (GND)))
-- \inst5|counter[19]~73\ = CARRY((!\inst5|counter[18]~71\) # (!\inst5|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(19),
	datad => VCC,
	cin => \inst5|counter[18]~71\,
	combout => \inst5|counter[19]~72_combout\,
	cout => \inst5|counter[19]~73\);

-- Location: FF_X45_Y29_N9
\inst5|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[19]~72_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(19));

-- Location: LCCOMB_X45_Y29_N10
\inst5|counter[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[20]~74_combout\ = (\inst5|counter\(20) & (\inst5|counter[19]~73\ $ (GND))) # (!\inst5|counter\(20) & (!\inst5|counter[19]~73\ & VCC))
-- \inst5|counter[20]~75\ = CARRY((\inst5|counter\(20) & !\inst5|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	datad => VCC,
	cin => \inst5|counter[19]~73\,
	combout => \inst5|counter[20]~74_combout\,
	cout => \inst5|counter[20]~75\);

-- Location: FF_X45_Y29_N11
\inst5|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[20]~74_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(20));

-- Location: LCCOMB_X45_Y29_N12
\inst5|counter[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[21]~76_combout\ = (\inst5|counter\(21) & (!\inst5|counter[20]~75\)) # (!\inst5|counter\(21) & ((\inst5|counter[20]~75\) # (GND)))
-- \inst5|counter[21]~77\ = CARRY((!\inst5|counter[20]~75\) # (!\inst5|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(21),
	datad => VCC,
	cin => \inst5|counter[20]~75\,
	combout => \inst5|counter[21]~76_combout\,
	cout => \inst5|counter[21]~77\);

-- Location: FF_X45_Y29_N13
\inst5|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[21]~76_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(21));

-- Location: LCCOMB_X45_Y29_N14
\inst5|counter[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[22]~78_combout\ = (\inst5|counter\(22) & (\inst5|counter[21]~77\ $ (GND))) # (!\inst5|counter\(22) & (!\inst5|counter[21]~77\ & VCC))
-- \inst5|counter[22]~79\ = CARRY((\inst5|counter\(22) & !\inst5|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(22),
	datad => VCC,
	cin => \inst5|counter[21]~77\,
	combout => \inst5|counter[22]~78_combout\,
	cout => \inst5|counter[22]~79\);

-- Location: FF_X45_Y29_N15
\inst5|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[22]~78_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(22));

-- Location: LCCOMB_X46_Y29_N18
\inst5|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~7_combout\ = (!\inst5|counter\(18) & (!\inst5|counter\(22) & (!\inst5|counter\(19) & !\inst5|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(18),
	datab => \inst5|counter\(22),
	datac => \inst5|counter\(19),
	datad => \inst5|counter\(14),
	combout => \inst5|process_1~7_combout\);

-- Location: LCCOMB_X46_Y30_N12
\inst5|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~6_combout\ = (!\inst5|counter\(6) & (!\inst5|counter\(9) & (!\inst5|counter\(11) & !\inst5|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(6),
	datab => \inst5|counter\(9),
	datac => \inst5|counter\(11),
	datad => \inst5|counter\(8),
	combout => \inst5|process_1~6_combout\);

-- Location: LCCOMB_X45_Y29_N16
\inst5|counter[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[23]~80_combout\ = (\inst5|counter\(23) & (!\inst5|counter[22]~79\)) # (!\inst5|counter\(23) & ((\inst5|counter[22]~79\) # (GND)))
-- \inst5|counter[23]~81\ = CARRY((!\inst5|counter[22]~79\) # (!\inst5|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(23),
	datad => VCC,
	cin => \inst5|counter[22]~79\,
	combout => \inst5|counter[23]~80_combout\,
	cout => \inst5|counter[23]~81\);

-- Location: FF_X45_Y29_N17
\inst5|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[23]~80_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(23));

-- Location: LCCOMB_X45_Y29_N18
\inst5|counter[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[24]~82_combout\ = (\inst5|counter\(24) & (\inst5|counter[23]~81\ $ (GND))) # (!\inst5|counter\(24) & (!\inst5|counter[23]~81\ & VCC))
-- \inst5|counter[24]~83\ = CARRY((\inst5|counter\(24) & !\inst5|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(24),
	datad => VCC,
	cin => \inst5|counter[23]~81\,
	combout => \inst5|counter[24]~82_combout\,
	cout => \inst5|counter[24]~83\);

-- Location: FF_X45_Y29_N19
\inst5|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[24]~82_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(24));

-- Location: LCCOMB_X45_Y29_N20
\inst5|counter[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[25]~84_combout\ = (\inst5|counter\(25) & (!\inst5|counter[24]~83\)) # (!\inst5|counter\(25) & ((\inst5|counter[24]~83\) # (GND)))
-- \inst5|counter[25]~85\ = CARRY((!\inst5|counter[24]~83\) # (!\inst5|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(25),
	datad => VCC,
	cin => \inst5|counter[24]~83\,
	combout => \inst5|counter[25]~84_combout\,
	cout => \inst5|counter[25]~85\);

-- Location: FF_X45_Y29_N21
\inst5|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[25]~84_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(25));

-- Location: LCCOMB_X45_Y29_N22
\inst5|counter[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[26]~86_combout\ = (\inst5|counter\(26) & (\inst5|counter[25]~85\ $ (GND))) # (!\inst5|counter\(26) & (!\inst5|counter[25]~85\ & VCC))
-- \inst5|counter[26]~87\ = CARRY((\inst5|counter\(26) & !\inst5|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(26),
	datad => VCC,
	cin => \inst5|counter[25]~85\,
	combout => \inst5|counter[26]~86_combout\,
	cout => \inst5|counter[26]~87\);

-- Location: FF_X45_Y29_N23
\inst5|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[26]~86_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(26));

-- Location: LCCOMB_X45_Y29_N24
\inst5|counter[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[27]~88_combout\ = (\inst5|counter\(27) & (!\inst5|counter[26]~87\)) # (!\inst5|counter\(27) & ((\inst5|counter[26]~87\) # (GND)))
-- \inst5|counter[27]~89\ = CARRY((!\inst5|counter[26]~87\) # (!\inst5|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(27),
	datad => VCC,
	cin => \inst5|counter[26]~87\,
	combout => \inst5|counter[27]~88_combout\,
	cout => \inst5|counter[27]~89\);

-- Location: FF_X45_Y29_N25
\inst5|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[27]~88_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(27));

-- Location: LCCOMB_X45_Y29_N26
\inst5|counter[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[28]~90_combout\ = (\inst5|counter\(28) & (\inst5|counter[27]~89\ $ (GND))) # (!\inst5|counter\(28) & (!\inst5|counter[27]~89\ & VCC))
-- \inst5|counter[28]~91\ = CARRY((\inst5|counter\(28) & !\inst5|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(28),
	datad => VCC,
	cin => \inst5|counter[27]~89\,
	combout => \inst5|counter[28]~90_combout\,
	cout => \inst5|counter[28]~91\);

-- Location: FF_X45_Y29_N27
\inst5|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[28]~90_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(28));

-- Location: LCCOMB_X45_Y29_N28
\inst5|counter[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[29]~92_combout\ = (\inst5|counter\(29) & (!\inst5|counter[28]~91\)) # (!\inst5|counter\(29) & ((\inst5|counter[28]~91\) # (GND)))
-- \inst5|counter[29]~93\ = CARRY((!\inst5|counter[28]~91\) # (!\inst5|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(29),
	datad => VCC,
	cin => \inst5|counter[28]~91\,
	combout => \inst5|counter[29]~92_combout\,
	cout => \inst5|counter[29]~93\);

-- Location: FF_X45_Y29_N29
\inst5|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[29]~92_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(29));

-- Location: LCCOMB_X45_Y29_N30
\inst5|counter[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[30]~94_combout\ = \inst5|counter\(30) $ (!\inst5|counter[29]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(30),
	cin => \inst5|counter[29]~93\,
	combout => \inst5|counter[30]~94_combout\);

-- Location: FF_X45_Y29_N31
\inst5|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[30]~94_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(30));

-- Location: LCCOMB_X46_Y29_N10
\inst5|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~2_combout\ = (!\inst5|counter\(20) & (!\inst5|counter\(17) & (!\inst5|counter\(23) & !\inst5|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	datab => \inst5|counter\(17),
	datac => \inst5|counter\(23),
	datad => \inst5|counter\(21),
	combout => \inst5|process_1~2_combout\);

-- Location: LCCOMB_X46_Y29_N4
\inst5|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~3_combout\ = (!\inst5|counter\(25) & (!\inst5|counter\(26) & (!\inst5|counter\(24) & !\inst5|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(25),
	datab => \inst5|counter\(26),
	datac => \inst5|counter\(24),
	datad => \inst5|counter\(27),
	combout => \inst5|process_1~3_combout\);

-- Location: LCCOMB_X45_Y30_N0
\inst5|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~0_combout\ = (!\inst5|counter\(5) & (!\inst5|counter\(7) & (!\inst5|counter\(10) & !\inst5|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(5),
	datab => \inst5|counter\(7),
	datac => \inst5|counter\(10),
	datad => \inst5|counter\(4),
	combout => \inst5|process_1~0_combout\);

-- Location: LCCOMB_X46_Y29_N12
\inst5|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~1_combout\ = (!\inst5|counter\(15) & (!\inst5|counter\(16) & (!\inst5|counter\(13) & !\inst5|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datab => \inst5|counter\(16),
	datac => \inst5|counter\(13),
	datad => \inst5|counter\(12),
	combout => \inst5|process_1~1_combout\);

-- Location: LCCOMB_X46_Y29_N2
\inst5|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~4_combout\ = (\inst5|process_1~2_combout\ & (\inst5|process_1~3_combout\ & (\inst5|process_1~0_combout\ & \inst5|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_1~2_combout\,
	datab => \inst5|process_1~3_combout\,
	datac => \inst5|process_1~0_combout\,
	datad => \inst5|process_1~1_combout\,
	combout => \inst5|process_1~4_combout\);

-- Location: LCCOMB_X46_Y29_N20
\inst5|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~5_combout\ = (!\inst5|counter\(29) & (!\inst5|counter\(30) & (!\inst5|counter\(28) & \inst5|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(29),
	datab => \inst5|counter\(30),
	datac => \inst5|counter\(28),
	datad => \inst5|process_1~4_combout\,
	combout => \inst5|process_1~5_combout\);

-- Location: LCCOMB_X46_Y29_N24
\inst5|process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~8_combout\ = (\inst5|process_1~7_combout\ & (\inst5|process_1~6_combout\ & \inst5|process_1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|process_1~7_combout\,
	datac => \inst5|process_1~6_combout\,
	datad => \inst5|process_1~5_combout\,
	combout => \inst5|process_1~8_combout\);

-- Location: LCCOMB_X46_Y29_N26
\inst5|counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~42_combout\ = ((\inst5|counter[8]~41_combout\ & \inst5|process_1~8_combout\)) # (!\inst8|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.ready~q\,
	datab => \inst5|counter[8]~41_combout\,
	datad => \inst5|process_1~8_combout\,
	combout => \inst5|counter[8]~42_combout\);

-- Location: LCCOMB_X46_Y29_N30
\inst5|counter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~43_combout\ = (!\inst5|state~13_combout\ & (((\inst5|state.update~q\) # (!\inst5|counter[8]~42_combout\)) # (!\inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|state.update~q\,
	datac => \inst5|counter[8]~42_combout\,
	datad => \inst5|state~13_combout\,
	combout => \inst5|counter[8]~43_combout\);

-- Location: FF_X45_Y30_N3
\inst5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[0]~31_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(0));

-- Location: LCCOMB_X45_Y30_N4
\inst5|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[1]~33_combout\ = (\inst5|counter\(1) & (!\inst5|counter[0]~32\)) # (!\inst5|counter\(1) & ((\inst5|counter[0]~32\) # (GND)))
-- \inst5|counter[1]~34\ = CARRY((!\inst5|counter[0]~32\) # (!\inst5|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(1),
	datad => VCC,
	cin => \inst5|counter[0]~32\,
	combout => \inst5|counter[1]~33_combout\,
	cout => \inst5|counter[1]~34\);

-- Location: FF_X45_Y30_N5
\inst5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[1]~33_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(1));

-- Location: FF_X45_Y30_N7
\inst5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[2]~35_combout\,
	sclr => \inst5|counter[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(2));

-- Location: LCCOMB_X46_Y29_N14
\inst5|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~8_combout\ = (!\inst5|counter\(2) & (\inst5|state.update~q\ & (\inst5|state.pause~q\ & !\inst5|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datab => \inst5|state.update~q\,
	datac => \inst5|state.pause~q\,
	datad => \inst5|counter\(1),
	combout => \inst5|state~8_combout\);

-- Location: LCCOMB_X46_Y30_N30
\inst5|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~9_combout\ = (!\inst5|counter\(0) & (\inst5|counter\(8) & (!\inst5|counter\(3) & \inst5|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(0),
	datab => \inst5|counter\(8),
	datac => \inst5|counter\(3),
	datad => \inst5|counter\(6),
	combout => \inst5|state~9_combout\);

-- Location: LCCOMB_X46_Y29_N16
\inst5|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~10_combout\ = (\inst5|counter\(14) & (\inst5|counter\(9) & (\inst5|counter\(18) & \inst5|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datab => \inst5|counter\(9),
	datac => \inst5|counter\(18),
	datad => \inst5|counter\(11),
	combout => \inst5|state~10_combout\);

-- Location: LCCOMB_X46_Y29_N22
\inst5|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~11_combout\ = (\inst5|counter\(19) & (\inst5|counter\(22) & \inst5|state~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(19),
	datab => \inst5|counter\(22),
	datad => \inst5|state~10_combout\,
	combout => \inst5|state~11_combout\);

-- Location: LCCOMB_X46_Y29_N0
\inst5|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~12_combout\ = (\inst5|state~8_combout\ & (\inst5|state~9_combout\ & (\inst5|state~11_combout\ & \inst5|process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~8_combout\,
	datab => \inst5|state~9_combout\,
	datac => \inst5|state~11_combout\,
	datad => \inst5|process_1~5_combout\,
	combout => \inst5|state~12_combout\);

-- Location: LCCOMB_X47_Y29_N16
\inst5|state.pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state.pause~0_combout\ = (\inst5|lineCount\(1) & (!\inst5|Equal0~0_combout\ & (\inst5|lineCount\(0) & !\inst5|state.update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lineCount\(1),
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|lineCount\(0),
	datad => \inst5|state.update~q\,
	combout => \inst5|state.pause~0_combout\);

-- Location: LCCOMB_X47_Y29_N12
\inst5|state.pause~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state.pause~1_combout\ = (\inst5|state.pause~0_combout\) # ((!\inst5|state~12_combout\ & \inst5|state.pause~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~12_combout\,
	datac => \inst5|state.pause~q\,
	datad => \inst5|state.pause~0_combout\,
	combout => \inst5|state.pause~1_combout\);

-- Location: FF_X47_Y29_N13
\inst5|state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state.pause~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.pause~q\);

-- Location: LCCOMB_X46_Y29_N6
\inst5|process_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~9_combout\ = (\inst5|counter\(2) & (!\inst5|counter\(3))) # (!\inst5|counter\(2) & ((\inst5|counter\(3) & ((!\inst5|counter\(1)))) # (!\inst5|counter\(3) & (\inst5|counter\(0) & \inst5|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(0),
	datad => \inst5|counter\(1),
	combout => \inst5|process_1~9_combout\);

-- Location: LCCOMB_X47_Y29_N24
\inst5|process_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~10_combout\ = (\inst5|state.pause~q\) # ((!\inst5|process_1~8_combout\) # (!\inst5|process_1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.pause~q\,
	datac => \inst5|process_1~9_combout\,
	datad => \inst5|process_1~8_combout\,
	combout => \inst5|process_1~10_combout\);

-- Location: FF_X47_Y29_N25
\inst5|lcd_write_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_write_n~q\);

-- Location: LCCOMB_X48_Y32_N30
\inst8|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~19_combout\ = (!\inst5|lcd_write_n~q\ & \inst8|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|lcd_write_n~q\,
	datad => \inst8|state.ready~q\,
	combout => \inst8|process_0~19_combout\);

-- Location: LCCOMB_X47_Y33_N2
\inst8|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[0]~31_combout\ = \inst8|counter\(0) $ (VCC)
-- \inst8|counter[0]~32\ = CARRY(\inst8|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datad => VCC,
	combout => \inst8|counter[0]~31_combout\,
	cout => \inst8|counter[0]~32\);

-- Location: FF_X47_Y33_N3
\inst8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[0]~31_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(0));

-- Location: LCCOMB_X47_Y33_N4
\inst8|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[1]~33_combout\ = (\inst8|counter\(1) & (!\inst8|counter[0]~32\)) # (!\inst8|counter\(1) & ((\inst8|counter[0]~32\) # (GND)))
-- \inst8|counter[1]~34\ = CARRY((!\inst8|counter[0]~32\) # (!\inst8|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(1),
	datad => VCC,
	cin => \inst8|counter[0]~32\,
	combout => \inst8|counter[1]~33_combout\,
	cout => \inst8|counter[1]~34\);

-- Location: FF_X47_Y33_N5
\inst8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[1]~33_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(1));

-- Location: LCCOMB_X47_Y33_N6
\inst8|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[2]~35_combout\ = (\inst8|counter\(2) & (\inst8|counter[1]~34\ $ (GND))) # (!\inst8|counter\(2) & (!\inst8|counter[1]~34\ & VCC))
-- \inst8|counter[2]~36\ = CARRY((\inst8|counter\(2) & !\inst8|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(2),
	datad => VCC,
	cin => \inst8|counter[1]~34\,
	combout => \inst8|counter[2]~35_combout\,
	cout => \inst8|counter[2]~36\);

-- Location: FF_X47_Y33_N7
\inst8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[2]~35_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(2));

-- Location: LCCOMB_X47_Y33_N8
\inst8|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[3]~37_combout\ = (\inst8|counter\(3) & (!\inst8|counter[2]~36\)) # (!\inst8|counter\(3) & ((\inst8|counter[2]~36\) # (GND)))
-- \inst8|counter[3]~38\ = CARRY((!\inst8|counter[2]~36\) # (!\inst8|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(3),
	datad => VCC,
	cin => \inst8|counter[2]~36\,
	combout => \inst8|counter[3]~37_combout\,
	cout => \inst8|counter[3]~38\);

-- Location: FF_X47_Y33_N9
\inst8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[3]~37_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(3));

-- Location: LCCOMB_X47_Y33_N10
\inst8|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[4]~39_combout\ = (\inst8|counter\(4) & (\inst8|counter[3]~38\ $ (GND))) # (!\inst8|counter\(4) & (!\inst8|counter[3]~38\ & VCC))
-- \inst8|counter[4]~40\ = CARRY((\inst8|counter\(4) & !\inst8|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(4),
	datad => VCC,
	cin => \inst8|counter[3]~38\,
	combout => \inst8|counter[4]~39_combout\,
	cout => \inst8|counter[4]~40\);

-- Location: FF_X47_Y33_N11
\inst8|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[4]~39_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(4));

-- Location: LCCOMB_X47_Y33_N12
\inst8|counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[5]~41_combout\ = (\inst8|counter\(5) & (!\inst8|counter[4]~40\)) # (!\inst8|counter\(5) & ((\inst8|counter[4]~40\) # (GND)))
-- \inst8|counter[5]~42\ = CARRY((!\inst8|counter[4]~40\) # (!\inst8|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datad => VCC,
	cin => \inst8|counter[4]~40\,
	combout => \inst8|counter[5]~41_combout\,
	cout => \inst8|counter[5]~42\);

-- Location: FF_X47_Y33_N13
\inst8|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[5]~41_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(5));

-- Location: LCCOMB_X47_Y33_N14
\inst8|counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[6]~43_combout\ = (\inst8|counter\(6) & (\inst8|counter[5]~42\ $ (GND))) # (!\inst8|counter\(6) & (!\inst8|counter[5]~42\ & VCC))
-- \inst8|counter[6]~44\ = CARRY((\inst8|counter\(6) & !\inst8|counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(6),
	datad => VCC,
	cin => \inst8|counter[5]~42\,
	combout => \inst8|counter[6]~43_combout\,
	cout => \inst8|counter[6]~44\);

-- Location: FF_X47_Y33_N15
\inst8|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[6]~43_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(6));

-- Location: LCCOMB_X47_Y33_N16
\inst8|counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[7]~45_combout\ = (\inst8|counter\(7) & (!\inst8|counter[6]~44\)) # (!\inst8|counter\(7) & ((\inst8|counter[6]~44\) # (GND)))
-- \inst8|counter[7]~46\ = CARRY((!\inst8|counter[6]~44\) # (!\inst8|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(7),
	datad => VCC,
	cin => \inst8|counter[6]~44\,
	combout => \inst8|counter[7]~45_combout\,
	cout => \inst8|counter[7]~46\);

-- Location: FF_X47_Y33_N17
\inst8|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[7]~45_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(7));

-- Location: LCCOMB_X47_Y33_N18
\inst8|counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~47_combout\ = (\inst8|counter\(8) & (\inst8|counter[7]~46\ $ (GND))) # (!\inst8|counter\(8) & (!\inst8|counter[7]~46\ & VCC))
-- \inst8|counter[8]~48\ = CARRY((\inst8|counter\(8) & !\inst8|counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(8),
	datad => VCC,
	cin => \inst8|counter[7]~46\,
	combout => \inst8|counter[8]~47_combout\,
	cout => \inst8|counter[8]~48\);

-- Location: FF_X47_Y33_N19
\inst8|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[8]~47_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(8));

-- Location: LCCOMB_X47_Y33_N20
\inst8|counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[9]~49_combout\ = (\inst8|counter\(9) & (!\inst8|counter[8]~48\)) # (!\inst8|counter\(9) & ((\inst8|counter[8]~48\) # (GND)))
-- \inst8|counter[9]~50\ = CARRY((!\inst8|counter[8]~48\) # (!\inst8|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(9),
	datad => VCC,
	cin => \inst8|counter[8]~48\,
	combout => \inst8|counter[9]~49_combout\,
	cout => \inst8|counter[9]~50\);

-- Location: FF_X47_Y33_N21
\inst8|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[9]~49_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(9));

-- Location: LCCOMB_X47_Y33_N22
\inst8|counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[10]~51_combout\ = (\inst8|counter\(10) & (\inst8|counter[9]~50\ $ (GND))) # (!\inst8|counter\(10) & (!\inst8|counter[9]~50\ & VCC))
-- \inst8|counter[10]~52\ = CARRY((\inst8|counter\(10) & !\inst8|counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(10),
	datad => VCC,
	cin => \inst8|counter[9]~50\,
	combout => \inst8|counter[10]~51_combout\,
	cout => \inst8|counter[10]~52\);

-- Location: FF_X47_Y33_N23
\inst8|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[10]~51_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(10));

-- Location: LCCOMB_X47_Y33_N24
\inst8|counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[11]~53_combout\ = (\inst8|counter\(11) & (!\inst8|counter[10]~52\)) # (!\inst8|counter\(11) & ((\inst8|counter[10]~52\) # (GND)))
-- \inst8|counter[11]~54\ = CARRY((!\inst8|counter[10]~52\) # (!\inst8|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(11),
	datad => VCC,
	cin => \inst8|counter[10]~52\,
	combout => \inst8|counter[11]~53_combout\,
	cout => \inst8|counter[11]~54\);

-- Location: FF_X47_Y33_N25
\inst8|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[11]~53_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(11));

-- Location: LCCOMB_X47_Y33_N26
\inst8|counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[12]~55_combout\ = (\inst8|counter\(12) & (\inst8|counter[11]~54\ $ (GND))) # (!\inst8|counter\(12) & (!\inst8|counter[11]~54\ & VCC))
-- \inst8|counter[12]~56\ = CARRY((\inst8|counter\(12) & !\inst8|counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(12),
	datad => VCC,
	cin => \inst8|counter[11]~54\,
	combout => \inst8|counter[12]~55_combout\,
	cout => \inst8|counter[12]~56\);

-- Location: FF_X47_Y33_N27
\inst8|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[12]~55_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(12));

-- Location: LCCOMB_X46_Y33_N6
\inst8|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~12_combout\ = (\inst8|counter\(6) & (!\inst8|counter\(12) & (!\inst8|counter\(3) & !\inst8|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(6),
	datab => \inst8|counter\(12),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(7),
	combout => \inst8|process_0~12_combout\);

-- Location: LCCOMB_X47_Y33_N28
\inst8|counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[13]~57_combout\ = (\inst8|counter\(13) & (!\inst8|counter[12]~56\)) # (!\inst8|counter\(13) & ((\inst8|counter[12]~56\) # (GND)))
-- \inst8|counter[13]~58\ = CARRY((!\inst8|counter[12]~56\) # (!\inst8|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(13),
	datad => VCC,
	cin => \inst8|counter[12]~56\,
	combout => \inst8|counter[13]~57_combout\,
	cout => \inst8|counter[13]~58\);

-- Location: FF_X47_Y33_N29
\inst8|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[13]~57_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(13));

-- Location: LCCOMB_X47_Y33_N30
\inst8|counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[14]~59_combout\ = (\inst8|counter\(14) & (\inst8|counter[13]~58\ $ (GND))) # (!\inst8|counter\(14) & (!\inst8|counter[13]~58\ & VCC))
-- \inst8|counter[14]~60\ = CARRY((\inst8|counter\(14) & !\inst8|counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(14),
	datad => VCC,
	cin => \inst8|counter[13]~58\,
	combout => \inst8|counter[14]~59_combout\,
	cout => \inst8|counter[14]~60\);

-- Location: FF_X47_Y33_N31
\inst8|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[14]~59_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(14));

-- Location: LCCOMB_X47_Y32_N0
\inst8|counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[15]~61_combout\ = (\inst8|counter\(15) & (!\inst8|counter[14]~60\)) # (!\inst8|counter\(15) & ((\inst8|counter[14]~60\) # (GND)))
-- \inst8|counter[15]~62\ = CARRY((!\inst8|counter[14]~60\) # (!\inst8|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(15),
	datad => VCC,
	cin => \inst8|counter[14]~60\,
	combout => \inst8|counter[15]~61_combout\,
	cout => \inst8|counter[15]~62\);

-- Location: FF_X47_Y32_N1
\inst8|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[15]~61_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(15));

-- Location: LCCOMB_X47_Y32_N2
\inst8|counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[16]~63_combout\ = (\inst8|counter\(16) & (\inst8|counter[15]~62\ $ (GND))) # (!\inst8|counter\(16) & (!\inst8|counter[15]~62\ & VCC))
-- \inst8|counter[16]~64\ = CARRY((\inst8|counter\(16) & !\inst8|counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(16),
	datad => VCC,
	cin => \inst8|counter[15]~62\,
	combout => \inst8|counter[16]~63_combout\,
	cout => \inst8|counter[16]~64\);

-- Location: FF_X47_Y32_N3
\inst8|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[16]~63_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(16));

-- Location: LCCOMB_X47_Y32_N4
\inst8|counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[17]~65_combout\ = (\inst8|counter\(17) & (!\inst8|counter[16]~64\)) # (!\inst8|counter\(17) & ((\inst8|counter[16]~64\) # (GND)))
-- \inst8|counter[17]~66\ = CARRY((!\inst8|counter[16]~64\) # (!\inst8|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(17),
	datad => VCC,
	cin => \inst8|counter[16]~64\,
	combout => \inst8|counter[17]~65_combout\,
	cout => \inst8|counter[17]~66\);

-- Location: FF_X47_Y32_N5
\inst8|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[17]~65_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(17));

-- Location: LCCOMB_X47_Y32_N6
\inst8|counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[18]~67_combout\ = (\inst8|counter\(18) & (\inst8|counter[17]~66\ $ (GND))) # (!\inst8|counter\(18) & (!\inst8|counter[17]~66\ & VCC))
-- \inst8|counter[18]~68\ = CARRY((\inst8|counter\(18) & !\inst8|counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(18),
	datad => VCC,
	cin => \inst8|counter[17]~66\,
	combout => \inst8|counter[18]~67_combout\,
	cout => \inst8|counter[18]~68\);

-- Location: FF_X47_Y32_N7
\inst8|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[18]~67_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(18));

-- Location: LCCOMB_X47_Y32_N8
\inst8|counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[19]~69_combout\ = (\inst8|counter\(19) & (!\inst8|counter[18]~68\)) # (!\inst8|counter\(19) & ((\inst8|counter[18]~68\) # (GND)))
-- \inst8|counter[19]~70\ = CARRY((!\inst8|counter[18]~68\) # (!\inst8|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(19),
	datad => VCC,
	cin => \inst8|counter[18]~68\,
	combout => \inst8|counter[19]~69_combout\,
	cout => \inst8|counter[19]~70\);

-- Location: FF_X47_Y32_N9
\inst8|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[19]~69_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(19));

-- Location: LCCOMB_X47_Y32_N10
\inst8|counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[20]~71_combout\ = (\inst8|counter\(20) & (\inst8|counter[19]~70\ $ (GND))) # (!\inst8|counter\(20) & (!\inst8|counter[19]~70\ & VCC))
-- \inst8|counter[20]~72\ = CARRY((\inst8|counter\(20) & !\inst8|counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(20),
	datad => VCC,
	cin => \inst8|counter[19]~70\,
	combout => \inst8|counter[20]~71_combout\,
	cout => \inst8|counter[20]~72\);

-- Location: FF_X47_Y32_N11
\inst8|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[20]~71_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(20));

-- Location: LCCOMB_X47_Y32_N12
\inst8|counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[21]~73_combout\ = (\inst8|counter\(21) & (!\inst8|counter[20]~72\)) # (!\inst8|counter\(21) & ((\inst8|counter[20]~72\) # (GND)))
-- \inst8|counter[21]~74\ = CARRY((!\inst8|counter[20]~72\) # (!\inst8|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(21),
	datad => VCC,
	cin => \inst8|counter[20]~72\,
	combout => \inst8|counter[21]~73_combout\,
	cout => \inst8|counter[21]~74\);

-- Location: FF_X47_Y32_N13
\inst8|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[21]~73_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(21));

-- Location: LCCOMB_X47_Y32_N14
\inst8|counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[22]~75_combout\ = (\inst8|counter\(22) & (\inst8|counter[21]~74\ $ (GND))) # (!\inst8|counter\(22) & (!\inst8|counter[21]~74\ & VCC))
-- \inst8|counter[22]~76\ = CARRY((\inst8|counter\(22) & !\inst8|counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(22),
	datad => VCC,
	cin => \inst8|counter[21]~74\,
	combout => \inst8|counter[22]~75_combout\,
	cout => \inst8|counter[22]~76\);

-- Location: FF_X47_Y32_N15
\inst8|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[22]~75_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(22));

-- Location: LCCOMB_X47_Y32_N16
\inst8|counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[23]~77_combout\ = (\inst8|counter\(23) & (!\inst8|counter[22]~76\)) # (!\inst8|counter\(23) & ((\inst8|counter[22]~76\) # (GND)))
-- \inst8|counter[23]~78\ = CARRY((!\inst8|counter[22]~76\) # (!\inst8|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(23),
	datad => VCC,
	cin => \inst8|counter[22]~76\,
	combout => \inst8|counter[23]~77_combout\,
	cout => \inst8|counter[23]~78\);

-- Location: FF_X47_Y32_N17
\inst8|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[23]~77_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(23));

-- Location: LCCOMB_X48_Y33_N6
\inst8|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~1_combout\ = (!\inst8|counter\(23) & (!\inst8|counter\(10) & (!\inst8|counter\(20) & !\inst8|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(23),
	datab => \inst8|counter\(10),
	datac => \inst8|counter\(20),
	datad => \inst8|counter\(21),
	combout => \inst8|e~1_combout\);

-- Location: LCCOMB_X46_Y33_N14
\inst8|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~1_combout\ = (!\inst8|counter\(2) & (\inst8|counter\(8) & (!\inst8|counter\(1) & !\inst8|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(2),
	datab => \inst8|counter\(8),
	datac => \inst8|counter\(1),
	datad => \inst8|counter\(0),
	combout => \inst8|Equal5~1_combout\);

-- Location: LCCOMB_X47_Y32_N18
\inst8|counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[24]~79_combout\ = (\inst8|counter\(24) & (\inst8|counter[23]~78\ $ (GND))) # (!\inst8|counter\(24) & (!\inst8|counter[23]~78\ & VCC))
-- \inst8|counter[24]~80\ = CARRY((\inst8|counter\(24) & !\inst8|counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(24),
	datad => VCC,
	cin => \inst8|counter[23]~78\,
	combout => \inst8|counter[24]~79_combout\,
	cout => \inst8|counter[24]~80\);

-- Location: FF_X47_Y32_N19
\inst8|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[24]~79_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(24));

-- Location: LCCOMB_X47_Y32_N20
\inst8|counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[25]~81_combout\ = (\inst8|counter\(25) & (!\inst8|counter[24]~80\)) # (!\inst8|counter\(25) & ((\inst8|counter[24]~80\) # (GND)))
-- \inst8|counter[25]~82\ = CARRY((!\inst8|counter[24]~80\) # (!\inst8|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(25),
	datad => VCC,
	cin => \inst8|counter[24]~80\,
	combout => \inst8|counter[25]~81_combout\,
	cout => \inst8|counter[25]~82\);

-- Location: FF_X47_Y32_N21
\inst8|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[25]~81_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(25));

-- Location: LCCOMB_X47_Y32_N22
\inst8|counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[26]~83_combout\ = (\inst8|counter\(26) & (\inst8|counter[25]~82\ $ (GND))) # (!\inst8|counter\(26) & (!\inst8|counter[25]~82\ & VCC))
-- \inst8|counter[26]~84\ = CARRY((\inst8|counter\(26) & !\inst8|counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(26),
	datad => VCC,
	cin => \inst8|counter[25]~82\,
	combout => \inst8|counter[26]~83_combout\,
	cout => \inst8|counter[26]~84\);

-- Location: FF_X47_Y32_N23
\inst8|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[26]~83_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(26));

-- Location: LCCOMB_X47_Y32_N24
\inst8|counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[27]~85_combout\ = (\inst8|counter\(27) & (!\inst8|counter[26]~84\)) # (!\inst8|counter\(27) & ((\inst8|counter[26]~84\) # (GND)))
-- \inst8|counter[27]~86\ = CARRY((!\inst8|counter[26]~84\) # (!\inst8|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(27),
	datad => VCC,
	cin => \inst8|counter[26]~84\,
	combout => \inst8|counter[27]~85_combout\,
	cout => \inst8|counter[27]~86\);

-- Location: FF_X47_Y32_N25
\inst8|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[27]~85_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(27));

-- Location: LCCOMB_X48_Y32_N2
\inst8|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~2_combout\ = (!\inst8|counter\(25) & (!\inst8|counter\(24) & (!\inst8|counter\(26) & !\inst8|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(25),
	datab => \inst8|counter\(24),
	datac => \inst8|counter\(26),
	datad => \inst8|counter\(27),
	combout => \inst8|e~2_combout\);

-- Location: LCCOMB_X47_Y32_N26
\inst8|counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[28]~87_combout\ = (\inst8|counter\(28) & (\inst8|counter[27]~86\ $ (GND))) # (!\inst8|counter\(28) & (!\inst8|counter[27]~86\ & VCC))
-- \inst8|counter[28]~88\ = CARRY((\inst8|counter\(28) & !\inst8|counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(28),
	datad => VCC,
	cin => \inst8|counter[27]~86\,
	combout => \inst8|counter[28]~87_combout\,
	cout => \inst8|counter[28]~88\);

-- Location: FF_X47_Y32_N27
\inst8|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[28]~87_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(28));

-- Location: LCCOMB_X47_Y32_N28
\inst8|counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[29]~89_combout\ = (\inst8|counter\(29) & (!\inst8|counter[28]~88\)) # (!\inst8|counter\(29) & ((\inst8|counter[28]~88\) # (GND)))
-- \inst8|counter[29]~90\ = CARRY((!\inst8|counter[28]~88\) # (!\inst8|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(29),
	datad => VCC,
	cin => \inst8|counter[28]~88\,
	combout => \inst8|counter[29]~89_combout\,
	cout => \inst8|counter[29]~90\);

-- Location: FF_X47_Y32_N29
\inst8|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[29]~89_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(29));

-- Location: LCCOMB_X47_Y32_N30
\inst8|counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[30]~91_combout\ = \inst8|counter\(30) $ (!\inst8|counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(30),
	cin => \inst8|counter[29]~90\,
	combout => \inst8|counter[30]~91_combout\);

-- Location: FF_X47_Y32_N31
\inst8|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|counter[30]~91_combout\,
	sclr => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(30));

-- Location: LCCOMB_X48_Y32_N24
\inst8|e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~3_combout\ = (!\inst8|counter\(29) & (!\inst8|counter\(28) & !\inst8|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(29),
	datac => \inst8|counter\(28),
	datad => \inst8|counter\(30),
	combout => \inst8|e~3_combout\);

-- Location: LCCOMB_X48_Y33_N12
\inst8|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~2_combout\ = (\inst8|e~1_combout\ & (\inst8|Equal5~1_combout\ & (\inst8|e~2_combout\ & \inst8|e~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|e~1_combout\,
	datab => \inst8|Equal5~1_combout\,
	datac => \inst8|e~2_combout\,
	datad => \inst8|e~3_combout\,
	combout => \inst8|Equal5~2_combout\);

-- Location: LCCOMB_X48_Y33_N14
\inst8|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~11_combout\ = (!\inst8|counter\(5) & (\inst8|counter\(9) & \inst8|Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datab => \inst8|counter\(9),
	datad => \inst8|Equal5~2_combout\,
	combout => \inst8|process_0~11_combout\);

-- Location: LCCOMB_X48_Y32_N26
\inst8|state.init0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state.init0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst8|state.init0~feeder_combout\);

-- Location: FF_X48_Y32_N27
\inst8|state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state.init0~feeder_combout\,
	ena => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init0~q\);

-- Location: LCCOMB_X48_Y32_N22
\inst8|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~13_combout\ = (!\inst8|counter\(16) & (!\inst8|counter\(17) & (!\inst8|state.init0~q\ & !\inst8|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(16),
	datab => \inst8|counter\(17),
	datac => \inst8|state.init0~q\,
	datad => \inst8|counter\(13),
	combout => \inst8|process_0~13_combout\);

-- Location: LCCOMB_X48_Y32_N20
\inst8|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~14_combout\ = (!\inst8|counter\(15) & (\inst8|counter\(18) & (\inst8|counter\(11) & !\inst8|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(15),
	datab => \inst8|counter\(18),
	datac => \inst8|counter\(11),
	datad => \inst8|counter\(4),
	combout => \inst8|process_0~14_combout\);

-- Location: LCCOMB_X48_Y32_N14
\inst8|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~15_combout\ = (\inst8|counter\(19) & (\inst8|counter\(22) & (\inst8|process_0~13_combout\ & \inst8|process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(19),
	datab => \inst8|counter\(22),
	datac => \inst8|process_0~13_combout\,
	datad => \inst8|process_0~14_combout\,
	combout => \inst8|process_0~15_combout\);

-- Location: LCCOMB_X48_Y33_N28
\inst8|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~16_combout\ = (\inst8|process_0~12_combout\ & (\inst8|counter\(14) & (\inst8|process_0~11_combout\ & \inst8|process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~12_combout\,
	datab => \inst8|counter\(14),
	datac => \inst8|process_0~11_combout\,
	datad => \inst8|process_0~15_combout\,
	combout => \inst8|process_0~16_combout\);

-- Location: LCCOMB_X49_Y33_N26
\inst8|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~27_combout\ = (\inst8|process_0~16_combout\ & (((!\inst8|state~33_combout\ & \inst8|state.init1~q\)) # (!\inst8|state~21_combout\))) # (!\inst8|process_0~16_combout\ & (!\inst8|state~33_combout\ & (\inst8|state.init1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~16_combout\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init1~q\,
	datad => \inst8|state~21_combout\,
	combout => \inst8|state~27_combout\);

-- Location: FF_X49_Y33_N27
\inst8|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init1~q\);

-- Location: LCCOMB_X46_Y33_N18
\inst8|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~4_combout\ = (!\inst8|counter\(14) & !\inst8|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|counter\(14),
	datad => \inst8|counter\(6),
	combout => \inst8|Equal6~4_combout\);

-- Location: LCCOMB_X46_Y33_N20
\inst8|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~0_combout\ = (!\inst8|counter\(9) & (!\inst8|counter\(7) & (!\inst8|counter\(12) & \inst8|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(9),
	datab => \inst8|counter\(7),
	datac => \inst8|counter\(12),
	datad => \inst8|Equal6~4_combout\,
	combout => \inst8|Equal5~0_combout\);

-- Location: LCCOMB_X47_Y33_N0
\inst8|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~4_combout\ = (!\inst8|counter\(4) & (\inst8|counter\(13) & (!\inst8|counter\(3) & \inst8|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(4),
	datab => \inst8|counter\(13),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(15),
	combout => \inst8|Equal5~4_combout\);

-- Location: LCCOMB_X48_Y33_N24
\inst8|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~2_combout\ = (!\inst8|counter\(22) & (!\inst8|counter\(11) & !\inst8|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(22),
	datab => \inst8|counter\(11),
	datad => \inst8|counter\(19),
	combout => \inst8|Equal6~2_combout\);

-- Location: LCCOMB_X48_Y33_N8
\inst8|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~5_combout\ = (\inst8|counter\(5) & (\inst8|Equal5~4_combout\ & \inst8|Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datac => \inst8|Equal5~4_combout\,
	datad => \inst8|Equal6~2_combout\,
	combout => \inst8|Equal5~5_combout\);

-- Location: LCCOMB_X48_Y32_N28
\inst8|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~3_combout\ = (\inst8|counter\(18) & (\inst8|counter\(17) & \inst8|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(18),
	datac => \inst8|counter\(17),
	datad => \inst8|counter\(16),
	combout => \inst8|Equal5~3_combout\);

-- Location: LCCOMB_X48_Y33_N2
\inst8|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal5~6_combout\ = (\inst8|Equal5~0_combout\ & (\inst8|Equal5~5_combout\ & (\inst8|Equal5~3_combout\ & \inst8|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal5~0_combout\,
	datab => \inst8|Equal5~5_combout\,
	datac => \inst8|Equal5~3_combout\,
	datad => \inst8|Equal5~2_combout\,
	combout => \inst8|Equal5~6_combout\);

-- Location: LCCOMB_X49_Y33_N4
\inst8|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~21_combout\ = (\inst8|state.init1~q\ & \inst8|Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init1~q\,
	datad => \inst8|Equal5~6_combout\,
	combout => \inst8|process_0~21_combout\);

-- Location: LCCOMB_X49_Y33_N0
\inst8|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~28_combout\ = (\inst8|process_0~21_combout\ & (((!\inst8|state~33_combout\ & \inst8|state.init2~q\)) # (!\inst8|state~21_combout\))) # (!\inst8|process_0~21_combout\ & (!\inst8|state~33_combout\ & (\inst8|state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~21_combout\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init2~q\,
	datad => \inst8|state~21_combout\,
	combout => \inst8|state~28_combout\);

-- Location: FF_X49_Y33_N1
\inst8|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init2~q\);

-- Location: LCCOMB_X48_Y32_N0
\inst8|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~3_combout\ = (!\inst8|counter\(16) & (!\inst8|counter\(18) & (!\inst8|counter\(17) & !\inst8|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(16),
	datab => \inst8|counter\(18),
	datac => \inst8|counter\(17),
	datad => \inst8|counter\(13),
	combout => \inst8|Equal6~3_combout\);

-- Location: LCCOMB_X48_Y32_N16
\inst8|Equal6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~9_combout\ = (!\inst8|counter\(19) & (!\inst8|counter\(22) & (!\inst8|counter\(11) & \inst8|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(19),
	datab => \inst8|counter\(22),
	datac => \inst8|counter\(11),
	datad => \inst8|Equal6~3_combout\,
	combout => \inst8|Equal6~9_combout\);

-- Location: LCCOMB_X48_Y32_N4
\inst8|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~17_combout\ = (\inst8|counter\(4) & (\inst8|state.init2~q\ & (\inst8|counter\(15) & \inst8|Equal6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(4),
	datab => \inst8|state.init2~q\,
	datac => \inst8|counter\(15),
	datad => \inst8|Equal6~9_combout\,
	combout => \inst8|process_0~17_combout\);

-- Location: LCCOMB_X48_Y33_N22
\inst8|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~18_combout\ = (\inst8|process_0~12_combout\ & (\inst8|counter\(14) & (\inst8|process_0~11_combout\ & \inst8|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~12_combout\,
	datab => \inst8|counter\(14),
	datac => \inst8|process_0~11_combout\,
	datad => \inst8|process_0~17_combout\,
	combout => \inst8|process_0~18_combout\);

-- Location: LCCOMB_X49_Y33_N18
\inst8|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~24_combout\ = (\inst8|process_0~18_combout\ & (((!\inst8|state~33_combout\ & \inst8|state.init3~q\)) # (!\inst8|state~21_combout\))) # (!\inst8|process_0~18_combout\ & (!\inst8|state~33_combout\ & (\inst8|state.init3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~18_combout\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init3~q\,
	datad => \inst8|state~21_combout\,
	combout => \inst8|state~24_combout\);

-- Location: FF_X49_Y33_N19
\inst8|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init3~q\);

-- Location: LCCOMB_X48_Y33_N10
\inst8|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~5_combout\ = (!\inst8|counter\(4) & (!\inst8|counter\(6) & (\inst8|counter\(3) & !\inst8|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(4),
	datab => \inst8|counter\(6),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(14),
	combout => \inst8|Equal6~5_combout\);

-- Location: LCCOMB_X48_Y33_N16
\inst8|Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~6_combout\ = (\inst8|Equal6~5_combout\ & (\inst8|Equal6~3_combout\ & (!\inst8|counter\(15) & \inst8|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal6~5_combout\,
	datab => \inst8|Equal6~3_combout\,
	datac => \inst8|counter\(15),
	datad => \inst8|Equal6~2_combout\,
	combout => \inst8|Equal6~6_combout\);

-- Location: LCCOMB_X46_Y33_N24
\inst8|Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~7_combout\ = (\inst8|counter\(7) & (!\inst8|counter\(5) & \inst8|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(7),
	datac => \inst8|counter\(5),
	datad => \inst8|counter\(12),
	combout => \inst8|Equal6~7_combout\);

-- Location: LCCOMB_X48_Y33_N18
\inst8|Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal6~8_combout\ = (\inst8|counter\(9) & (\inst8|Equal6~6_combout\ & (\inst8|Equal6~7_combout\ & \inst8|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(9),
	datab => \inst8|Equal6~6_combout\,
	datac => \inst8|Equal6~7_combout\,
	datad => \inst8|Equal5~2_combout\,
	combout => \inst8|Equal6~8_combout\);

-- Location: LCCOMB_X49_Y33_N10
\inst8|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~25_combout\ = (\inst8|Equal6~8_combout\ & (!\inst8|process_0~19_combout\ & ((!\inst8|state~20_combout\) # (!\inst8|state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal6~8_combout\,
	datab => \inst8|state~17_combout\,
	datac => \inst8|process_0~19_combout\,
	datad => \inst8|state~20_combout\,
	combout => \inst8|state~25_combout\);

-- Location: LCCOMB_X49_Y33_N28
\inst8|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~26_combout\ = (\inst8|state.init3~q\ & ((\inst8|state~25_combout\) # ((!\inst8|state~33_combout\ & \inst8|state.init4~q\)))) # (!\inst8|state.init3~q\ & (!\inst8|state~33_combout\ & (\inst8|state.init4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init3~q\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init4~q\,
	datad => \inst8|state~25_combout\,
	combout => \inst8|state~26_combout\);

-- Location: FF_X49_Y33_N29
\inst8|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init4~q\);

-- Location: LCCOMB_X49_Y33_N14
\inst8|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~30_combout\ = (\inst8|state.init4~q\ & ((\inst8|state~25_combout\) # ((!\inst8|state~33_combout\ & \inst8|state.init5~q\)))) # (!\inst8|state.init4~q\ & (!\inst8|state~33_combout\ & (\inst8|state.init5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init4~q\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init5~q\,
	datad => \inst8|state~25_combout\,
	combout => \inst8|state~30_combout\);

-- Location: FF_X49_Y33_N15
\inst8|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init5~q\);

-- Location: LCCOMB_X48_Y33_N26
\inst8|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~18_combout\ = ((!\inst8|state.init4~q\ & (!\inst8|state.init3~q\ & !\inst8|state.init5~q\))) # (!\inst8|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init4~q\,
	datab => \inst8|state.init3~q\,
	datac => \inst8|state.init5~q\,
	datad => \inst8|Equal6~8_combout\,
	combout => \inst8|state~18_combout\);

-- Location: LCCOMB_X49_Y33_N12
\inst8|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~29_combout\ = (\inst8|state.init5~q\ & ((\inst8|state~25_combout\) # ((!\inst8|state~33_combout\ & \inst8|state.init6~q\)))) # (!\inst8|state.init5~q\ & (!\inst8|state~33_combout\ & (\inst8|state.init6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init5~q\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init6~q\,
	datad => \inst8|state~25_combout\,
	combout => \inst8|state~29_combout\);

-- Location: FF_X49_Y33_N13
\inst8|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init6~q\);

-- Location: LCCOMB_X48_Y33_N0
\inst8|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~19_combout\ = ((!\inst8|state.init1~q\ & !\inst8|state.init6~q\)) # (!\inst8|Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|state.init1~q\,
	datac => \inst8|state.init6~q\,
	datad => \inst8|Equal5~6_combout\,
	combout => \inst8|state~19_combout\);

-- Location: LCCOMB_X48_Y33_N20
\inst8|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~20_combout\ = (\inst8|state~18_combout\ & (\inst8|state~19_combout\ & (!\inst8|process_0~18_combout\ & !\inst8|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state~18_combout\,
	datab => \inst8|state~19_combout\,
	datac => \inst8|process_0~18_combout\,
	datad => \inst8|process_0~16_combout\,
	combout => \inst8|state~20_combout\);

-- Location: LCCOMB_X49_Y33_N16
\inst8|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~21_combout\ = (\inst8|state.ready~q\ & (((\inst8|state~17_combout\ & \inst8|state~20_combout\)) # (!\inst5|lcd_write_n~q\))) # (!\inst8|state.ready~q\ & (((\inst8|state~17_combout\ & \inst8|state~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.ready~q\,
	datab => \inst5|lcd_write_n~q\,
	datac => \inst8|state~17_combout\,
	datad => \inst8|state~20_combout\,
	combout => \inst8|state~21_combout\);

-- Location: LCCOMB_X49_Y33_N30
\inst8|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~23_combout\ = (\inst8|process_0~20_combout\ & (((!\inst8|state~33_combout\ & \inst8|state.sendingData~q\)) # (!\inst8|state~21_combout\))) # (!\inst8|process_0~20_combout\ & (!\inst8|state~33_combout\ & (\inst8|state.sendingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~20_combout\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.sendingData~q\,
	datad => \inst8|state~21_combout\,
	combout => \inst8|state~23_combout\);

-- Location: FF_X49_Y33_N31
\inst8|state.sendingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.sendingData~q\);

-- Location: LCCOMB_X49_Y33_N20
\inst8|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~22_combout\ = (\inst8|state.init6~q\ & \inst8|Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init6~q\,
	datad => \inst8|Equal5~6_combout\,
	combout => \inst8|process_0~22_combout\);

-- Location: LCCOMB_X49_Y33_N8
\inst8|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~31_combout\ = (\inst8|process_0~22_combout\ & (((!\inst8|state~33_combout\ & \inst8|state.init7~q\)) # (!\inst8|state~21_combout\))) # (!\inst8|process_0~22_combout\ & (!\inst8|state~33_combout\ & (\inst8|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~22_combout\,
	datab => \inst8|state~33_combout\,
	datac => \inst8|state.init7~q\,
	datad => \inst8|state~21_combout\,
	combout => \inst8|state~31_combout\);

-- Location: FF_X49_Y33_N9
\inst8|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.init7~q\);

-- Location: LCCOMB_X48_Y33_N4
\inst8|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~17_combout\ = ((!\inst8|state.sendingData~q\ & (!\inst8|state.sendingAddress~q\ & !\inst8|state.init7~q\))) # (!\inst8|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.sendingData~q\,
	datab => \inst8|state.sendingAddress~q\,
	datac => \inst8|state.init7~q\,
	datad => \inst8|Equal6~8_combout\,
	combout => \inst8|state~17_combout\);

-- Location: LCCOMB_X48_Y33_N30
\inst8|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~33_combout\ = (((\inst8|state.ready~q\ & !\inst5|lcd_write_n~q\)) # (!\inst8|state~20_combout\)) # (!\inst8|state~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.ready~q\,
	datab => \inst5|lcd_write_n~q\,
	datac => \inst8|state~17_combout\,
	datad => \inst8|state~20_combout\,
	combout => \inst8|state~33_combout\);

-- Location: FF_X49_Y33_N5
\inst8|state.sendingAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst8|process_0~19_combout\,
	sload => VCC,
	ena => \inst8|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.sendingAddress~q\);

-- Location: LCCOMB_X49_Y33_N6
\inst8|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_0~20_combout\ = (\inst8|state.sendingAddress~q\ & \inst8|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|state.sendingAddress~q\,
	datad => \inst8|Equal6~8_combout\,
	combout => \inst8|process_0~20_combout\);

-- Location: LCCOMB_X49_Y33_N22
\inst8|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~32_combout\ = (\inst8|state.ready~q\ & (\inst5|lcd_write_n~q\ & (\inst8|state~17_combout\ & \inst8|state~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.ready~q\,
	datab => \inst5|lcd_write_n~q\,
	datac => \inst8|state~17_combout\,
	datad => \inst8|state~20_combout\,
	combout => \inst8|state~32_combout\);

-- Location: LCCOMB_X49_Y33_N24
\inst8|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|state~22_combout\ = (\inst8|state~32_combout\) # ((!\inst8|process_0~20_combout\ & (\inst8|state~20_combout\ & !\inst8|state~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|process_0~20_combout\,
	datab => \inst8|state~20_combout\,
	datac => \inst8|state~32_combout\,
	datad => \inst8|state~21_combout\,
	combout => \inst8|state~22_combout\);

-- Location: FF_X49_Y33_N25
\inst8|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|state.ready~q\);

-- Location: LCCOMB_X49_Y30_N16
\inst8|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|process_1~0_combout\ = (\inst8|state.ready~q\) # (\inst8|state.sendingData~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|state.ready~q\,
	datad => \inst8|state.sendingData~q\,
	combout => \inst8|process_1~0_combout\);

-- Location: LCCOMB_X46_Y33_N26
\inst8|e~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~6_combout\ = (\inst8|counter\(3)) # ((\inst8|counter\(1) & ((\inst8|counter\(5)) # (\inst8|counter\(2)))) # (!\inst8|counter\(1) & (\inst8|counter\(5) & \inst8|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(1),
	datab => \inst8|counter\(5),
	datac => \inst8|counter\(3),
	datad => \inst8|counter\(2),
	combout => \inst8|e~6_combout\);

-- Location: LCCOMB_X46_Y33_N22
\inst8|e~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~4_combout\ = (\inst8|e~1_combout\ & (\inst8|e~2_combout\ & \inst8|e~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|e~1_combout\,
	datac => \inst8|e~2_combout\,
	datad => \inst8|e~3_combout\,
	combout => \inst8|e~4_combout\);

-- Location: LCCOMB_X46_Y33_N28
\inst8|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~0_combout\ = (\inst8|Equal6~9_combout\ & (!\inst8|counter\(8) & (!\inst8|counter\(15) & !\inst8|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal6~9_combout\,
	datab => \inst8|counter\(8),
	datac => \inst8|counter\(15),
	datad => \inst8|state.ready~q\,
	combout => \inst8|e~0_combout\);

-- Location: LCCOMB_X46_Y33_N16
\inst8|e~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~5_combout\ = (\inst8|Equal5~0_combout\ & (\inst8|e~4_combout\ & \inst8|e~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal5~0_combout\,
	datac => \inst8|e~4_combout\,
	datad => \inst8|e~0_combout\,
	combout => \inst8|e~5_combout\);

-- Location: LCCOMB_X46_Y33_N4
\inst8|e~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|e~7_combout\ = (\inst8|e~5_combout\ & ((\inst8|e~6_combout\ & ((!\inst8|counter\(5)) # (!\inst8|counter\(4)))) # (!\inst8|e~6_combout\ & ((\inst8|counter\(4)) # (\inst8|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|e~6_combout\,
	datab => \inst8|counter\(4),
	datac => \inst8|counter\(5),
	datad => \inst8|e~5_combout\,
	combout => \inst8|e~7_combout\);

-- Location: LCCOMB_X49_Y33_N2
\inst8|dataOut[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[1]~0_combout\ = (!\inst8|state.init3~q\ & (!\inst8|state.init2~q\ & (!\inst8|state.init1~q\ & !\inst8|state.init4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init3~q\,
	datab => \inst8|state.init2~q\,
	datac => \inst8|state.init1~q\,
	datad => \inst8|state.init4~q\,
	combout => \inst8|dataOut[1]~0_combout\);

-- Location: LCCOMB_X45_Y33_N28
\inst8|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[1]~1_combout\ = (\inst8|dataOut[1]~0_combout\ & (!\inst8|state.init5~q\ & (!\inst8|state.init6~q\ & \inst8|state.init0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[1]~0_combout\,
	datab => \inst8|state.init5~q\,
	datac => \inst8|state.init6~q\,
	datad => \inst8|state.init0~q\,
	combout => \inst8|dataOut[1]~1_combout\);

-- Location: FF_X48_Y28_N9
\inst5|lcd_posY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|lineCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posY\(0));

-- Location: FF_X48_Y32_N13
\inst8|addressStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|lcd_posY\(0),
	sload => VCC,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(6));

-- Location: LCCOMB_X48_Y28_N26
\inst5|lcd_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~34_combout\ = (!\inst5|charCount\(3) & !\inst5|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~34_combout\);

-- Location: LCCOMB_X49_Y28_N24
\inst5|lcd_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~35_combout\ = (\inst5|charCount\(2) & \inst5|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~35_combout\);

-- Location: LCCOMB_X49_Y28_N18
\inst5|lcd_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~43_combout\ = (\inst5|lineCount\(0) & (\inst5|lcd_data~34_combout\ & ((!\inst5|lcd_data~35_combout\)))) # (!\inst5|lineCount\(0) & (((\inst5|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~34_combout\,
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data\(6),
	datad => \inst5|lcd_data~35_combout\,
	combout => \inst5|lcd_data~43_combout\);

-- Location: LCCOMB_X49_Y28_N4
\inst5|lcd_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~44_combout\ = (!\inst5|lineCount\(1) & \inst5|lcd_data~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|lineCount\(1),
	datad => \inst5|lcd_data~43_combout\,
	combout => \inst5|lcd_data~44_combout\);

-- Location: LCCOMB_X51_Y28_N2
\inst5|display_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[0]~31_combout\ = \inst5|display_counter\(0) $ (VCC)
-- \inst5|display_counter[0]~32\ = CARRY(\inst5|display_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(0),
	datad => VCC,
	combout => \inst5|display_counter[0]~31_combout\,
	cout => \inst5|display_counter[0]~32\);

-- Location: LCCOMB_X50_Y28_N16
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

-- Location: FF_X51_Y28_N3
\inst5|display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[0]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(0));

-- Location: LCCOMB_X51_Y28_N4
\inst5|display_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[1]~33_combout\ = (\inst5|display_counter\(1) & (!\inst5|display_counter[0]~32\)) # (!\inst5|display_counter\(1) & ((\inst5|display_counter[0]~32\) # (GND)))
-- \inst5|display_counter[1]~34\ = CARRY((!\inst5|display_counter[0]~32\) # (!\inst5|display_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(1),
	datad => VCC,
	cin => \inst5|display_counter[0]~32\,
	combout => \inst5|display_counter[1]~33_combout\,
	cout => \inst5|display_counter[1]~34\);

-- Location: FF_X51_Y28_N5
\inst5|display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[1]~33_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(1));

-- Location: LCCOMB_X51_Y28_N6
\inst5|display_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[2]~35_combout\ = (\inst5|display_counter\(2) & (\inst5|display_counter[1]~34\ $ (GND))) # (!\inst5|display_counter\(2) & (!\inst5|display_counter[1]~34\ & VCC))
-- \inst5|display_counter[2]~36\ = CARRY((\inst5|display_counter\(2) & !\inst5|display_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(2),
	datad => VCC,
	cin => \inst5|display_counter[1]~34\,
	combout => \inst5|display_counter[2]~35_combout\,
	cout => \inst5|display_counter[2]~36\);

-- Location: FF_X51_Y28_N7
\inst5|display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[2]~35_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(2));

-- Location: LCCOMB_X51_Y28_N8
\inst5|display_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[3]~37_combout\ = (\inst5|display_counter\(3) & (!\inst5|display_counter[2]~36\)) # (!\inst5|display_counter\(3) & ((\inst5|display_counter[2]~36\) # (GND)))
-- \inst5|display_counter[3]~38\ = CARRY((!\inst5|display_counter[2]~36\) # (!\inst5|display_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(3),
	datad => VCC,
	cin => \inst5|display_counter[2]~36\,
	combout => \inst5|display_counter[3]~37_combout\,
	cout => \inst5|display_counter[3]~38\);

-- Location: FF_X51_Y28_N9
\inst5|display_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[3]~37_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(3));

-- Location: LCCOMB_X51_Y28_N10
\inst5|display_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[4]~39_combout\ = (\inst5|display_counter\(4) & (\inst5|display_counter[3]~38\ $ (GND))) # (!\inst5|display_counter\(4) & (!\inst5|display_counter[3]~38\ & VCC))
-- \inst5|display_counter[4]~40\ = CARRY((\inst5|display_counter\(4) & !\inst5|display_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(4),
	datad => VCC,
	cin => \inst5|display_counter[3]~38\,
	combout => \inst5|display_counter[4]~39_combout\,
	cout => \inst5|display_counter[4]~40\);

-- Location: FF_X51_Y28_N11
\inst5|display_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[4]~39_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(4));

-- Location: LCCOMB_X51_Y28_N12
\inst5|display_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[5]~41_combout\ = (\inst5|display_counter\(5) & (!\inst5|display_counter[4]~40\)) # (!\inst5|display_counter\(5) & ((\inst5|display_counter[4]~40\) # (GND)))
-- \inst5|display_counter[5]~42\ = CARRY((!\inst5|display_counter[4]~40\) # (!\inst5|display_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(5),
	datad => VCC,
	cin => \inst5|display_counter[4]~40\,
	combout => \inst5|display_counter[5]~41_combout\,
	cout => \inst5|display_counter[5]~42\);

-- Location: FF_X51_Y28_N13
\inst5|display_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[5]~41_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(5));

-- Location: LCCOMB_X51_Y28_N14
\inst5|display_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[6]~43_combout\ = (\inst5|display_counter\(6) & (\inst5|display_counter[5]~42\ $ (GND))) # (!\inst5|display_counter\(6) & (!\inst5|display_counter[5]~42\ & VCC))
-- \inst5|display_counter[6]~44\ = CARRY((\inst5|display_counter\(6) & !\inst5|display_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(6),
	datad => VCC,
	cin => \inst5|display_counter[5]~42\,
	combout => \inst5|display_counter[6]~43_combout\,
	cout => \inst5|display_counter[6]~44\);

-- Location: FF_X51_Y28_N15
\inst5|display_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[6]~43_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(6));

-- Location: LCCOMB_X51_Y28_N16
\inst5|display_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[7]~45_combout\ = (\inst5|display_counter\(7) & (!\inst5|display_counter[6]~44\)) # (!\inst5|display_counter\(7) & ((\inst5|display_counter[6]~44\) # (GND)))
-- \inst5|display_counter[7]~46\ = CARRY((!\inst5|display_counter[6]~44\) # (!\inst5|display_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(7),
	datad => VCC,
	cin => \inst5|display_counter[6]~44\,
	combout => \inst5|display_counter[7]~45_combout\,
	cout => \inst5|display_counter[7]~46\);

-- Location: FF_X51_Y28_N17
\inst5|display_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[7]~45_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(7));

-- Location: LCCOMB_X51_Y28_N18
\inst5|display_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[8]~47_combout\ = (\inst5|display_counter\(8) & (\inst5|display_counter[7]~46\ $ (GND))) # (!\inst5|display_counter\(8) & (!\inst5|display_counter[7]~46\ & VCC))
-- \inst5|display_counter[8]~48\ = CARRY((\inst5|display_counter\(8) & !\inst5|display_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(8),
	datad => VCC,
	cin => \inst5|display_counter[7]~46\,
	combout => \inst5|display_counter[8]~47_combout\,
	cout => \inst5|display_counter[8]~48\);

-- Location: FF_X51_Y28_N19
\inst5|display_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[8]~47_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(8));

-- Location: LCCOMB_X51_Y28_N20
\inst5|display_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[9]~49_combout\ = (\inst5|display_counter\(9) & (!\inst5|display_counter[8]~48\)) # (!\inst5|display_counter\(9) & ((\inst5|display_counter[8]~48\) # (GND)))
-- \inst5|display_counter[9]~50\ = CARRY((!\inst5|display_counter[8]~48\) # (!\inst5|display_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(9),
	datad => VCC,
	cin => \inst5|display_counter[8]~48\,
	combout => \inst5|display_counter[9]~49_combout\,
	cout => \inst5|display_counter[9]~50\);

-- Location: FF_X51_Y28_N21
\inst5|display_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[9]~49_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(9));

-- Location: LCCOMB_X51_Y28_N22
\inst5|display_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[10]~51_combout\ = (\inst5|display_counter\(10) & (\inst5|display_counter[9]~50\ $ (GND))) # (!\inst5|display_counter\(10) & (!\inst5|display_counter[9]~50\ & VCC))
-- \inst5|display_counter[10]~52\ = CARRY((\inst5|display_counter\(10) & !\inst5|display_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(10),
	datad => VCC,
	cin => \inst5|display_counter[9]~50\,
	combout => \inst5|display_counter[10]~51_combout\,
	cout => \inst5|display_counter[10]~52\);

-- Location: FF_X51_Y28_N23
\inst5|display_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[10]~51_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(10));

-- Location: LCCOMB_X51_Y28_N24
\inst5|display_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[11]~53_combout\ = (\inst5|display_counter\(11) & (!\inst5|display_counter[10]~52\)) # (!\inst5|display_counter\(11) & ((\inst5|display_counter[10]~52\) # (GND)))
-- \inst5|display_counter[11]~54\ = CARRY((!\inst5|display_counter[10]~52\) # (!\inst5|display_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(11),
	datad => VCC,
	cin => \inst5|display_counter[10]~52\,
	combout => \inst5|display_counter[11]~53_combout\,
	cout => \inst5|display_counter[11]~54\);

-- Location: FF_X51_Y28_N25
\inst5|display_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[11]~53_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(11));

-- Location: LCCOMB_X51_Y28_N26
\inst5|display_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[12]~55_combout\ = (\inst5|display_counter\(12) & (\inst5|display_counter[11]~54\ $ (GND))) # (!\inst5|display_counter\(12) & (!\inst5|display_counter[11]~54\ & VCC))
-- \inst5|display_counter[12]~56\ = CARRY((\inst5|display_counter\(12) & !\inst5|display_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(12),
	datad => VCC,
	cin => \inst5|display_counter[11]~54\,
	combout => \inst5|display_counter[12]~55_combout\,
	cout => \inst5|display_counter[12]~56\);

-- Location: FF_X51_Y28_N27
\inst5|display_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[12]~55_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(12));

-- Location: LCCOMB_X51_Y28_N28
\inst5|display_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[13]~57_combout\ = (\inst5|display_counter\(13) & (!\inst5|display_counter[12]~56\)) # (!\inst5|display_counter\(13) & ((\inst5|display_counter[12]~56\) # (GND)))
-- \inst5|display_counter[13]~58\ = CARRY((!\inst5|display_counter[12]~56\) # (!\inst5|display_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(13),
	datad => VCC,
	cin => \inst5|display_counter[12]~56\,
	combout => \inst5|display_counter[13]~57_combout\,
	cout => \inst5|display_counter[13]~58\);

-- Location: FF_X51_Y28_N29
\inst5|display_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[13]~57_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(13));

-- Location: LCCOMB_X51_Y28_N30
\inst5|display_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[14]~59_combout\ = (\inst5|display_counter\(14) & (\inst5|display_counter[13]~58\ $ (GND))) # (!\inst5|display_counter\(14) & (!\inst5|display_counter[13]~58\ & VCC))
-- \inst5|display_counter[14]~60\ = CARRY((\inst5|display_counter\(14) & !\inst5|display_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(14),
	datad => VCC,
	cin => \inst5|display_counter[13]~58\,
	combout => \inst5|display_counter[14]~59_combout\,
	cout => \inst5|display_counter[14]~60\);

-- Location: FF_X51_Y28_N31
\inst5|display_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[14]~59_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(14));

-- Location: LCCOMB_X51_Y27_N0
\inst5|display_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[15]~61_combout\ = (\inst5|display_counter\(15) & (!\inst5|display_counter[14]~60\)) # (!\inst5|display_counter\(15) & ((\inst5|display_counter[14]~60\) # (GND)))
-- \inst5|display_counter[15]~62\ = CARRY((!\inst5|display_counter[14]~60\) # (!\inst5|display_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(15),
	datad => VCC,
	cin => \inst5|display_counter[14]~60\,
	combout => \inst5|display_counter[15]~61_combout\,
	cout => \inst5|display_counter[15]~62\);

-- Location: FF_X51_Y27_N1
\inst5|display_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[15]~61_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(15));

-- Location: LCCOMB_X51_Y27_N2
\inst5|display_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[16]~63_combout\ = (\inst5|display_counter\(16) & (\inst5|display_counter[15]~62\ $ (GND))) # (!\inst5|display_counter\(16) & (!\inst5|display_counter[15]~62\ & VCC))
-- \inst5|display_counter[16]~64\ = CARRY((\inst5|display_counter\(16) & !\inst5|display_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(16),
	datad => VCC,
	cin => \inst5|display_counter[15]~62\,
	combout => \inst5|display_counter[16]~63_combout\,
	cout => \inst5|display_counter[16]~64\);

-- Location: FF_X51_Y27_N3
\inst5|display_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[16]~63_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(16));

-- Location: LCCOMB_X51_Y27_N4
\inst5|display_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[17]~65_combout\ = (\inst5|display_counter\(17) & (!\inst5|display_counter[16]~64\)) # (!\inst5|display_counter\(17) & ((\inst5|display_counter[16]~64\) # (GND)))
-- \inst5|display_counter[17]~66\ = CARRY((!\inst5|display_counter[16]~64\) # (!\inst5|display_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(17),
	datad => VCC,
	cin => \inst5|display_counter[16]~64\,
	combout => \inst5|display_counter[17]~65_combout\,
	cout => \inst5|display_counter[17]~66\);

-- Location: FF_X51_Y27_N5
\inst5|display_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[17]~65_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(17));

-- Location: LCCOMB_X51_Y27_N6
\inst5|display_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[18]~67_combout\ = (\inst5|display_counter\(18) & (\inst5|display_counter[17]~66\ $ (GND))) # (!\inst5|display_counter\(18) & (!\inst5|display_counter[17]~66\ & VCC))
-- \inst5|display_counter[18]~68\ = CARRY((\inst5|display_counter\(18) & !\inst5|display_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(18),
	datad => VCC,
	cin => \inst5|display_counter[17]~66\,
	combout => \inst5|display_counter[18]~67_combout\,
	cout => \inst5|display_counter[18]~68\);

-- Location: FF_X51_Y27_N7
\inst5|display_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[18]~67_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(18));

-- Location: LCCOMB_X51_Y27_N8
\inst5|display_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[19]~69_combout\ = (\inst5|display_counter\(19) & (!\inst5|display_counter[18]~68\)) # (!\inst5|display_counter\(19) & ((\inst5|display_counter[18]~68\) # (GND)))
-- \inst5|display_counter[19]~70\ = CARRY((!\inst5|display_counter[18]~68\) # (!\inst5|display_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(19),
	datad => VCC,
	cin => \inst5|display_counter[18]~68\,
	combout => \inst5|display_counter[19]~69_combout\,
	cout => \inst5|display_counter[19]~70\);

-- Location: FF_X51_Y27_N9
\inst5|display_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[19]~69_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(19));

-- Location: LCCOMB_X51_Y27_N10
\inst5|display_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[20]~71_combout\ = (\inst5|display_counter\(20) & (\inst5|display_counter[19]~70\ $ (GND))) # (!\inst5|display_counter\(20) & (!\inst5|display_counter[19]~70\ & VCC))
-- \inst5|display_counter[20]~72\ = CARRY((\inst5|display_counter\(20) & !\inst5|display_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(20),
	datad => VCC,
	cin => \inst5|display_counter[19]~70\,
	combout => \inst5|display_counter[20]~71_combout\,
	cout => \inst5|display_counter[20]~72\);

-- Location: FF_X51_Y27_N11
\inst5|display_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[20]~71_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(20));

-- Location: LCCOMB_X51_Y27_N12
\inst5|display_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[21]~73_combout\ = (\inst5|display_counter\(21) & (!\inst5|display_counter[20]~72\)) # (!\inst5|display_counter\(21) & ((\inst5|display_counter[20]~72\) # (GND)))
-- \inst5|display_counter[21]~74\ = CARRY((!\inst5|display_counter[20]~72\) # (!\inst5|display_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(21),
	datad => VCC,
	cin => \inst5|display_counter[20]~72\,
	combout => \inst5|display_counter[21]~73_combout\,
	cout => \inst5|display_counter[21]~74\);

-- Location: FF_X51_Y27_N13
\inst5|display_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[21]~73_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(21));

-- Location: LCCOMB_X51_Y27_N14
\inst5|display_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[22]~75_combout\ = (\inst5|display_counter\(22) & (\inst5|display_counter[21]~74\ $ (GND))) # (!\inst5|display_counter\(22) & (!\inst5|display_counter[21]~74\ & VCC))
-- \inst5|display_counter[22]~76\ = CARRY((\inst5|display_counter\(22) & !\inst5|display_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(22),
	datad => VCC,
	cin => \inst5|display_counter[21]~74\,
	combout => \inst5|display_counter[22]~75_combout\,
	cout => \inst5|display_counter[22]~76\);

-- Location: FF_X51_Y27_N15
\inst5|display_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[22]~75_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(22));

-- Location: LCCOMB_X51_Y27_N16
\inst5|display_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[23]~77_combout\ = (\inst5|display_counter\(23) & (!\inst5|display_counter[22]~76\)) # (!\inst5|display_counter\(23) & ((\inst5|display_counter[22]~76\) # (GND)))
-- \inst5|display_counter[23]~78\ = CARRY((!\inst5|display_counter[22]~76\) # (!\inst5|display_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(23),
	datad => VCC,
	cin => \inst5|display_counter[22]~76\,
	combout => \inst5|display_counter[23]~77_combout\,
	cout => \inst5|display_counter[23]~78\);

-- Location: FF_X51_Y27_N17
\inst5|display_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[23]~77_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(23));

-- Location: LCCOMB_X51_Y27_N18
\inst5|display_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[24]~79_combout\ = (\inst5|display_counter\(24) & (\inst5|display_counter[23]~78\ $ (GND))) # (!\inst5|display_counter\(24) & (!\inst5|display_counter[23]~78\ & VCC))
-- \inst5|display_counter[24]~80\ = CARRY((\inst5|display_counter\(24) & !\inst5|display_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(24),
	datad => VCC,
	cin => \inst5|display_counter[23]~78\,
	combout => \inst5|display_counter[24]~79_combout\,
	cout => \inst5|display_counter[24]~80\);

-- Location: FF_X51_Y27_N19
\inst5|display_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[24]~79_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(24));

-- Location: LCCOMB_X51_Y27_N20
\inst5|display_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[25]~81_combout\ = (\inst5|display_counter\(25) & (!\inst5|display_counter[24]~80\)) # (!\inst5|display_counter\(25) & ((\inst5|display_counter[24]~80\) # (GND)))
-- \inst5|display_counter[25]~82\ = CARRY((!\inst5|display_counter[24]~80\) # (!\inst5|display_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(25),
	datad => VCC,
	cin => \inst5|display_counter[24]~80\,
	combout => \inst5|display_counter[25]~81_combout\,
	cout => \inst5|display_counter[25]~82\);

-- Location: FF_X51_Y27_N21
\inst5|display_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[25]~81_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(25));

-- Location: LCCOMB_X51_Y27_N22
\inst5|display_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[26]~83_combout\ = (\inst5|display_counter\(26) & (\inst5|display_counter[25]~82\ $ (GND))) # (!\inst5|display_counter\(26) & (!\inst5|display_counter[25]~82\ & VCC))
-- \inst5|display_counter[26]~84\ = CARRY((\inst5|display_counter\(26) & !\inst5|display_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(26),
	datad => VCC,
	cin => \inst5|display_counter[25]~82\,
	combout => \inst5|display_counter[26]~83_combout\,
	cout => \inst5|display_counter[26]~84\);

-- Location: FF_X51_Y27_N23
\inst5|display_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[26]~83_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(26));

-- Location: LCCOMB_X51_Y27_N24
\inst5|display_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[27]~85_combout\ = (\inst5|display_counter\(27) & (!\inst5|display_counter[26]~84\)) # (!\inst5|display_counter\(27) & ((\inst5|display_counter[26]~84\) # (GND)))
-- \inst5|display_counter[27]~86\ = CARRY((!\inst5|display_counter[26]~84\) # (!\inst5|display_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(27),
	datad => VCC,
	cin => \inst5|display_counter[26]~84\,
	combout => \inst5|display_counter[27]~85_combout\,
	cout => \inst5|display_counter[27]~86\);

-- Location: FF_X51_Y27_N25
\inst5|display_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[27]~85_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(27));

-- Location: LCCOMB_X51_Y27_N26
\inst5|display_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[28]~87_combout\ = (\inst5|display_counter\(28) & (\inst5|display_counter[27]~86\ $ (GND))) # (!\inst5|display_counter\(28) & (!\inst5|display_counter[27]~86\ & VCC))
-- \inst5|display_counter[28]~88\ = CARRY((\inst5|display_counter\(28) & !\inst5|display_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(28),
	datad => VCC,
	cin => \inst5|display_counter[27]~86\,
	combout => \inst5|display_counter[28]~87_combout\,
	cout => \inst5|display_counter[28]~88\);

-- Location: FF_X51_Y27_N27
\inst5|display_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[28]~87_combout\,
	asdata => VCC,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(28));

-- Location: LCCOMB_X51_Y27_N28
\inst5|display_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[29]~89_combout\ = (\inst5|display_counter\(29) & (!\inst5|display_counter[28]~88\)) # (!\inst5|display_counter\(29) & ((\inst5|display_counter[28]~88\) # (GND)))
-- \inst5|display_counter[29]~90\ = CARRY((!\inst5|display_counter[28]~88\) # (!\inst5|display_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|display_counter\(29),
	datad => VCC,
	cin => \inst5|display_counter[28]~88\,
	combout => \inst5|display_counter[29]~89_combout\,
	cout => \inst5|display_counter[29]~90\);

-- Location: FF_X51_Y27_N29
\inst5|display_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[29]~89_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(29));

-- Location: LCCOMB_X51_Y27_N30
\inst5|display_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_counter[30]~91_combout\ = \inst5|display_counter\(30) $ (!\inst5|display_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(30),
	cin => \inst5|display_counter[29]~90\,
	combout => \inst5|display_counter[30]~91_combout\);

-- Location: FF_X51_Y27_N31
\inst5|display_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_counter[30]~91_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_counter\(30));

-- Location: LCCOMB_X50_Y27_N2
\inst5|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = (!\inst5|display_counter\(26) & (!\inst5|display_counter\(25) & !\inst5|display_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(26),
	datac => \inst5|display_counter\(25),
	datad => \inst5|display_counter\(24),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y27_N30
\inst5|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~5_combout\ = (((!\inst5|display_counter\(23)) # (!\inst5|display_counter\(20))) # (!\inst5|display_counter\(21))) # (!\inst5|display_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(22),
	datab => \inst5|display_counter\(21),
	datac => \inst5|display_counter\(20),
	datad => \inst5|display_counter\(23),
	combout => \inst5|LessThan1~5_combout\);

-- Location: LCCOMB_X50_Y27_N4
\inst5|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = (!\inst5|display_counter\(18) & (!\inst5|display_counter\(19) & (!\inst5|display_counter\(17) & !\inst5|display_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(18),
	datab => \inst5|display_counter\(19),
	datac => \inst5|display_counter\(17),
	datad => \inst5|display_counter\(16),
	combout => \inst5|LessThan1~1_combout\);

-- Location: LCCOMB_X51_Y28_N0
\inst5|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~2_combout\ = (!\inst5|display_counter\(10) & (!\inst5|display_counter\(9) & ((!\inst5|display_counter\(8)) # (!\inst5|display_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(10),
	datab => \inst5|display_counter\(7),
	datac => \inst5|display_counter\(8),
	datad => \inst5|display_counter\(9),
	combout => \inst5|LessThan1~2_combout\);

-- Location: LCCOMB_X50_Y27_N10
\inst5|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~3_combout\ = (!\inst5|display_counter\(13) & (((!\inst5|display_counter\(11) & \inst5|LessThan1~2_combout\)) # (!\inst5|display_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(11),
	datab => \inst5|display_counter\(13),
	datac => \inst5|LessThan1~2_combout\,
	datad => \inst5|display_counter\(12),
	combout => \inst5|LessThan1~3_combout\);

-- Location: LCCOMB_X50_Y27_N0
\inst5|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~4_combout\ = (\inst5|LessThan1~1_combout\ & (((\inst5|LessThan1~3_combout\) # (!\inst5|display_counter\(15))) # (!\inst5|display_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(14),
	datab => \inst5|display_counter\(15),
	datac => \inst5|LessThan1~1_combout\,
	datad => \inst5|LessThan1~3_combout\,
	combout => \inst5|LessThan1~4_combout\);

-- Location: LCCOMB_X50_Y27_N12
\inst5|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~6_combout\ = ((\inst5|LessThan1~0_combout\ & ((\inst5|LessThan1~5_combout\) # (\inst5|LessThan1~4_combout\)))) # (!\inst5|display_counter\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(27),
	datab => \inst5|LessThan1~0_combout\,
	datac => \inst5|LessThan1~5_combout\,
	datad => \inst5|LessThan1~4_combout\,
	combout => \inst5|LessThan1~6_combout\);

-- Location: LCCOMB_X50_Y27_N22
\inst5|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~7_combout\ = (\inst5|display_counter\(30)) # ((\inst5|display_counter\(29)) # ((\inst5|display_counter\(28)) # (!\inst5|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_counter\(30),
	datab => \inst5|display_counter\(29),
	datac => \inst5|display_counter\(28),
	datad => \inst5|LessThan1~6_combout\,
	combout => \inst5|LessThan1~7_combout\);

-- Location: LCCOMB_X50_Y27_N16
\inst5|display_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|display_state~feeder_combout\ = \inst5|LessThan1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan1~7_combout\,
	combout => \inst5|display_state~feeder_combout\);

-- Location: FF_X50_Y27_N17
\inst5|display_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|display_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|display_state~q\);

-- Location: LCCOMB_X49_Y28_N26
\inst5|lcd_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~155_combout\ = (!\inst5|charCount\(3) & (!\inst5|charCount\(4) & ((!\inst5|lcd_data~35_combout\) # (!\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|lcd_data~35_combout\,
	datac => \inst5|charCount\(3),
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~155_combout\);

-- Location: LCCOMB_X45_Y28_N20
\inst5|lcd_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~40_combout\ = (\inst5|charCount\(4) & ((\inst5|charCount\(3)) # ((\inst5|charCount\(0) & \inst5|charCount\(1))))) # (!\inst5|charCount\(4) & ((\inst5|charCount\(1)) # (\inst5|charCount\(3) $ (\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~40_combout\);

-- Location: LCCOMB_X45_Y28_N14
\inst5|lcd_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~41_combout\ = \inst5|charCount\(4) $ (((\inst5|charCount\(2)) # (\inst5|lcd_data~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|lcd_data~40_combout\,
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~41_combout\);

-- Location: LCCOMB_X47_Y26_N24
\inst5|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal14~0_combout\ = (\inst5|lineCount\(1)) # (\inst5|lineCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|lineCount\(1),
	datad => \inst5|lineCount\(0),
	combout => \inst5|Equal14~0_combout\);

-- Location: LCCOMB_X46_Y28_N26
\inst5|lcd_data~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~169_combout\ = (\inst5|charCount\(0) & ((\inst5|charCount\(1) & ((!\inst5|charCount\(4)))) # (!\inst5|charCount\(1) & (!\inst5|charCount\(2))))) # (!\inst5|charCount\(0) & (!\inst5|charCount\(2) & ((\inst5|charCount\(4)) # 
-- (\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(2),
	datac => \inst5|charCount\(4),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~169_combout\);

-- Location: LCCOMB_X45_Y28_N28
\inst5|lcd_data~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~170_combout\ = (\inst5|charCount\(3) & (!\inst5|charCount\(4) & ((\inst5|charCount\(0)) # (!\inst5|lcd_data~169_combout\)))) # (!\inst5|charCount\(3) & (((\inst5|lcd_data~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|lcd_data~169_combout\,
	combout => \inst5|lcd_data~170_combout\);

-- Location: LCCOMB_X46_Y28_N18
\inst5|lcd_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~37_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0))))) # (!\inst5|lineCount\(1) & ((\inst5|lineCount\(0) & ((\inst5|lcd_data~170_combout\))) # (!\inst5|lineCount\(0) & (\inst5|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(6),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~170_combout\,
	combout => \inst5|lcd_data~37_combout\);

-- Location: LCCOMB_X45_Y28_N16
\inst5|lcd_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~36_combout\ = (\inst5|charCount\(2) & (\inst5|charCount\(3))) # (!\inst5|charCount\(2) & ((\inst5|charCount\(3) & ((\inst5|charCount\(1)))) # (!\inst5|charCount\(3) & (\inst5|charCount\(0) & !\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~36_combout\);

-- Location: LCCOMB_X45_Y28_N26
\inst5|lcd_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~38_combout\ = (\inst5|charCount\(3) & (!\inst5|charCount\(0) & (\inst5|charCount\(2) $ (\inst5|charCount\(1))))) # (!\inst5|charCount\(3) & (!\inst5|charCount\(2) & (\inst5|charCount\(0) & !\inst5|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~38_combout\);

-- Location: LCCOMB_X47_Y27_N28
\inst5|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal11~0_combout\ = (!\inst5|charCount\(3) & (\inst5|charCount\(4) & !\inst5|charCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(4),
	datad => \inst5|charCount\(2),
	combout => \inst5|Equal11~0_combout\);

-- Location: LCCOMB_X46_Y28_N8
\inst5|lcd_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~39_combout\ = ((\inst5|charCount\(1) & \inst5|charCount\(0))) # (!\inst5|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCount\(1),
	datac => \inst5|Equal11~0_combout\,
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~39_combout\);

-- Location: LCCOMB_X46_Y28_N6
\inst5|lcd_data~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~167_combout\ = (\inst5|charCount\(4) & (((!\inst5|lcd_data~39_combout\ & \inst5|lcd_data~37_combout\)))) # (!\inst5|charCount\(4) & (((!\inst5|lcd_data~37_combout\)) # (!\inst5|lcd_data~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~38_combout\,
	datab => \inst5|charCount\(4),
	datac => \inst5|lcd_data~39_combout\,
	datad => \inst5|lcd_data~37_combout\,
	combout => \inst5|lcd_data~167_combout\);

-- Location: LCCOMB_X46_Y28_N16
\inst5|lcd_data~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~168_combout\ = (\inst5|lineCount\(1) & (\inst5|lcd_data~167_combout\ & ((\inst5|lcd_data~37_combout\) # (!\inst5|lcd_data~36_combout\)))) # (!\inst5|lineCount\(1) & (\inst5|lcd_data~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lineCount\(1),
	datab => \inst5|lcd_data~37_combout\,
	datac => \inst5|lcd_data~36_combout\,
	datad => \inst5|lcd_data~167_combout\,
	combout => \inst5|lcd_data~168_combout\);

-- Location: LCCOMB_X46_Y28_N2
\inst5|lcd_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~42_combout\ = (\inst5|display_state~q\ & (((\inst5|Equal14~0_combout\)))) # (!\inst5|display_state~q\ & ((\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~168_combout\))) # (!\inst5|Equal14~0_combout\ & (\inst5|lcd_data~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~41_combout\,
	datab => \inst5|display_state~q\,
	datac => \inst5|Equal14~0_combout\,
	datad => \inst5|lcd_data~168_combout\,
	combout => \inst5|lcd_data~42_combout\);

-- Location: LCCOMB_X46_Y28_N4
\inst5|lcd_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~45_combout\ = (\inst5|display_state~q\ & ((\inst5|lcd_data~42_combout\ & (\inst5|lcd_data~44_combout\)) # (!\inst5|lcd_data~42_combout\ & ((\inst5|lcd_data~155_combout\))))) # (!\inst5|display_state~q\ & (((\inst5|lcd_data~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~44_combout\,
	datab => \inst5|display_state~q\,
	datac => \inst5|lcd_data~155_combout\,
	datad => \inst5|lcd_data~42_combout\,
	combout => \inst5|lcd_data~45_combout\);

-- Location: FF_X46_Y28_N5
\inst5|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(6));

-- Location: LCCOMB_X48_Y32_N18
\inst8|dataStorage[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataStorage[6]~0_combout\ = !\inst5|lcd_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|lcd_data\(6),
	combout => \inst8|dataStorage[6]~0_combout\);

-- Location: FF_X48_Y32_N19
\inst8|dataStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|dataStorage[6]~0_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(6));

-- Location: LCCOMB_X48_Y32_N12
\inst8|dataOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[6]~2_combout\ = (\inst8|state.sendingAddress~q\ & (((\inst8|addressStorage\(6))))) # (!\inst8|state.sendingAddress~q\ & (\inst8|state.sendingData~q\ & ((!\inst8|dataStorage\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.sendingAddress~q\,
	datab => \inst8|state.sendingData~q\,
	datac => \inst8|addressStorage\(6),
	datad => \inst8|dataStorage\(6),
	combout => \inst8|dataOut[6]~2_combout\);

-- Location: LCCOMB_X45_Y33_N26
\inst8|dataOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[6]~3_combout\ = (\inst8|dataOut[1]~1_combout\ & (\inst8|dataOut[6]~2_combout\ & !\inst8|state.init7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dataOut[1]~1_combout\,
	datac => \inst8|dataOut[6]~2_combout\,
	datad => \inst8|state.init7~q\,
	combout => \inst8|dataOut[6]~3_combout\);

-- Location: LCCOMB_X46_Y33_N2
\inst8|dataOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[5]~5_combout\ = (\inst8|state.init7~q\) # (!\inst8|dataOut[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|dataOut[1]~1_combout\,
	datad => \inst8|state.init7~q\,
	combout => \inst8|dataOut[5]~5_combout\);

-- Location: LCCOMB_X47_Y29_N14
\inst5|lcd_posY[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_posY[1]~feeder_combout\ = \inst5|lineCount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|lineCount\(1),
	combout => \inst5|lcd_posY[1]~feeder_combout\);

-- Location: FF_X47_Y29_N15
\inst5|lcd_posY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_posY[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posY\(1));

-- Location: FF_X46_Y28_N31
\inst5|lcd_posX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|charCount\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posX\(3));

-- Location: LCCOMB_X47_Y28_N22
\inst5|lcd_posX[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_posX[2]~feeder_combout\ = \inst5|charCount\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_posX[2]~feeder_combout\);

-- Location: FF_X47_Y28_N23
\inst5|lcd_posX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_posX[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posX\(2));

-- Location: LCCOMB_X47_Y28_N4
\inst5|lcd_posX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_posX[4]~feeder_combout\ = \inst5|charCount\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(4),
	combout => \inst5|lcd_posX[4]~feeder_combout\);

-- Location: FF_X47_Y28_N5
\inst5|lcd_posX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_posX[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posX\(4));

-- Location: LCCOMB_X47_Y30_N20
\inst8|addressStorage~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|addressStorage~0_combout\ = (\inst5|lcd_posY\(1) & ((\inst5|lcd_posX\(4)) # ((\inst5|lcd_posX\(3) & \inst5|lcd_posX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_posY\(1),
	datab => \inst5|lcd_posX\(3),
	datac => \inst5|lcd_posX\(2),
	datad => \inst5|lcd_posX\(4),
	combout => \inst8|addressStorage~0_combout\);

-- Location: FF_X47_Y30_N21
\inst8|addressStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|addressStorage~0_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(5));

-- Location: LCCOMB_X49_Y28_N14
\inst5|lcd_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~50_combout\ = (\inst5|charCount\(4)) # ((\inst5|charCount\(3)) # ((\inst5|charCount\(2)) # (\inst5|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~50_combout\);

-- Location: LCCOMB_X45_Y28_N0
\inst5|lcd_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~54_combout\ = (\inst5|charCount\(3) & ((\inst5|charCount\(2) $ (!\inst5|charCount\(1))) # (!\inst5|charCount\(0)))) # (!\inst5|charCount\(3) & ((\inst5|charCount\(2)) # ((\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~54_combout\);

-- Location: LCCOMB_X45_Y28_N10
\inst5|lcd_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~55_combout\ = (\inst5|charCount\(4)) # (\inst5|lcd_data~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datad => \inst5|lcd_data~54_combout\,
	combout => \inst5|lcd_data~55_combout\);

-- Location: LCCOMB_X49_Y28_N16
\inst5|lcd_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~51_combout\ = (\inst5|charCount\(1) & ((\inst5|charCount\(3) & (!\inst5|charCount\(2) & \inst5|charCount\(0))) # (!\inst5|charCount\(3) & ((\inst5|charCount\(0)) # (!\inst5|charCount\(2)))))) # (!\inst5|charCount\(1) & 
-- (!\inst5|charCount\(3) & (!\inst5|charCount\(2) & \inst5|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~51_combout\);

-- Location: LCCOMB_X49_Y28_N22
\inst5|lcd_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~52_combout\ = (\inst5|charCount\(4)) # (!\inst5|lcd_data~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datad => \inst5|lcd_data~51_combout\,
	combout => \inst5|lcd_data~52_combout\);

-- Location: LCCOMB_X49_Y28_N2
\inst5|lcd_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~53_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0))))) # (!\inst5|lineCount\(1) & ((\inst5|lineCount\(0) & (\inst5|lcd_data~52_combout\)) # (!\inst5|lineCount\(0) & ((\inst5|lcd_data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~52_combout\,
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data\(5),
	combout => \inst5|lcd_data~53_combout\);

-- Location: LCCOMB_X49_Y28_N28
\inst5|lcd_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~56_combout\ = (\inst5|lineCount\(1) & ((\inst5|lcd_data~53_combout\ & ((\inst5|lcd_data~55_combout\))) # (!\inst5|lcd_data~53_combout\ & (\inst5|lcd_data~50_combout\)))) # (!\inst5|lineCount\(1) & (((\inst5|lcd_data~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lineCount\(1),
	datab => \inst5|lcd_data~50_combout\,
	datac => \inst5|lcd_data~55_combout\,
	datad => \inst5|lcd_data~53_combout\,
	combout => \inst5|lcd_data~56_combout\);

-- Location: LCCOMB_X49_Y28_N10
\inst5|lcd_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~46_combout\ = (\inst5|charCount\(1)) # ((\inst5|lineCount\(1)) # ((\inst5|charCount\(2)) # (!\inst5|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|lineCount\(1),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~46_combout\);

-- Location: LCCOMB_X49_Y28_N8
\inst5|lcd_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~47_combout\ = (\inst5|display_state~q\ & (((\inst5|lcd_data~46_combout\) # (!\inst5|lcd_data~34_combout\)) # (!\inst5|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_state~q\,
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data~34_combout\,
	datad => \inst5|lcd_data~46_combout\,
	combout => \inst5|lcd_data~47_combout\);

-- Location: LCCOMB_X49_Y28_N6
\inst5|lcd_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~48_combout\ = (!\inst5|charCount\(2) & ((\inst5|charCount\(1) & (\inst5|charCount\(3) & !\inst5|charCount\(0))) # (!\inst5|charCount\(1) & (!\inst5|charCount\(3) & \inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~48_combout\);

-- Location: LCCOMB_X49_Y28_N20
\inst5|lcd_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~49_combout\ = (\inst5|lcd_data~47_combout\) # ((!\inst5|Equal14~0_combout\ & ((\inst5|charCount\(4)) # (!\inst5|lcd_data~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|lcd_data~47_combout\,
	datac => \inst5|Equal14~0_combout\,
	datad => \inst5|lcd_data~48_combout\,
	combout => \inst5|lcd_data~49_combout\);

-- Location: LCCOMB_X49_Y28_N0
\inst5|lcd_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~57_combout\ = (\inst5|lcd_data~49_combout\) # ((!\inst5|display_state~q\ & (\inst5|lcd_data~56_combout\ & \inst5|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_state~q\,
	datab => \inst5|lcd_data~56_combout\,
	datac => \inst5|Equal14~0_combout\,
	datad => \inst5|lcd_data~49_combout\,
	combout => \inst5|lcd_data~57_combout\);

-- Location: FF_X49_Y28_N1
\inst5|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(5));

-- Location: LCCOMB_X47_Y30_N30
\inst8|dataStorage[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataStorage[5]~1_combout\ = !\inst5|lcd_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|lcd_data\(5),
	combout => \inst8|dataStorage[5]~1_combout\);

-- Location: FF_X47_Y30_N31
\inst8|dataStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|dataStorage[5]~1_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(5));

-- Location: LCCOMB_X47_Y30_N16
\inst8|dataOut[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[5]~4_combout\ = (\inst8|state.sendingAddress~q\ & (\inst8|addressStorage\(5))) # (!\inst8|state.sendingAddress~q\ & (((!\inst8|dataStorage\(5) & \inst8|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.sendingAddress~q\,
	datab => \inst8|addressStorage\(5),
	datac => \inst8|dataStorage\(5),
	datad => \inst8|state.sendingData~q\,
	combout => \inst8|dataOut[5]~4_combout\);

-- Location: LCCOMB_X47_Y30_N26
\inst8|dataOut[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[5]~6_combout\ = (\inst8|dataOut[5]~5_combout\ & (\inst8|state.init0~q\ & (!\inst8|dataOut[1]~0_combout\))) # (!\inst8|dataOut[5]~5_combout\ & ((\inst8|dataOut[5]~4_combout\) # ((\inst8|state.init0~q\ & !\inst8|dataOut[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[5]~5_combout\,
	datab => \inst8|state.init0~q\,
	datac => \inst8|dataOut[1]~0_combout\,
	datad => \inst8|dataOut[5]~4_combout\,
	combout => \inst8|dataOut[5]~6_combout\);

-- Location: LCCOMB_X47_Y30_N12
\inst8|addressStorage~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|addressStorage~1_combout\ = \inst5|lcd_posX\(4) $ (((\inst5|lcd_posY\(1) & ((!\inst5|lcd_posX\(2)) # (!\inst5|lcd_posX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_posY\(1),
	datab => \inst5|lcd_posX\(3),
	datac => \inst5|lcd_posX\(2),
	datad => \inst5|lcd_posX\(4),
	combout => \inst8|addressStorage~1_combout\);

-- Location: FF_X47_Y30_N13
\inst8|addressStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|addressStorage~1_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(4));

-- Location: LCCOMB_X45_Y28_N12
\inst5|lcd_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~67_combout\ = (\inst5|charCount\(2) & (!\inst5|charCount\(3) & (\inst5|charCount\(0) & \inst5|charCount\(1)))) # (!\inst5|charCount\(2) & (\inst5|charCount\(3) & ((\inst5|charCount\(0)) # (\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~67_combout\);

-- Location: LCCOMB_X47_Y25_N28
\inst5|lcd_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~68_combout\ = (!\inst5|charCount\(2) & !\inst5|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~68_combout\);

-- Location: LCCOMB_X46_Y28_N30
\inst5|lcd_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~157_combout\ = (\inst5|lcd_data~67_combout\ & (!\inst5|charCount\(4) & ((\inst5|charCount\(3)) # (!\inst5|lcd_data~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~67_combout\,
	datab => \inst5|charCount\(4),
	datac => \inst5|charCount\(3),
	datad => \inst5|lcd_data~68_combout\,
	combout => \inst5|lcd_data~157_combout\);

-- Location: LCCOMB_X45_Y28_N24
\inst5|lcd_data~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~165_combout\ = (\inst5|charCount\(3) & (\inst5|charCount\(1) & ((!\inst5|charCount\(0)) # (!\inst5|charCount\(2))))) # (!\inst5|charCount\(3) & (((\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~165_combout\);

-- Location: LCCOMB_X45_Y28_N18
\inst5|lcd_data~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~166_combout\ = (\inst5|lcd_data~165_combout\ & (\inst5|charCount\(4) $ (((\inst5|charCount\(1)) # (\inst5|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(1),
	datac => \inst5|charCount\(2),
	datad => \inst5|lcd_data~165_combout\,
	combout => \inst5|lcd_data~166_combout\);

-- Location: LCCOMB_X46_Y28_N0
\inst5|lcd_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~69_combout\ = (\inst5|Equal14~0_combout\ & (\inst5|display_state~q\)) # (!\inst5|Equal14~0_combout\ & ((\inst5|display_state~q\ & (\inst5|lcd_data~157_combout\)) # (!\inst5|display_state~q\ & ((\inst5|lcd_data~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal14~0_combout\,
	datab => \inst5|display_state~q\,
	datac => \inst5|lcd_data~157_combout\,
	datad => \inst5|lcd_data~166_combout\,
	combout => \inst5|lcd_data~69_combout\);

-- Location: LCCOMB_X47_Y27_N2
\inst5|lcd_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~64_combout\ = (\inst5|charCount\(2) & ((\inst5|charCount\(3)) # ((\inst5|charCount\(1)) # (!\inst5|charCount\(0))))) # (!\inst5|charCount\(2) & ((\inst5|charCount\(3) & ((\inst5|charCount\(1)))) # (!\inst5|charCount\(3) & 
-- (\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~64_combout\);

-- Location: LCCOMB_X47_Y25_N0
\inst5|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal9~0_combout\ = (!\inst5|charCount\(0) & \inst5|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|Equal9~0_combout\);

-- Location: LCCOMB_X47_Y27_N12
\inst5|lcd_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~65_combout\ = (\inst5|charCount\(4) & (((\inst5|Equal9~0_combout\ & \inst5|Equal11~0_combout\)))) # (!\inst5|charCount\(4) & (((\inst5|Equal9~0_combout\ & \inst5|Equal11~0_combout\)) # (!\inst5|lcd_data~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|lcd_data~64_combout\,
	datac => \inst5|Equal9~0_combout\,
	datad => \inst5|Equal11~0_combout\,
	combout => \inst5|lcd_data~65_combout\);

-- Location: LCCOMB_X47_Y27_N18
\inst5|lcd_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~58_combout\ = (\inst5|charCount\(3) & (\inst5|charCount\(2) & (!\inst5|charCount\(0) & !\inst5|charCount\(1)))) # (!\inst5|charCount\(3) & (\inst5|charCount\(1) & (\inst5|charCount\(2) $ (!\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~58_combout\);

-- Location: LCCOMB_X47_Y27_N4
\inst5|lcd_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~59_combout\ = (\inst5|lcd_data~58_combout\ & (((!\inst5|charCount\(1) & \inst5|Equal11~0_combout\)) # (!\inst5|charCount\(4)))) # (!\inst5|lcd_data~58_combout\ & (!\inst5|charCount\(1) & ((\inst5|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~58_combout\,
	datab => \inst5|charCount\(1),
	datac => \inst5|charCount\(4),
	datad => \inst5|Equal11~0_combout\,
	combout => \inst5|lcd_data~59_combout\);

-- Location: LCCOMB_X47_Y28_N16
\inst5|lcd_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~60_combout\ = (\inst5|charCount\(3) & (!\inst5|charCount\(4) & (!\inst5|charCount\(1) & !\inst5|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|charCount\(4),
	datac => \inst5|charCount\(1),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~60_combout\);

-- Location: LCCOMB_X47_Y28_N26
\inst5|lcd_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~156_combout\ = (!\inst5|charCount\(0) & ((\inst5|lcd_data~60_combout\) # ((!\inst5|charCount\(3) & !\inst5|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|lcd_data~60_combout\,
	datac => \inst5|charCount\(4),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~156_combout\);

-- Location: LCCOMB_X47_Y28_N20
\inst5|lcd_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~61_combout\ = (\inst5|charCount\(0) & (((\inst5|charCount\(1) & \inst5|lcd_data~34_combout\)))) # (!\inst5|charCount\(0) & (\inst5|lcd_data~60_combout\ & (!\inst5|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|lcd_data~60_combout\,
	datac => \inst5|charCount\(1),
	datad => \inst5|lcd_data~34_combout\,
	combout => \inst5|lcd_data~61_combout\);

-- Location: LCCOMB_X47_Y28_N18
\inst5|lcd_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~62_combout\ = (\inst5|charCount\(2) & (!\inst5|charCount\(1) & (\inst5|lcd_data~156_combout\))) # (!\inst5|charCount\(2) & (((\inst5|lcd_data~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(1),
	datac => \inst5|lcd_data~156_combout\,
	datad => \inst5|lcd_data~61_combout\,
	combout => \inst5|lcd_data~62_combout\);

-- Location: LCCOMB_X46_Y28_N20
\inst5|lcd_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~63_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0)) # (\inst5|lcd_data~62_combout\)))) # (!\inst5|lineCount\(1) & (\inst5|lcd_data\(4) & (!\inst5|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(4),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~62_combout\,
	combout => \inst5|lcd_data~63_combout\);

-- Location: LCCOMB_X46_Y28_N22
\inst5|lcd_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~66_combout\ = (\inst5|lineCount\(0) & ((\inst5|lcd_data~63_combout\ & (\inst5|lcd_data~65_combout\)) # (!\inst5|lcd_data~63_combout\ & ((\inst5|lcd_data~59_combout\))))) # (!\inst5|lineCount\(0) & (((\inst5|lcd_data~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~65_combout\,
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data~59_combout\,
	datad => \inst5|lcd_data~63_combout\,
	combout => \inst5|lcd_data~66_combout\);

-- Location: LCCOMB_X46_Y28_N12
\inst5|lcd_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~158_combout\ = (!\inst5|charCount\(4) & ((\inst5|lcd_data~67_combout\) # ((!\inst5|charCount\(3) & \inst5|lcd_data~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~67_combout\,
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(4),
	datad => \inst5|lcd_data~68_combout\,
	combout => \inst5|lcd_data~158_combout\);

-- Location: LCCOMB_X46_Y28_N10
\inst5|lcd_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~70_combout\ = (!\inst5|lineCount\(1) & ((\inst5|lineCount\(0) & (\inst5|lcd_data~158_combout\)) # (!\inst5|lineCount\(0) & ((\inst5|lcd_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~158_combout\,
	datab => \inst5|lineCount\(0),
	datac => \inst5|lineCount\(1),
	datad => \inst5|lcd_data\(4),
	combout => \inst5|lcd_data~70_combout\);

-- Location: LCCOMB_X46_Y28_N24
\inst5|lcd_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~71_combout\ = (\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~69_combout\ & ((\inst5|lcd_data~70_combout\))) # (!\inst5|lcd_data~69_combout\ & (\inst5|lcd_data~66_combout\)))) # (!\inst5|Equal14~0_combout\ & (\inst5|lcd_data~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal14~0_combout\,
	datab => \inst5|lcd_data~69_combout\,
	datac => \inst5|lcd_data~66_combout\,
	datad => \inst5|lcd_data~70_combout\,
	combout => \inst5|lcd_data~71_combout\);

-- Location: FF_X46_Y28_N25
\inst5|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(4));

-- Location: FF_X47_Y30_N19
\inst8|dataStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|lcd_data\(4),
	sload => VCC,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(4));

-- Location: LCCOMB_X47_Y30_N18
\inst8|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[4]~7_combout\ = (\inst8|state.sendingAddress~q\ & (\inst8|addressStorage\(4))) # (!\inst8|state.sendingAddress~q\ & (((\inst8|state.sendingData~q\ & \inst8|dataStorage\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|addressStorage\(4),
	datab => \inst8|state.sendingData~q\,
	datac => \inst8|dataStorage\(4),
	datad => \inst8|state.sendingAddress~q\,
	combout => \inst8|dataOut[4]~7_combout\);

-- Location: LCCOMB_X47_Y30_N0
\inst8|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[4]~8_combout\ = (\inst8|dataOut[5]~5_combout\ & (\inst8|state.init0~q\ & (!\inst8|dataOut[1]~0_combout\))) # (!\inst8|dataOut[5]~5_combout\ & ((\inst8|dataOut[4]~7_combout\) # ((\inst8|state.init0~q\ & !\inst8|dataOut[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[5]~5_combout\,
	datab => \inst8|state.init0~q\,
	datac => \inst8|dataOut[1]~0_combout\,
	datad => \inst8|dataOut[4]~7_combout\,
	combout => \inst8|dataOut[4]~8_combout\);

-- Location: LCCOMB_X45_Y33_N12
\inst8|dataOut[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[3]~9_combout\ = (\inst8|state.init0~q\ & ((\inst8|state.init5~q\) # (!\inst8|dataOut[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[1]~0_combout\,
	datab => \inst8|state.init5~q\,
	datad => \inst8|state.init0~q\,
	combout => \inst8|dataOut[3]~9_combout\);

-- Location: LCCOMB_X47_Y30_N2
\inst8|addressStorage~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|addressStorage~2_combout\ = \inst5|lcd_posX\(3) $ (((\inst5|lcd_posX\(2) & \inst5|lcd_posY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|lcd_posX\(2),
	datac => \inst5|lcd_posX\(3),
	datad => \inst5|lcd_posY\(1),
	combout => \inst8|addressStorage~2_combout\);

-- Location: FF_X47_Y30_N3
\inst8|addressStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|addressStorage~2_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(3));

-- Location: LCCOMB_X50_Y29_N12
\inst5|converter3|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|LessThan2~1_combout\ = (\inst5|converter3|number\(6)) # (\inst5|converter3|number\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(6),
	datac => \inst5|converter3|number\(4),
	combout => \inst5|converter3|LessThan2~1_combout\);

-- Location: LCCOMB_X51_Y29_N0
\inst5|converter3|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~0_combout\ = \inst5|converter3|number\(1) $ (VCC)
-- \inst5|converter3|Add4~1\ = CARRY(\inst5|converter3|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(1),
	datad => VCC,
	combout => \inst5|converter3|Add4~0_combout\,
	cout => \inst5|converter3|Add4~1\);

-- Location: LCCOMB_X49_Y29_N0
\inst5|converter3|number~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number~9_combout\ = (\inst5|converter3|number~6_combout\ & (\inst5|converter3|Add4~0_combout\)) # (!\inst5|converter3|number~6_combout\ & ((\inst5|converter3|number\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|Add4~0_combout\,
	datac => \inst5|converter3|number\(1),
	datad => \inst5|converter3|number~6_combout\,
	combout => \inst5|converter3|number~9_combout\);

-- Location: FF_X49_Y29_N1
\inst5|converter3|number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number~9_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|converter3|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(1));

-- Location: LCCOMB_X50_Y29_N30
\inst5|converter3|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|LessThan2~0_combout\ = (\inst5|converter3|number\(5)) # ((\inst5|converter3|number\(3) & ((\inst5|converter3|number\(1)) # (\inst5|converter3|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(5),
	datab => \inst5|converter3|number\(3),
	datac => \inst5|converter3|number\(1),
	datad => \inst5|converter3|number\(2),
	combout => \inst5|converter3|LessThan2~0_combout\);

-- Location: LCCOMB_X51_Y29_N26
\inst5|converter3|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|LessThan2~2_combout\ = (!\inst5|converter3|number\(8) & (!\inst5|converter3|number\(7) & (!\inst5|converter3|number\(9) & \inst5|converter3|state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(8),
	datab => \inst5|converter3|number\(7),
	datac => \inst5|converter3|number\(9),
	datad => \inst5|converter3|state~14_combout\,
	combout => \inst5|converter3|LessThan2~2_combout\);

-- Location: LCCOMB_X50_Y29_N14
\inst5|converter3|number~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number~6_combout\ = (\inst5|converter3|state.s3~q\ & ((\inst5|converter3|LessThan2~1_combout\) # ((\inst5|converter3|LessThan2~0_combout\) # (!\inst5|converter3|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|LessThan2~1_combout\,
	datab => \inst5|converter3|state.s3~q\,
	datac => \inst5|converter3|LessThan2~0_combout\,
	datad => \inst5|converter3|LessThan2~2_combout\,
	combout => \inst5|converter3|number~6_combout\);

-- Location: LCCOMB_X50_Y29_N24
\inst5|converter3|digit_int_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_2~0_combout\ = (\inst5|converter3|number\(6) & ((\inst5|converter3|number\(4)) # ((\inst5|converter3|number\(3)) # (\inst5|converter3|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(4),
	datab => \inst5|converter3|number\(3),
	datac => \inst5|converter3|number\(6),
	datad => \inst5|converter3|number\(2),
	combout => \inst5|converter3|digit_int_2~0_combout\);

-- Location: LCCOMB_X50_Y29_N18
\inst5|converter3|digit_int_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_2~1_combout\ = (\inst5|converter3|state.s2~q\ & (((\inst5|converter3|number\(5) & \inst5|converter3|digit_int_2~0_combout\)) # (!\inst5|converter3|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(5),
	datab => \inst5|converter3|digit_int_2~0_combout\,
	datac => \inst5|converter3|state.s2~q\,
	datad => \inst5|converter3|LessThan2~2_combout\,
	combout => \inst5|converter3|digit_int_2~1_combout\);

-- Location: LCCOMB_X50_Y29_N20
\inst5|converter3|number~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number~7_combout\ = (\inst5|converter3|state.s1~q\ & ((\inst5|converter3|digit_int_2~1_combout\) # ((!\inst5|converter3|state.s2~q\ & \inst5|converter3|number~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s2~q\,
	datab => \inst5|converter3|state.s1~q\,
	datac => \inst5|converter3|number~6_combout\,
	datad => \inst5|converter3|digit_int_2~1_combout\,
	combout => \inst5|converter3|number~7_combout\);

-- Location: LCCOMB_X49_Y29_N8
\inst5|converter3|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~0_combout\ = \inst5|converter3|number\(2) $ (VCC)
-- \inst5|converter3|Add2~1\ = CARRY(\inst5|converter3|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(2),
	datad => VCC,
	combout => \inst5|converter3|Add2~0_combout\,
	cout => \inst5|converter3|Add2~1\);

-- Location: LCCOMB_X51_Y29_N2
\inst5|converter3|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~2_combout\ = (\inst5|converter3|number\(2) & (\inst5|converter3|Add4~1\ & VCC)) # (!\inst5|converter3|number\(2) & (!\inst5|converter3|Add4~1\))
-- \inst5|converter3|Add4~3\ = CARRY((!\inst5|converter3|number\(2) & !\inst5|converter3|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(2),
	datad => VCC,
	cin => \inst5|converter3|Add4~1\,
	combout => \inst5|converter3|Add4~2_combout\,
	cout => \inst5|converter3|Add4~3\);

-- Location: LCCOMB_X50_Y29_N26
\inst5|converter3|number~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number~10_combout\ = (\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~0_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|Add2~0_combout\,
	datac => \inst5|converter3|state.s2~q\,
	datad => \inst5|converter3|Add4~2_combout\,
	combout => \inst5|converter3|number~10_combout\);

-- Location: LCCOMB_X49_Y29_N30
\inst5|converter3|number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number~11_combout\ = (\inst5|converter3|number~7_combout\ & ((\inst5|converter3|number~10_combout\))) # (!\inst5|converter3|number~7_combout\ & (\inst5|converter3|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number~7_combout\,
	datac => \inst5|converter3|number\(2),
	datad => \inst5|converter3|number~10_combout\,
	combout => \inst5|converter3|number~11_combout\);

-- Location: FF_X49_Y29_N31
\inst5|converter3|number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number~11_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|converter3|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(2));

-- Location: LCCOMB_X49_Y29_N10
\inst5|converter3|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~2_combout\ = (\inst5|converter3|number\(3) & (\inst5|converter3|Add2~1\ & VCC)) # (!\inst5|converter3|number\(3) & (!\inst5|converter3|Add2~1\))
-- \inst5|converter3|Add2~3\ = CARRY((!\inst5|converter3|number\(3) & !\inst5|converter3|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(3),
	datad => VCC,
	cin => \inst5|converter3|Add2~1\,
	combout => \inst5|converter3|Add2~2_combout\,
	cout => \inst5|converter3|Add2~3\);

-- Location: LCCOMB_X51_Y29_N4
\inst5|converter3|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~4_combout\ = (\inst5|converter3|number\(3) & (\inst5|converter3|Add4~3\ $ (GND))) # (!\inst5|converter3|number\(3) & (!\inst5|converter3|Add4~3\ & VCC))
-- \inst5|converter3|Add4~5\ = CARRY((\inst5|converter3|number\(3) & !\inst5|converter3|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(3),
	datad => VCC,
	cin => \inst5|converter3|Add4~3\,
	combout => \inst5|converter3|Add4~4_combout\,
	cout => \inst5|converter3|Add4~5\);

-- Location: LCCOMB_X50_Y29_N0
\inst5|converter3|number[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[3]~4_combout\ = (\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~2_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|Add2~2_combout\,
	datab => \inst5|converter3|state.s2~q\,
	datad => \inst5|converter3|Add4~4_combout\,
	combout => \inst5|converter3|number[3]~4_combout\);

-- Location: LCCOMB_X52_Y29_N2
\inst5|converter3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~0_combout\ = \inst5|converter3|number\(3) $ (VCC)
-- \inst5|converter3|Add0~1\ = CARRY(\inst5|converter3|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(3),
	datad => VCC,
	combout => \inst5|converter3|Add0~0_combout\,
	cout => \inst5|converter3|Add0~1\);

-- Location: LCCOMB_X50_Y29_N2
\inst5|converter3|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~15_combout\ = (\inst5|converter3|number\(5) & (\inst5|converter3|number\(6) & ((\inst5|converter3|number\(3)) # (\inst5|converter3|number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(5),
	datab => \inst5|converter3|number\(3),
	datac => \inst5|converter3|number\(6),
	datad => \inst5|converter3|number\(4),
	combout => \inst5|converter3|state~15_combout\);

-- Location: LCCOMB_X51_Y29_N28
\inst5|converter3|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~16_combout\ = (\inst5|converter3|number\(8) & (\inst5|converter3|number\(7) & (\inst5|converter3|number\(9) & \inst5|converter3|state~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(8),
	datab => \inst5|converter3|number\(7),
	datac => \inst5|converter3|number\(9),
	datad => \inst5|converter3|state~15_combout\,
	combout => \inst5|converter3|state~16_combout\);

-- Location: LCCOMB_X50_Y29_N16
\inst5|converter3|number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number~8_combout\ = (\inst5|converter3|number~7_combout\) # ((!\inst5|converter3|state.s1~q\ & ((\inst5|converter3|state~16_combout\) # (!\inst5|converter3|state~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state~14_combout\,
	datab => \inst5|converter3|state~16_combout\,
	datac => \inst5|converter3|state.s1~q\,
	datad => \inst5|converter3|number~7_combout\,
	combout => \inst5|converter3|number~8_combout\);

-- Location: FF_X50_Y29_N1
\inst5|converter3|number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number[3]~4_combout\,
	asdata => \inst5|converter3|Add0~0_combout\,
	sload => \inst5|converter3|ALT_INV_state.s1~q\,
	ena => \inst5|converter3|number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(3));

-- Location: LCCOMB_X49_Y29_N12
\inst5|converter3|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~4_combout\ = (\inst5|converter3|number\(4) & ((GND) # (!\inst5|converter3|Add2~3\))) # (!\inst5|converter3|number\(4) & (\inst5|converter3|Add2~3\ $ (GND)))
-- \inst5|converter3|Add2~5\ = CARRY((\inst5|converter3|number\(4)) # (!\inst5|converter3|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(4),
	datad => VCC,
	cin => \inst5|converter3|Add2~3\,
	combout => \inst5|converter3|Add2~4_combout\,
	cout => \inst5|converter3|Add2~5\);

-- Location: LCCOMB_X51_Y29_N6
\inst5|converter3|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~6_combout\ = (\inst5|converter3|number\(4) & (\inst5|converter3|Add4~5\ & VCC)) # (!\inst5|converter3|number\(4) & (!\inst5|converter3|Add4~5\))
-- \inst5|converter3|Add4~7\ = CARRY((!\inst5|converter3|number\(4) & !\inst5|converter3|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(4),
	datad => VCC,
	cin => \inst5|converter3|Add4~5\,
	combout => \inst5|converter3|Add4~6_combout\,
	cout => \inst5|converter3|Add4~7\);

-- Location: LCCOMB_X50_Y29_N22
\inst5|converter3|number[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[4]~5_combout\ = (\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~4_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|Add2~4_combout\,
	datab => \inst5|converter3|state.s2~q\,
	datad => \inst5|converter3|Add4~6_combout\,
	combout => \inst5|converter3|number[4]~5_combout\);

-- Location: LCCOMB_X52_Y29_N4
\inst5|converter3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~2_combout\ = (\inst5|converter3|number\(4) & (\inst5|converter3|Add0~1\ & VCC)) # (!\inst5|converter3|number\(4) & (!\inst5|converter3|Add0~1\))
-- \inst5|converter3|Add0~3\ = CARRY((!\inst5|converter3|number\(4) & !\inst5|converter3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(4),
	datad => VCC,
	cin => \inst5|converter3|Add0~1\,
	combout => \inst5|converter3|Add0~2_combout\,
	cout => \inst5|converter3|Add0~3\);

-- Location: FF_X50_Y29_N23
\inst5|converter3|number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number[4]~5_combout\,
	asdata => \inst5|converter3|Add0~2_combout\,
	sload => \inst5|converter3|ALT_INV_state.s1~q\,
	ena => \inst5|converter3|number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(4));

-- Location: LCCOMB_X51_Y29_N8
\inst5|converter3|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~8_combout\ = (\inst5|converter3|number\(5) & ((GND) # (!\inst5|converter3|Add4~7\))) # (!\inst5|converter3|number\(5) & (\inst5|converter3|Add4~7\ $ (GND)))
-- \inst5|converter3|Add4~9\ = CARRY((\inst5|converter3|number\(5)) # (!\inst5|converter3|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(5),
	datad => VCC,
	cin => \inst5|converter3|Add4~7\,
	combout => \inst5|converter3|Add4~8_combout\,
	cout => \inst5|converter3|Add4~9\);

-- Location: LCCOMB_X49_Y29_N14
\inst5|converter3|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~6_combout\ = (\inst5|converter3|number\(5) & (!\inst5|converter3|Add2~5\)) # (!\inst5|converter3|number\(5) & ((\inst5|converter3|Add2~5\) # (GND)))
-- \inst5|converter3|Add2~7\ = CARRY((!\inst5|converter3|Add2~5\) # (!\inst5|converter3|number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(5),
	datad => VCC,
	cin => \inst5|converter3|Add2~5\,
	combout => \inst5|converter3|Add2~6_combout\,
	cout => \inst5|converter3|Add2~7\);

-- Location: LCCOMB_X50_Y29_N6
\inst5|converter3|number[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[5]~2_combout\ = (\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add2~6_combout\))) # (!\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s2~q\,
	datab => \inst5|converter3|Add4~8_combout\,
	datad => \inst5|converter3|Add2~6_combout\,
	combout => \inst5|converter3|number[5]~2_combout\);

-- Location: LCCOMB_X52_Y29_N6
\inst5|converter3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~4_combout\ = (\inst5|converter3|number\(5) & (\inst5|converter3|Add0~3\ $ (GND))) # (!\inst5|converter3|number\(5) & (!\inst5|converter3|Add0~3\ & VCC))
-- \inst5|converter3|Add0~5\ = CARRY((\inst5|converter3|number\(5) & !\inst5|converter3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(5),
	datad => VCC,
	cin => \inst5|converter3|Add0~3\,
	combout => \inst5|converter3|Add0~4_combout\,
	cout => \inst5|converter3|Add0~5\);

-- Location: FF_X50_Y29_N7
\inst5|converter3|number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number[5]~2_combout\,
	asdata => \inst5|converter3|Add0~4_combout\,
	sload => \inst5|converter3|ALT_INV_state.s1~q\,
	ena => \inst5|converter3|number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(5));

-- Location: LCCOMB_X49_Y29_N16
\inst5|converter3|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~8_combout\ = (\inst5|converter3|number\(6) & (\inst5|converter3|Add2~7\ $ (GND))) # (!\inst5|converter3|number\(6) & (!\inst5|converter3|Add2~7\ & VCC))
-- \inst5|converter3|Add2~9\ = CARRY((\inst5|converter3|number\(6) & !\inst5|converter3|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(6),
	datad => VCC,
	cin => \inst5|converter3|Add2~7\,
	combout => \inst5|converter3|Add2~8_combout\,
	cout => \inst5|converter3|Add2~9\);

-- Location: LCCOMB_X51_Y29_N10
\inst5|converter3|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~10_combout\ = (\inst5|converter3|number\(6) & (\inst5|converter3|Add4~9\ & VCC)) # (!\inst5|converter3|number\(6) & (!\inst5|converter3|Add4~9\))
-- \inst5|converter3|Add4~11\ = CARRY((!\inst5|converter3|number\(6) & !\inst5|converter3|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(6),
	datad => VCC,
	cin => \inst5|converter3|Add4~9\,
	combout => \inst5|converter3|Add4~10_combout\,
	cout => \inst5|converter3|Add4~11\);

-- Location: LCCOMB_X50_Y29_N4
\inst5|converter3|number[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[6]~3_combout\ = (\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~8_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|Add2~8_combout\,
	datab => \inst5|converter3|Add4~10_combout\,
	datad => \inst5|converter3|state.s2~q\,
	combout => \inst5|converter3|number[6]~3_combout\);

-- Location: LCCOMB_X52_Y29_N8
\inst5|converter3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~6_combout\ = (\inst5|converter3|number\(6) & (!\inst5|converter3|Add0~5\)) # (!\inst5|converter3|number\(6) & ((\inst5|converter3|Add0~5\) # (GND)))
-- \inst5|converter3|Add0~7\ = CARRY((!\inst5|converter3|Add0~5\) # (!\inst5|converter3|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(6),
	datad => VCC,
	cin => \inst5|converter3|Add0~5\,
	combout => \inst5|converter3|Add0~6_combout\,
	cout => \inst5|converter3|Add0~7\);

-- Location: FF_X50_Y29_N5
\inst5|converter3|number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number[6]~3_combout\,
	asdata => \inst5|converter3|Add0~6_combout\,
	sload => \inst5|converter3|ALT_INV_state.s1~q\,
	ena => \inst5|converter3|number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(6));

-- Location: LCCOMB_X49_Y29_N18
\inst5|converter3|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~10_combout\ = (\inst5|converter3|number\(7) & (\inst5|converter3|Add2~9\ & VCC)) # (!\inst5|converter3|number\(7) & (!\inst5|converter3|Add2~9\))
-- \inst5|converter3|Add2~11\ = CARRY((!\inst5|converter3|number\(7) & !\inst5|converter3|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(7),
	datad => VCC,
	cin => \inst5|converter3|Add2~9\,
	combout => \inst5|converter3|Add2~10_combout\,
	cout => \inst5|converter3|Add2~11\);

-- Location: LCCOMB_X51_Y29_N12
\inst5|converter3|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~12_combout\ = (\inst5|converter3|number\(7) & ((GND) # (!\inst5|converter3|Add4~11\))) # (!\inst5|converter3|number\(7) & (\inst5|converter3|Add4~11\ $ (GND)))
-- \inst5|converter3|Add4~13\ = CARRY((\inst5|converter3|number\(7)) # (!\inst5|converter3|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(7),
	datad => VCC,
	cin => \inst5|converter3|Add4~11\,
	combout => \inst5|converter3|Add4~12_combout\,
	cout => \inst5|converter3|Add4~13\);

-- Location: LCCOMB_X51_Y29_N24
\inst5|converter3|number[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[7]~0_combout\ = (\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~10_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s2~q\,
	datab => \inst5|converter3|Add2~10_combout\,
	datad => \inst5|converter3|Add4~12_combout\,
	combout => \inst5|converter3|number[7]~0_combout\);

-- Location: LCCOMB_X52_Y29_N10
\inst5|converter3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~9_combout\ = (\inst5|converter3|number\(7) & (\inst5|converter3|Add0~7\ $ (GND))) # (!\inst5|converter3|number\(7) & (!\inst5|converter3|Add0~7\ & VCC))
-- \inst5|converter3|Add0~10\ = CARRY((\inst5|converter3|number\(7) & !\inst5|converter3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(7),
	datad => VCC,
	cin => \inst5|converter3|Add0~7\,
	combout => \inst5|converter3|Add0~9_combout\,
	cout => \inst5|converter3|Add0~10\);

-- Location: FF_X51_Y29_N25
\inst5|converter3|number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number[7]~0_combout\,
	asdata => \inst5|converter3|Add0~9_combout\,
	sload => \inst5|converter3|ALT_INV_state.s1~q\,
	ena => \inst5|converter3|number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(7));

-- Location: LCCOMB_X51_Y29_N14
\inst5|converter3|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~14_combout\ = (\inst5|converter3|number\(8) & (\inst5|converter3|Add4~13\ & VCC)) # (!\inst5|converter3|number\(8) & (!\inst5|converter3|Add4~13\))
-- \inst5|converter3|Add4~15\ = CARRY((!\inst5|converter3|number\(8) & !\inst5|converter3|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(8),
	datad => VCC,
	cin => \inst5|converter3|Add4~13\,
	combout => \inst5|converter3|Add4~14_combout\,
	cout => \inst5|converter3|Add4~15\);

-- Location: LCCOMB_X49_Y29_N20
\inst5|converter3|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~12_combout\ = (\inst5|converter3|number\(8) & ((GND) # (!\inst5|converter3|Add2~11\))) # (!\inst5|converter3|number\(8) & (\inst5|converter3|Add2~11\ $ (GND)))
-- \inst5|converter3|Add2~13\ = CARRY((\inst5|converter3|number\(8)) # (!\inst5|converter3|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(8),
	datad => VCC,
	cin => \inst5|converter3|Add2~11\,
	combout => \inst5|converter3|Add2~12_combout\,
	cout => \inst5|converter3|Add2~13\);

-- Location: LCCOMB_X51_Y29_N22
\inst5|converter3|number[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[8]~1_combout\ = (\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add2~12_combout\))) # (!\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s2~q\,
	datab => \inst5|converter3|Add4~14_combout\,
	datad => \inst5|converter3|Add2~12_combout\,
	combout => \inst5|converter3|number[8]~1_combout\);

-- Location: LCCOMB_X52_Y29_N12
\inst5|converter3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~11_combout\ = (\inst5|converter3|number\(8) & (!\inst5|converter3|Add0~10\)) # (!\inst5|converter3|number\(8) & ((\inst5|converter3|Add0~10\) # (GND)))
-- \inst5|converter3|Add0~12\ = CARRY((!\inst5|converter3|Add0~10\) # (!\inst5|converter3|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(8),
	datad => VCC,
	cin => \inst5|converter3|Add0~10\,
	combout => \inst5|converter3|Add0~11_combout\,
	cout => \inst5|converter3|Add0~12\);

-- Location: FF_X51_Y29_N23
\inst5|converter3|number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|number[8]~1_combout\,
	asdata => \inst5|converter3|Add0~11_combout\,
	sload => \inst5|converter3|ALT_INV_state.s1~q\,
	ena => \inst5|converter3|number~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(8));

-- Location: LCCOMB_X52_Y29_N14
\inst5|converter3|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~13_combout\ = (\inst5|converter3|number\(9) & (\inst5|converter3|Add0~12\ $ (GND))) # (!\inst5|converter3|number\(9) & (!\inst5|converter3|Add0~12\ & VCC))
-- \inst5|converter3|Add0~14\ = CARRY((\inst5|converter3|number\(9) & !\inst5|converter3|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(9),
	datad => VCC,
	cin => \inst5|converter3|Add0~12\,
	combout => \inst5|converter3|Add0~13_combout\,
	cout => \inst5|converter3|Add0~14\);

-- Location: LCCOMB_X51_Y29_N16
\inst5|converter3|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~16_combout\ = (\inst5|converter3|number\(9) & ((GND) # (!\inst5|converter3|Add4~15\))) # (!\inst5|converter3|number\(9) & (\inst5|converter3|Add4~15\ $ (GND)))
-- \inst5|converter3|Add4~17\ = CARRY((\inst5|converter3|number\(9)) # (!\inst5|converter3|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(9),
	datad => VCC,
	cin => \inst5|converter3|Add4~15\,
	combout => \inst5|converter3|Add4~16_combout\,
	cout => \inst5|converter3|Add4~17\);

-- Location: LCCOMB_X49_Y29_N22
\inst5|converter3|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~14_combout\ = (\inst5|converter3|number\(9) & (\inst5|converter3|Add2~13\ & VCC)) # (!\inst5|converter3|number\(9) & (!\inst5|converter3|Add2~13\))
-- \inst5|converter3|Add2~15\ = CARRY((!\inst5|converter3|number\(9) & !\inst5|converter3|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(9),
	datad => VCC,
	cin => \inst5|converter3|Add2~13\,
	combout => \inst5|converter3|Add2~14_combout\,
	cout => \inst5|converter3|Add2~15\);

-- Location: LCCOMB_X52_Y29_N30
\inst5|converter3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~22_combout\ = (\inst5|converter3|state.s1~q\ & ((\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add2~14_combout\))) # (!\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s1~q\,
	datab => \inst5|converter3|state.s2~q\,
	datac => \inst5|converter3|Add4~16_combout\,
	datad => \inst5|converter3|Add2~14_combout\,
	combout => \inst5|converter3|Add0~22_combout\);

-- Location: LCCOMB_X52_Y29_N22
\inst5|converter3|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~23_combout\ = (\inst5|converter3|Add0~22_combout\) # ((!\inst5|converter3|state.s1~q\ & \inst5|converter3|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s1~q\,
	datab => \inst5|converter3|Add0~13_combout\,
	datac => \inst5|converter3|Add0~22_combout\,
	combout => \inst5|converter3|Add0~23_combout\);

-- Location: LCCOMB_X52_Y29_N26
\inst5|converter3|number[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|number[9]~12_combout\ = (\inst5|converter3|state.s0~q\) # (\inst5|converter3|number~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter3|state.s0~q\,
	datad => \inst5|converter3|number~8_combout\,
	combout => \inst5|converter3|number[9]~12_combout\);

-- Location: FF_X52_Y29_N23
\inst5|converter3|number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add0~23_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|number[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(9));

-- Location: LCCOMB_X52_Y29_N16
\inst5|converter3|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~15_combout\ = (\inst5|converter3|number\(10) & (\inst5|converter3|Add0~14\ & VCC)) # (!\inst5|converter3|number\(10) & (!\inst5|converter3|Add0~14\))
-- \inst5|converter3|Add0~16\ = CARRY((!\inst5|converter3|number\(10) & !\inst5|converter3|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(10),
	datad => VCC,
	cin => \inst5|converter3|Add0~14\,
	combout => \inst5|converter3|Add0~15_combout\,
	cout => \inst5|converter3|Add0~16\);

-- Location: LCCOMB_X49_Y29_N24
\inst5|converter3|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~16_combout\ = (\inst5|converter3|number\(10) & ((GND) # (!\inst5|converter3|Add2~15\))) # (!\inst5|converter3|number\(10) & (\inst5|converter3|Add2~15\ $ (GND)))
-- \inst5|converter3|Add2~17\ = CARRY((\inst5|converter3|number\(10)) # (!\inst5|converter3|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(10),
	datad => VCC,
	cin => \inst5|converter3|Add2~15\,
	combout => \inst5|converter3|Add2~16_combout\,
	cout => \inst5|converter3|Add2~17\);

-- Location: LCCOMB_X51_Y29_N18
\inst5|converter3|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~18_combout\ = (\inst5|converter3|number\(10) & (\inst5|converter3|Add4~17\ & VCC)) # (!\inst5|converter3|number\(10) & (!\inst5|converter3|Add4~17\))
-- \inst5|converter3|Add4~19\ = CARRY((!\inst5|converter3|number\(10) & !\inst5|converter3|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(10),
	datad => VCC,
	cin => \inst5|converter3|Add4~17\,
	combout => \inst5|converter3|Add4~18_combout\,
	cout => \inst5|converter3|Add4~19\);

-- Location: LCCOMB_X52_Y29_N24
\inst5|converter3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~20_combout\ = (\inst5|converter3|state.s1~q\ & ((\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~16_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s1~q\,
	datab => \inst5|converter3|state.s2~q\,
	datac => \inst5|converter3|Add2~16_combout\,
	datad => \inst5|converter3|Add4~18_combout\,
	combout => \inst5|converter3|Add0~20_combout\);

-- Location: LCCOMB_X52_Y29_N0
\inst5|converter3|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~21_combout\ = (\inst5|converter3|Add0~20_combout\) # ((\inst5|converter3|Add0~15_combout\ & !\inst5|converter3|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|Add0~15_combout\,
	datac => \inst5|converter3|state.s1~q\,
	datad => \inst5|converter3|Add0~20_combout\,
	combout => \inst5|converter3|Add0~21_combout\);

-- Location: FF_X52_Y29_N1
\inst5|converter3|number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add0~21_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|number[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(10));

-- Location: LCCOMB_X52_Y29_N18
\inst5|converter3|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~17_combout\ = \inst5|converter3|number\(11) $ (\inst5|converter3|Add0~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|number\(11),
	cin => \inst5|converter3|Add0~16\,
	combout => \inst5|converter3|Add0~17_combout\);

-- Location: LCCOMB_X49_Y29_N26
\inst5|converter3|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add2~18_combout\ = \inst5|converter3|Add2~17\ $ (!\inst5|converter3|number\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter3|number\(11),
	cin => \inst5|converter3|Add2~17\,
	combout => \inst5|converter3|Add2~18_combout\);

-- Location: LCCOMB_X51_Y29_N20
\inst5|converter3|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add4~20_combout\ = \inst5|converter3|Add4~19\ $ (\inst5|converter3|number\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter3|number\(11),
	cin => \inst5|converter3|Add4~19\,
	combout => \inst5|converter3|Add4~20_combout\);

-- Location: LCCOMB_X51_Y29_N30
\inst5|converter3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~8_combout\ = (\inst5|converter3|state.s1~q\ & ((\inst5|converter3|state.s2~q\ & (\inst5|converter3|Add2~18_combout\)) # (!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|Add4~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s2~q\,
	datab => \inst5|converter3|state.s1~q\,
	datac => \inst5|converter3|Add2~18_combout\,
	datad => \inst5|converter3|Add4~20_combout\,
	combout => \inst5|converter3|Add0~8_combout\);

-- Location: LCCOMB_X52_Y29_N20
\inst5|converter3|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add0~19_combout\ = (\inst5|converter3|Add0~8_combout\) # ((\inst5|converter3|Add0~17_combout\ & !\inst5|converter3|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|Add0~17_combout\,
	datac => \inst5|converter3|state.s1~q\,
	datad => \inst5|converter3|Add0~8_combout\,
	combout => \inst5|converter3|Add0~19_combout\);

-- Location: FF_X52_Y29_N21
\inst5|converter3|number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add0~19_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|number[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|number\(11));

-- Location: LCCOMB_X52_Y29_N28
\inst5|converter3|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~14_combout\ = (!\inst5|converter3|number\(11) & !\inst5|converter3|number\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|number\(11),
	datad => \inst5|converter3|number\(10),
	combout => \inst5|converter3|state~14_combout\);

-- Location: LCCOMB_X48_Y29_N12
\inst5|converter3|state.s5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state.s5~feeder_combout\ = \inst5|converter3|state.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter3|state.s4~q\,
	combout => \inst5|converter3|state.s5~feeder_combout\);

-- Location: FF_X48_Y29_N13
\inst5|converter3|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|state.s5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|state.s5~q\);

-- Location: LCCOMB_X48_Y29_N16
\inst5|converter3|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~17_combout\ = (!\inst5|converter3|state.s4~q\ & (!\inst5|converter3|state.s3~q\ & !\inst5|converter3|state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|state.s4~q\,
	datac => \inst5|converter3|state.s3~q\,
	datad => \inst5|converter3|state.s5~q\,
	combout => \inst5|converter3|state~17_combout\);

-- Location: LCCOMB_X50_Y29_N10
\inst5|converter3|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~18_combout\ = (\inst5|converter3|digit_int_2~1_combout\) # ((!\inst5|converter3|state.s2~q\ & ((\inst5|converter3|state~17_combout\) # (\inst5|converter3|number~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s2~q\,
	datab => \inst5|converter3|state~17_combout\,
	datac => \inst5|converter3|number~6_combout\,
	datad => \inst5|converter3|digit_int_2~1_combout\,
	combout => \inst5|converter3|state~18_combout\);

-- Location: LCCOMB_X50_Y29_N28
\inst5|converter3|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~19_combout\ = (\inst5|converter3|state.s1~q\ & (((\inst5|converter3|state~18_combout\)))) # (!\inst5|converter3|state.s1~q\ & (((\inst5|converter3|state~16_combout\)) # (!\inst5|converter3|state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state~14_combout\,
	datab => \inst5|converter3|state~16_combout\,
	datac => \inst5|converter3|state.s1~q\,
	datad => \inst5|converter3|state~18_combout\,
	combout => \inst5|converter3|state~19_combout\);

-- Location: LCCOMB_X48_Y29_N14
\inst5|converter3|state.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state.s1~0_combout\ = (!\inst5|converter3|state.s0~q\ & ((\inst5|converter3|state.s1~q\) # (!\inst5|converter3|state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s0~q\,
	datac => \inst5|converter3|state.s1~q\,
	datad => \inst5|converter3|state~19_combout\,
	combout => \inst5|converter3|state.s1~0_combout\);

-- Location: FF_X48_Y29_N15
\inst5|converter3|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|state.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|state.s1~q\);

-- Location: LCCOMB_X48_Y29_N24
\inst5|converter3|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~24_combout\ = (!\inst5|converter3|state.s0~q\ & ((\inst5|converter3|state~19_combout\ & ((\inst5|converter3|state.s2~q\))) # (!\inst5|converter3|state~19_combout\ & (!\inst5|converter3|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s0~q\,
	datab => \inst5|converter3|state.s1~q\,
	datac => \inst5|converter3|state.s2~q\,
	datad => \inst5|converter3|state~19_combout\,
	combout => \inst5|converter3|state~24_combout\);

-- Location: FF_X48_Y29_N25
\inst5|converter3|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|state.s2~q\);

-- Location: LCCOMB_X50_Y29_N8
\inst5|converter3|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~23_combout\ = (!\inst5|converter3|state.s0~q\ & ((\inst5|converter3|state~19_combout\ & ((\inst5|converter3|state.s3~q\))) # (!\inst5|converter3|state~19_combout\ & (\inst5|converter3|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s0~q\,
	datab => \inst5|converter3|state.s2~q\,
	datac => \inst5|converter3|state.s3~q\,
	datad => \inst5|converter3|state~19_combout\,
	combout => \inst5|converter3|state~23_combout\);

-- Location: FF_X50_Y29_N9
\inst5|converter3|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|state.s3~q\);

-- Location: LCCOMB_X48_Y29_N28
\inst5|converter3|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~22_combout\ = (!\inst5|converter3|state.s0~q\ & ((\inst5|converter3|state~19_combout\ & ((\inst5|converter3|state.s4~q\))) # (!\inst5|converter3|state~19_combout\ & (\inst5|converter3|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|state.s0~q\,
	datab => \inst5|converter3|state.s3~q\,
	datac => \inst5|converter3|state.s4~q\,
	datad => \inst5|converter3|state~19_combout\,
	combout => \inst5|converter3|state~22_combout\);

-- Location: FF_X48_Y29_N29
\inst5|converter3|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|state.s4~q\);

-- Location: LCCOMB_X48_Y29_N10
\inst5|converter3|digit_int_0[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_0[3]~1_combout\ = (\inst5|converter3|state.s0~q\) # (\inst5|converter3|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter3|state.s0~q\,
	datad => \inst5|converter3|state.s4~q\,
	combout => \inst5|converter3|digit_int_0[3]~1_combout\);

-- Location: LCCOMB_X48_Y29_N18
\inst5|converter3|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~20_combout\ = (\inst5|converter3|state.s2~q\) # (!\inst5|converter3|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|state.s2~q\,
	datac => \inst5|converter3|state.s1~q\,
	combout => \inst5|converter3|state~20_combout\);

-- Location: LCCOMB_X48_Y29_N30
\inst5|converter3|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|state~21_combout\ = (!\inst5|converter3|digit_int_0[3]~1_combout\ & (!\inst5|converter3|state~20_combout\ & (!\inst5|converter3|state.s3~q\ & !\inst5|converter3|state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|digit_int_0[3]~1_combout\,
	datab => \inst5|converter3|state~20_combout\,
	datac => \inst5|converter3|state.s3~q\,
	datad => \inst5|converter3|state~19_combout\,
	combout => \inst5|converter3|state~21_combout\);

-- Location: FF_X48_Y29_N31
\inst5|converter3|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|state.s0~q\);

-- Location: LCCOMB_X49_Y26_N8
\inst5|converter3|digit_int_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_2~3_combout\ = (!\inst5|converter3|digit_int_2\(0) & !\inst5|converter3|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter3|digit_int_2\(0),
	datad => \inst5|converter3|state.s0~q\,
	combout => \inst5|converter3|digit_int_2~3_combout\);

-- Location: LCCOMB_X49_Y26_N2
\inst5|converter3|digit_int_2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_2[2]~2_combout\ = (\inst5|converter3|digit_int_2~1_combout\) # (\inst5|converter3|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter3|digit_int_2~1_combout\,
	datad => \inst5|converter3|state.s0~q\,
	combout => \inst5|converter3|digit_int_2[2]~2_combout\);

-- Location: FF_X49_Y26_N9
\inst5|converter3|digit_int_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_int_2~3_combout\,
	ena => \inst5|converter3|digit_int_2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_2\(0));

-- Location: LCCOMB_X49_Y26_N20
\inst5|converter3|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add3~2_combout\ = \inst5|converter3|digit_int_2\(0) $ (\inst5|converter3|digit_int_2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|digit_int_2\(0),
	datac => \inst5|converter3|digit_int_2\(1),
	combout => \inst5|converter3|Add3~2_combout\);

-- Location: FF_X49_Y26_N21
\inst5|converter3|digit_int_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add3~2_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|digit_int_2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_2\(1));

-- Location: LCCOMB_X49_Y26_N14
\inst5|converter3|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add3~1_combout\ = \inst5|converter3|digit_int_2\(2) $ (((\inst5|converter3|digit_int_2\(0) & \inst5|converter3|digit_int_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|digit_int_2\(0),
	datac => \inst5|converter3|digit_int_2\(2),
	datad => \inst5|converter3|digit_int_2\(1),
	combout => \inst5|converter3|Add3~1_combout\);

-- Location: FF_X49_Y26_N15
\inst5|converter3|digit_int_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add3~1_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|digit_int_2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_2\(2));

-- Location: LCCOMB_X49_Y26_N22
\inst5|converter3|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add3~0_combout\ = \inst5|converter3|digit_int_2\(3) $ (((\inst5|converter3|digit_int_2\(2) & (\inst5|converter3|digit_int_2\(0) & \inst5|converter3|digit_int_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|digit_int_2\(2),
	datab => \inst5|converter3|digit_int_2\(0),
	datac => \inst5|converter3|digit_int_2\(3),
	datad => \inst5|converter3|digit_int_2\(1),
	combout => \inst5|converter3|Add3~0_combout\);

-- Location: FF_X49_Y26_N23
\inst5|converter3|digit_int_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add3~0_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|digit_int_2[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_2\(3));

-- Location: FF_X48_Y26_N27
\inst5|converter3|digit_out_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_2\(3),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_2\(3));

-- Location: LCCOMB_X48_Y26_N26
\inst5|lcd_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~89_combout\ = (!\inst5|charCount\(2) & (\inst5|charCount\(0) & ((\inst5|converter3|digit_out_2\(3)) # (!\inst5|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|converter3|digit_out_2\(3),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~89_combout\);

-- Location: LCCOMB_X49_Y29_N28
\inst5|converter3|digit_int_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_0~0_combout\ = (!\inst5|converter3|state.s0~q\ & \inst5|converter3|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|state.s0~q\,
	datac => \inst5|converter3|number\(3),
	combout => \inst5|converter3|digit_int_0~0_combout\);

-- Location: FF_X49_Y29_N29
\inst5|converter3|digit_int_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_int_0~0_combout\,
	ena => \inst5|converter3|digit_int_0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_0\(3));

-- Location: LCCOMB_X48_Y26_N12
\inst5|converter3|digit_out_0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_out_0[3]~feeder_combout\ = \inst5|converter3|digit_int_0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter3|digit_int_0\(3),
	combout => \inst5|converter3|digit_out_0[3]~feeder_combout\);

-- Location: FF_X48_Y26_N13
\inst5|converter3|digit_out_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_out_0[3]~feeder_combout\,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_0\(3));

-- Location: LCCOMB_X49_Y26_N10
\inst5|converter3|digit_int_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_1~1_combout\ = (!\inst5|converter3|digit_int_1\(0) & !\inst5|converter3|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter3|digit_int_1\(0),
	datad => \inst5|converter3|state.s0~q\,
	combout => \inst5|converter3|digit_int_1~1_combout\);

-- Location: LCCOMB_X49_Y26_N4
\inst5|converter3|digit_int_1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_1[1]~0_combout\ = (\inst5|converter3|state.s0~q\) # (\inst5|converter3|number~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|state.s0~q\,
	datac => \inst5|converter3|number~6_combout\,
	combout => \inst5|converter3|digit_int_1[1]~0_combout\);

-- Location: FF_X49_Y26_N11
\inst5|converter3|digit_int_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_int_1~1_combout\,
	ena => \inst5|converter3|digit_int_1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_1\(0));

-- Location: LCCOMB_X49_Y26_N30
\inst5|converter3|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add5~2_combout\ = \inst5|converter3|digit_int_1\(1) $ (\inst5|converter3|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter3|digit_int_1\(1),
	datad => \inst5|converter3|digit_int_1\(0),
	combout => \inst5|converter3|Add5~2_combout\);

-- Location: FF_X49_Y26_N31
\inst5|converter3|digit_int_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add5~2_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|digit_int_1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_1\(1));

-- Location: LCCOMB_X49_Y26_N0
\inst5|converter3|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add5~1_combout\ = \inst5|converter3|digit_int_1\(2) $ (((\inst5|converter3|digit_int_1\(1) & \inst5|converter3|digit_int_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|digit_int_1\(1),
	datac => \inst5|converter3|digit_int_1\(2),
	datad => \inst5|converter3|digit_int_1\(0),
	combout => \inst5|converter3|Add5~1_combout\);

-- Location: FF_X49_Y26_N1
\inst5|converter3|digit_int_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add5~1_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|digit_int_1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_1\(2));

-- Location: LCCOMB_X49_Y26_N12
\inst5|converter3|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|Add5~0_combout\ = \inst5|converter3|digit_int_1\(3) $ (((\inst5|converter3|digit_int_1\(1) & (\inst5|converter3|digit_int_1\(2) & \inst5|converter3|digit_int_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|digit_int_1\(1),
	datab => \inst5|converter3|digit_int_1\(2),
	datac => \inst5|converter3|digit_int_1\(3),
	datad => \inst5|converter3|digit_int_1\(0),
	combout => \inst5|converter3|Add5~0_combout\);

-- Location: FF_X49_Y26_N13
\inst5|converter3|digit_int_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|Add5~0_combout\,
	sclr => \inst5|converter3|state.s0~q\,
	ena => \inst5|converter3|digit_int_1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_1\(3));

-- Location: FF_X48_Y26_N7
\inst5|converter3|digit_out_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_1\(3),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_1\(3));

-- Location: LCCOMB_X48_Y26_N6
\inst5|lcd_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~87_combout\ = (\inst5|charCount\(0) & (\inst5|converter3|digit_out_0\(3))) # (!\inst5|charCount\(0) & ((\inst5|converter3|digit_out_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter3|digit_out_0\(3),
	datac => \inst5|converter3|digit_out_1\(3),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~87_combout\);

-- Location: LCCOMB_X48_Y26_N14
\inst5|lcd_data~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~160_combout\ = (\inst5|charCount\(3) & (((!\inst5|charCount\(2) & \inst5|lcd_data~87_combout\)))) # (!\inst5|charCount\(3) & (((\inst5|charCount\(2))) # (!\inst5|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|lcd_data~87_combout\,
	combout => \inst5|lcd_data~160_combout\);

-- Location: LCCOMB_X48_Y27_N30
\inst5|lcd_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~86_combout\ = (!\inst5|charCount\(4) & \inst5|lineCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(4),
	datad => \inst5|lineCount\(0),
	combout => \inst5|lcd_data~86_combout\);

-- Location: LCCOMB_X48_Y26_N0
\inst5|lcd_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~90_combout\ = (\inst5|lcd_data~86_combout\ & ((\inst5|charCount\(1) & ((\inst5|lcd_data~160_combout\))) # (!\inst5|charCount\(1) & (\inst5|lcd_data~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~89_combout\,
	datab => \inst5|lcd_data~160_combout\,
	datac => \inst5|lcd_data~86_combout\,
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~90_combout\);

-- Location: LCCOMB_X48_Y27_N12
\inst5|lcd_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~91_combout\ = (!\inst5|lineCount\(1) & ((\inst5|lcd_data~90_combout\) # ((\inst5|lcd_data\(3) & !\inst5|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(3),
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data~90_combout\,
	datad => \inst5|lineCount\(1),
	combout => \inst5|lcd_data~91_combout\);

-- Location: LCCOMB_X48_Y27_N2
\inst5|lcd_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~75_combout\ = (!\inst5|charCount\(3) & ((\inst5|charCount\(0) & ((\inst5|charCount\(2)))) # (!\inst5|charCount\(0) & (!\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|charCount\(2),
	datac => \inst5|charCount\(3),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~75_combout\);

-- Location: LCCOMB_X46_Y21_N28
\inst5|converter1|number[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number[6]~2_combout\ = (\inst5|converter1|state.s1~q\ & !\inst5|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter1|state.s1~q\,
	datad => \inst5|converter1|state.s0~q\,
	combout => \inst5|converter1|number[6]~2_combout\);

-- Location: LCCOMB_X46_Y21_N8
\inst5|converter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~0_combout\ = \inst5|converter1|number\(3) $ (VCC)
-- \inst5|converter1|Add0~1\ = CARRY(\inst5|converter1|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(3),
	datad => VCC,
	combout => \inst5|converter1|Add0~0_combout\,
	cout => \inst5|converter1|Add0~1\);

-- Location: LCCOMB_X46_Y21_N10
\inst5|converter1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~2_combout\ = (\inst5|converter1|number\(4) & (\inst5|converter1|Add0~1\ & VCC)) # (!\inst5|converter1|number\(4) & (!\inst5|converter1|Add0~1\))
-- \inst5|converter1|Add0~3\ = CARRY((!\inst5|converter1|number\(4) & !\inst5|converter1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(4),
	datad => VCC,
	cin => \inst5|converter1|Add0~1\,
	combout => \inst5|converter1|Add0~2_combout\,
	cout => \inst5|converter1|Add0~3\);

-- Location: LCCOMB_X48_Y21_N6
\inst5|converter1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~0_combout\ = \inst5|converter1|number\(1) $ (VCC)
-- \inst5|converter1|Add4~1\ = CARRY(\inst5|converter1|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(1),
	datad => VCC,
	combout => \inst5|converter1|Add4~0_combout\,
	cout => \inst5|converter1|Add4~1\);

-- Location: LCCOMB_X45_Y21_N30
\inst5|converter1|number~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~25_combout\ = (\inst5|converter1|number~0_combout\ & ((\inst5|converter1|Add4~0_combout\))) # (!\inst5|converter1|number~0_combout\ & (\inst5|converter1|number\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number~0_combout\,
	datac => \inst5|converter1|number\(1),
	datad => \inst5|converter1|Add4~0_combout\,
	combout => \inst5|converter1|number~25_combout\);

-- Location: LCCOMB_X47_Y20_N12
\inst|state.startBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.startBit~0_combout\ = !\inst|state.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.idle~q\,
	combout => \inst|state.startBit~0_combout\);

-- Location: IOIBUF_X53_Y17_N1
\serial_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_serial_in,
	o => \serial_in~input_o\);

-- Location: LCCOMB_X46_Y20_N0
\inst|time_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[0]~11_combout\ = \inst|time_count\(0) $ (VCC)
-- \inst|time_count[0]~12\ = CARRY(\inst|time_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(0),
	datad => VCC,
	combout => \inst|time_count[0]~11_combout\,
	cout => \inst|time_count[0]~12\);

-- Location: FF_X49_Y20_N27
\inst|state.stopBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|state.dataBits~q\,
	sload => VCC,
	ena => \inst|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.stopBit~q\);

-- Location: LCCOMB_X49_Y20_N30
\inst|time_count[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[0]~33_combout\ = (!\inst|state.startBit~q\ & ((\inst|state.dataBits~q\) # (\inst|state.stopBit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.startBit~q\,
	datab => \inst|state.dataBits~q\,
	datad => \inst|state.stopBit~q\,
	combout => \inst|time_count[0]~33_combout\);

-- Location: LCCOMB_X46_Y20_N30
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|time_count\(6)) # ((\inst|time_count\(7)) # (\inst|time_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(6),
	datac => \inst|time_count\(7),
	datad => \inst|time_count\(5),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y20_N28
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|time_count\(3)) # ((\inst|time_count\(0) & (\inst|time_count\(2) & \inst|time_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(3),
	datab => \inst|time_count\(0),
	datac => \inst|time_count\(2),
	datad => \inst|time_count\(1),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y20_N26
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|time_count\(8) & ((\inst|LessThan0~0_combout\) # ((\inst|time_count\(4) & \inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(4),
	datab => \inst|time_count\(8),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X48_Y20_N26
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|time_count\(10) & ((\inst|time_count\(9)) # (\inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(10),
	datac => \inst|time_count\(9),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y20_N24
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|time_count\(6)) # ((\inst|time_count\(5)) # ((\inst|time_count\(2) & \inst|time_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(6),
	datab => \inst|time_count\(2),
	datac => \inst|time_count\(5),
	datad => \inst|time_count\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X46_Y20_N22
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (\inst|time_count\(8)) # ((\inst|time_count\(7) & ((\inst|time_count\(4)) # (\inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(7),
	datab => \inst|time_count\(8),
	datac => \inst|time_count\(4),
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X48_Y20_N20
\inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (\inst|time_count\(10)) # ((\inst|time_count\(9) & \inst|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(10),
	datab => \inst|time_count\(9),
	datad => \inst|LessThan1~3_combout\,
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X48_Y20_N24
\inst|time_count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[0]~34_combout\ = ((\inst|time_count[0]~33_combout\ & (\inst|LessThan0~3_combout\)) # (!\inst|time_count[0]~33_combout\ & ((\inst|LessThan1~4_combout\)))) # (!\inst|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count[0]~33_combout\,
	datab => \inst|state.idle~q\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan1~4_combout\,
	combout => \inst|time_count[0]~34_combout\);

-- Location: LCCOMB_X49_Y20_N26
\inst|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~18_combout\ = (\inst|state.stopBit~q\ & \serial_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.stopBit~q\,
	datad => \serial_in~input_o\,
	combout => \inst|state~18_combout\);

-- Location: LCCOMB_X49_Y20_N18
\inst|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~19_combout\ = (\inst|time_count\(10) & (\inst|state~18_combout\ & ((\inst|time_count\(9)) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(10),
	datab => \inst|state~18_combout\,
	datac => \inst|time_count\(9),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|state~19_combout\);

-- Location: LCCOMB_X49_Y20_N0
\inst|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~30_combout\ = (\inst|state~19_combout\) # ((!\inst|state.stopBit~q\ & (\inst|state.timeout~q\ & !\inst|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~19_combout\,
	datab => \inst|state.stopBit~q\,
	datac => \inst|state.timeout~q\,
	datad => \inst|LessThan1~4_combout\,
	combout => \inst|state~30_combout\);

-- Location: FF_X49_Y20_N1
\inst|state.timeout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.timeout~q\);

-- Location: LCCOMB_X47_Y20_N30
\inst|time_count[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[0]~35_combout\ = (\serial_in~input_o\ & (\inst|state.idle~q\ & ((\inst|state.timeout~q\) # (!\inst|state~23_combout\)))) # (!\serial_in~input_o\ & (((\inst|state.timeout~q\) # (!\inst|state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \inst|state.idle~q\,
	datac => \inst|state.timeout~q\,
	datad => \inst|state~23_combout\,
	combout => \inst|time_count[0]~35_combout\);

-- Location: FF_X46_Y20_N1
\inst|time_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[0]~11_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(0));

-- Location: LCCOMB_X46_Y20_N2
\inst|time_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[1]~13_combout\ = (\inst|time_count\(1) & (!\inst|time_count[0]~12\)) # (!\inst|time_count\(1) & ((\inst|time_count[0]~12\) # (GND)))
-- \inst|time_count[1]~14\ = CARRY((!\inst|time_count[0]~12\) # (!\inst|time_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(1),
	datad => VCC,
	cin => \inst|time_count[0]~12\,
	combout => \inst|time_count[1]~13_combout\,
	cout => \inst|time_count[1]~14\);

-- Location: FF_X46_Y20_N3
\inst|time_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[1]~13_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(1));

-- Location: LCCOMB_X46_Y20_N4
\inst|time_count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[2]~15_combout\ = (\inst|time_count\(2) & (\inst|time_count[1]~14\ $ (GND))) # (!\inst|time_count\(2) & (!\inst|time_count[1]~14\ & VCC))
-- \inst|time_count[2]~16\ = CARRY((\inst|time_count\(2) & !\inst|time_count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(2),
	datad => VCC,
	cin => \inst|time_count[1]~14\,
	combout => \inst|time_count[2]~15_combout\,
	cout => \inst|time_count[2]~16\);

-- Location: FF_X46_Y20_N5
\inst|time_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[2]~15_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(2));

-- Location: LCCOMB_X46_Y20_N6
\inst|time_count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[3]~17_combout\ = (\inst|time_count\(3) & (!\inst|time_count[2]~16\)) # (!\inst|time_count\(3) & ((\inst|time_count[2]~16\) # (GND)))
-- \inst|time_count[3]~18\ = CARRY((!\inst|time_count[2]~16\) # (!\inst|time_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(3),
	datad => VCC,
	cin => \inst|time_count[2]~16\,
	combout => \inst|time_count[3]~17_combout\,
	cout => \inst|time_count[3]~18\);

-- Location: FF_X46_Y20_N7
\inst|time_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[3]~17_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(3));

-- Location: LCCOMB_X46_Y20_N8
\inst|time_count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[4]~19_combout\ = (\inst|time_count\(4) & (\inst|time_count[3]~18\ $ (GND))) # (!\inst|time_count\(4) & (!\inst|time_count[3]~18\ & VCC))
-- \inst|time_count[4]~20\ = CARRY((\inst|time_count\(4) & !\inst|time_count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(4),
	datad => VCC,
	cin => \inst|time_count[3]~18\,
	combout => \inst|time_count[4]~19_combout\,
	cout => \inst|time_count[4]~20\);

-- Location: FF_X46_Y20_N9
\inst|time_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[4]~19_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(4));

-- Location: LCCOMB_X46_Y20_N10
\inst|time_count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[5]~21_combout\ = (\inst|time_count\(5) & (!\inst|time_count[4]~20\)) # (!\inst|time_count\(5) & ((\inst|time_count[4]~20\) # (GND)))
-- \inst|time_count[5]~22\ = CARRY((!\inst|time_count[4]~20\) # (!\inst|time_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(5),
	datad => VCC,
	cin => \inst|time_count[4]~20\,
	combout => \inst|time_count[5]~21_combout\,
	cout => \inst|time_count[5]~22\);

-- Location: FF_X46_Y20_N11
\inst|time_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[5]~21_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(5));

-- Location: LCCOMB_X46_Y20_N12
\inst|time_count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[6]~23_combout\ = (\inst|time_count\(6) & (\inst|time_count[5]~22\ $ (GND))) # (!\inst|time_count\(6) & (!\inst|time_count[5]~22\ & VCC))
-- \inst|time_count[6]~24\ = CARRY((\inst|time_count\(6) & !\inst|time_count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(6),
	datad => VCC,
	cin => \inst|time_count[5]~22\,
	combout => \inst|time_count[6]~23_combout\,
	cout => \inst|time_count[6]~24\);

-- Location: FF_X46_Y20_N13
\inst|time_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[6]~23_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(6));

-- Location: LCCOMB_X46_Y20_N14
\inst|time_count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[7]~25_combout\ = (\inst|time_count\(7) & (!\inst|time_count[6]~24\)) # (!\inst|time_count\(7) & ((\inst|time_count[6]~24\) # (GND)))
-- \inst|time_count[7]~26\ = CARRY((!\inst|time_count[6]~24\) # (!\inst|time_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(7),
	datad => VCC,
	cin => \inst|time_count[6]~24\,
	combout => \inst|time_count[7]~25_combout\,
	cout => \inst|time_count[7]~26\);

-- Location: FF_X46_Y20_N15
\inst|time_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[7]~25_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(7));

-- Location: LCCOMB_X46_Y20_N16
\inst|time_count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[8]~27_combout\ = (\inst|time_count\(8) & (\inst|time_count[7]~26\ $ (GND))) # (!\inst|time_count\(8) & (!\inst|time_count[7]~26\ & VCC))
-- \inst|time_count[8]~28\ = CARRY((\inst|time_count\(8) & !\inst|time_count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_count\(8),
	datad => VCC,
	cin => \inst|time_count[7]~26\,
	combout => \inst|time_count[8]~27_combout\,
	cout => \inst|time_count[8]~28\);

-- Location: FF_X46_Y20_N17
\inst|time_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[8]~27_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(8));

-- Location: LCCOMB_X46_Y20_N18
\inst|time_count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[9]~29_combout\ = (\inst|time_count\(9) & (!\inst|time_count[8]~28\)) # (!\inst|time_count\(9) & ((\inst|time_count[8]~28\) # (GND)))
-- \inst|time_count[9]~30\ = CARRY((!\inst|time_count[8]~28\) # (!\inst|time_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(9),
	datad => VCC,
	cin => \inst|time_count[8]~28\,
	combout => \inst|time_count[9]~29_combout\,
	cout => \inst|time_count[9]~30\);

-- Location: FF_X46_Y20_N19
\inst|time_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[9]~29_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(9));

-- Location: LCCOMB_X46_Y20_N20
\inst|time_count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_count[10]~31_combout\ = \inst|time_count[9]~30\ $ (!\inst|time_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|time_count\(10),
	cin => \inst|time_count[9]~30\,
	combout => \inst|time_count[10]~31_combout\);

-- Location: FF_X46_Y20_N21
\inst|time_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|time_count[10]~31_combout\,
	sclr => \inst|time_count[0]~34_combout\,
	ena => \inst|time_count[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_count\(10));

-- Location: LCCOMB_X49_Y20_N8
\inst|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~25_combout\ = (!\inst|time_count\(10) & (!\inst|time_count[0]~33_combout\ & ((!\inst|LessThan1~3_combout\) # (!\inst|time_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(10),
	datab => \inst|time_count\(9),
	datac => \inst|time_count[0]~33_combout\,
	datad => \inst|LessThan1~3_combout\,
	combout => \inst|state~25_combout\);

-- Location: LCCOMB_X49_Y20_N20
\inst|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~29_combout\ = (!\inst|state.startBit~q\ & ((\inst|state.stopBit~q\) # ((\inst|state.dataBits~q\) # (!\inst|state.timeout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.stopBit~q\,
	datab => \inst|state.dataBits~q\,
	datac => \inst|state.startBit~q\,
	datad => \inst|state.timeout~q\,
	combout => \inst|state~29_combout\);

-- Location: LCCOMB_X47_Y20_N16
\inst|data_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_index~1_combout\ = (!\inst|state.startBit~q\ & !\inst|data_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.startBit~q\,
	datac => \inst|data_index\(0),
	combout => \inst|data_index~1_combout\);

-- Location: LCCOMB_X48_Y20_N2
\inst|data_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_index~0_combout\ = (\inst|time_count\(10) & (\inst|state.dataBits~q\ & ((\inst|time_count\(9)) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(10),
	datab => \inst|state.dataBits~q\,
	datac => \inst|time_count\(9),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|data_index~0_combout\);

-- Location: LCCOMB_X48_Y20_N22
\inst|data_index[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_index[0]~2_combout\ = (\inst|state.idle~q\ & ((\inst|state.startBit~q\ & (\inst|LessThan1~4_combout\)) # (!\inst|state.startBit~q\ & ((\inst|data_index~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.startBit~q\,
	datab => \inst|state.idle~q\,
	datac => \inst|LessThan1~4_combout\,
	datad => \inst|data_index~0_combout\,
	combout => \inst|data_index[0]~2_combout\);

-- Location: FF_X48_Y20_N21
\inst|data_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|data_index~1_combout\,
	sload => VCC,
	ena => \inst|data_index[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_index\(0));

-- Location: LCCOMB_X48_Y20_N14
\inst|data_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_index~3_combout\ = (!\inst|state.startBit~q\ & (\inst|data_index\(0) $ (\inst|data_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.startBit~q\,
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(1),
	combout => \inst|data_index~3_combout\);

-- Location: FF_X48_Y20_N15
\inst|data_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data_index~3_combout\,
	ena => \inst|data_index[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_index\(1));

-- Location: LCCOMB_X48_Y20_N4
\inst|data_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_index~4_combout\ = (!\inst|state.startBit~q\ & (\inst|data_index\(2) $ (((\inst|data_index\(1) & \inst|data_index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(1),
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(2),
	datad => \inst|state.startBit~q\,
	combout => \inst|data_index~4_combout\);

-- Location: FF_X48_Y20_N5
\inst|data_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data_index~4_combout\,
	ena => \inst|data_index[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_index\(2));

-- Location: LCCOMB_X49_Y20_N2
\inst|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~20_combout\ = (\inst|data_index\(1) & (\inst|time_count\(10) & \inst|data_index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(1),
	datac => \inst|time_count\(10),
	datad => \inst|data_index\(0),
	combout => \inst|state~20_combout\);

-- Location: LCCOMB_X49_Y20_N4
\inst|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~21_combout\ = (\inst|data_index\(2) & (\inst|state~20_combout\ & ((\inst|time_count\(9)) # (\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(9),
	datab => \inst|data_index\(2),
	datac => \inst|state~20_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|state~21_combout\);

-- Location: LCCOMB_X49_Y20_N16
\inst|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~26_combout\ = (\inst|state~29_combout\ & ((\inst|state.dataBits~q\ & (!\inst|state~21_combout\)) # (!\inst|state.dataBits~q\ & ((!\inst|state~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.dataBits~q\,
	datab => \inst|state~29_combout\,
	datac => \inst|state~21_combout\,
	datad => \inst|state~19_combout\,
	combout => \inst|state~26_combout\);

-- Location: LCCOMB_X49_Y20_N24
\inst|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~27_combout\ = (\inst|state.idle~q\ & (((!\inst|state~25_combout\ & !\inst|state~26_combout\)))) # (!\inst|state.idle~q\ & (!\serial_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.idle~q\,
	datab => \serial_in~input_o\,
	datac => \inst|state~25_combout\,
	datad => \inst|state~26_combout\,
	combout => \inst|state~27_combout\);

-- Location: FF_X49_Y20_N21
\inst|state.startBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|state.startBit~0_combout\,
	sload => VCC,
	ena => \inst|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.startBit~q\);

-- Location: LCCOMB_X48_Y20_N16
\inst|state.dataBits~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.dataBits~2_combout\ = (\inst|state.idle~q\ & (((\inst|state.dataBits~q\)))) # (!\inst|state.idle~q\ & ((\serial_in~input_o\ & ((\inst|state.dataBits~q\))) # (!\serial_in~input_o\ & (\inst|state.startBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.startBit~q\,
	datab => \inst|state.idle~q\,
	datac => \serial_in~input_o\,
	datad => \inst|state.dataBits~q\,
	combout => \inst|state.dataBits~2_combout\);

-- Location: LCCOMB_X48_Y20_N10
\inst|state.dataBits~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.dataBits~4_combout\ = (\inst|state.idle~q\ & (\inst|state.startBit~q\)) # (!\inst|state.idle~q\ & ((\serial_in~input_o\ & ((\inst|state.dataBits~q\))) # (!\serial_in~input_o\ & (\inst|state.startBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.startBit~q\,
	datab => \inst|state.idle~q\,
	datac => \serial_in~input_o\,
	datad => \inst|state.dataBits~q\,
	combout => \inst|state.dataBits~4_combout\);

-- Location: LCCOMB_X47_Y20_N4
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (\inst|time_count\(8)) # ((\inst|time_count\(7) & \inst|time_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(7),
	datac => \inst|time_count\(8),
	datad => \inst|time_count\(4),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X47_Y20_N18
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|time_count\(9) & ((\inst|LessThan1~1_combout\) # ((\inst|time_count\(7) & \inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_count\(7),
	datab => \inst|time_count\(9),
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X47_Y20_N24
\inst|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~28_combout\ = (!\inst|state.stopBit~q\ & (\inst|state.timeout~q\ & ((\inst|time_count\(10)) # (\inst|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.stopBit~q\,
	datab => \inst|time_count\(10),
	datac => \inst|state.timeout~q\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|state~28_combout\);

-- Location: LCCOMB_X49_Y20_N12
\inst|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~22_combout\ = (\inst|state.dataBits~q\ & (\inst|state~21_combout\)) # (!\inst|state.dataBits~q\ & (((\inst|state~19_combout\) # (\inst|state~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.dataBits~q\,
	datab => \inst|state~21_combout\,
	datac => \inst|state~19_combout\,
	datad => \inst|state~28_combout\,
	combout => \inst|state~22_combout\);

-- Location: LCCOMB_X49_Y20_N14
\inst|state.dataBits~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.dataBits~3_combout\ = (\inst|state.dataBits~2_combout\ & (((\inst|state.dataBits~4_combout\) # (!\inst|state~22_combout\)))) # (!\inst|state.dataBits~2_combout\ & (\inst|LessThan1~4_combout\ & (\inst|state.dataBits~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.dataBits~2_combout\,
	datab => \inst|LessThan1~4_combout\,
	datac => \inst|state.dataBits~4_combout\,
	datad => \inst|state~22_combout\,
	combout => \inst|state.dataBits~3_combout\);

-- Location: FF_X49_Y20_N15
\inst|state.dataBits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state.dataBits~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.dataBits~q\);

-- Location: LCCOMB_X49_Y20_N22
\inst|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~23_combout\ = (!\inst|state.dataBits~q\ & (!\inst|state.stopBit~q\ & (!\inst|state.startBit~q\ & \inst|state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.dataBits~q\,
	datab => \inst|state.stopBit~q\,
	datac => \inst|state.startBit~q\,
	datad => \inst|state.idle~q\,
	combout => \inst|state~23_combout\);

-- Location: LCCOMB_X49_Y20_N10
\inst|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~24_combout\ = (\inst|state~23_combout\ & (!\inst|state~22_combout\ & ((\inst|state.idle~q\) # (!\serial_in~input_o\)))) # (!\inst|state~23_combout\ & (((\inst|state.idle~q\)) # (!\serial_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~23_combout\,
	datab => \serial_in~input_o\,
	datac => \inst|state.idle~q\,
	datad => \inst|state~22_combout\,
	combout => \inst|state~24_combout\);

-- Location: FF_X49_Y20_N11
\inst|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.idle~q\);

-- Location: LCCOMB_X47_Y20_N22
\inst|dataReady~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataReady~1_combout\ = (!\inst|state.stopBit~q\ & (\inst|state.timeout~q\ & ((\inst|time_count\(10)) # (\inst|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.stopBit~q\,
	datab => \inst|time_count\(10),
	datac => \inst|state.timeout~q\,
	datad => \inst|LessThan1~2_combout\,
	combout => \inst|dataReady~1_combout\);

-- Location: LCCOMB_X49_Y20_N6
\inst|dataReady~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataReady~2_combout\ = (!\inst|state.dataBits~q\ & (!\inst|state.startBit~q\ & ((\inst|dataReady~1_combout\) # (\inst|state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.dataBits~q\,
	datab => \inst|state.startBit~q\,
	datac => \inst|dataReady~1_combout\,
	datad => \inst|state~19_combout\,
	combout => \inst|dataReady~2_combout\);

-- Location: LCCOMB_X49_Y20_N28
\inst|dataReady~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dataReady~0_combout\ = (\inst|state.idle~q\ & ((\inst|dataReady~2_combout\ & (\inst|state.stopBit~q\)) # (!\inst|dataReady~2_combout\ & ((\inst|dataReady~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.idle~q\,
	datab => \inst|state.stopBit~q\,
	datac => \inst|dataReady~q\,
	datad => \inst|dataReady~2_combout\,
	combout => \inst|dataReady~0_combout\);

-- Location: FF_X49_Y20_N31
\inst|dataReady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|dataReady~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataReady~q\);

-- Location: CLKCTRL_G9
\inst|dataReady~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|dataReady~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|dataReady~clkctrl_outclk\);

-- Location: LCCOMB_X48_Y20_N0
\inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~4_combout\ = (!\inst|data_index\(2) & (!\inst|data_index\(0) & (!\inst|data_index\(1) & \inst|data_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(2),
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(1),
	datad => \inst|data_index~0_combout\,
	combout => \inst|Decoder0~4_combout\);

-- Location: LCCOMB_X45_Y21_N28
\inst|data[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[0]~10_combout\ = (\inst|Decoder0~4_combout\ & (\serial_in~input_o\)) # (!\inst|Decoder0~4_combout\ & ((\inst|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datac => \inst|Decoder0~4_combout\,
	datad => \inst|data\(0),
	combout => \inst|data[0]~10_combout\);

-- Location: LCCOMB_X45_Y21_N14
\inst|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[0]~feeder_combout\ = \inst|data[0]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data[0]~10_combout\,
	combout => \inst|data[0]~feeder_combout\);

-- Location: FF_X45_Y21_N15
\inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(0));

-- Location: LCCOMB_X45_Y21_N8
\inst3|heading_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|heading_out[1]~feeder_combout\ = \inst|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(0),
	combout => \inst3|heading_out[1]~feeder_combout\);

-- Location: FF_X45_Y21_N9
\inst3|heading_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	d => \inst3|heading_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(1));

-- Location: FF_X45_Y21_N31
\inst5|converter1|number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~25_combout\,
	asdata => \inst3|heading_out\(1),
	sload => \inst5|converter1|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(1));

-- Location: LCCOMB_X47_Y21_N30
\inst5|converter1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|LessThan2~2_combout\ = (\inst5|converter1|number\(4)) # ((\inst5|converter1|number\(3) & ((\inst5|converter1|number\(1)) # (\inst5|converter1|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(4),
	datab => \inst5|converter1|number\(1),
	datac => \inst5|converter1|number\(3),
	datad => \inst5|converter1|number\(2),
	combout => \inst5|converter1|LessThan2~2_combout\);

-- Location: LCCOMB_X47_Y21_N10
\inst5|converter1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|LessThan2~0_combout\ = (!\inst5|converter1|number\(8) & (!\inst5|converter1|number\(10) & (!\inst5|converter1|number\(11) & !\inst5|converter1|number\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(8),
	datab => \inst5|converter1|number\(10),
	datac => \inst5|converter1|number\(11),
	datad => \inst5|converter1|number\(7),
	combout => \inst5|converter1|LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y21_N12
\inst5|converter1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|LessThan2~1_combout\ = (!\inst5|converter1|number\(9) & \inst5|converter1|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(9),
	datad => \inst5|converter1|LessThan2~0_combout\,
	combout => \inst5|converter1|LessThan2~1_combout\);

-- Location: LCCOMB_X47_Y21_N24
\inst5|converter1|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|LessThan2~3_combout\ = (\inst5|converter1|number\(5)) # (\inst5|converter1|number\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(5),
	datab => \inst5|converter1|number\(6),
	combout => \inst5|converter1|LessThan2~3_combout\);

-- Location: LCCOMB_X47_Y21_N14
\inst5|converter1|number~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~0_combout\ = (\inst5|converter1|state.s3~q\ & ((\inst5|converter1|LessThan2~2_combout\) # ((\inst5|converter1|LessThan2~3_combout\) # (!\inst5|converter1|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|LessThan2~2_combout\,
	datab => \inst5|converter1|state.s3~q\,
	datac => \inst5|converter1|LessThan2~1_combout\,
	datad => \inst5|converter1|LessThan2~3_combout\,
	combout => \inst5|converter1|number~0_combout\);

-- Location: LCCOMB_X47_Y21_N22
\inst5|converter1|digit_int_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_2~0_combout\ = (\inst5|converter1|number\(6) & ((\inst5|converter1|number\(2)) # ((\inst5|converter1|number\(3)) # (\inst5|converter1|number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(2),
	datab => \inst5|converter1|number\(6),
	datac => \inst5|converter1|number\(3),
	datad => \inst5|converter1|number\(4),
	combout => \inst5|converter1|digit_int_2~0_combout\);

-- Location: LCCOMB_X47_Y21_N20
\inst5|converter1|digit_int_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_2~1_combout\ = (\inst5|converter1|state.s2~q\ & (((\inst5|converter1|digit_int_2~0_combout\ & \inst5|converter1|number\(5))) # (!\inst5|converter1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_2~0_combout\,
	datab => \inst5|converter1|number\(5),
	datac => \inst5|converter1|LessThan2~1_combout\,
	datad => \inst5|converter1|state.s2~q\,
	combout => \inst5|converter1|digit_int_2~1_combout\);

-- Location: LCCOMB_X47_Y21_N0
\inst5|converter1|number~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~5_combout\ = (\inst5|converter1|state.s1~q\ & ((\inst5|converter1|digit_int_2~1_combout\) # ((!\inst5|converter1|state.s2~q\ & \inst5|converter1|number~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|number~0_combout\,
	datad => \inst5|converter1|digit_int_2~1_combout\,
	combout => \inst5|converter1|number~5_combout\);

-- Location: LCCOMB_X44_Y21_N0
\inst5|converter1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~0_combout\ = \inst5|converter1|number\(2) $ (VCC)
-- \inst5|converter1|Add2~1\ = CARRY(\inst5|converter1|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(2),
	datad => VCC,
	combout => \inst5|converter1|Add2~0_combout\,
	cout => \inst5|converter1|Add2~1\);

-- Location: LCCOMB_X48_Y21_N8
\inst5|converter1|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~2_combout\ = (\inst5|converter1|number\(2) & (\inst5|converter1|Add4~1\ & VCC)) # (!\inst5|converter1|number\(2) & (!\inst5|converter1|Add4~1\))
-- \inst5|converter1|Add4~3\ = CARRY((!\inst5|converter1|number\(2) & !\inst5|converter1|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(2),
	datad => VCC,
	cin => \inst5|converter1|Add4~1\,
	combout => \inst5|converter1|Add4~2_combout\,
	cout => \inst5|converter1|Add4~3\);

-- Location: LCCOMB_X45_Y21_N0
\inst5|converter1|number~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~21_combout\ = (\inst5|converter1|state.s2~q\ & (\inst5|converter1|Add2~0_combout\)) # (!\inst5|converter1|state.s2~q\ & ((\inst5|converter1|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|Add2~0_combout\,
	datad => \inst5|converter1|Add4~2_combout\,
	combout => \inst5|converter1|number~21_combout\);

-- Location: LCCOMB_X45_Y21_N4
\inst5|converter1|number~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~22_combout\ = (\inst5|converter1|number~5_combout\ & ((\inst5|converter1|number~21_combout\))) # (!\inst5|converter1|number~5_combout\ & (\inst5|converter1|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number~5_combout\,
	datac => \inst5|converter1|number\(2),
	datad => \inst5|converter1|number~21_combout\,
	combout => \inst5|converter1|number~22_combout\);

-- Location: LCCOMB_X48_Y20_N8
\inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (!\inst|data_index\(2) & (\inst|data_index\(0) & (!\inst|data_index\(1) & \inst|data_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(2),
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(1),
	datad => \inst|data_index~0_combout\,
	combout => \inst|Decoder0~2_combout\);

-- Location: LCCOMB_X45_Y21_N10
\inst|data[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[1]~8_combout\ = (\inst|Decoder0~2_combout\ & ((\serial_in~input_o\))) # (!\inst|Decoder0~2_combout\ & (\inst|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(1),
	datac => \serial_in~input_o\,
	datad => \inst|Decoder0~2_combout\,
	combout => \inst|data[1]~8_combout\);

-- Location: LCCOMB_X45_Y21_N16
\inst|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[1]~feeder_combout\ = \inst|data[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data[1]~8_combout\,
	combout => \inst|data[1]~feeder_combout\);

-- Location: FF_X45_Y21_N17
\inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(1));

-- Location: LCCOMB_X45_Y21_N22
\inst3|heading_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|heading_out[2]~feeder_combout\ = \inst|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(1),
	combout => \inst3|heading_out[2]~feeder_combout\);

-- Location: FF_X45_Y21_N23
\inst3|heading_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	d => \inst3|heading_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(2));

-- Location: FF_X45_Y21_N5
\inst5|converter1|number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~22_combout\,
	asdata => \inst3|heading_out\(2),
	sload => \inst5|converter1|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(2));

-- Location: LCCOMB_X48_Y21_N10
\inst5|converter1|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~4_combout\ = (\inst5|converter1|number\(3) & (\inst5|converter1|Add4~3\ $ (GND))) # (!\inst5|converter1|number\(3) & (!\inst5|converter1|Add4~3\ & VCC))
-- \inst5|converter1|Add4~5\ = CARRY((\inst5|converter1|number\(3) & !\inst5|converter1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(3),
	datad => VCC,
	cin => \inst5|converter1|Add4~3\,
	combout => \inst5|converter1|Add4~4_combout\,
	cout => \inst5|converter1|Add4~5\);

-- Location: LCCOMB_X48_Y21_N12
\inst5|converter1|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~6_combout\ = (\inst5|converter1|number\(4) & (\inst5|converter1|Add4~5\ & VCC)) # (!\inst5|converter1|number\(4) & (!\inst5|converter1|Add4~5\))
-- \inst5|converter1|Add4~7\ = CARRY((!\inst5|converter1|number\(4) & !\inst5|converter1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(4),
	datad => VCC,
	cin => \inst5|converter1|Add4~5\,
	combout => \inst5|converter1|Add4~6_combout\,
	cout => \inst5|converter1|Add4~7\);

-- Location: LCCOMB_X44_Y21_N2
\inst5|converter1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~2_combout\ = (\inst5|converter1|number\(3) & (\inst5|converter1|Add2~1\ & VCC)) # (!\inst5|converter1|number\(3) & (!\inst5|converter1|Add2~1\))
-- \inst5|converter1|Add2~3\ = CARRY((!\inst5|converter1|number\(3) & !\inst5|converter1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(3),
	datad => VCC,
	cin => \inst5|converter1|Add2~1\,
	combout => \inst5|converter1|Add2~2_combout\,
	cout => \inst5|converter1|Add2~3\);

-- Location: LCCOMB_X44_Y21_N4
\inst5|converter1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~4_combout\ = (\inst5|converter1|number\(4) & ((GND) # (!\inst5|converter1|Add2~3\))) # (!\inst5|converter1|number\(4) & (\inst5|converter1|Add2~3\ $ (GND)))
-- \inst5|converter1|Add2~5\ = CARRY((\inst5|converter1|number\(4)) # (!\inst5|converter1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(4),
	datad => VCC,
	cin => \inst5|converter1|Add2~3\,
	combout => \inst5|converter1|Add2~4_combout\,
	cout => \inst5|converter1|Add2~5\);

-- Location: LCCOMB_X48_Y21_N30
\inst5|converter1|number~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~19_combout\ = (\inst5|converter1|number[6]~1_combout\ & (((\inst5|converter1|Add2~4_combout\)) # (!\inst5|converter1|number[6]~2_combout\))) # (!\inst5|converter1|number[6]~1_combout\ & (\inst5|converter1|number[6]~2_combout\ & 
-- (\inst5|converter1|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~1_combout\,
	datab => \inst5|converter1|number[6]~2_combout\,
	datac => \inst5|converter1|Add4~6_combout\,
	datad => \inst5|converter1|Add2~4_combout\,
	combout => \inst5|converter1|number~19_combout\);

-- Location: LCCOMB_X48_Y20_N6
\inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (!\inst|data_index\(2) & (\inst|data_index\(0) & (\inst|data_index\(1) & \inst|data_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(2),
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(1),
	datad => \inst|data_index~0_combout\,
	combout => \inst|Decoder0~1_combout\);

-- Location: LCCOMB_X48_Y20_N30
\inst|data[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[3]~7_combout\ = (\inst|Decoder0~1_combout\ & ((\serial_in~input_o\))) # (!\inst|Decoder0~1_combout\ & (\inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(3),
	datab => \serial_in~input_o\,
	datad => \inst|Decoder0~1_combout\,
	combout => \inst|data[3]~7_combout\);

-- Location: FF_X48_Y20_N13
\inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|data[3]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(3));

-- Location: FF_X47_Y21_N13
\inst3|heading_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	asdata => \inst|data\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(4));

-- Location: LCCOMB_X47_Y21_N6
\inst5|converter1|number~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~20_combout\ = (\inst5|converter1|number[6]~2_combout\ & (((\inst5|converter1|number~19_combout\)))) # (!\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|number~19_combout\ & ((\inst3|heading_out\(4)))) # 
-- (!\inst5|converter1|number~19_combout\ & (\inst5|converter1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|Add0~2_combout\,
	datab => \inst5|converter1|number[6]~2_combout\,
	datac => \inst5|converter1|number~19_combout\,
	datad => \inst3|heading_out\(4),
	combout => \inst5|converter1|number~20_combout\);

-- Location: LCCOMB_X47_Y21_N2
\inst5|converter1|number[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number[6]~6_combout\ = (\inst5|converter1|state.s0~q\) # ((\inst5|converter1|state~16_combout\) # (\inst5|converter1|number~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s0~q\,
	datab => \inst5|converter1|state~16_combout\,
	datad => \inst5|converter1|number~5_combout\,
	combout => \inst5|converter1|number[6]~6_combout\);

-- Location: FF_X47_Y21_N7
\inst5|converter1|number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~20_combout\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(4));

-- Location: LCCOMB_X44_Y21_N6
\inst5|converter1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~6_combout\ = (\inst5|converter1|number\(5) & (!\inst5|converter1|Add2~5\)) # (!\inst5|converter1|number\(5) & ((\inst5|converter1|Add2~5\) # (GND)))
-- \inst5|converter1|Add2~7\ = CARRY((!\inst5|converter1|Add2~5\) # (!\inst5|converter1|number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(5),
	datad => VCC,
	cin => \inst5|converter1|Add2~5\,
	combout => \inst5|converter1|Add2~6_combout\,
	cout => \inst5|converter1|Add2~7\);

-- Location: LCCOMB_X48_Y21_N14
\inst5|converter1|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~8_combout\ = (\inst5|converter1|number\(5) & ((GND) # (!\inst5|converter1|Add4~7\))) # (!\inst5|converter1|number\(5) & (\inst5|converter1|Add4~7\ $ (GND)))
-- \inst5|converter1|Add4~9\ = CARRY((\inst5|converter1|number\(5)) # (!\inst5|converter1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(5),
	datad => VCC,
	cin => \inst5|converter1|Add4~7\,
	combout => \inst5|converter1|Add4~8_combout\,
	cout => \inst5|converter1|Add4~9\);

-- Location: LCCOMB_X46_Y21_N12
\inst5|converter1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~4_combout\ = (\inst5|converter1|number\(5) & (\inst5|converter1|Add0~3\ $ (GND))) # (!\inst5|converter1|number\(5) & (!\inst5|converter1|Add0~3\ & VCC))
-- \inst5|converter1|Add0~5\ = CARRY((\inst5|converter1|number\(5) & !\inst5|converter1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(5),
	datad => VCC,
	cin => \inst5|converter1|Add0~3\,
	combout => \inst5|converter1|Add0~4_combout\,
	cout => \inst5|converter1|Add0~5\);

-- Location: LCCOMB_X47_Y21_N8
\inst5|converter1|number~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~7_combout\ = (\inst5|converter1|number[6]~2_combout\ & (!\inst5|converter1|number[6]~1_combout\ & (\inst5|converter1|Add4~8_combout\))) # (!\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|number[6]~1_combout\) # 
-- ((\inst5|converter1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~2_combout\,
	datab => \inst5|converter1|number[6]~1_combout\,
	datac => \inst5|converter1|Add4~8_combout\,
	datad => \inst5|converter1|Add0~4_combout\,
	combout => \inst5|converter1|number~7_combout\);

-- Location: LCCOMB_X49_Y21_N22
\inst|data[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[4]~1_combout\ = (\inst|data_index\(1)) # ((\inst|data_index\(0)) # (!\inst|data_index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(1),
	datac => \inst|data_index\(0),
	datad => \inst|data_index\(2),
	combout => \inst|data[4]~1_combout\);

-- Location: LCCOMB_X49_Y21_N16
\inst|data[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[4]~2_combout\ = (\inst|data[4]~1_combout\ & (((\inst|data\(4))))) # (!\inst|data[4]~1_combout\ & ((\inst|data_index~0_combout\ & (\serial_in~input_o\)) # (!\inst|data_index~0_combout\ & ((\inst|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \inst|data\(4),
	datac => \inst|data[4]~1_combout\,
	datad => \inst|data_index~0_combout\,
	combout => \inst|data[4]~2_combout\);

-- Location: LCCOMB_X49_Y21_N28
\inst|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[4]~feeder_combout\ = \inst|data[4]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data[4]~2_combout\,
	combout => \inst|data[4]~feeder_combout\);

-- Location: FF_X49_Y21_N29
\inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(4));

-- Location: FF_X47_Y21_N25
\inst3|heading_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	asdata => \inst|data\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(5));

-- Location: LCCOMB_X47_Y21_N16
\inst5|converter1|number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~8_combout\ = (\inst5|converter1|number[6]~1_combout\ & ((\inst5|converter1|number~7_combout\ & ((\inst3|heading_out\(5)))) # (!\inst5|converter1|number~7_combout\ & (\inst5|converter1|Add2~6_combout\)))) # 
-- (!\inst5|converter1|number[6]~1_combout\ & (((\inst5|converter1|number~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|Add2~6_combout\,
	datab => \inst5|converter1|number[6]~1_combout\,
	datac => \inst5|converter1|number~7_combout\,
	datad => \inst3|heading_out\(5),
	combout => \inst5|converter1|number~8_combout\);

-- Location: FF_X47_Y21_N17
\inst5|converter1|number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~8_combout\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(5));

-- Location: LCCOMB_X46_Y21_N14
\inst5|converter1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~6_combout\ = (\inst5|converter1|number\(6) & (!\inst5|converter1|Add0~5\)) # (!\inst5|converter1|number\(6) & ((\inst5|converter1|Add0~5\) # (GND)))
-- \inst5|converter1|Add0~7\ = CARRY((!\inst5|converter1|Add0~5\) # (!\inst5|converter1|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(6),
	datad => VCC,
	cin => \inst5|converter1|Add0~5\,
	combout => \inst5|converter1|Add0~6_combout\,
	cout => \inst5|converter1|Add0~7\);

-- Location: LCCOMB_X48_Y21_N16
\inst5|converter1|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~10_combout\ = (\inst5|converter1|number\(6) & (\inst5|converter1|Add4~9\ & VCC)) # (!\inst5|converter1|number\(6) & (!\inst5|converter1|Add4~9\))
-- \inst5|converter1|Add4~11\ = CARRY((!\inst5|converter1|number\(6) & !\inst5|converter1|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(6),
	datad => VCC,
	cin => \inst5|converter1|Add4~9\,
	combout => \inst5|converter1|Add4~10_combout\,
	cout => \inst5|converter1|Add4~11\);

-- Location: LCCOMB_X44_Y21_N8
\inst5|converter1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~8_combout\ = (\inst5|converter1|number\(6) & (\inst5|converter1|Add2~7\ $ (GND))) # (!\inst5|converter1|number\(6) & (!\inst5|converter1|Add2~7\ & VCC))
-- \inst5|converter1|Add2~9\ = CARRY((\inst5|converter1|number\(6) & !\inst5|converter1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(6),
	datad => VCC,
	cin => \inst5|converter1|Add2~7\,
	combout => \inst5|converter1|Add2~8_combout\,
	cout => \inst5|converter1|Add2~9\);

-- Location: LCCOMB_X47_Y21_N26
\inst5|converter1|number~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~23_combout\ = (\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|number[6]~1_combout\ & ((\inst5|converter1|Add2~8_combout\))) # (!\inst5|converter1|number[6]~1_combout\ & (\inst5|converter1|Add4~10_combout\)))) # 
-- (!\inst5|converter1|number[6]~2_combout\ & (((\inst5|converter1|number[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~2_combout\,
	datab => \inst5|converter1|Add4~10_combout\,
	datac => \inst5|converter1|number[6]~1_combout\,
	datad => \inst5|converter1|Add2~8_combout\,
	combout => \inst5|converter1|number~23_combout\);

-- Location: LCCOMB_X48_Y20_N18
\inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~3_combout\ = (\inst|data_index\(2) & (\inst|data_index\(0) & (!\inst|data_index\(1) & \inst|data_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(2),
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(1),
	datad => \inst|data_index~0_combout\,
	combout => \inst|Decoder0~3_combout\);

-- Location: LCCOMB_X48_Y20_N12
\inst|data[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[5]~9_combout\ = (\inst|Decoder0~3_combout\ & ((\serial_in~input_o\))) # (!\inst|Decoder0~3_combout\ & (\inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data\(5),
	datab => \serial_in~input_o\,
	datad => \inst|Decoder0~3_combout\,
	combout => \inst|data[5]~9_combout\);

-- Location: FF_X48_Y20_N31
\inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst|data[5]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(5));

-- Location: FF_X47_Y21_N3
\inst3|heading_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	asdata => \inst|data\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(6));

-- Location: LCCOMB_X47_Y21_N4
\inst5|converter1|number~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~24_combout\ = (\inst5|converter1|number[6]~2_combout\ & (((\inst5|converter1|number~23_combout\)))) # (!\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|number~23_combout\ & ((\inst3|heading_out\(6)))) # 
-- (!\inst5|converter1|number~23_combout\ & (\inst5|converter1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~2_combout\,
	datab => \inst5|converter1|Add0~6_combout\,
	datac => \inst5|converter1|number~23_combout\,
	datad => \inst3|heading_out\(6),
	combout => \inst5|converter1|number~24_combout\);

-- Location: FF_X47_Y21_N5
\inst5|converter1|number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~24_combout\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(6));

-- Location: LCCOMB_X46_Y21_N16
\inst5|converter1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~8_combout\ = (\inst5|converter1|number\(7) & (\inst5|converter1|Add0~7\ $ (GND))) # (!\inst5|converter1|number\(7) & (!\inst5|converter1|Add0~7\ & VCC))
-- \inst5|converter1|Add0~9\ = CARRY((\inst5|converter1|number\(7) & !\inst5|converter1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(7),
	datad => VCC,
	cin => \inst5|converter1|Add0~7\,
	combout => \inst5|converter1|Add0~8_combout\,
	cout => \inst5|converter1|Add0~9\);

-- Location: LCCOMB_X48_Y21_N18
\inst5|converter1|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~12_combout\ = (\inst5|converter1|number\(7) & ((GND) # (!\inst5|converter1|Add4~11\))) # (!\inst5|converter1|number\(7) & (\inst5|converter1|Add4~11\ $ (GND)))
-- \inst5|converter1|Add4~13\ = CARRY((\inst5|converter1|number\(7)) # (!\inst5|converter1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(7),
	datad => VCC,
	cin => \inst5|converter1|Add4~11\,
	combout => \inst5|converter1|Add4~12_combout\,
	cout => \inst5|converter1|Add4~13\);

-- Location: LCCOMB_X48_Y21_N0
\inst5|converter1|number~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~13_combout\ = (\inst5|converter1|number[6]~1_combout\ & (!\inst5|converter1|number[6]~2_combout\)) # (!\inst5|converter1|number[6]~1_combout\ & ((\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|Add4~12_combout\))) # 
-- (!\inst5|converter1|number[6]~2_combout\ & (\inst5|converter1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~1_combout\,
	datab => \inst5|converter1|number[6]~2_combout\,
	datac => \inst5|converter1|Add0~8_combout\,
	datad => \inst5|converter1|Add4~12_combout\,
	combout => \inst5|converter1|number~13_combout\);

-- Location: LCCOMB_X44_Y21_N10
\inst5|converter1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~10_combout\ = (\inst5|converter1|number\(7) & (\inst5|converter1|Add2~9\ & VCC)) # (!\inst5|converter1|number\(7) & (!\inst5|converter1|Add2~9\))
-- \inst5|converter1|Add2~11\ = CARRY((!\inst5|converter1|number\(7) & !\inst5|converter1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(7),
	datad => VCC,
	cin => \inst5|converter1|Add2~9\,
	combout => \inst5|converter1|Add2~10_combout\,
	cout => \inst5|converter1|Add2~11\);

-- Location: LCCOMB_X49_Y21_N10
\inst|data[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~3_combout\ = ((\inst|data_index\(0)) # (!\inst|data_index\(2))) # (!\inst|data_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(1),
	datac => \inst|data_index\(0),
	datad => \inst|data_index\(2),
	combout => \inst|data[6]~3_combout\);

-- Location: LCCOMB_X49_Y21_N20
\inst|data[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~4_combout\ = (\inst|data[6]~3_combout\ & (\inst|data\(6))) # (!\inst|data[6]~3_combout\ & ((\inst|data_index~0_combout\ & ((\serial_in~input_o\))) # (!\inst|data_index~0_combout\ & (\inst|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data[6]~3_combout\,
	datab => \inst|data\(6),
	datac => \serial_in~input_o\,
	datad => \inst|data_index~0_combout\,
	combout => \inst|data[6]~4_combout\);

-- Location: LCCOMB_X49_Y21_N30
\inst|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[6]~feeder_combout\ = \inst|data[6]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data[6]~4_combout\,
	combout => \inst|data[6]~feeder_combout\);

-- Location: FF_X49_Y21_N31
\inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(6));

-- Location: FF_X48_Y21_N13
\inst3|heading_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	asdata => \inst|data\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(7));

-- Location: LCCOMB_X48_Y21_N4
\inst5|converter1|number~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~14_combout\ = (\inst5|converter1|number[6]~1_combout\ & ((\inst5|converter1|number~13_combout\ & ((\inst3|heading_out\(7)))) # (!\inst5|converter1|number~13_combout\ & (\inst5|converter1|Add2~10_combout\)))) # 
-- (!\inst5|converter1|number[6]~1_combout\ & (\inst5|converter1|number~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~1_combout\,
	datab => \inst5|converter1|number~13_combout\,
	datac => \inst5|converter1|Add2~10_combout\,
	datad => \inst3|heading_out\(7),
	combout => \inst5|converter1|number~14_combout\);

-- Location: FF_X48_Y21_N5
\inst5|converter1|number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~14_combout\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(7));

-- Location: LCCOMB_X46_Y21_N18
\inst5|converter1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~10_combout\ = (\inst5|converter1|number\(8) & (!\inst5|converter1|Add0~9\)) # (!\inst5|converter1|number\(8) & ((\inst5|converter1|Add0~9\) # (GND)))
-- \inst5|converter1|Add0~11\ = CARRY((!\inst5|converter1|Add0~9\) # (!\inst5|converter1|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(8),
	datad => VCC,
	cin => \inst5|converter1|Add0~9\,
	combout => \inst5|converter1|Add0~10_combout\,
	cout => \inst5|converter1|Add0~11\);

-- Location: LCCOMB_X49_Y21_N18
\inst|data[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[7]~5_combout\ = ((!\inst|data_index\(2)) # (!\inst|data_index\(0))) # (!\inst|data_index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(1),
	datac => \inst|data_index\(0),
	datad => \inst|data_index\(2),
	combout => \inst|data[7]~5_combout\);

-- Location: LCCOMB_X49_Y21_N12
\inst|data[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[7]~6_combout\ = (\inst|data[7]~5_combout\ & (((\inst|data\(7))))) # (!\inst|data[7]~5_combout\ & ((\inst|data_index~0_combout\ & (\serial_in~input_o\)) # (!\inst|data_index~0_combout\ & ((\inst|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datab => \inst|data[7]~5_combout\,
	datac => \inst|data\(7),
	datad => \inst|data_index~0_combout\,
	combout => \inst|data[7]~6_combout\);

-- Location: LCCOMB_X49_Y21_N8
\inst|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[7]~feeder_combout\ = \inst|data[7]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data[7]~6_combout\,
	combout => \inst|data[7]~feeder_combout\);

-- Location: FF_X49_Y21_N9
\inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(7));

-- Location: FF_X48_Y21_N23
\inst3|heading_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	asdata => \inst|data\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(8));

-- Location: LCCOMB_X44_Y21_N12
\inst5|converter1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~12_combout\ = (\inst5|converter1|number\(8) & ((GND) # (!\inst5|converter1|Add2~11\))) # (!\inst5|converter1|number\(8) & (\inst5|converter1|Add2~11\ $ (GND)))
-- \inst5|converter1|Add2~13\ = CARRY((\inst5|converter1|number\(8)) # (!\inst5|converter1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(8),
	datad => VCC,
	cin => \inst5|converter1|Add2~11\,
	combout => \inst5|converter1|Add2~12_combout\,
	cout => \inst5|converter1|Add2~13\);

-- Location: LCCOMB_X48_Y21_N20
\inst5|converter1|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~14_combout\ = (\inst5|converter1|number\(8) & (\inst5|converter1|Add4~13\ & VCC)) # (!\inst5|converter1|number\(8) & (!\inst5|converter1|Add4~13\))
-- \inst5|converter1|Add4~15\ = CARRY((!\inst5|converter1|number\(8) & !\inst5|converter1|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(8),
	datad => VCC,
	cin => \inst5|converter1|Add4~13\,
	combout => \inst5|converter1|Add4~14_combout\,
	cout => \inst5|converter1|Add4~15\);

-- Location: LCCOMB_X48_Y21_N28
\inst5|converter1|number~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~15_combout\ = (\inst5|converter1|number[6]~1_combout\ & (((\inst5|converter1|Add2~12_combout\)) # (!\inst5|converter1|number[6]~2_combout\))) # (!\inst5|converter1|number[6]~1_combout\ & (\inst5|converter1|number[6]~2_combout\ & 
-- ((\inst5|converter1|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~1_combout\,
	datab => \inst5|converter1|number[6]~2_combout\,
	datac => \inst5|converter1|Add2~12_combout\,
	datad => \inst5|converter1|Add4~14_combout\,
	combout => \inst5|converter1|number~15_combout\);

-- Location: LCCOMB_X48_Y21_N2
\inst5|converter1|number~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~16_combout\ = (\inst5|converter1|number[6]~2_combout\ & (((\inst5|converter1|number~15_combout\)))) # (!\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|number~15_combout\ & ((\inst3|heading_out\(8)))) # 
-- (!\inst5|converter1|number~15_combout\ & (\inst5|converter1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|Add0~10_combout\,
	datab => \inst5|converter1|number[6]~2_combout\,
	datac => \inst3|heading_out\(8),
	datad => \inst5|converter1|number~15_combout\,
	combout => \inst5|converter1|number~16_combout\);

-- Location: FF_X48_Y21_N3
\inst5|converter1|number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~16_combout\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(8));

-- Location: LCCOMB_X48_Y21_N22
\inst5|converter1|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~16_combout\ = (\inst5|converter1|number\(9) & ((GND) # (!\inst5|converter1|Add4~15\))) # (!\inst5|converter1|number\(9) & (\inst5|converter1|Add4~15\ $ (GND)))
-- \inst5|converter1|Add4~17\ = CARRY((\inst5|converter1|number\(9)) # (!\inst5|converter1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(9),
	datad => VCC,
	cin => \inst5|converter1|Add4~15\,
	combout => \inst5|converter1|Add4~16_combout\,
	cout => \inst5|converter1|Add4~17\);

-- Location: LCCOMB_X44_Y21_N14
\inst5|converter1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~14_combout\ = (\inst5|converter1|number\(9) & (\inst5|converter1|Add2~13\ & VCC)) # (!\inst5|converter1|number\(9) & (!\inst5|converter1|Add2~13\))
-- \inst5|converter1|Add2~15\ = CARRY((!\inst5|converter1|number\(9) & !\inst5|converter1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(9),
	datad => VCC,
	cin => \inst5|converter1|Add2~13\,
	combout => \inst5|converter1|Add2~14_combout\,
	cout => \inst5|converter1|Add2~15\);

-- Location: LCCOMB_X44_Y21_N26
\inst5|converter1|number~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~17_combout\ = (\inst5|converter1|state.s1~q\ & ((\inst5|converter1|state.s2~q\ & ((\inst5|converter1|Add2~14_combout\))) # (!\inst5|converter1|state.s2~q\ & (\inst5|converter1|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|Add4~16_combout\,
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|Add2~14_combout\,
	datad => \inst5|converter1|state.s1~q\,
	combout => \inst5|converter1|number~17_combout\);

-- Location: LCCOMB_X46_Y21_N20
\inst5|converter1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~12_combout\ = (\inst5|converter1|number\(9) & (\inst5|converter1|Add0~11\ $ (GND))) # (!\inst5|converter1|number\(9) & (!\inst5|converter1|Add0~11\ & VCC))
-- \inst5|converter1|Add0~13\ = CARRY((\inst5|converter1|number\(9) & !\inst5|converter1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|number\(9),
	datad => VCC,
	cin => \inst5|converter1|Add0~11\,
	combout => \inst5|converter1|Add0~12_combout\,
	cout => \inst5|converter1|Add0~13\);

-- Location: LCCOMB_X44_Y21_N24
\inst5|converter1|number~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~18_combout\ = (\inst5|converter1|number~17_combout\) # ((!\inst5|converter1|state.s1~q\ & \inst5|converter1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datac => \inst5|converter1|number~17_combout\,
	datad => \inst5|converter1|Add0~12_combout\,
	combout => \inst5|converter1|number~18_combout\);

-- Location: FF_X44_Y21_N25
\inst5|converter1|number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~18_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(9));

-- Location: LCCOMB_X46_Y21_N22
\inst5|converter1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~14_combout\ = (\inst5|converter1|number\(10) & (\inst5|converter1|Add0~13\ & VCC)) # (!\inst5|converter1|number\(10) & (!\inst5|converter1|Add0~13\))
-- \inst5|converter1|Add0~15\ = CARRY((!\inst5|converter1|number\(10) & !\inst5|converter1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(10),
	datad => VCC,
	cin => \inst5|converter1|Add0~13\,
	combout => \inst5|converter1|Add0~14_combout\,
	cout => \inst5|converter1|Add0~15\);

-- Location: LCCOMB_X48_Y21_N24
\inst5|converter1|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~18_combout\ = (\inst5|converter1|number\(10) & (\inst5|converter1|Add4~17\ & VCC)) # (!\inst5|converter1|number\(10) & (!\inst5|converter1|Add4~17\))
-- \inst5|converter1|Add4~19\ = CARRY((!\inst5|converter1|number\(10) & !\inst5|converter1|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(10),
	datad => VCC,
	cin => \inst5|converter1|Add4~17\,
	combout => \inst5|converter1|Add4~18_combout\,
	cout => \inst5|converter1|Add4~19\);

-- Location: LCCOMB_X44_Y21_N16
\inst5|converter1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~16_combout\ = (\inst5|converter1|number\(10) & ((GND) # (!\inst5|converter1|Add2~15\))) # (!\inst5|converter1|number\(10) & (\inst5|converter1|Add2~15\ $ (GND)))
-- \inst5|converter1|Add2~17\ = CARRY((\inst5|converter1|number\(10)) # (!\inst5|converter1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(10),
	datad => VCC,
	cin => \inst5|converter1|Add2~15\,
	combout => \inst5|converter1|Add2~16_combout\,
	cout => \inst5|converter1|Add2~17\);

-- Location: LCCOMB_X44_Y21_N28
\inst5|converter1|number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~11_combout\ = (\inst5|converter1|state.s1~q\ & ((\inst5|converter1|state.s2~q\ & ((\inst5|converter1|Add2~16_combout\))) # (!\inst5|converter1|state.s2~q\ & (\inst5|converter1|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|Add4~18_combout\,
	datad => \inst5|converter1|Add2~16_combout\,
	combout => \inst5|converter1|number~11_combout\);

-- Location: LCCOMB_X44_Y21_N22
\inst5|converter1|number~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~12_combout\ = (\inst5|converter1|number~11_combout\) # ((!\inst5|converter1|state.s1~q\ & \inst5|converter1|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datab => \inst5|converter1|Add0~14_combout\,
	datad => \inst5|converter1|number~11_combout\,
	combout => \inst5|converter1|number~12_combout\);

-- Location: FF_X44_Y21_N23
\inst5|converter1|number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~12_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(10));

-- Location: LCCOMB_X44_Y21_N18
\inst5|converter1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add2~18_combout\ = \inst5|converter1|Add2~17\ $ (!\inst5|converter1|number\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter1|number\(11),
	cin => \inst5|converter1|Add2~17\,
	combout => \inst5|converter1|Add2~18_combout\);

-- Location: LCCOMB_X48_Y21_N26
\inst5|converter1|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add4~20_combout\ = \inst5|converter1|Add4~19\ $ (\inst5|converter1|number\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter1|number\(11),
	cin => \inst5|converter1|Add4~19\,
	combout => \inst5|converter1|Add4~20_combout\);

-- Location: LCCOMB_X44_Y21_N30
\inst5|converter1|number~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~9_combout\ = (\inst5|converter1|state.s1~q\ & ((\inst5|converter1|state.s2~q\ & (\inst5|converter1|Add2~18_combout\)) # (!\inst5|converter1|state.s2~q\ & ((\inst5|converter1|Add4~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|Add2~18_combout\,
	datad => \inst5|converter1|Add4~20_combout\,
	combout => \inst5|converter1|number~9_combout\);

-- Location: LCCOMB_X46_Y21_N24
\inst5|converter1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add0~16_combout\ = \inst5|converter1|Add0~15\ $ (\inst5|converter1|number\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter1|number\(11),
	cin => \inst5|converter1|Add0~15\,
	combout => \inst5|converter1|Add0~16_combout\);

-- Location: LCCOMB_X44_Y21_N20
\inst5|converter1|number~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~10_combout\ = (\inst5|converter1|number~9_combout\) # ((!\inst5|converter1|state.s1~q\ & \inst5|converter1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datac => \inst5|converter1|number~9_combout\,
	datad => \inst5|converter1|Add0~16_combout\,
	combout => \inst5|converter1|number~10_combout\);

-- Location: FF_X44_Y21_N21
\inst5|converter1|number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~10_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(11));

-- Location: LCCOMB_X46_Y21_N0
\inst5|converter1|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~14_combout\ = (\inst5|converter1|number\(6) & (\inst5|converter1|number\(5) & ((\inst5|converter1|number\(3)) # (\inst5|converter1|number\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(6),
	datab => \inst5|converter1|number\(5),
	datac => \inst5|converter1|number\(3),
	datad => \inst5|converter1|number\(4),
	combout => \inst5|converter1|state~14_combout\);

-- Location: LCCOMB_X47_Y21_N28
\inst5|converter1|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~15_combout\ = (\inst5|converter1|number\(7) & (\inst5|converter1|number\(9) & (\inst5|converter1|state~14_combout\ & \inst5|converter1|number\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(7),
	datab => \inst5|converter1|number\(9),
	datac => \inst5|converter1|state~14_combout\,
	datad => \inst5|converter1|number\(8),
	combout => \inst5|converter1|state~15_combout\);

-- Location: LCCOMB_X47_Y21_N18
\inst5|converter1|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~16_combout\ = (!\inst5|converter1|state.s1~q\ & ((\inst5|converter1|number\(11)) # ((\inst5|converter1|number\(10)) # (\inst5|converter1|state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s1~q\,
	datab => \inst5|converter1|number\(11),
	datac => \inst5|converter1|number\(10),
	datad => \inst5|converter1|state~15_combout\,
	combout => \inst5|converter1|state~16_combout\);

-- Location: LCCOMB_X48_Y25_N4
\inst5|converter1|state.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state.s1~0_combout\ = (!\inst5|converter1|state.s0~q\ & ((\inst5|converter1|state.s1~q\) # (!\inst5|converter1|state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s0~q\,
	datac => \inst5|converter1|state.s1~q\,
	datad => \inst5|converter1|state~16_combout\,
	combout => \inst5|converter1|state.s1~0_combout\);

-- Location: FF_X48_Y25_N5
\inst5|converter1|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|state.s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|state.s1~q\);

-- Location: LCCOMB_X48_Y25_N24
\inst5|converter1|state.s5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state.s5~feeder_combout\ = \inst5|converter1|state.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter1|state.s4~q\,
	combout => \inst5|converter1|state.s5~feeder_combout\);

-- Location: FF_X48_Y25_N25
\inst5|converter1|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|state.s5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|state.s5~q\);

-- Location: LCCOMB_X48_Y25_N22
\inst5|converter1|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~17_combout\ = (!\inst5|converter1|state.s4~q\ & (!\inst5|converter1|state.s3~q\ & !\inst5|converter1|state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|state.s4~q\,
	datac => \inst5|converter1|state.s3~q\,
	datad => \inst5|converter1|state.s5~q\,
	combout => \inst5|converter1|state~17_combout\);

-- Location: LCCOMB_X48_Y25_N20
\inst5|converter1|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~18_combout\ = (\inst5|converter1|digit_int_2~1_combout\) # ((!\inst5|converter1|state.s2~q\ & ((\inst5|converter1|number~0_combout\) # (\inst5|converter1|state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number~0_combout\,
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|state~17_combout\,
	datad => \inst5|converter1|digit_int_2~1_combout\,
	combout => \inst5|converter1|state~18_combout\);

-- Location: LCCOMB_X48_Y25_N6
\inst5|converter1|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~19_combout\ = (\inst5|converter1|state~16_combout\) # ((\inst5|converter1|state.s1~q\ & \inst5|converter1|state~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|state.s1~q\,
	datac => \inst5|converter1|state~16_combout\,
	datad => \inst5|converter1|state~18_combout\,
	combout => \inst5|converter1|state~19_combout\);

-- Location: LCCOMB_X48_Y25_N18
\inst5|converter1|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~24_combout\ = (!\inst5|converter1|state.s0~q\ & ((\inst5|converter1|state~19_combout\ & ((\inst5|converter1|state.s3~q\))) # (!\inst5|converter1|state~19_combout\ & (\inst5|converter1|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s0~q\,
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|state.s3~q\,
	datad => \inst5|converter1|state~19_combout\,
	combout => \inst5|converter1|state~24_combout\);

-- Location: FF_X48_Y25_N19
\inst5|converter1|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|state.s3~q\);

-- Location: LCCOMB_X48_Y25_N16
\inst5|converter1|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~22_combout\ = (!\inst5|converter1|state.s0~q\ & ((\inst5|converter1|state~19_combout\ & ((\inst5|converter1|state.s4~q\))) # (!\inst5|converter1|state~19_combout\ & (\inst5|converter1|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s0~q\,
	datab => \inst5|converter1|state.s3~q\,
	datac => \inst5|converter1|state.s4~q\,
	datad => \inst5|converter1|state~19_combout\,
	combout => \inst5|converter1|state~22_combout\);

-- Location: FF_X48_Y25_N17
\inst5|converter1|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|state.s4~q\);

-- Location: LCCOMB_X48_Y25_N10
\inst5|converter1|digit_int_0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_0[1]~1_combout\ = (\inst5|converter1|state.s0~q\) # (\inst5|converter1|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter1|state.s0~q\,
	datad => \inst5|converter1|state.s4~q\,
	combout => \inst5|converter1|digit_int_0[1]~1_combout\);

-- Location: LCCOMB_X48_Y25_N28
\inst5|converter1|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~20_combout\ = (\inst5|converter1|state.s2~q\) # (!\inst5|converter1|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|state.s1~q\,
	combout => \inst5|converter1|state~20_combout\);

-- Location: LCCOMB_X48_Y25_N26
\inst5|converter1|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~21_combout\ = (!\inst5|converter1|digit_int_0[1]~1_combout\ & (!\inst5|converter1|state~20_combout\ & (!\inst5|converter1|state.s3~q\ & !\inst5|converter1|state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_0[1]~1_combout\,
	datab => \inst5|converter1|state~20_combout\,
	datac => \inst5|converter1|state.s3~q\,
	datad => \inst5|converter1|state~19_combout\,
	combout => \inst5|converter1|state~21_combout\);

-- Location: FF_X48_Y25_N27
\inst5|converter1|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|state.s0~q\);

-- Location: LCCOMB_X48_Y25_N12
\inst5|converter1|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|state~23_combout\ = (!\inst5|converter1|state.s0~q\ & ((\inst5|converter1|state~19_combout\ & ((\inst5|converter1|state.s2~q\))) # (!\inst5|converter1|state~19_combout\ & (!\inst5|converter1|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s0~q\,
	datab => \inst5|converter1|state.s1~q\,
	datac => \inst5|converter1|state.s2~q\,
	datad => \inst5|converter1|state~19_combout\,
	combout => \inst5|converter1|state~23_combout\);

-- Location: FF_X48_Y25_N13
\inst5|converter1|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|state.s2~q\);

-- Location: LCCOMB_X46_Y21_N6
\inst5|converter1|number[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number[6]~1_combout\ = (\inst5|converter1|state.s0~q\) # ((\inst5|converter1|state.s2~q\ & \inst5|converter1|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|state.s2~q\,
	datac => \inst5|converter1|state.s1~q\,
	datad => \inst5|converter1|state.s0~q\,
	combout => \inst5|converter1|number[6]~1_combout\);

-- Location: LCCOMB_X46_Y21_N30
\inst5|converter1|number~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~3_combout\ = (\inst5|converter1|number[6]~1_combout\ & (!\inst5|converter1|number[6]~2_combout\)) # (!\inst5|converter1|number[6]~1_combout\ & ((\inst5|converter1|number[6]~2_combout\ & ((\inst5|converter1|Add4~4_combout\))) # 
-- (!\inst5|converter1|number[6]~2_combout\ & (\inst5|converter1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~1_combout\,
	datab => \inst5|converter1|number[6]~2_combout\,
	datac => \inst5|converter1|Add0~0_combout\,
	datad => \inst5|converter1|Add4~4_combout\,
	combout => \inst5|converter1|number~3_combout\);

-- Location: LCCOMB_X48_Y20_N28
\inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (!\inst|data_index\(2) & (!\inst|data_index\(0) & (\inst|data_index\(1) & \inst|data_index~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|data_index\(2),
	datab => \inst|data_index\(0),
	datac => \inst|data_index\(1),
	datad => \inst|data_index~0_combout\,
	combout => \inst|Decoder0~0_combout\);

-- Location: LCCOMB_X45_Y21_N20
\inst|data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[2]~0_combout\ = (\inst|Decoder0~0_combout\ & (\serial_in~input_o\)) # (!\inst|Decoder0~0_combout\ & ((\inst|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_in~input_o\,
	datac => \inst|data\(2),
	datad => \inst|Decoder0~0_combout\,
	combout => \inst|data[2]~0_combout\);

-- Location: LCCOMB_X45_Y21_N26
\inst|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data[2]~feeder_combout\ = \inst|data[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data[2]~0_combout\,
	combout => \inst|data[2]~feeder_combout\);

-- Location: FF_X45_Y21_N27
\inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(2));

-- Location: LCCOMB_X46_Y21_N2
\inst3|heading_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|heading_out[3]~feeder_combout\ = \inst|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(2),
	combout => \inst3|heading_out[3]~feeder_combout\);

-- Location: FF_X46_Y21_N3
\inst3|heading_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataReady~clkctrl_outclk\,
	d => \inst3|heading_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|heading_out\(3));

-- Location: LCCOMB_X46_Y21_N4
\inst5|converter1|number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|number~4_combout\ = (\inst5|converter1|number[6]~1_combout\ & ((\inst5|converter1|number~3_combout\ & ((\inst3|heading_out\(3)))) # (!\inst5|converter1|number~3_combout\ & (\inst5|converter1|Add2~2_combout\)))) # 
-- (!\inst5|converter1|number[6]~1_combout\ & (((\inst5|converter1|number~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number[6]~1_combout\,
	datab => \inst5|converter1|Add2~2_combout\,
	datac => \inst5|converter1|number~3_combout\,
	datad => \inst3|heading_out\(3),
	combout => \inst5|converter1|number~4_combout\);

-- Location: FF_X46_Y21_N5
\inst5|converter1|number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|number~4_combout\,
	ena => \inst5|converter1|number[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|number\(3));

-- Location: LCCOMB_X47_Y25_N26
\inst5|converter1|digit_int_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_0~0_combout\ = (\inst5|converter1|number\(3) & !\inst5|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|number\(3),
	datac => \inst5|converter1|state.s0~q\,
	combout => \inst5|converter1|digit_int_0~0_combout\);

-- Location: FF_X47_Y25_N27
\inst5|converter1|digit_int_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|digit_int_0~0_combout\,
	ena => \inst5|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_0\(3));

-- Location: FF_X47_Y25_N5
\inst5|converter1|digit_out_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_0\(3),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_0\(3));

-- Location: LCCOMB_X46_Y25_N0
\inst5|converter1|digit_int_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_2~3_combout\ = (!\inst5|converter1|digit_int_2\(0) & !\inst5|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter1|digit_int_2\(0),
	datad => \inst5|converter1|state.s0~q\,
	combout => \inst5|converter1|digit_int_2~3_combout\);

-- Location: LCCOMB_X46_Y25_N8
\inst5|converter1|digit_int_2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_2[1]~2_combout\ = (\inst5|converter1|state.s0~q\) # (\inst5|converter1|digit_int_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|state.s0~q\,
	datad => \inst5|converter1|digit_int_2~1_combout\,
	combout => \inst5|converter1|digit_int_2[1]~2_combout\);

-- Location: FF_X46_Y25_N1
\inst5|converter1|digit_int_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|digit_int_2~3_combout\,
	ena => \inst5|converter1|digit_int_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_2\(0));

-- Location: LCCOMB_X46_Y25_N12
\inst5|converter1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add3~2_combout\ = \inst5|converter1|digit_int_2\(1) $ (\inst5|converter1|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter1|digit_int_2\(1),
	datad => \inst5|converter1|digit_int_2\(0),
	combout => \inst5|converter1|Add3~2_combout\);

-- Location: FF_X46_Y25_N13
\inst5|converter1|digit_int_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|Add3~2_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|digit_int_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_2\(1));

-- Location: LCCOMB_X46_Y25_N16
\inst5|converter1|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add3~1_combout\ = \inst5|converter1|digit_int_2\(2) $ (((\inst5|converter1|digit_int_2\(1) & \inst5|converter1|digit_int_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_2\(1),
	datac => \inst5|converter1|digit_int_2\(2),
	datad => \inst5|converter1|digit_int_2\(0),
	combout => \inst5|converter1|Add3~1_combout\);

-- Location: FF_X46_Y25_N17
\inst5|converter1|digit_int_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|Add3~1_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|digit_int_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_2\(2));

-- Location: LCCOMB_X46_Y25_N4
\inst5|converter1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add3~0_combout\ = \inst5|converter1|digit_int_2\(3) $ (((\inst5|converter1|digit_int_2\(1) & (\inst5|converter1|digit_int_2\(0) & \inst5|converter1|digit_int_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_2\(1),
	datab => \inst5|converter1|digit_int_2\(0),
	datac => \inst5|converter1|digit_int_2\(3),
	datad => \inst5|converter1|digit_int_2\(2),
	combout => \inst5|converter1|Add3~0_combout\);

-- Location: FF_X46_Y25_N5
\inst5|converter1|digit_int_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|Add3~0_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|digit_int_2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_2\(3));

-- Location: FF_X47_Y25_N11
\inst5|converter1|digit_out_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_2\(3),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_2\(3));

-- Location: LCCOMB_X47_Y25_N10
\inst5|lcd_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~73_combout\ = (\inst5|charCount\(0) & ((\inst5|charCount\(1) & (\inst5|converter1|digit_out_0\(3))) # (!\inst5|charCount\(1) & ((\inst5|converter1|digit_out_2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|converter1|digit_out_0\(3),
	datac => \inst5|converter1|digit_out_2\(3),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~73_combout\);

-- Location: LCCOMB_X47_Y25_N20
\inst5|lcd_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~72_combout\ = (\inst5|charCount\(3) & !\inst5|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(3),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~72_combout\);

-- Location: LCCOMB_X46_Y25_N22
\inst5|converter1|digit_int_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_1~1_combout\ = (!\inst5|converter1|digit_int_1\(0) & !\inst5|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter1|digit_int_1\(0),
	datad => \inst5|converter1|state.s0~q\,
	combout => \inst5|converter1|digit_int_1~1_combout\);

-- Location: LCCOMB_X46_Y25_N2
\inst5|converter1|digit_int_1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_1[2]~0_combout\ = (\inst5|converter1|state.s0~q\) # (\inst5|converter1|number~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter1|state.s0~q\,
	datac => \inst5|converter1|number~0_combout\,
	combout => \inst5|converter1|digit_int_1[2]~0_combout\);

-- Location: FF_X46_Y25_N23
\inst5|converter1|digit_int_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|digit_int_1~1_combout\,
	ena => \inst5|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_1\(0));

-- Location: LCCOMB_X46_Y25_N14
\inst5|converter1|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add5~2_combout\ = \inst5|converter1|digit_int_1\(0) $ (\inst5|converter1|digit_int_1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_1\(0),
	datac => \inst5|converter1|digit_int_1\(1),
	combout => \inst5|converter1|Add5~2_combout\);

-- Location: FF_X46_Y25_N15
\inst5|converter1|digit_int_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|Add5~2_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_1\(1));

-- Location: LCCOMB_X46_Y25_N26
\inst5|converter1|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add5~1_combout\ = \inst5|converter1|digit_int_1\(2) $ (((\inst5|converter1|digit_int_1\(0) & \inst5|converter1|digit_int_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_1\(0),
	datab => \inst5|converter1|digit_int_1\(1),
	datac => \inst5|converter1|digit_int_1\(2),
	combout => \inst5|converter1|Add5~1_combout\);

-- Location: FF_X46_Y25_N27
\inst5|converter1|digit_int_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|Add5~1_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_1\(2));

-- Location: LCCOMB_X46_Y25_N6
\inst5|converter1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|Add5~0_combout\ = \inst5|converter1|digit_int_1\(3) $ (((\inst5|converter1|digit_int_1\(0) & (\inst5|converter1|digit_int_1\(1) & \inst5|converter1|digit_int_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|digit_int_1\(0),
	datab => \inst5|converter1|digit_int_1\(1),
	datac => \inst5|converter1|digit_int_1\(3),
	datad => \inst5|converter1|digit_int_1\(2),
	combout => \inst5|converter1|Add5~0_combout\);

-- Location: FF_X46_Y25_N7
\inst5|converter1|digit_int_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|Add5~0_combout\,
	sclr => \inst5|converter1|state.s0~q\,
	ena => \inst5|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_1\(3));

-- Location: FF_X47_Y25_N17
\inst5|converter1|digit_out_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_1\(3),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_1\(3));

-- Location: LCCOMB_X47_Y25_N16
\inst5|lcd_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~74_combout\ = (\inst5|lcd_data~72_combout\ & ((\inst5|lcd_data~73_combout\) # ((\inst5|converter1|digit_out_1\(3) & \inst5|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~73_combout\,
	datab => \inst5|lcd_data~72_combout\,
	datac => \inst5|converter1|digit_out_1\(3),
	datad => \inst5|Equal9~0_combout\,
	combout => \inst5|lcd_data~74_combout\);

-- Location: LCCOMB_X48_Y27_N8
\inst5|lcd_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~76_combout\ = (!\inst5|charCount\(4) & ((\inst5|lcd_data~75_combout\) # (\inst5|lcd_data~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|lcd_data~75_combout\,
	datad => \inst5|lcd_data~74_combout\,
	combout => \inst5|lcd_data~76_combout\);

-- Location: LCCOMB_X48_Y27_N18
\inst5|lcd_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~84_combout\ = (\inst5|charCount\(2) & (\inst5|charCount\(3))) # (!\inst5|charCount\(2) & ((!\inst5|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datac => \inst5|charCount\(1),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~84_combout\);

-- Location: LCCOMB_X48_Y27_N22
\inst5|lcd_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~159_combout\ = (\inst5|charCount\(0) & (!\inst5|charCount\(4) & ((\inst5|lcd_data~84_combout\)))) # (!\inst5|charCount\(0) & (((\inst5|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(0),
	datac => \inst5|Equal11~0_combout\,
	datad => \inst5|lcd_data~84_combout\,
	combout => \inst5|lcd_data~159_combout\);

-- Location: LCCOMB_X48_Y27_N6
\inst5|lcd_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~79_combout\ = (\inst5|charCount\(3) & ((\inst5|charCount\(1) & (!\inst5|charCount\(0))) # (!\inst5|charCount\(1) & ((!\inst5|charCount\(2)))))) # (!\inst5|charCount\(3) & (\inst5|charCount\(0) & (!\inst5|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|charCount\(0),
	datac => \inst5|charCount\(1),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~79_combout\);

-- Location: LCCOMB_X48_Y27_N4
\inst5|lcd_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~80_combout\ = (!\inst5|charCount\(4) & \inst5|lcd_data~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(4),
	datad => \inst5|lcd_data~79_combout\,
	combout => \inst5|lcd_data~80_combout\);

-- Location: LCCOMB_X48_Y27_N10
\inst5|lcd_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~81_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0))))) # (!\inst5|lineCount\(1) & ((\inst5|lineCount\(0) & ((\inst5|lcd_data~80_combout\))) # (!\inst5|lineCount\(0) & (\inst5|lcd_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(3),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lcd_data~80_combout\,
	datad => \inst5|lineCount\(0),
	combout => \inst5|lcd_data~81_combout\);

-- Location: LCCOMB_X48_Y27_N20
\inst5|lcd_data~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~163_combout\ = (\inst5|charCount\(4) & (!\inst5|charCount\(2) & (!\inst5|charCount\(1) & !\inst5|charCount\(0)))) # (!\inst5|charCount\(4) & ((\inst5|charCount\(2) & (!\inst5|charCount\(1) & !\inst5|charCount\(0))) # (!\inst5|charCount\(2) 
-- & (\inst5|charCount\(1) $ (\inst5|charCount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(2),
	datac => \inst5|charCount\(1),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~163_combout\);

-- Location: LCCOMB_X48_Y27_N26
\inst5|lcd_data~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~164_combout\ = (\inst5|lcd_data~163_combout\ & (\inst5|charCount\(1) $ (((\inst5|charCount\(2)) # (!\inst5|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|charCount\(2),
	datac => \inst5|charCount\(1),
	datad => \inst5|lcd_data~163_combout\,
	combout => \inst5|lcd_data~164_combout\);

-- Location: LCCOMB_X48_Y27_N14
\inst5|lcd_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~77_combout\ = (\inst5|charCount\(1) & (!\inst5|charCount\(0) & (\inst5|charCount\(3) $ (\inst5|charCount\(2))))) # (!\inst5|charCount\(1) & (!\inst5|charCount\(3) & ((!\inst5|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|charCount\(0),
	datac => \inst5|charCount\(1),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~77_combout\);

-- Location: LCCOMB_X48_Y27_N0
\inst5|lcd_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~78_combout\ = (!\inst5|charCount\(4) & \inst5|lcd_data~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datac => \inst5|lcd_data~77_combout\,
	combout => \inst5|lcd_data~78_combout\);

-- Location: LCCOMB_X48_Y27_N24
\inst5|lcd_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~82_combout\ = (\inst5|lcd_data~81_combout\ & (((\inst5|lcd_data~164_combout\)) # (!\inst5|lineCount\(1)))) # (!\inst5|lcd_data~81_combout\ & (\inst5|lineCount\(1) & ((\inst5|lcd_data~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~81_combout\,
	datab => \inst5|lineCount\(1),
	datac => \inst5|lcd_data~164_combout\,
	datad => \inst5|lcd_data~78_combout\,
	combout => \inst5|lcd_data~82_combout\);

-- Location: LCCOMB_X48_Y27_N28
\inst5|lcd_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~85_combout\ = (\inst5|display_state~q\ & (((\inst5|Equal14~0_combout\)))) # (!\inst5|display_state~q\ & ((\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~82_combout\))) # (!\inst5|Equal14~0_combout\ & (\inst5|lcd_data~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~159_combout\,
	datab => \inst5|display_state~q\,
	datac => \inst5|Equal14~0_combout\,
	datad => \inst5|lcd_data~82_combout\,
	combout => \inst5|lcd_data~85_combout\);

-- Location: LCCOMB_X48_Y27_N16
\inst5|lcd_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~92_combout\ = (\inst5|display_state~q\ & ((\inst5|lcd_data~85_combout\ & (\inst5|lcd_data~91_combout\)) # (!\inst5|lcd_data~85_combout\ & ((\inst5|lcd_data~76_combout\))))) # (!\inst5|display_state~q\ & (((\inst5|lcd_data~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~91_combout\,
	datab => \inst5|display_state~q\,
	datac => \inst5|lcd_data~76_combout\,
	datad => \inst5|lcd_data~85_combout\,
	combout => \inst5|lcd_data~92_combout\);

-- Location: FF_X48_Y27_N17
\inst5|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(3));

-- Location: FF_X47_Y30_N25
\inst8|dataStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|lcd_data\(3),
	sload => VCC,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(3));

-- Location: LCCOMB_X47_Y30_N24
\inst8|dataOut[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[3]~10_combout\ = (\inst8|state.sendingAddress~q\ & (\inst8|addressStorage\(3))) # (!\inst8|state.sendingAddress~q\ & (((\inst8|dataStorage\(3) & \inst8|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.sendingAddress~q\,
	datab => \inst8|addressStorage\(3),
	datac => \inst8|dataStorage\(3),
	datad => \inst8|state.sendingData~q\,
	combout => \inst8|dataOut[3]~10_combout\);

-- Location: LCCOMB_X45_Y33_N2
\inst8|dataOut[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[3]~11_combout\ = (\inst8|dataOut[3]~9_combout\) # ((\inst8|dataOut[1]~1_combout\ & (\inst8|dataOut[3]~10_combout\ & !\inst8|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[3]~9_combout\,
	datab => \inst8|dataOut[1]~1_combout\,
	datac => \inst8|dataOut[3]~10_combout\,
	datad => \inst8|state.init7~q\,
	combout => \inst8|dataOut[3]~11_combout\);

-- Location: LCCOMB_X47_Y30_N6
\inst8|addressStorage~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|addressStorage~3_combout\ = \inst5|lcd_posX\(2) $ (\inst5|lcd_posY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|lcd_posX\(2),
	datad => \inst5|lcd_posY\(1),
	combout => \inst8|addressStorage~3_combout\);

-- Location: FF_X47_Y30_N7
\inst8|addressStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|addressStorage~3_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(2));

-- Location: FF_X48_Y26_N5
\inst5|converter3|digit_out_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_2\(2),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_2\(2));

-- Location: LCCOMB_X49_Y29_N6
\inst5|converter3|digit_int_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_0~2_combout\ = (!\inst5|converter3|state.s0~q\ & \inst5|converter3|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|state.s0~q\,
	datac => \inst5|converter3|number\(2),
	combout => \inst5|converter3|digit_int_0~2_combout\);

-- Location: FF_X49_Y29_N7
\inst5|converter3|digit_int_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_int_0~2_combout\,
	ena => \inst5|converter3|digit_int_0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_0\(2));

-- Location: FF_X48_Y26_N23
\inst5|converter3|digit_out_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_0\(2),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_0\(2));

-- Location: LCCOMB_X48_Y26_N22
\inst5|lcd_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~109_combout\ = ((\inst5|charCount\(1) & ((\inst5|converter3|digit_out_0\(2)))) # (!\inst5|charCount\(1) & (\inst5|converter3|digit_out_2\(2)))) # (!\inst5|charCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|converter3|digit_out_2\(2),
	datac => \inst5|converter3|digit_out_0\(2),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~109_combout\);

-- Location: FF_X48_Y26_N17
\inst5|converter3|digit_out_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_1\(2),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_1\(2));

-- Location: LCCOMB_X48_Y26_N16
\inst5|lcd_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~108_combout\ = (\inst5|charCount\(1) & (\inst5|charCount\(3) & (\inst5|converter3|digit_out_1\(2) & !\inst5|charCount\(0)))) # (!\inst5|charCount\(1) & (!\inst5|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|charCount\(3),
	datac => \inst5|converter3|digit_out_1\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~108_combout\);

-- Location: LCCOMB_X48_Y26_N20
\inst5|lcd_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~110_combout\ = (!\inst5|charCount\(2) & ((\inst5|lcd_data~108_combout\) # ((\inst5|charCount\(0) & \inst5|lcd_data~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(2),
	datac => \inst5|lcd_data~109_combout\,
	datad => \inst5|lcd_data~108_combout\,
	combout => \inst5|lcd_data~110_combout\);

-- Location: LCCOMB_X48_Y26_N2
\inst5|lcd_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~104_combout\ = \inst5|charCount\(1) $ (\inst5|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~104_combout\);

-- Location: LCCOMB_X48_Y28_N16
\inst5|lcd_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~112_combout\ = (\inst5|lcd_data~86_combout\ & ((\inst5|lcd_data~110_combout\) # ((\inst5|lcd_data~111_combout\ & \inst5|lcd_data~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~111_combout\,
	datab => \inst5|lcd_data~86_combout\,
	datac => \inst5|lcd_data~110_combout\,
	datad => \inst5|lcd_data~104_combout\,
	combout => \inst5|lcd_data~112_combout\);

-- Location: LCCOMB_X48_Y28_N10
\inst5|lcd_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~113_combout\ = (!\inst5|lineCount\(1) & ((\inst5|lcd_data~112_combout\) # ((\inst5|lcd_data\(2) & !\inst5|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(2),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~112_combout\,
	combout => \inst5|lcd_data~113_combout\);

-- Location: LCCOMB_X47_Y25_N14
\inst5|converter1|digit_int_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_0~2_combout\ = (!\inst5|converter1|state.s0~q\ & \inst5|converter1|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|converter1|state.s0~q\,
	datad => \inst5|converter1|number\(2),
	combout => \inst5|converter1|digit_int_0~2_combout\);

-- Location: FF_X47_Y25_N15
\inst5|converter1|digit_int_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|digit_int_0~2_combout\,
	ena => \inst5|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_0\(2));

-- Location: FF_X47_Y25_N1
\inst5|converter1|digit_out_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_0\(2),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_0\(2));

-- Location: FF_X47_Y25_N13
\inst5|converter1|digit_out_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_2\(2),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_2\(2));

-- Location: LCCOMB_X47_Y25_N12
\inst5|lcd_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~100_combout\ = (\inst5|charCount\(0) & ((\inst5|charCount\(1) & (\inst5|converter1|digit_out_0\(2))) # (!\inst5|charCount\(1) & ((\inst5|converter1|digit_out_2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|converter1|digit_out_0\(2),
	datac => \inst5|converter1|digit_out_2\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~100_combout\);

-- Location: FF_X47_Y25_N7
\inst5|converter1|digit_out_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_1\(2),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_1\(2));

-- Location: LCCOMB_X47_Y25_N6
\inst5|lcd_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~101_combout\ = (\inst5|lcd_data~72_combout\ & ((\inst5|lcd_data~100_combout\) # ((\inst5|Equal9~0_combout\ & \inst5|converter1|digit_out_1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~100_combout\,
	datab => \inst5|Equal9~0_combout\,
	datac => \inst5|converter1|digit_out_1\(2),
	datad => \inst5|lcd_data~72_combout\,
	combout => \inst5|lcd_data~101_combout\);

-- Location: LCCOMB_X45_Y28_N22
\inst5|lcd_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~102_combout\ = (!\inst5|charCount\(3) & (\inst5|charCount\(0) $ (((\inst5|charCount\(2) & \inst5|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~102_combout\);

-- Location: LCCOMB_X48_Y28_N30
\inst5|lcd_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~103_combout\ = (!\inst5|charCount\(4) & ((\inst5|lcd_data~101_combout\) # (\inst5|lcd_data~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datac => \inst5|lcd_data~101_combout\,
	datad => \inst5|lcd_data~102_combout\,
	combout => \inst5|lcd_data~103_combout\);

-- Location: LCCOMB_X49_Y28_N30
\inst5|lcd_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~105_combout\ = (\inst5|charCount\(1) & (\inst5|charCount\(3) & (\inst5|charCount\(2) & !\inst5|charCount\(0)))) # (!\inst5|charCount\(1) & (\inst5|charCount\(3) $ ((\inst5|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~105_combout\);

-- Location: LCCOMB_X48_Y28_N28
\inst5|lcd_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~106_combout\ = (\inst5|charCount\(4) & (\inst5|Equal11~0_combout\ & ((\inst5|lcd_data~104_combout\)))) # (!\inst5|charCount\(4) & ((\inst5|lcd_data~105_combout\) # ((\inst5|Equal11~0_combout\ & \inst5|lcd_data~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|Equal11~0_combout\,
	datac => \inst5|lcd_data~105_combout\,
	datad => \inst5|lcd_data~104_combout\,
	combout => \inst5|lcd_data~106_combout\);

-- Location: LCCOMB_X48_Y28_N14
\inst5|lcd_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~107_combout\ = (\inst5|display_state~q\ & ((\inst5|Equal14~0_combout\) # ((\inst5|lcd_data~103_combout\)))) # (!\inst5|display_state~q\ & (!\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_state~q\,
	datab => \inst5|Equal14~0_combout\,
	datac => \inst5|lcd_data~103_combout\,
	datad => \inst5|lcd_data~106_combout\,
	combout => \inst5|lcd_data~107_combout\);

-- Location: LCCOMB_X45_Y28_N8
\inst5|lcd_data~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~161_combout\ = (\inst5|charCount\(2) & (!\inst5|charCount\(4) & (\inst5|charCount\(3) $ (\inst5|charCount\(0))))) # (!\inst5|charCount\(2) & ((\inst5|charCount\(3) & (\inst5|charCount\(0) & !\inst5|charCount\(4))) # (!\inst5|charCount\(3) 
-- & ((\inst5|charCount\(0)) # (!\inst5|charCount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~161_combout\);

-- Location: LCCOMB_X45_Y28_N6
\inst5|lcd_data~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~162_combout\ = (\inst5|charCount\(2) & (((\inst5|lcd_data~161_combout\ & !\inst5|charCount\(4))))) # (!\inst5|charCount\(2) & ((\inst5|charCount\(1) & (!\inst5|lcd_data~161_combout\ & !\inst5|charCount\(4))) # (!\inst5|charCount\(1) & 
-- (\inst5|lcd_data~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(1),
	datac => \inst5|lcd_data~161_combout\,
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~162_combout\);

-- Location: LCCOMB_X47_Y27_N30
\inst5|lcd_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~94_combout\ = (\inst5|charCount\(3) & \inst5|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCount\(3),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~94_combout\);

-- Location: LCCOMB_X47_Y27_N14
\inst5|lcd_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~83_combout\ = (\inst5|charCount\(0) & !\inst5|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~83_combout\);

-- Location: LCCOMB_X47_Y27_N20
\inst5|lcd_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~93_combout\ = (!\inst5|charCount\(0) & (!\inst5|charCount\(2) & (\inst5|charCount\(4) $ (\inst5|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(2),
	datac => \inst5|charCount\(4),
	datad => \inst5|charCount\(3),
	combout => \inst5|lcd_data~93_combout\);

-- Location: LCCOMB_X47_Y27_N0
\inst5|lcd_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~95_combout\ = (\inst5|lcd_data~93_combout\) # ((\inst5|lcd_data~83_combout\ & (\inst5|lcd_data~94_combout\ $ (\inst5|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~94_combout\,
	datab => \inst5|charCount\(2),
	datac => \inst5|lcd_data~83_combout\,
	datad => \inst5|lcd_data~93_combout\,
	combout => \inst5|lcd_data~95_combout\);

-- Location: LCCOMB_X46_Y28_N28
\inst5|lcd_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~96_combout\ = (!\inst5|charCount\(2) & (\inst5|charCount\(0) $ (((\inst5|charCount\(3) & \inst5|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~96_combout\);

-- Location: LCCOMB_X46_Y28_N14
\inst5|lcd_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~97_combout\ = (!\inst5|charCount\(4) & \inst5|lcd_data~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(4),
	datad => \inst5|lcd_data~96_combout\,
	combout => \inst5|lcd_data~97_combout\);

-- Location: LCCOMB_X47_Y28_N24
\inst5|lcd_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~98_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0)) # (\inst5|lcd_data~97_combout\)))) # (!\inst5|lineCount\(1) & (\inst5|lcd_data\(2) & (!\inst5|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(2),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~97_combout\,
	combout => \inst5|lcd_data~98_combout\);

-- Location: LCCOMB_X48_Y28_N0
\inst5|lcd_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~99_combout\ = (\inst5|lineCount\(0) & ((\inst5|lcd_data~98_combout\ & (\inst5|lcd_data~162_combout\)) # (!\inst5|lcd_data~98_combout\ & ((\inst5|lcd_data~95_combout\))))) # (!\inst5|lineCount\(0) & (((\inst5|lcd_data~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~162_combout\,
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data~95_combout\,
	datad => \inst5|lcd_data~98_combout\,
	combout => \inst5|lcd_data~99_combout\);

-- Location: LCCOMB_X48_Y28_N6
\inst5|lcd_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~114_combout\ = (\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~107_combout\ & (\inst5|lcd_data~113_combout\)) # (!\inst5|lcd_data~107_combout\ & ((\inst5|lcd_data~99_combout\))))) # (!\inst5|Equal14~0_combout\ & 
-- (((\inst5|lcd_data~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~113_combout\,
	datab => \inst5|Equal14~0_combout\,
	datac => \inst5|lcd_data~107_combout\,
	datad => \inst5|lcd_data~99_combout\,
	combout => \inst5|lcd_data~114_combout\);

-- Location: FF_X48_Y28_N7
\inst5|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(2));

-- Location: LCCOMB_X47_Y30_N4
\inst8|dataStorage[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataStorage[2]~2_combout\ = !\inst5|lcd_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|lcd_data\(2),
	combout => \inst8|dataStorage[2]~2_combout\);

-- Location: FF_X47_Y30_N5
\inst8|dataStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|dataStorage[2]~2_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(2));

-- Location: LCCOMB_X47_Y30_N22
\inst8|dataOut[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[2]~12_combout\ = (\inst8|state.sendingAddress~q\ & (\inst8|addressStorage\(2))) # (!\inst8|state.sendingAddress~q\ & (((\inst8|state.sendingData~q\ & !\inst8|dataStorage\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|addressStorage\(2),
	datab => \inst8|state.sendingData~q\,
	datac => \inst8|dataStorage\(2),
	datad => \inst8|state.sendingAddress~q\,
	combout => \inst8|dataOut[2]~12_combout\);

-- Location: LCCOMB_X47_Y30_N8
\inst8|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[2]~13_combout\ = (\inst8|dataOut[5]~5_combout\ & (((\inst8|state.init0~q\ & !\inst8|state.init6~q\)))) # (!\inst8|dataOut[5]~5_combout\ & (\inst8|dataOut[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[2]~12_combout\,
	datab => \inst8|state.init0~q\,
	datac => \inst8|state.init6~q\,
	datad => \inst8|dataOut[5]~5_combout\,
	combout => \inst8|dataOut[2]~13_combout\);

-- Location: FF_X49_Y28_N23
\inst5|lcd_posX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|charCount\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posX\(1));

-- Location: FF_X48_Y32_N9
\inst8|addressStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|lcd_posX\(1),
	sload => VCC,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(1));

-- Location: LCCOMB_X47_Y25_N24
\inst5|converter1|digit_out_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_out_1[1]~feeder_combout\ = \inst5|converter1|digit_int_1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter1|digit_int_1\(1),
	combout => \inst5|converter1|digit_out_1[1]~feeder_combout\);

-- Location: FF_X47_Y25_N25
\inst5|converter1|digit_out_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|digit_out_1[1]~feeder_combout\,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_1\(1));

-- Location: LCCOMB_X47_Y25_N8
\inst5|converter1|digit_int_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter1|digit_int_0~3_combout\ = (!\inst5|converter1|state.s0~q\ & \inst5|converter1|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|converter1|state.s0~q\,
	datac => \inst5|converter1|number\(1),
	combout => \inst5|converter1|digit_int_0~3_combout\);

-- Location: FF_X47_Y25_N9
\inst5|converter1|digit_int_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter1|digit_int_0~3_combout\,
	ena => \inst5|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_int_0\(1));

-- Location: FF_X47_Y25_N31
\inst5|converter1|digit_out_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_0\(1),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_0\(1));

-- Location: LCCOMB_X47_Y25_N30
\inst5|lcd_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~115_combout\ = (\inst5|charCount\(1) & ((\inst5|charCount\(0) & ((\inst5|converter1|digit_out_0\(1)))) # (!\inst5|charCount\(0) & (\inst5|converter1|digit_out_1\(1))))) # (!\inst5|charCount\(1) & (((\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|converter1|digit_out_1\(1),
	datac => \inst5|converter1|digit_out_0\(1),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~115_combout\);

-- Location: FF_X47_Y25_N19
\inst5|converter1|digit_out_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_2\(1),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_2\(1));

-- Location: LCCOMB_X47_Y25_N18
\inst5|lcd_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~116_combout\ = (\inst5|charCount\(1) & ((\inst5|lcd_data~115_combout\) # ((\inst5|charCount\(2))))) # (!\inst5|charCount\(1) & (\inst5|lcd_data~115_combout\ & ((\inst5|converter1|digit_out_2\(1)) # (\inst5|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|lcd_data~115_combout\,
	datac => \inst5|converter1|digit_out_2\(1),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~116_combout\);

-- Location: LCCOMB_X48_Y28_N20
\inst5|lcd_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~117_combout\ = (\inst5|lcd_data~116_combout\ & (!\inst5|charCount\(4) & (\inst5|charCount\(3) $ (\inst5|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|lcd_data~116_combout\,
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~117_combout\);

-- Location: LCCOMB_X47_Y27_N6
\inst5|lcd_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~126_combout\ = (\inst5|lcd_data~83_combout\ & ((\inst5|charCount\(2) & ((!\inst5|charCount\(1)) # (!\inst5|charCount\(3)))) # (!\inst5|charCount\(2) & ((\inst5|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|lcd_data~83_combout\,
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~126_combout\);

-- Location: LCCOMB_X47_Y27_N16
\inst5|lcd_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~127_combout\ = (\inst5|lcd_data~126_combout\) # ((!\inst5|charCount\(1) & (!\inst5|charCount\(0) & \inst5|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~126_combout\,
	datab => \inst5|charCount\(1),
	datac => \inst5|charCount\(0),
	datad => \inst5|Equal11~0_combout\,
	combout => \inst5|lcd_data~127_combout\);

-- Location: LCCOMB_X47_Y27_N26
\inst5|lcd_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~123_combout\ = (\inst5|charCount\(0) & ((\inst5|charCount\(2) & (\inst5|charCount\(3))) # (!\inst5|charCount\(2) & ((\inst5|charCount\(1)) # (!\inst5|charCount\(3)))))) # (!\inst5|charCount\(0) & ((\inst5|charCount\(3) $ 
-- (\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~123_combout\);

-- Location: LCCOMB_X47_Y27_N24
\inst5|lcd_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~124_combout\ = (\inst5|charCount\(0) & (((\inst5|lcd_data~123_combout\ & !\inst5|charCount\(4))))) # (!\inst5|charCount\(0) & ((\inst5|Equal11~0_combout\) # ((\inst5|lcd_data~123_combout\ & !\inst5|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|Equal11~0_combout\,
	datac => \inst5|lcd_data~123_combout\,
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~124_combout\);

-- Location: LCCOMB_X49_Y28_N12
\inst5|lcd_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~120_combout\ = (\inst5|charCount\(3) & (\inst5|charCount\(0) $ (((!\inst5|charCount\(1)))))) # (!\inst5|charCount\(3) & (!\inst5|charCount\(0) & (!\inst5|charCount\(2) & \inst5|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(2),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~120_combout\);

-- Location: LCCOMB_X48_Y28_N18
\inst5|lcd_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~121_combout\ = (\inst5|charCount\(4) & (((\inst5|Equal11~0_combout\ & \inst5|lcd_data~104_combout\)))) # (!\inst5|charCount\(4) & ((\inst5|lcd_data~120_combout\) # ((\inst5|Equal11~0_combout\ & \inst5|lcd_data~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|lcd_data~120_combout\,
	datac => \inst5|Equal11~0_combout\,
	datad => \inst5|lcd_data~104_combout\,
	combout => \inst5|lcd_data~121_combout\);

-- Location: LCCOMB_X48_Y28_N8
\inst5|lcd_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~122_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0))))) # (!\inst5|lineCount\(1) & ((\inst5|lineCount\(0) & ((\inst5|lcd_data~121_combout\))) # (!\inst5|lineCount\(0) & (\inst5|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(1),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~121_combout\,
	combout => \inst5|lcd_data~122_combout\);

-- Location: LCCOMB_X47_Y28_N28
\inst5|lcd_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~118_combout\ = (!\inst5|charCount\(1) & (\inst5|lcd_data~34_combout\ $ (((!\inst5|charCount\(0) & \inst5|lcd_data~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|lcd_data~60_combout\,
	datac => \inst5|charCount\(1),
	datad => \inst5|lcd_data~34_combout\,
	combout => \inst5|lcd_data~118_combout\);

-- Location: LCCOMB_X47_Y28_N30
\inst5|lcd_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~119_combout\ = (\inst5|lcd_data~118_combout\) # ((!\inst5|charCount\(2) & (\inst5|charCount\(1) & \inst5|lcd_data~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(1),
	datac => \inst5|lcd_data~156_combout\,
	datad => \inst5|lcd_data~118_combout\,
	combout => \inst5|lcd_data~119_combout\);

-- Location: LCCOMB_X48_Y28_N24
\inst5|lcd_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~125_combout\ = (\inst5|lineCount\(1) & ((\inst5|lcd_data~122_combout\ & (\inst5|lcd_data~124_combout\)) # (!\inst5|lcd_data~122_combout\ & ((\inst5|lcd_data~119_combout\))))) # (!\inst5|lineCount\(1) & (((\inst5|lcd_data~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~124_combout\,
	datab => \inst5|lineCount\(1),
	datac => \inst5|lcd_data~122_combout\,
	datad => \inst5|lcd_data~119_combout\,
	combout => \inst5|lcd_data~125_combout\);

-- Location: LCCOMB_X48_Y28_N22
\inst5|lcd_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~128_combout\ = (\inst5|display_state~q\ & (\inst5|Equal14~0_combout\)) # (!\inst5|display_state~q\ & ((\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~125_combout\))) # (!\inst5|Equal14~0_combout\ & (\inst5|lcd_data~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_state~q\,
	datab => \inst5|Equal14~0_combout\,
	datac => \inst5|lcd_data~127_combout\,
	datad => \inst5|lcd_data~125_combout\,
	combout => \inst5|lcd_data~128_combout\);

-- Location: LCCOMB_X49_Y29_N4
\inst5|converter3|digit_int_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_int_0~3_combout\ = (!\inst5|converter3|state.s0~q\ & \inst5|converter3|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|state.s0~q\,
	datad => \inst5|converter3|number\(1),
	combout => \inst5|converter3|digit_int_0~3_combout\);

-- Location: FF_X49_Y29_N5
\inst5|converter3|digit_int_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_int_0~3_combout\,
	ena => \inst5|converter3|digit_int_0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_int_0\(1));

-- Location: LCCOMB_X48_Y26_N24
\inst5|converter3|digit_out_0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|converter3|digit_out_0[1]~feeder_combout\ = \inst5|converter3|digit_int_0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|converter3|digit_int_0\(1),
	combout => \inst5|converter3|digit_out_0[1]~feeder_combout\);

-- Location: FF_X48_Y26_N25
\inst5|converter3|digit_out_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|converter3|digit_out_0[1]~feeder_combout\,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_0\(1));

-- Location: FF_X48_Y26_N11
\inst5|converter3|digit_out_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_1\(1),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_1\(1));

-- Location: LCCOMB_X48_Y26_N10
\inst5|lcd_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~130_combout\ = (\inst5|charCount\(0) & (\inst5|converter3|digit_out_0\(1))) # (!\inst5|charCount\(0) & ((\inst5|converter3|digit_out_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|converter3|digit_out_0\(1),
	datac => \inst5|converter3|digit_out_1\(1),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~130_combout\);

-- Location: FF_X48_Y26_N19
\inst5|converter3|digit_out_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_2\(1),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_2\(1));

-- Location: LCCOMB_X48_Y26_N18
\inst5|lcd_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~129_combout\ = (!\inst5|charCount\(1) & (\inst5|charCount\(0) & ((\inst5|converter3|digit_out_2\(1)) # (!\inst5|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|charCount\(3),
	datac => \inst5|converter3|digit_out_2\(1),
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~129_combout\);

-- Location: LCCOMB_X47_Y26_N18
\inst5|lcd_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~131_combout\ = (!\inst5|charCount\(2) & ((\inst5|lcd_data~129_combout\) # ((\inst5|lcd_data~94_combout\ & \inst5|lcd_data~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~94_combout\,
	datab => \inst5|charCount\(2),
	datac => \inst5|lcd_data~130_combout\,
	datad => \inst5|lcd_data~129_combout\,
	combout => \inst5|lcd_data~131_combout\);

-- Location: LCCOMB_X48_Y28_N12
\inst5|lcd_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~132_combout\ = (\inst5|lcd_data~86_combout\ & ((\inst5|lcd_data~131_combout\) # ((!\inst5|charCount\(3) & \inst5|lcd_data~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|lcd_data~35_combout\,
	datac => \inst5|lcd_data~86_combout\,
	datad => \inst5|lcd_data~131_combout\,
	combout => \inst5|lcd_data~132_combout\);

-- Location: LCCOMB_X48_Y28_N2
\inst5|lcd_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~133_combout\ = (!\inst5|lineCount\(1) & ((\inst5|lcd_data~132_combout\) # ((!\inst5|lineCount\(0) & \inst5|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lineCount\(1),
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data\(1),
	datad => \inst5|lcd_data~132_combout\,
	combout => \inst5|lcd_data~133_combout\);

-- Location: LCCOMB_X48_Y28_N4
\inst5|lcd_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~134_combout\ = (\inst5|display_state~q\ & ((\inst5|lcd_data~128_combout\ & ((\inst5|lcd_data~133_combout\))) # (!\inst5|lcd_data~128_combout\ & (\inst5|lcd_data~117_combout\)))) # (!\inst5|display_state~q\ & 
-- (((\inst5|lcd_data~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_state~q\,
	datab => \inst5|lcd_data~117_combout\,
	datac => \inst5|lcd_data~128_combout\,
	datad => \inst5|lcd_data~133_combout\,
	combout => \inst5|lcd_data~134_combout\);

-- Location: FF_X48_Y28_N5
\inst5|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(1));

-- Location: LCCOMB_X48_Y32_N10
\inst8|dataStorage[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataStorage[1]~3_combout\ = !\inst5|lcd_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|lcd_data\(1),
	combout => \inst8|dataStorage[1]~3_combout\);

-- Location: FF_X48_Y32_N11
\inst8|dataStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|dataStorage[1]~3_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(1));

-- Location: LCCOMB_X48_Y32_N8
\inst8|dataOut[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[1]~14_combout\ = (\inst8|state.sendingAddress~q\ & (((\inst8|addressStorage\(1))))) # (!\inst8|state.sendingAddress~q\ & (\inst8|state.sendingData~q\ & ((!\inst8|dataStorage\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.sendingAddress~q\,
	datab => \inst8|state.sendingData~q\,
	datac => \inst8|addressStorage\(1),
	datad => \inst8|dataStorage\(1),
	combout => \inst8|dataOut[1]~14_combout\);

-- Location: LCCOMB_X46_Y33_N0
\inst8|dataOut[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[1]~15_combout\ = (\inst8|dataOut[1]~1_combout\ & ((\inst8|state.init7~q\) # (\inst8|dataOut[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|state.init7~q\,
	datab => \inst8|dataOut[1]~1_combout\,
	datad => \inst8|dataOut[1]~14_combout\,
	combout => \inst8|dataOut[1]~15_combout\);

-- Location: LCCOMB_X47_Y26_N8
\inst5|lcd_posX[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_posX[0]~feeder_combout\ = \inst5|charCount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(0),
	combout => \inst5|lcd_posX[0]~feeder_combout\);

-- Location: FF_X47_Y26_N9
\inst5|lcd_posX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_posX[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_posX\(0));

-- Location: LCCOMB_X47_Y30_N10
\inst8|addressStorage[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|addressStorage[0]~feeder_combout\ = \inst5|lcd_posX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|lcd_posX\(0),
	combout => \inst8|addressStorage[0]~feeder_combout\);

-- Location: FF_X47_Y30_N11
\inst8|addressStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst8|addressStorage[0]~feeder_combout\,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|addressStorage\(0));

-- Location: FF_X48_Y26_N31
\inst5|converter3|digit_out_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_1\(0),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_1\(0));

-- Location: LCCOMB_X47_Y26_N30
\inst5|lcd_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~150_combout\ = (!\inst5|charCount\(2) & (\inst5|charCount\(3) & (\inst5|charCount\(0) $ (\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(2),
	datac => \inst5|charCount\(3),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~150_combout\);

-- Location: LCCOMB_X48_Y26_N30
\inst5|lcd_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~151_combout\ = (\inst5|charCount\(1) & (((\inst5|converter3|digit_out_1\(0) & \inst5|lcd_data~150_combout\)))) # (!\inst5|charCount\(1) & ((\inst5|lcd_data~111_combout\) # ((\inst5|converter3|digit_out_1\(0) & 
-- \inst5|lcd_data~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|lcd_data~111_combout\,
	datac => \inst5|converter3|digit_out_1\(0),
	datad => \inst5|lcd_data~150_combout\,
	combout => \inst5|lcd_data~151_combout\);

-- Location: LCCOMB_X48_Y26_N4
\inst5|lcd_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~88_combout\ = (\inst5|charCount\(0) & !\inst5|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~88_combout\);

-- Location: FF_X48_Y26_N9
\inst5|converter3|digit_out_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter3|digit_int_2\(0),
	sload => VCC,
	ena => \inst5|converter3|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter3|digit_out_2\(0));

-- Location: LCCOMB_X48_Y26_N8
\inst5|lcd_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~149_combout\ = (\inst5|lcd_data~88_combout\ & (((\inst5|converter3|digit_out_2\(0) & \inst5|lcd_data~104_combout\)) # (!\inst5|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|lcd_data~88_combout\,
	datac => \inst5|converter3|digit_out_2\(0),
	datad => \inst5|lcd_data~104_combout\,
	combout => \inst5|lcd_data~149_combout\);

-- Location: LCCOMB_X48_Y26_N28
\inst5|lcd_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~152_combout\ = (\inst5|lcd_data~86_combout\ & ((\inst5|lcd_data~149_combout\) # ((\inst5|lcd_data~151_combout\ & !\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~151_combout\,
	datab => \inst5|lcd_data~149_combout\,
	datac => \inst5|lcd_data~86_combout\,
	datad => \inst5|charCount\(0),
	combout => \inst5|lcd_data~152_combout\);

-- Location: LCCOMB_X47_Y26_N28
\inst5|lcd_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~153_combout\ = (!\inst5|lineCount\(1) & ((\inst5|lcd_data~152_combout\) # ((\inst5|lcd_data\(0) & !\inst5|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(0),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~152_combout\,
	combout => \inst5|lcd_data~153_combout\);

-- Location: LCCOMB_X47_Y27_N8
\inst5|lcd_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~146_combout\ = (\inst5|charCount\(0) & \inst5|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~146_combout\);

-- Location: LCCOMB_X47_Y27_N10
\inst5|lcd_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~145_combout\ = (\inst5|charCount\(3) & (((\inst5|charCount\(2) & \inst5|charCount\(0))) # (!\inst5|charCount\(1)))) # (!\inst5|charCount\(3) & ((\inst5|charCount\(0) & (\inst5|charCount\(2) & !\inst5|charCount\(1))) # 
-- (!\inst5|charCount\(0) & ((\inst5|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~145_combout\);

-- Location: LCCOMB_X47_Y27_N22
\inst5|lcd_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~147_combout\ = (\inst5|charCount\(4) & (\inst5|Equal11~0_combout\ & (!\inst5|lcd_data~146_combout\))) # (!\inst5|charCount\(4) & ((\inst5|lcd_data~145_combout\) # ((\inst5|Equal11~0_combout\ & !\inst5|lcd_data~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|Equal11~0_combout\,
	datac => \inst5|lcd_data~146_combout\,
	datad => \inst5|lcd_data~145_combout\,
	combout => \inst5|lcd_data~147_combout\);

-- Location: FF_X47_Y25_N3
\inst5|converter1|digit_out_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_1\(0),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_1\(0));

-- Location: LCCOMB_X47_Y25_N2
\inst5|lcd_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~143_combout\ = (\inst5|charCount\(2) & (!\inst5|charCount\(3))) # (!\inst5|charCount\(2) & (\inst5|charCount\(1) & ((\inst5|converter1|digit_out_1\(0)) # (!\inst5|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|converter1|digit_out_1\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~143_combout\);

-- Location: FF_X47_Y25_N23
\inst5|converter1|digit_out_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|converter1|digit_int_2\(0),
	sload => VCC,
	ena => \inst5|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|converter1|digit_out_2\(0));

-- Location: LCCOMB_X47_Y25_N22
\inst5|lcd_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~142_combout\ = (\inst5|charCount\(0) & (\inst5|lcd_data~68_combout\ & ((\inst5|converter1|digit_out_2\(0)) # (!\inst5|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(0),
	datab => \inst5|charCount\(3),
	datac => \inst5|converter1|digit_out_2\(0),
	datad => \inst5|lcd_data~68_combout\,
	combout => \inst5|lcd_data~142_combout\);

-- Location: LCCOMB_X47_Y26_N10
\inst5|lcd_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~144_combout\ = (!\inst5|charCount\(4) & ((\inst5|lcd_data~142_combout\) # ((\inst5|lcd_data~143_combout\ & !\inst5|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~143_combout\,
	datab => \inst5|charCount\(0),
	datac => \inst5|charCount\(4),
	datad => \inst5|lcd_data~142_combout\,
	combout => \inst5|lcd_data~144_combout\);

-- Location: LCCOMB_X47_Y26_N4
\inst5|lcd_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~148_combout\ = (\inst5|display_state~q\ & ((\inst5|Equal14~0_combout\) # ((\inst5|lcd_data~144_combout\)))) # (!\inst5|display_state~q\ & (!\inst5|Equal14~0_combout\ & (\inst5|lcd_data~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|display_state~q\,
	datab => \inst5|Equal14~0_combout\,
	datac => \inst5|lcd_data~147_combout\,
	datad => \inst5|lcd_data~144_combout\,
	combout => \inst5|lcd_data~148_combout\);

-- Location: LCCOMB_X47_Y26_N12
\inst5|lcd_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~135_combout\ = (\inst5|charCount\(0) & (!\inst5|charCount\(4) & (!\inst5|lcd_data~94_combout\))) # (!\inst5|charCount\(0) & ((\inst5|Equal11~0_combout\) # ((!\inst5|charCount\(4) & \inst5|lcd_data~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(4),
	datab => \inst5|charCount\(0),
	datac => \inst5|lcd_data~94_combout\,
	datad => \inst5|Equal11~0_combout\,
	combout => \inst5|lcd_data~135_combout\);

-- Location: LCCOMB_X45_Y28_N4
\inst5|lcd_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~136_combout\ = (!\inst5|charCount\(3) & (\inst5|charCount\(0) & ((\inst5|charCount\(2)) # (\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(2),
	datab => \inst5|charCount\(3),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(1),
	combout => \inst5|lcd_data~136_combout\);

-- Location: LCCOMB_X45_Y28_N2
\inst5|lcd_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~137_combout\ = (\inst5|lcd_data~136_combout\ & !\inst5|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|lcd_data~136_combout\,
	datad => \inst5|charCount\(4),
	combout => \inst5|lcd_data~137_combout\);

-- Location: LCCOMB_X47_Y26_N26
\inst5|lcd_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~138_combout\ = (\inst5|lineCount\(1) & (((\inst5|lineCount\(0)) # (\inst5|lcd_data~137_combout\)))) # (!\inst5|lineCount\(1) & (\inst5|lcd_data\(0) & (!\inst5|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data\(0),
	datab => \inst5|lineCount\(1),
	datac => \inst5|lineCount\(0),
	datad => \inst5|lcd_data~137_combout\,
	combout => \inst5|lcd_data~138_combout\);

-- Location: LCCOMB_X47_Y26_N16
\inst5|lcd_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~139_combout\ = (\inst5|charCount\(3) & (\inst5|charCount\(1) & ((\inst5|charCount\(2))))) # (!\inst5|charCount\(3) & ((\inst5|charCount\(2) & ((\inst5|charCount\(0)))) # (!\inst5|charCount\(2) & (\inst5|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(3),
	datab => \inst5|charCount\(1),
	datac => \inst5|charCount\(0),
	datad => \inst5|charCount\(2),
	combout => \inst5|lcd_data~139_combout\);

-- Location: LCCOMB_X47_Y26_N6
\inst5|lcd_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~140_combout\ = (\inst5|charCount\(1) & (\inst5|lcd_data~139_combout\ & (!\inst5|charCount\(4)))) # (!\inst5|charCount\(1) & ((\inst5|Equal11~0_combout\) # ((\inst5|lcd_data~139_combout\ & !\inst5|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCount\(1),
	datab => \inst5|lcd_data~139_combout\,
	datac => \inst5|charCount\(4),
	datad => \inst5|Equal11~0_combout\,
	combout => \inst5|lcd_data~140_combout\);

-- Location: LCCOMB_X47_Y26_N20
\inst5|lcd_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~141_combout\ = (\inst5|lineCount\(0) & ((\inst5|lcd_data~138_combout\ & ((\inst5|lcd_data~140_combout\))) # (!\inst5|lcd_data~138_combout\ & (\inst5|lcd_data~135_combout\)))) # (!\inst5|lineCount\(0) & (((\inst5|lcd_data~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|lcd_data~135_combout\,
	datab => \inst5|lineCount\(0),
	datac => \inst5|lcd_data~138_combout\,
	datad => \inst5|lcd_data~140_combout\,
	combout => \inst5|lcd_data~141_combout\);

-- Location: LCCOMB_X47_Y26_N22
\inst5|lcd_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|lcd_data~154_combout\ = (\inst5|Equal14~0_combout\ & ((\inst5|lcd_data~148_combout\ & (\inst5|lcd_data~153_combout\)) # (!\inst5|lcd_data~148_combout\ & ((\inst5|lcd_data~141_combout\))))) # (!\inst5|Equal14~0_combout\ & 
-- (((\inst5|lcd_data~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal14~0_combout\,
	datab => \inst5|lcd_data~153_combout\,
	datac => \inst5|lcd_data~148_combout\,
	datad => \inst5|lcd_data~141_combout\,
	combout => \inst5|lcd_data~154_combout\);

-- Location: FF_X47_Y26_N23
\inst5|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|lcd_data~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|lcd_data\(0));

-- Location: FF_X47_Y30_N29
\inst8|dataStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|lcd_data\(0),
	sload => VCC,
	ena => \inst8|process_0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|dataStorage\(0));

-- Location: LCCOMB_X47_Y30_N28
\inst8|dataOut[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[0]~16_combout\ = (\inst8|state.sendingAddress~q\ & (\inst8|addressStorage\(0))) # (!\inst8|state.sendingAddress~q\ & (((\inst8|state.sendingData~q\ & \inst8|dataStorage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|addressStorage\(0),
	datab => \inst8|state.sendingData~q\,
	datac => \inst8|dataStorage\(0),
	datad => \inst8|state.sendingAddress~q\,
	combout => \inst8|dataOut[0]~16_combout\);

-- Location: LCCOMB_X47_Y30_N14
\inst8|dataOut[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|dataOut[0]~17_combout\ = (\inst8|dataOut[5]~5_combout\ & (\inst8|state.init0~q\ & (\inst8|state.init6~q\))) # (!\inst8|dataOut[5]~5_combout\ & ((\inst8|dataOut[0]~16_combout\) # ((\inst8|state.init0~q\ & \inst8|state.init6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|dataOut[5]~5_combout\,
	datab => \inst8|state.init0~q\,
	datac => \inst8|state.init6~q\,
	datad => \inst8|dataOut[0]~16_combout\,
	combout => \inst8|dataOut[0]~17_combout\);

ww_LCD_rs <= \LCD_rs~output_o\;

ww_LCD_rw <= \LCD_rw~output_o\;

ww_LCD_e <= \LCD_e~output_o\;

ww_motorA1 <= \motorA1~output_o\;

ww_motorA2 <= \motorA2~output_o\;

ww_motorB1 <= \motorB1~output_o\;

ww_motorB2 <= \motorB2~output_o\;

ww_LCD_data(7) <= \LCD_data[7]~output_o\;

ww_LCD_data(6) <= \LCD_data[6]~output_o\;

ww_LCD_data(5) <= \LCD_data[5]~output_o\;

ww_LCD_data(4) <= \LCD_data[4]~output_o\;

ww_LCD_data(3) <= \LCD_data[3]~output_o\;

ww_LCD_data(2) <= \LCD_data[2]~output_o\;

ww_LCD_data(1) <= \LCD_data[1]~output_o\;

ww_LCD_data(0) <= \LCD_data[0]~output_o\;
END structure;


