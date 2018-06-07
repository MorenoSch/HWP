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

-- DATE "06/07/2018 18:08:42"

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

ENTITY 	CounterWithOutput IS
    PORT (
	DIN : OUT std_logic;
	clk_50 : IN std_logic;
	DOUT : IN std_logic;
	CS_n : OUT std_logic;
	SCLK : OUT std_logic;
	countOut : OUT std_logic_vector(2 DOWNTO 0)
	);
END CounterWithOutput;

-- Design Ports Information
-- DIN	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS_n	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countOut[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countOut[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countOut[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterWithOutput IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL ww_CS_n : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_countOut : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|Equal0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|clk_spi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|LessThan0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \CS_n~output_o\ : std_logic;
SIGNAL \SCLK~output_o\ : std_logic;
SIGNAL \countOut[2]~output_o\ : std_logic;
SIGNAL \countOut[1]~output_o\ : std_logic;
SIGNAL \countOut[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|clk_spi_count[0]~3_combout\ : std_logic;
SIGNAL \inst1|clk_spi_count[1]~0_combout\ : std_logic;
SIGNAL \inst1|clk_spi_count[2]~1_combout\ : std_logic;
SIGNAL \inst1|clk_spi_count[3]~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|clk_spi~0_combout\ : std_logic;
SIGNAL \inst1|clk_spi~feeder_combout\ : std_logic;
SIGNAL \inst1|clk_spi~q\ : std_logic;
SIGNAL \inst1|clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|count[0]~3_combout\ : std_logic;
SIGNAL \inst1|active2~feeder_combout\ : std_logic;
SIGNAL \inst1|active2~q\ : std_logic;
SIGNAL \inst1|count[1]~0_combout\ : std_logic;
SIGNAL \inst1|count[2]~1_combout\ : std_logic;
SIGNAL \inst1|count[3]~2_combout\ : std_logic;
SIGNAL \inst1|Equal4~1_combout\ : std_logic;
SIGNAL \inst1|channel[0]~0_combout\ : std_logic;
SIGNAL \inst1|channel[1]~2_combout\ : std_logic;
SIGNAL \inst1|channel[2]~1_combout\ : std_logic;
SIGNAL \inst1|DIN~1_combout\ : std_logic;
SIGNAL \inst1|DIN~0_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|DIN~2_combout\ : std_logic;
SIGNAL \inst1|DIN~q\ : std_logic;
SIGNAL \inst1|SCLK~0_combout\ : std_logic;
SIGNAL \DOUT~input_o\ : std_logic;
SIGNAL \inst1|Equal4~2_combout\ : std_logic;
SIGNAL \inst1|Equal4~4_combout\ : std_logic;
SIGNAL \inst1|data~2_combout\ : std_logic;
SIGNAL \inst1|Data0[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|Data0[11]~0_combout\ : std_logic;
SIGNAL \inst1|Data0[11]~1_combout\ : std_logic;
SIGNAL \inst9|counter[0]~57_combout\ : std_logic;
SIGNAL \inst9|counter[1]~19_combout\ : std_logic;
SIGNAL \inst9|counter[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|counter[1]~20\ : std_logic;
SIGNAL \inst9|counter[2]~21_combout\ : std_logic;
SIGNAL \inst9|counter[2]~22\ : std_logic;
SIGNAL \inst9|counter[3]~23_combout\ : std_logic;
SIGNAL \inst9|counter[3]~24\ : std_logic;
SIGNAL \inst9|counter[4]~25_combout\ : std_logic;
SIGNAL \inst9|counter[4]~26\ : std_logic;
SIGNAL \inst9|counter[5]~27_combout\ : std_logic;
SIGNAL \inst9|counter[5]~28\ : std_logic;
SIGNAL \inst9|counter[6]~29_combout\ : std_logic;
SIGNAL \inst9|counter[6]~30\ : std_logic;
SIGNAL \inst9|counter[7]~31_combout\ : std_logic;
SIGNAL \inst9|counter[7]~32\ : std_logic;
SIGNAL \inst9|counter[8]~33_combout\ : std_logic;
SIGNAL \inst9|counter[8]~34\ : std_logic;
SIGNAL \inst9|counter[9]~35_combout\ : std_logic;
SIGNAL \inst9|counter[9]~36\ : std_logic;
SIGNAL \inst9|counter[10]~37_combout\ : std_logic;
SIGNAL \inst9|counter[10]~38\ : std_logic;
SIGNAL \inst9|counter[11]~39_combout\ : std_logic;
SIGNAL \inst9|counter[11]~40\ : std_logic;
SIGNAL \inst9|counter[12]~41_combout\ : std_logic;
SIGNAL \inst9|counter[12]~42\ : std_logic;
SIGNAL \inst9|counter[13]~43_combout\ : std_logic;
SIGNAL \inst9|counter[13]~44\ : std_logic;
SIGNAL \inst9|counter[14]~45_combout\ : std_logic;
SIGNAL \inst9|counter[14]~46\ : std_logic;
SIGNAL \inst9|counter[15]~47_combout\ : std_logic;
SIGNAL \inst9|Equal0~5_combout\ : std_logic;
SIGNAL \inst9|Equal0~4_combout\ : std_logic;
SIGNAL \inst9|counter[15]~48\ : std_logic;
SIGNAL \inst9|counter[16]~49_combout\ : std_logic;
SIGNAL \inst9|counter[16]~50\ : std_logic;
SIGNAL \inst9|counter[17]~51_combout\ : std_logic;
SIGNAL \inst9|counter[17]~52\ : std_logic;
SIGNAL \inst9|counter[18]~53_combout\ : std_logic;
SIGNAL \inst9|counter[18]~54\ : std_logic;
SIGNAL \inst9|counter[19]~55_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst9|Equal0~6_combout\ : std_logic;
SIGNAL \inst9|Equal0~6clkctrl_outclk\ : std_logic;
SIGNAL \inst9|OP_DATA[10]~2_combout\ : std_logic;
SIGNAL \inst1|Equal4~6_combout\ : std_logic;
SIGNAL \inst1|data~4_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[8]~3_combout\ : std_logic;
SIGNAL \inst1|Equal4~3_combout\ : std_logic;
SIGNAL \inst1|data~0_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[9]~0_combout\ : std_logic;
SIGNAL \inst1|Equal4~8_combout\ : std_logic;
SIGNAL \inst1|data~6_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[7]~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|Equal4~5_combout\ : std_logic;
SIGNAL \inst1|data~3_combout\ : std_logic;
SIGNAL \inst4|button3pressed~0_combout\ : std_logic;
SIGNAL \inst1|Equal4~11_combout\ : std_logic;
SIGNAL \inst1|data~9_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[4]~8_combout\ : std_logic;
SIGNAL \inst1|Equal4~9_combout\ : std_logic;
SIGNAL \inst1|data~7_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[2]~6_combout\ : std_logic;
SIGNAL \inst1|Equal4~7_combout\ : std_logic;
SIGNAL \inst1|data~5_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[6]~4_combout\ : std_logic;
SIGNAL \inst1|Equal4~10_combout\ : std_logic;
SIGNAL \inst1|data~8_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[3]~7_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|data~1_combout\ : std_logic;
SIGNAL \inst9|OP_DATA[11]~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~combout\ : std_logic;
SIGNAL \inst4|LessThan0~clkctrl_outclk\ : std_logic;
SIGNAL \inst|zahl[0]~2_combout\ : std_logic;
SIGNAL \inst4|button3pressed~1_combout\ : std_logic;
SIGNAL \inst4|button3pressed~3_combout\ : std_logic;
SIGNAL \inst4|button3pressed~4_combout\ : std_logic;
SIGNAL \inst1|Equal4~12_combout\ : std_logic;
SIGNAL \inst1|data~11_combout\ : std_logic;
SIGNAL \inst1|Data0[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|data~10_combout\ : std_logic;
SIGNAL \inst1|Data0[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|button3pressed~5_combout\ : std_logic;
SIGNAL \inst4|button3pressed~6_combout\ : std_logic;
SIGNAL \inst4|button3pressed~2_combout\ : std_logic;
SIGNAL \inst4|button3pressed~7_combout\ : std_logic;
SIGNAL \inst4|button3pressed~8_combout\ : std_logic;
SIGNAL \inst4|button3pressed~9_combout\ : std_logic;
SIGNAL \inst|zahl[1]~1_combout\ : std_logic;
SIGNAL \inst|zahl[2]~0_combout\ : std_logic;
SIGNAL \inst9|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst9|OP2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|zahl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|channel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|clk_spi_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Data0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst9|OP3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst9|OP1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|ALT_INV_clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|ALT_INV_Equal0~6clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_button3pressed~9_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_active2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DIN <= ww_DIN;
ww_clk_50 <= clk_50;
ww_DOUT <= DOUT;
CS_n <= ww_CS_n;
SCLK <= ww_SCLK;
countOut <= ww_countOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst9|Equal0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|Equal0~6_combout\);

\inst1|clk_spi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|clk_spi~q\);

\inst4|LessThan0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|LessThan0~combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst1|ALT_INV_clk_spi~clkctrl_outclk\ <= NOT \inst1|clk_spi~clkctrl_outclk\;
\inst9|ALT_INV_Equal0~6clkctrl_outclk\ <= NOT \inst9|Equal0~6clkctrl_outclk\;
\inst4|ALT_INV_button3pressed~9_combout\ <= NOT \inst4|button3pressed~9_combout\;
\inst1|ALT_INV_active2~q\ <= NOT \inst1|active2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N16
\DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DIN~q\,
	devoe => ww_devoe,
	o => \DIN~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\CS_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_active2~q\,
	devoe => ww_devoe,
	o => \CS_n~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SCLK~0_combout\,
	devoe => ww_devoe,
	o => \SCLK~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\countOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|zahl\(2),
	devoe => ww_devoe,
	o => \countOut[2]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\countOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|zahl\(1),
	devoe => ww_devoe,
	o => \countOut[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\countOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|zahl\(0),
	devoe => ww_devoe,
	o => \countOut[0]~output_o\);

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

-- Location: LCCOMB_X24_Y32_N22
\inst1|clk_spi_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[0]~3_combout\ = !\inst1|clk_spi_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|clk_spi_count\(0),
	combout => \inst1|clk_spi_count[0]~3_combout\);

-- Location: FF_X24_Y32_N23
\inst1|clk_spi_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|clk_spi_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clk_spi_count\(0));

-- Location: LCCOMB_X24_Y32_N4
\inst1|clk_spi_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[1]~0_combout\ = \inst1|clk_spi_count\(0) $ (\inst1|clk_spi_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clk_spi_count\(0),
	datac => \inst1|clk_spi_count\(1),
	combout => \inst1|clk_spi_count[1]~0_combout\);

-- Location: FF_X24_Y32_N5
\inst1|clk_spi_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|clk_spi_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clk_spi_count\(1));

-- Location: LCCOMB_X24_Y32_N28
\inst1|clk_spi_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[2]~1_combout\ = \inst1|clk_spi_count\(2) $ (((\inst1|clk_spi_count\(0) & \inst1|clk_spi_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clk_spi_count\(0),
	datab => \inst1|clk_spi_count\(1),
	datac => \inst1|clk_spi_count\(2),
	combout => \inst1|clk_spi_count[2]~1_combout\);

-- Location: FF_X24_Y32_N29
\inst1|clk_spi_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|clk_spi_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clk_spi_count\(2));

-- Location: LCCOMB_X24_Y32_N2
\inst1|clk_spi_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[3]~2_combout\ = \inst1|clk_spi_count\(3) $ (((\inst1|clk_spi_count\(0) & (\inst1|clk_spi_count\(1) & \inst1|clk_spi_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clk_spi_count\(0),
	datab => \inst1|clk_spi_count\(1),
	datac => \inst1|clk_spi_count\(3),
	datad => \inst1|clk_spi_count\(2),
	combout => \inst1|clk_spi_count[3]~2_combout\);

-- Location: FF_X24_Y32_N3
\inst1|clk_spi_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|clk_spi_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clk_spi_count\(3));

-- Location: LCCOMB_X24_Y32_N20
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|clk_spi_count\(0) & (!\inst1|clk_spi_count\(2) & (!\inst1|clk_spi_count\(1) & !\inst1|clk_spi_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clk_spi_count\(0),
	datab => \inst1|clk_spi_count\(2),
	datac => \inst1|clk_spi_count\(1),
	datad => \inst1|clk_spi_count\(3),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y32_N24
\inst1|clk_spi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi~0_combout\ = \inst1|clk_spi~q\ $ (\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|clk_spi~q\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|clk_spi~0_combout\);

-- Location: LCCOMB_X24_Y32_N18
\inst1|clk_spi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi~feeder_combout\ = \inst1|clk_spi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|clk_spi~0_combout\,
	combout => \inst1|clk_spi~feeder_combout\);

-- Location: FF_X24_Y32_N19
\inst1|clk_spi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|clk_spi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|clk_spi~q\);

-- Location: CLKCTRL_G10
\inst1|clk_spi~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|clk_spi~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|clk_spi~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y24_N24
\inst1|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[0]~3_combout\ = !\inst1|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(0),
	combout => \inst1|count[0]~3_combout\);

-- Location: LCCOMB_X31_Y24_N20
\inst1|active2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|active2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|active2~feeder_combout\);

-- Location: FF_X31_Y24_N21
\inst1|active2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|active2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|active2~q\);

-- Location: FF_X32_Y24_N25
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|count[0]~3_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X32_Y24_N10
\inst1|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[1]~0_combout\ = \inst1|count\(1) $ (\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(1),
	datad => \inst1|count\(0),
	combout => \inst1|count[1]~0_combout\);

-- Location: FF_X32_Y24_N11
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|count[1]~0_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X32_Y24_N20
\inst1|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[2]~1_combout\ = \inst1|count\(2) $ (((\inst1|count\(0) & \inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(0),
	datac => \inst1|count\(2),
	datad => \inst1|count\(1),
	combout => \inst1|count[2]~1_combout\);

-- Location: FF_X32_Y24_N21
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|count[2]~1_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X32_Y24_N22
\inst1|count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[3]~2_combout\ = \inst1|count\(3) $ (((\inst1|count\(1) & (\inst1|count\(0) & \inst1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|count[3]~2_combout\);

-- Location: FF_X32_Y24_N23
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|count[3]~2_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: LCCOMB_X32_Y24_N18
\inst1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~1_combout\ = (\inst1|count\(1) & (\inst1|count\(0) & (\inst1|count\(3) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~1_combout\);

-- Location: LCCOMB_X32_Y24_N26
\inst1|channel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|channel[0]~0_combout\ = \inst1|channel\(0) $ (\inst1|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|channel\(0),
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|channel[0]~0_combout\);

-- Location: FF_X32_Y24_N27
\inst1|channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|channel[0]~0_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|channel\(0));

-- Location: LCCOMB_X32_Y24_N30
\inst1|channel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|channel[1]~2_combout\ = \inst1|channel\(1) $ (((\inst1|channel\(0) & \inst1|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|channel\(0),
	datab => \inst1|Equal4~1_combout\,
	datac => \inst1|channel\(1),
	combout => \inst1|channel[1]~2_combout\);

-- Location: FF_X32_Y24_N31
\inst1|channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|channel[1]~2_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|channel\(1));

-- Location: LCCOMB_X32_Y24_N8
\inst1|channel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|channel[2]~1_combout\ = \inst1|channel\(2) $ (((\inst1|channel\(0) & (\inst1|channel\(1) & \inst1|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|channel\(0),
	datab => \inst1|channel\(1),
	datac => \inst1|channel\(2),
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|channel[2]~1_combout\);

-- Location: FF_X32_Y24_N9
\inst1|channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|channel[2]~1_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|channel\(2));

-- Location: LCCOMB_X32_Y24_N4
\inst1|DIN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DIN~1_combout\ = (\inst1|count\(0) & (\inst1|channel\(1))) # (!\inst1|count\(0) & ((\inst1|channel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|channel\(1),
	datac => \inst1|channel\(2),
	datad => \inst1|count\(0),
	combout => \inst1|DIN~1_combout\);

-- Location: LCCOMB_X32_Y24_N14
\inst1|DIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DIN~0_combout\ = (\inst1|count\(1) & (!\inst1|count\(3) & !\inst1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|DIN~0_combout\);

-- Location: LCCOMB_X32_Y24_N0
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\inst1|count\(1) & (!\inst1|count\(0) & (!\inst1|count\(3) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y24_N12
\inst1|DIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DIN~2_combout\ = (\inst1|DIN~0_combout\ & (((\inst1|DIN~1_combout\)))) # (!\inst1|DIN~0_combout\ & (\inst1|channel\(0) & ((\inst1|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|channel\(0),
	datab => \inst1|DIN~1_combout\,
	datac => \inst1|DIN~0_combout\,
	datad => \inst1|Equal4~0_combout\,
	combout => \inst1|DIN~2_combout\);

-- Location: FF_X32_Y24_N13
\inst1|DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_clk_spi~clkctrl_outclk\,
	d => \inst1|DIN~2_combout\,
	ena => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DIN~q\);

-- Location: LCCOMB_X35_Y33_N28
\inst1|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SCLK~0_combout\ = (\inst1|clk_spi~q\) # (!\inst1|active2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|active2~q\,
	datad => \inst1|clk_spi~q\,
	combout => \inst1|SCLK~0_combout\);

-- Location: IOIBUF_X25_Y34_N1
\DOUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DOUT,
	o => \DOUT~input_o\);

-- Location: LCCOMB_X31_Y24_N8
\inst1|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~2_combout\ = (!\inst1|count\(2) & (!\inst1|count\(3) & (!\inst1|count\(1) & !\inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(1),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~2_combout\);

-- Location: LCCOMB_X31_Y24_N16
\inst1|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~4_combout\ = (!\inst1|count\(3) & (!\inst1|count\(1) & (\inst1|count\(2) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datab => \inst1|count\(1),
	datac => \inst1|count\(2),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~4_combout\);

-- Location: LCCOMB_X31_Y24_N24
\inst1|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~2_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~4_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~4_combout\ & ((\inst1|data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(10),
	datad => \inst1|Equal4~4_combout\,
	combout => \inst1|data~2_combout\);

-- Location: FF_X31_Y24_N25
\inst1|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~2_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(10));

-- Location: LCCOMB_X30_Y24_N18
\inst1|Data0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[10]~feeder_combout\ = \inst1|data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(10),
	combout => \inst1|Data0[10]~feeder_combout\);

-- Location: LCCOMB_X32_Y24_N28
\inst1|Data0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[11]~0_combout\ = (!\inst1|channel\(0) & (!\inst1|channel\(2) & (\inst1|channel\(1) & \inst1|active2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|channel\(0),
	datab => \inst1|channel\(2),
	datac => \inst1|channel\(1),
	datad => \inst1|active2~q\,
	combout => \inst1|Data0[11]~0_combout\);

-- Location: LCCOMB_X30_Y24_N20
\inst1|Data0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[11]~1_combout\ = (\inst1|Equal4~2_combout\ & \inst1|Data0[11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal4~2_combout\,
	datad => \inst1|Data0[11]~0_combout\,
	combout => \inst1|Data0[11]~1_combout\);

-- Location: FF_X30_Y24_N19
\inst1|Data0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[10]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(10));

-- Location: LCCOMB_X28_Y4_N28
\inst9|counter[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[0]~57_combout\ = !\inst9|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|counter\(0),
	combout => \inst9|counter[0]~57_combout\);

-- Location: FF_X28_Y4_N21
\inst9|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst9|counter[0]~57_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(0));

-- Location: LCCOMB_X28_Y5_N14
\inst9|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[1]~19_combout\ = (\inst9|counter\(0) & (\inst9|counter\(1) $ (VCC))) # (!\inst9|counter\(0) & (\inst9|counter\(1) & VCC))
-- \inst9|counter[1]~20\ = CARRY((\inst9|counter\(0) & \inst9|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(0),
	datab => \inst9|counter\(1),
	datad => VCC,
	combout => \inst9|counter[1]~19_combout\,
	cout => \inst9|counter[1]~20\);

-- Location: LCCOMB_X28_Y5_N4
\inst9|counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[1]~feeder_combout\ = \inst9|counter[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|counter[1]~19_combout\,
	combout => \inst9|counter[1]~feeder_combout\);

-- Location: FF_X28_Y5_N5
\inst9|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[1]~feeder_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(1));

-- Location: LCCOMB_X28_Y5_N16
\inst9|counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[2]~21_combout\ = (\inst9|counter\(2) & (!\inst9|counter[1]~20\)) # (!\inst9|counter\(2) & ((\inst9|counter[1]~20\) # (GND)))
-- \inst9|counter[2]~22\ = CARRY((!\inst9|counter[1]~20\) # (!\inst9|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(2),
	datad => VCC,
	cin => \inst9|counter[1]~20\,
	combout => \inst9|counter[2]~21_combout\,
	cout => \inst9|counter[2]~22\);

-- Location: FF_X28_Y5_N17
\inst9|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[2]~21_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(2));

-- Location: LCCOMB_X28_Y5_N18
\inst9|counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[3]~23_combout\ = (\inst9|counter\(3) & (\inst9|counter[2]~22\ $ (GND))) # (!\inst9|counter\(3) & (!\inst9|counter[2]~22\ & VCC))
-- \inst9|counter[3]~24\ = CARRY((\inst9|counter\(3) & !\inst9|counter[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(3),
	datad => VCC,
	cin => \inst9|counter[2]~22\,
	combout => \inst9|counter[3]~23_combout\,
	cout => \inst9|counter[3]~24\);

-- Location: FF_X28_Y5_N19
\inst9|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[3]~23_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(3));

-- Location: LCCOMB_X28_Y5_N20
\inst9|counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[4]~25_combout\ = (\inst9|counter\(4) & (!\inst9|counter[3]~24\)) # (!\inst9|counter\(4) & ((\inst9|counter[3]~24\) # (GND)))
-- \inst9|counter[4]~26\ = CARRY((!\inst9|counter[3]~24\) # (!\inst9|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(4),
	datad => VCC,
	cin => \inst9|counter[3]~24\,
	combout => \inst9|counter[4]~25_combout\,
	cout => \inst9|counter[4]~26\);

-- Location: FF_X28_Y5_N21
\inst9|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[4]~25_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(4));

-- Location: LCCOMB_X28_Y5_N22
\inst9|counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[5]~27_combout\ = (\inst9|counter\(5) & (\inst9|counter[4]~26\ $ (GND))) # (!\inst9|counter\(5) & (!\inst9|counter[4]~26\ & VCC))
-- \inst9|counter[5]~28\ = CARRY((\inst9|counter\(5) & !\inst9|counter[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(5),
	datad => VCC,
	cin => \inst9|counter[4]~26\,
	combout => \inst9|counter[5]~27_combout\,
	cout => \inst9|counter[5]~28\);

-- Location: FF_X28_Y5_N23
\inst9|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[5]~27_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(5));

-- Location: LCCOMB_X28_Y5_N24
\inst9|counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[6]~29_combout\ = (\inst9|counter\(6) & (!\inst9|counter[5]~28\)) # (!\inst9|counter\(6) & ((\inst9|counter[5]~28\) # (GND)))
-- \inst9|counter[6]~30\ = CARRY((!\inst9|counter[5]~28\) # (!\inst9|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(6),
	datad => VCC,
	cin => \inst9|counter[5]~28\,
	combout => \inst9|counter[6]~29_combout\,
	cout => \inst9|counter[6]~30\);

-- Location: FF_X28_Y5_N25
\inst9|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[6]~29_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(6));

-- Location: LCCOMB_X28_Y5_N26
\inst9|counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[7]~31_combout\ = (\inst9|counter\(7) & (\inst9|counter[6]~30\ $ (GND))) # (!\inst9|counter\(7) & (!\inst9|counter[6]~30\ & VCC))
-- \inst9|counter[7]~32\ = CARRY((\inst9|counter\(7) & !\inst9|counter[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(7),
	datad => VCC,
	cin => \inst9|counter[6]~30\,
	combout => \inst9|counter[7]~31_combout\,
	cout => \inst9|counter[7]~32\);

-- Location: FF_X28_Y5_N27
\inst9|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[7]~31_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(7));

-- Location: LCCOMB_X28_Y5_N28
\inst9|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[8]~33_combout\ = (\inst9|counter\(8) & (!\inst9|counter[7]~32\)) # (!\inst9|counter\(8) & ((\inst9|counter[7]~32\) # (GND)))
-- \inst9|counter[8]~34\ = CARRY((!\inst9|counter[7]~32\) # (!\inst9|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(8),
	datad => VCC,
	cin => \inst9|counter[7]~32\,
	combout => \inst9|counter[8]~33_combout\,
	cout => \inst9|counter[8]~34\);

-- Location: FF_X28_Y5_N29
\inst9|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[8]~33_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(8));

-- Location: LCCOMB_X28_Y5_N30
\inst9|counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[9]~35_combout\ = (\inst9|counter\(9) & (\inst9|counter[8]~34\ $ (GND))) # (!\inst9|counter\(9) & (!\inst9|counter[8]~34\ & VCC))
-- \inst9|counter[9]~36\ = CARRY((\inst9|counter\(9) & !\inst9|counter[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(9),
	datad => VCC,
	cin => \inst9|counter[8]~34\,
	combout => \inst9|counter[9]~35_combout\,
	cout => \inst9|counter[9]~36\);

-- Location: FF_X28_Y5_N31
\inst9|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[9]~35_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(9));

-- Location: LCCOMB_X28_Y4_N0
\inst9|counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[10]~37_combout\ = (\inst9|counter\(10) & (!\inst9|counter[9]~36\)) # (!\inst9|counter\(10) & ((\inst9|counter[9]~36\) # (GND)))
-- \inst9|counter[10]~38\ = CARRY((!\inst9|counter[9]~36\) # (!\inst9|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(10),
	datad => VCC,
	cin => \inst9|counter[9]~36\,
	combout => \inst9|counter[10]~37_combout\,
	cout => \inst9|counter[10]~38\);

-- Location: FF_X28_Y4_N1
\inst9|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[10]~37_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(10));

-- Location: LCCOMB_X28_Y4_N2
\inst9|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[11]~39_combout\ = (\inst9|counter\(11) & (\inst9|counter[10]~38\ $ (GND))) # (!\inst9|counter\(11) & (!\inst9|counter[10]~38\ & VCC))
-- \inst9|counter[11]~40\ = CARRY((\inst9|counter\(11) & !\inst9|counter[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(11),
	datad => VCC,
	cin => \inst9|counter[10]~38\,
	combout => \inst9|counter[11]~39_combout\,
	cout => \inst9|counter[11]~40\);

-- Location: FF_X28_Y4_N3
\inst9|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[11]~39_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(11));

-- Location: LCCOMB_X28_Y4_N4
\inst9|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[12]~41_combout\ = (\inst9|counter\(12) & (!\inst9|counter[11]~40\)) # (!\inst9|counter\(12) & ((\inst9|counter[11]~40\) # (GND)))
-- \inst9|counter[12]~42\ = CARRY((!\inst9|counter[11]~40\) # (!\inst9|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(12),
	datad => VCC,
	cin => \inst9|counter[11]~40\,
	combout => \inst9|counter[12]~41_combout\,
	cout => \inst9|counter[12]~42\);

-- Location: FF_X28_Y4_N5
\inst9|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[12]~41_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(12));

-- Location: LCCOMB_X28_Y4_N6
\inst9|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[13]~43_combout\ = (\inst9|counter\(13) & (\inst9|counter[12]~42\ $ (GND))) # (!\inst9|counter\(13) & (!\inst9|counter[12]~42\ & VCC))
-- \inst9|counter[13]~44\ = CARRY((\inst9|counter\(13) & !\inst9|counter[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(13),
	datad => VCC,
	cin => \inst9|counter[12]~42\,
	combout => \inst9|counter[13]~43_combout\,
	cout => \inst9|counter[13]~44\);

-- Location: FF_X28_Y4_N7
\inst9|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[13]~43_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(13));

-- Location: LCCOMB_X28_Y4_N8
\inst9|counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[14]~45_combout\ = (\inst9|counter\(14) & (!\inst9|counter[13]~44\)) # (!\inst9|counter\(14) & ((\inst9|counter[13]~44\) # (GND)))
-- \inst9|counter[14]~46\ = CARRY((!\inst9|counter[13]~44\) # (!\inst9|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(14),
	datad => VCC,
	cin => \inst9|counter[13]~44\,
	combout => \inst9|counter[14]~45_combout\,
	cout => \inst9|counter[14]~46\);

-- Location: FF_X28_Y4_N9
\inst9|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[14]~45_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(14));

-- Location: LCCOMB_X28_Y4_N10
\inst9|counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[15]~47_combout\ = (\inst9|counter\(15) & (\inst9|counter[14]~46\ $ (GND))) # (!\inst9|counter\(15) & (!\inst9|counter[14]~46\ & VCC))
-- \inst9|counter[15]~48\ = CARRY((\inst9|counter\(15) & !\inst9|counter[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(15),
	datad => VCC,
	cin => \inst9|counter[14]~46\,
	combout => \inst9|counter[15]~47_combout\,
	cout => \inst9|counter[15]~48\);

-- Location: FF_X28_Y4_N11
\inst9|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[15]~47_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(15));

-- Location: LCCOMB_X28_Y4_N26
\inst9|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~5_combout\ = (\inst9|counter\(13) & (!\inst9|counter\(14) & (!\inst9|counter\(12) & \inst9|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(13),
	datab => \inst9|counter\(14),
	datac => \inst9|counter\(12),
	datad => \inst9|counter\(15),
	combout => \inst9|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y4_N24
\inst9|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~4_combout\ = (!\inst9|counter\(9) & (!\inst9|counter\(11) & (\inst9|counter\(8) & !\inst9|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(9),
	datab => \inst9|counter\(11),
	datac => \inst9|counter\(8),
	datad => \inst9|counter\(10),
	combout => \inst9|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y4_N12
\inst9|counter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[16]~49_combout\ = (\inst9|counter\(16) & (!\inst9|counter[15]~48\)) # (!\inst9|counter\(16) & ((\inst9|counter[15]~48\) # (GND)))
-- \inst9|counter[16]~50\ = CARRY((!\inst9|counter[15]~48\) # (!\inst9|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(16),
	datad => VCC,
	cin => \inst9|counter[15]~48\,
	combout => \inst9|counter[16]~49_combout\,
	cout => \inst9|counter[16]~50\);

-- Location: FF_X28_Y4_N13
\inst9|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[16]~49_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(16));

-- Location: LCCOMB_X28_Y4_N14
\inst9|counter[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[17]~51_combout\ = (\inst9|counter\(17) & (\inst9|counter[16]~50\ $ (GND))) # (!\inst9|counter\(17) & (!\inst9|counter[16]~50\ & VCC))
-- \inst9|counter[17]~52\ = CARRY((\inst9|counter\(17) & !\inst9|counter[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(17),
	datad => VCC,
	cin => \inst9|counter[16]~50\,
	combout => \inst9|counter[17]~51_combout\,
	cout => \inst9|counter[17]~52\);

-- Location: FF_X28_Y4_N15
\inst9|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[17]~51_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(17));

-- Location: LCCOMB_X28_Y4_N16
\inst9|counter[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[18]~53_combout\ = (\inst9|counter\(18) & (!\inst9|counter[17]~52\)) # (!\inst9|counter\(18) & ((\inst9|counter[17]~52\) # (GND)))
-- \inst9|counter[18]~54\ = CARRY((!\inst9|counter[17]~52\) # (!\inst9|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(18),
	datad => VCC,
	cin => \inst9|counter[17]~52\,
	combout => \inst9|counter[18]~53_combout\,
	cout => \inst9|counter[18]~54\);

-- Location: FF_X28_Y4_N17
\inst9|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[18]~53_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(18));

-- Location: LCCOMB_X28_Y4_N18
\inst9|counter[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[19]~55_combout\ = \inst9|counter\(19) $ (!\inst9|counter[18]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(19),
	cin => \inst9|counter[18]~54\,
	combout => \inst9|counter[19]~55_combout\);

-- Location: FF_X28_Y4_N19
\inst9|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst9|counter[19]~55_combout\,
	clrn => \inst9|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(19));

-- Location: LCCOMB_X28_Y4_N30
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (\inst9|counter\(16) & (!\inst9|counter\(19) & (\inst9|counter\(17) & \inst9|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(16),
	datab => \inst9|counter\(19),
	datac => \inst9|counter\(17),
	datad => \inst9|counter\(18),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y5_N2
\inst9|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (!\inst9|counter\(2) & !\inst9|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(2),
	datad => \inst9|counter\(3),
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y5_N6
\inst9|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~2_combout\ = (!\inst9|counter\(7) & (!\inst9|counter\(6) & (\inst9|counter\(5) & !\inst9|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(7),
	datab => \inst9|counter\(6),
	datac => \inst9|counter\(5),
	datad => \inst9|counter\(4),
	combout => \inst9|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y4_N20
\inst9|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~3_combout\ = (!\inst9|counter\(1) & (\inst9|Equal0~1_combout\ & (!\inst9|counter\(0) & \inst9|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(1),
	datab => \inst9|Equal0~1_combout\,
	datac => \inst9|counter\(0),
	datad => \inst9|Equal0~2_combout\,
	combout => \inst9|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y4_N22
\inst9|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~6_combout\ = (\inst9|Equal0~5_combout\ & (\inst9|Equal0~4_combout\ & (\inst9|Equal0~0_combout\ & \inst9|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~5_combout\,
	datab => \inst9|Equal0~4_combout\,
	datac => \inst9|Equal0~0_combout\,
	datad => \inst9|Equal0~3_combout\,
	combout => \inst9|Equal0~6_combout\);

-- Location: CLKCTRL_G19
\inst9|Equal0~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|Equal0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|Equal0~6clkctrl_outclk\);

-- Location: LCCOMB_X30_Y24_N26
\inst9|OP1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(10) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst1|Data0\(10)))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst9|OP1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(10),
	datac => \inst1|Data0\(10),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP1\(10));

-- Location: LCCOMB_X30_Y24_N2
\inst9|OP2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(10) = (\inst9|Equal0~6_combout\ & ((\inst9|OP1\(10)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP2\(10),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP1\(10),
	combout => \inst9|OP2\(10));

-- Location: LCCOMB_X30_Y24_N8
\inst9|OP3[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(10) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(10))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(10),
	datab => \inst9|OP3\(10),
	datac => \inst9|Equal0~6_combout\,
	combout => \inst9|OP3\(10));

-- Location: LCCOMB_X30_Y24_N30
\inst9|OP_DATA[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[10]~2_combout\ = (\inst9|OP1\(10) & (\inst9|OP3\(10) & \inst9|OP2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(10),
	datac => \inst9|OP3\(10),
	datad => \inst9|OP2\(10),
	combout => \inst9|OP_DATA[10]~2_combout\);

-- Location: LCCOMB_X30_Y24_N12
\inst1|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~6_combout\ = (\inst1|count\(2) & (!\inst1|count\(3) & (\inst1|count\(0) & \inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(0),
	datad => \inst1|count\(1),
	combout => \inst1|Equal4~6_combout\);

-- Location: LCCOMB_X31_Y24_N28
\inst1|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~4_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~6_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~6_combout\ & ((\inst1|data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(8),
	datad => \inst1|Equal4~6_combout\,
	combout => \inst1|data~4_combout\);

-- Location: FF_X31_Y24_N29
\inst1|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~4_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(8));

-- Location: FF_X29_Y23_N21
\inst1|Data0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(8),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(8));

-- Location: LCCOMB_X29_Y23_N20
\inst9|OP1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(8) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(8)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(8),
	datac => \inst1|Data0\(8),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(8));

-- Location: LCCOMB_X29_Y23_N12
\inst9|OP2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(8) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(8))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(8),
	datab => \inst9|OP2\(8),
	datac => \inst9|Equal0~6_combout\,
	combout => \inst9|OP2\(8));

-- Location: LCCOMB_X29_Y23_N14
\inst9|OP3[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(8) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(8))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~6_combout\,
	datac => \inst9|OP2\(8),
	datad => \inst9|OP3\(8),
	combout => \inst9|OP3\(8));

-- Location: LCCOMB_X29_Y23_N28
\inst9|OP_DATA[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[8]~3_combout\ = (\inst9|OP2\(8) & (\inst9|OP3\(8) & \inst9|OP1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(8),
	datac => \inst9|OP3\(8),
	datad => \inst9|OP1\(8),
	combout => \inst9|OP_DATA[8]~3_combout\);

-- Location: LCCOMB_X32_Y24_N6
\inst1|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~3_combout\ = (\inst1|count\(1) & (!\inst1|count\(0) & (!\inst1|count\(3) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~3_combout\);

-- Location: LCCOMB_X31_Y24_N30
\inst1|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~0_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~3_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~3_combout\ & ((\inst1|data\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(9),
	datad => \inst1|Equal4~3_combout\,
	combout => \inst1|data~0_combout\);

-- Location: FF_X31_Y24_N31
\inst1|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~0_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(9));

-- Location: FF_X29_Y23_N1
\inst1|Data0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(9),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(9));

-- Location: LCCOMB_X29_Y23_N0
\inst9|OP1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(9) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(9)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(9),
	datac => \inst1|Data0\(9),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(9));

-- Location: LCCOMB_X29_Y23_N18
\inst9|OP2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(9) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(9))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(9),
	datac => \inst9|OP2\(9),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP2\(9));

-- Location: LCCOMB_X29_Y23_N30
\inst9|OP3[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(9) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(9))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(9),
	datab => \inst9|Equal0~6_combout\,
	datac => \inst9|OP3\(9),
	combout => \inst9|OP3\(9));

-- Location: LCCOMB_X29_Y23_N16
\inst9|OP_DATA[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[9]~0_combout\ = (\inst9|OP1\(9) & (\inst9|OP3\(9) & \inst9|OP2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(9),
	datac => \inst9|OP3\(9),
	datad => \inst9|OP2\(9),
	combout => \inst9|OP_DATA[9]~0_combout\);

-- Location: LCCOMB_X30_Y24_N24
\inst1|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~8_combout\ = (!\inst1|count\(2) & (\inst1|count\(3) & (!\inst1|count\(0) & !\inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(0),
	datad => \inst1|count\(1),
	combout => \inst1|Equal4~8_combout\);

-- Location: LCCOMB_X31_Y24_N4
\inst1|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~6_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~8_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~8_combout\ & ((\inst1|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(7),
	datad => \inst1|Equal4~8_combout\,
	combout => \inst1|data~6_combout\);

-- Location: FF_X31_Y24_N5
\inst1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~6_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(7));

-- Location: FF_X31_Y23_N31
\inst1|Data0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(7),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(7));

-- Location: LCCOMB_X31_Y23_N30
\inst9|OP1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(7) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(7)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(7),
	datac => \inst1|Data0\(7),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(7));

-- Location: LCCOMB_X31_Y23_N6
\inst9|OP2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(7) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(7))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(7),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP2\(7),
	combout => \inst9|OP2\(7));

-- Location: LCCOMB_X31_Y23_N24
\inst9|OP3[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(7) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(7))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(7),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP3\(7),
	combout => \inst9|OP3\(7));

-- Location: LCCOMB_X31_Y23_N26
\inst9|OP_DATA[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[7]~5_combout\ = (\inst9|OP2\(7) & (\inst9|OP1\(7) & \inst9|OP3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(7),
	datac => \inst9|OP1\(7),
	datad => \inst9|OP3\(7),
	combout => \inst9|OP_DATA[7]~5_combout\);

-- Location: LCCOMB_X30_Y23_N10
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (!\inst9|OP_DATA[10]~2_combout\ & (!\inst9|OP_DATA[8]~3_combout\ & (!\inst9|OP_DATA[9]~0_combout\ & !\inst9|OP_DATA[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP_DATA[10]~2_combout\,
	datab => \inst9|OP_DATA[8]~3_combout\,
	datac => \inst9|OP_DATA[9]~0_combout\,
	datad => \inst9|OP_DATA[7]~5_combout\,
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y24_N28
\inst1|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~5_combout\ = (!\inst1|count\(2) & (\inst1|count\(3) & (!\inst1|count\(0) & \inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(0),
	datad => \inst1|count\(1),
	combout => \inst1|Equal4~5_combout\);

-- Location: LCCOMB_X31_Y24_N10
\inst1|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~3_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~5_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~5_combout\ & ((\inst1|data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(5),
	datad => \inst1|Equal4~5_combout\,
	combout => \inst1|data~3_combout\);

-- Location: FF_X31_Y24_N11
\inst1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~3_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(5));

-- Location: FF_X30_Y23_N5
\inst1|Data0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(5),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(5));

-- Location: LCCOMB_X30_Y23_N4
\inst9|OP1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(5) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(5)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(5),
	datac => \inst1|Data0\(5),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(5));

-- Location: LCCOMB_X30_Y23_N22
\inst9|OP2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(5) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(5))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(5),
	datac => \inst9|OP2\(5),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP2\(5));

-- Location: LCCOMB_X30_Y23_N18
\inst9|OP3[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(5) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(5))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~6_combout\,
	datab => \inst9|OP2\(5),
	datad => \inst9|OP3\(5),
	combout => \inst9|OP3\(5));

-- Location: LCCOMB_X30_Y23_N28
\inst4|button3pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~0_combout\ = (\inst9|OP1\(5) & (\inst9|OP2\(5) & \inst9|OP3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(5),
	datac => \inst9|OP2\(5),
	datad => \inst9|OP3\(5),
	combout => \inst4|button3pressed~0_combout\);

-- Location: LCCOMB_X30_Y24_N14
\inst1|Equal4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~11_combout\ = (!\inst1|count\(2) & (\inst1|count\(3) & (\inst1|count\(0) & \inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(0),
	datad => \inst1|count\(1),
	combout => \inst1|Equal4~11_combout\);

-- Location: LCCOMB_X31_Y24_N2
\inst1|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~9_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~11_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~11_combout\ & ((\inst1|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(4),
	datad => \inst1|Equal4~11_combout\,
	combout => \inst1|data~9_combout\);

-- Location: FF_X31_Y24_N3
\inst1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~9_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(4));

-- Location: FF_X29_Y23_N3
\inst1|Data0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(4),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(4));

-- Location: LCCOMB_X29_Y23_N2
\inst9|OP1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(4) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(4)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(4),
	datac => \inst1|Data0\(4),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(4));

-- Location: LCCOMB_X29_Y23_N4
\inst9|OP2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(4) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(4))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(4),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP2\(4),
	combout => \inst9|OP2\(4));

-- Location: LCCOMB_X29_Y23_N26
\inst9|OP3[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(4) = (\inst9|Equal0~6_combout\ & ((\inst9|OP2\(4)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP3\(4),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP2\(4),
	combout => \inst9|OP3\(4));

-- Location: LCCOMB_X29_Y23_N10
\inst9|OP_DATA[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[4]~8_combout\ = (\inst9|OP2\(4) & (\inst9|OP3\(4) & \inst9|OP1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP2\(4),
	datac => \inst9|OP3\(4),
	datad => \inst9|OP1\(4),
	combout => \inst9|OP_DATA[4]~8_combout\);

-- Location: LCCOMB_X32_Y24_N2
\inst1|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~9_combout\ = (!\inst1|count\(1) & (\inst1|count\(0) & (\inst1|count\(3) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~9_combout\);

-- Location: LCCOMB_X31_Y24_N22
\inst1|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~7_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~9_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~9_combout\ & ((\inst1|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(2),
	datad => \inst1|Equal4~9_combout\,
	combout => \inst1|data~7_combout\);

-- Location: FF_X31_Y24_N23
\inst1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~7_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(2));

-- Location: FF_X29_Y23_N23
\inst1|Data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(2),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(2));

-- Location: LCCOMB_X29_Y23_N22
\inst9|OP1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(2) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(2)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(2),
	datac => \inst1|Data0\(2),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(2));

-- Location: LCCOMB_X29_Y23_N8
\inst9|OP2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(2) = (\inst9|Equal0~6_combout\ & ((\inst9|OP1\(2)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP2\(2),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP1\(2),
	combout => \inst9|OP2\(2));

-- Location: LCCOMB_X29_Y23_N24
\inst9|OP3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(2) = (\inst9|Equal0~6_combout\ & ((\inst9|OP2\(2)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP3\(2),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP2\(2),
	combout => \inst9|OP3\(2));

-- Location: LCCOMB_X29_Y23_N6
\inst9|OP_DATA[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[2]~6_combout\ = (\inst9|OP2\(2) & (\inst9|OP1\(2) & \inst9|OP3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP2\(2),
	datac => \inst9|OP1\(2),
	datad => \inst9|OP3\(2),
	combout => \inst9|OP_DATA[2]~6_combout\);

-- Location: LCCOMB_X32_Y24_N16
\inst1|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~7_combout\ = (!\inst1|count\(1) & (\inst1|count\(0) & (\inst1|count\(3) & !\inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~7_combout\);

-- Location: LCCOMB_X31_Y24_N14
\inst1|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~5_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~7_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~7_combout\ & ((\inst1|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(6),
	datad => \inst1|Equal4~7_combout\,
	combout => \inst1|data~5_combout\);

-- Location: FF_X31_Y24_N15
\inst1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~5_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(6));

-- Location: FF_X31_Y23_N15
\inst1|Data0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(6),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(6));

-- Location: LCCOMB_X31_Y23_N14
\inst9|OP1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(6) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(6)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(6),
	datac => \inst1|Data0\(6),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(6));

-- Location: LCCOMB_X31_Y23_N22
\inst9|OP2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(6) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(6))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(6),
	datac => \inst9|OP2\(6),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP2\(6));

-- Location: LCCOMB_X31_Y23_N28
\inst9|OP3[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(6) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(6))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(6),
	datac => \inst9|Equal0~6_combout\,
	datad => \inst9|OP3\(6),
	combout => \inst9|OP3\(6));

-- Location: LCCOMB_X31_Y23_N20
\inst9|OP_DATA[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[6]~4_combout\ = (\inst9|OP2\(6) & (\inst9|OP1\(6) & \inst9|OP3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(6),
	datac => \inst9|OP1\(6),
	datad => \inst9|OP3\(6),
	combout => \inst9|OP_DATA[6]~4_combout\);

-- Location: LCCOMB_X30_Y24_N16
\inst1|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~10_combout\ = (\inst1|count\(2) & (\inst1|count\(3) & (!\inst1|count\(0) & !\inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(3),
	datac => \inst1|count\(0),
	datad => \inst1|count\(1),
	combout => \inst1|Equal4~10_combout\);

-- Location: LCCOMB_X31_Y24_N0
\inst1|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~8_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~10_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~10_combout\ & ((\inst1|data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(3),
	datad => \inst1|Equal4~10_combout\,
	combout => \inst1|data~8_combout\);

-- Location: FF_X31_Y24_N1
\inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~8_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(3));

-- Location: FF_X30_Y23_N13
\inst1|Data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(3),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(3));

-- Location: LCCOMB_X30_Y23_N12
\inst9|OP1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(3) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(3)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(3),
	datac => \inst1|Data0\(3),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(3));

-- Location: LCCOMB_X30_Y23_N6
\inst9|OP2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(3) = (\inst9|Equal0~6_combout\ & (\inst9|OP1\(3))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(3),
	datac => \inst9|OP2\(3),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP2\(3));

-- Location: LCCOMB_X30_Y23_N14
\inst9|OP3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(3) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(3))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(3),
	datac => \inst9|OP3\(3),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP3\(3));

-- Location: LCCOMB_X30_Y23_N2
\inst9|OP_DATA[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[3]~7_combout\ = (\inst9|OP1\(3) & (\inst9|OP3\(3) & \inst9|OP2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(3),
	datac => \inst9|OP3\(3),
	datad => \inst9|OP2\(3),
	combout => \inst9|OP_DATA[3]~7_combout\);

-- Location: LCCOMB_X30_Y23_N8
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = ((!\inst9|OP_DATA[4]~8_combout\ & (!\inst9|OP_DATA[2]~6_combout\ & !\inst9|OP_DATA[3]~7_combout\))) # (!\inst9|OP_DATA[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP_DATA[4]~8_combout\,
	datab => \inst9|OP_DATA[2]~6_combout\,
	datac => \inst9|OP_DATA[6]~4_combout\,
	datad => \inst9|OP_DATA[3]~7_combout\,
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y24_N26
\inst1|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~1_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~0_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~0_combout\ & ((\inst1|data\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~0_combout\,
	datac => \inst1|data\(11),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~1_combout\);

-- Location: FF_X31_Y24_N27
\inst1|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~1_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(11));

-- Location: FF_X30_Y23_N17
\inst1|Data0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(11),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(11));

-- Location: LCCOMB_X30_Y23_N16
\inst9|OP1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(11) = (\inst9|Equal0~6_combout\ & ((\inst1|Data0\(11)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP1\(11),
	datac => \inst1|Data0\(11),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP1\(11));

-- Location: LCCOMB_X30_Y23_N26
\inst9|OP2[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(11) = (\inst9|Equal0~6_combout\ & ((\inst9|OP1\(11)))) # (!\inst9|Equal0~6_combout\ & (\inst9|OP2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(11),
	datac => \inst9|OP1\(11),
	datad => \inst9|Equal0~6_combout\,
	combout => \inst9|OP2\(11));

-- Location: LCCOMB_X30_Y23_N30
\inst9|OP3[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(11) = (\inst9|Equal0~6_combout\ & (\inst9|OP2\(11))) # (!\inst9|Equal0~6_combout\ & ((\inst9|OP3\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~6_combout\,
	datab => \inst9|OP2\(11),
	datac => \inst9|OP3\(11),
	combout => \inst9|OP3\(11));

-- Location: LCCOMB_X30_Y23_N24
\inst9|OP_DATA[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP_DATA[11]~1_combout\ = (\inst9|OP2\(11) & (\inst9|OP3\(11) & \inst9|OP1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(11),
	datac => \inst9|OP3\(11),
	datad => \inst9|OP1\(11),
	combout => \inst9|OP_DATA[11]~1_combout\);

-- Location: LCCOMB_X30_Y23_N20
\inst4|LessThan0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~combout\ = LCELL((\inst4|LessThan0~0_combout\ & (!\inst9|OP_DATA[11]~1_combout\ & ((\inst4|LessThan0~1_combout\) # (!\inst4|button3pressed~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datab => \inst4|button3pressed~0_combout\,
	datac => \inst4|LessThan0~1_combout\,
	datad => \inst9|OP_DATA[11]~1_combout\,
	combout => \inst4|LessThan0~combout\);

-- Location: CLKCTRL_G14
\inst4|LessThan0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|LessThan0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|LessThan0~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y24_N28
\inst|zahl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|zahl[0]~2_combout\ = !\inst|zahl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|zahl\(0),
	combout => \inst|zahl[0]~2_combout\);

-- Location: LCCOMB_X29_Y24_N30
\inst4|button3pressed~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~1_combout\ = (\inst9|OP_DATA[8]~3_combout\ & (((\inst9|OP_DATA[7]~5_combout\ & \inst9|OP_DATA[6]~4_combout\)) # (!\inst9|OP_DATA[10]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP_DATA[10]~2_combout\,
	datab => \inst9|OP_DATA[7]~5_combout\,
	datac => \inst9|OP_DATA[8]~3_combout\,
	datad => \inst9|OP_DATA[6]~4_combout\,
	combout => \inst4|button3pressed~1_combout\);

-- Location: LCCOMB_X31_Y23_N18
\inst4|button3pressed~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~3_combout\ = (\inst9|OP3\(7) & (\inst9|OP2\(6) & \inst9|OP3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP3\(7),
	datac => \inst9|OP2\(6),
	datad => \inst9|OP3\(6),
	combout => \inst4|button3pressed~3_combout\);

-- Location: LCCOMB_X31_Y23_N0
\inst4|button3pressed~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~4_combout\ = (\inst9|OP2\(7) & (\inst9|OP1\(6) & (\inst9|OP1\(7) & \inst4|button3pressed~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(7),
	datab => \inst9|OP1\(6),
	datac => \inst9|OP1\(7),
	datad => \inst4|button3pressed~3_combout\,
	combout => \inst4|button3pressed~4_combout\);

-- Location: LCCOMB_X31_Y24_N18
\inst1|Equal4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~12_combout\ = (\inst1|count\(3) & (\inst1|count\(1) & (\inst1|count\(2) & !\inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datab => \inst1|count\(1),
	datac => \inst1|count\(2),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~12_combout\);

-- Location: LCCOMB_X31_Y24_N6
\inst1|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~11_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~12_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~12_combout\ & ((\inst1|data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(1),
	datad => \inst1|Equal4~12_combout\,
	combout => \inst1|data~11_combout\);

-- Location: FF_X31_Y24_N7
\inst1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~11_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(1));

-- Location: LCCOMB_X30_Y24_N0
\inst1|Data0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[1]~feeder_combout\ = \inst1|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(1),
	combout => \inst1|Data0[1]~feeder_combout\);

-- Location: FF_X30_Y24_N1
\inst1|Data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[1]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(1));

-- Location: LCCOMB_X30_Y24_N22
\inst9|OP1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(1) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst1|Data0\(1))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst9|OP1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Data0\(1),
	datac => \inst9|OP1\(1),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP1\(1));

-- Location: LCCOMB_X30_Y24_N4
\inst9|OP2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(1) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst9|OP1\(1)))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst9|OP2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP2\(1),
	datac => \inst9|OP1\(1),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP2\(1));

-- Location: LCCOMB_X30_Y24_N10
\inst9|OP3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(1) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst9|OP2\(1)))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst9|OP3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP3\(1),
	datac => \inst9|OP2\(1),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP3\(1));

-- Location: LCCOMB_X31_Y24_N12
\inst1|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~10_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~1_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~1_combout\ & ((\inst1|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~2_combout\,
	datac => \inst1|data\(0),
	datad => \inst1|Equal4~1_combout\,
	combout => \inst1|data~10_combout\);

-- Location: FF_X31_Y24_N13
\inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|data~10_combout\,
	clrn => \inst1|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(0));

-- Location: LCCOMB_X29_Y24_N22
\inst1|Data0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[0]~feeder_combout\ = \inst1|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(0),
	combout => \inst1|Data0[0]~feeder_combout\);

-- Location: FF_X29_Y24_N23
\inst1|Data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[0]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(0));

-- Location: LCCOMB_X29_Y24_N26
\inst9|OP1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP1\(0) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst1|Data0\(0)))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst9|OP1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(0),
	datac => \inst1|Data0\(0),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP1\(0));

-- Location: LCCOMB_X29_Y24_N8
\inst9|OP2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP2\(0) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst9|OP1\(0)))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst9|OP2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP2\(0),
	datac => \inst9|OP1\(0),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP2\(0));

-- Location: LCCOMB_X29_Y24_N20
\inst9|OP3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|OP3\(0) = (GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & ((\inst9|OP2\(0)))) # (!GLOBAL(\inst9|Equal0~6clkctrl_outclk\) & (\inst9|OP3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP3\(0),
	datac => \inst9|OP2\(0),
	datad => \inst9|Equal0~6clkctrl_outclk\,
	combout => \inst9|OP3\(0));

-- Location: LCCOMB_X29_Y24_N16
\inst4|button3pressed~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~5_combout\ = (\inst9|OP1\(0) & (\inst9|OP2\(0) & \inst9|OP3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP1\(0),
	datac => \inst9|OP2\(0),
	datad => \inst9|OP3\(0),
	combout => \inst4|button3pressed~5_combout\);

-- Location: LCCOMB_X29_Y24_N14
\inst4|button3pressed~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~6_combout\ = (\inst4|button3pressed~5_combout\) # ((\inst9|OP2\(1) & (\inst9|OP1\(1) & \inst9|OP3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP2\(1),
	datab => \inst9|OP1\(1),
	datac => \inst9|OP3\(1),
	datad => \inst4|button3pressed~5_combout\,
	combout => \inst4|button3pressed~6_combout\);

-- Location: LCCOMB_X30_Y23_N0
\inst4|button3pressed~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~2_combout\ = (\inst9|OP_DATA[3]~7_combout\ & (\inst9|OP_DATA[2]~6_combout\ & \inst9|OP_DATA[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|OP_DATA[3]~7_combout\,
	datac => \inst9|OP_DATA[2]~6_combout\,
	datad => \inst9|OP_DATA[4]~8_combout\,
	combout => \inst4|button3pressed~2_combout\);

-- Location: LCCOMB_X29_Y24_N12
\inst4|button3pressed~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~7_combout\ = (\inst4|button3pressed~2_combout\ & ((\inst9|OP_DATA[11]~1_combout\ & (\inst4|button3pressed~4_combout\)) # (!\inst9|OP_DATA[11]~1_combout\ & ((\inst4|button3pressed~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP_DATA[11]~1_combout\,
	datab => \inst4|button3pressed~4_combout\,
	datac => \inst4|button3pressed~6_combout\,
	datad => \inst4|button3pressed~2_combout\,
	combout => \inst4|button3pressed~7_combout\);

-- Location: LCCOMB_X29_Y24_N6
\inst4|button3pressed~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~8_combout\ = (\inst4|button3pressed~0_combout\ & ((\inst4|button3pressed~1_combout\) # ((!\inst9|OP_DATA[10]~2_combout\ & \inst4|button3pressed~7_combout\)))) # (!\inst4|button3pressed~0_combout\ & (\inst4|button3pressed~1_combout\ & 
-- ((\inst4|button3pressed~7_combout\) # (!\inst9|OP_DATA[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|button3pressed~0_combout\,
	datab => \inst4|button3pressed~1_combout\,
	datac => \inst9|OP_DATA[10]~2_combout\,
	datad => \inst4|button3pressed~7_combout\,
	combout => \inst4|button3pressed~8_combout\);

-- Location: LCCOMB_X29_Y24_N0
\inst4|button3pressed~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|button3pressed~9_combout\ = (\inst9|OP_DATA[11]~1_combout\ & (!\inst9|OP_DATA[10]~2_combout\ & (!\inst4|button3pressed~8_combout\ & !\inst9|OP_DATA[9]~0_combout\))) # (!\inst9|OP_DATA[11]~1_combout\ & (\inst9|OP_DATA[10]~2_combout\ & 
-- ((\inst4|button3pressed~8_combout\) # (\inst9|OP_DATA[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|OP_DATA[11]~1_combout\,
	datab => \inst9|OP_DATA[10]~2_combout\,
	datac => \inst4|button3pressed~8_combout\,
	datad => \inst9|OP_DATA[9]~0_combout\,
	combout => \inst4|button3pressed~9_combout\);

-- Location: FF_X29_Y24_N29
\inst|zahl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LessThan0~clkctrl_outclk\,
	d => \inst|zahl[0]~2_combout\,
	clrn => \inst4|ALT_INV_button3pressed~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zahl\(0));

-- Location: LCCOMB_X29_Y24_N2
\inst|zahl[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|zahl[1]~1_combout\ = \inst|zahl\(1) $ (\inst|zahl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|zahl\(1),
	datad => \inst|zahl\(0),
	combout => \inst|zahl[1]~1_combout\);

-- Location: FF_X29_Y24_N3
\inst|zahl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LessThan0~clkctrl_outclk\,
	d => \inst|zahl[1]~1_combout\,
	clrn => \inst4|ALT_INV_button3pressed~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zahl\(1));

-- Location: LCCOMB_X29_Y24_N24
\inst|zahl[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|zahl[2]~0_combout\ = \inst|zahl\(2) $ (((\inst|zahl\(0) & \inst|zahl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|zahl\(0),
	datac => \inst|zahl\(2),
	datad => \inst|zahl\(1),
	combout => \inst|zahl[2]~0_combout\);

-- Location: FF_X29_Y24_N25
\inst|zahl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LessThan0~clkctrl_outclk\,
	d => \inst|zahl[2]~0_combout\,
	clrn => \inst4|ALT_INV_button3pressed~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zahl\(2));

ww_DIN <= \DIN~output_o\;

ww_CS_n <= \CS_n~output_o\;

ww_SCLK <= \SCLK~output_o\;

ww_countOut(2) <= \countOut[2]~output_o\;

ww_countOut(1) <= \countOut[1]~output_o\;

ww_countOut(0) <= \countOut[0]~output_o\;
END structure;


