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

-- DATE "06/08/2018 11:27:31"

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
SIGNAL \inst5|b1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|clk_spi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Equal0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst1|Equal4~6_combout\ : std_logic;
SIGNAL \DOUT~input_o\ : std_logic;
SIGNAL \inst1|Equal4~2_combout\ : std_logic;
SIGNAL \inst1|data~4_combout\ : std_logic;
SIGNAL \inst1|Data0[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Data0[11]~0_combout\ : std_logic;
SIGNAL \inst1|Data0[11]~1_combout\ : std_logic;
SIGNAL \inst1|Equal4~7_combout\ : std_logic;
SIGNAL \inst1|data~5_combout\ : std_logic;
SIGNAL \inst1|Data0[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Equal4~8_combout\ : std_logic;
SIGNAL \inst1|data~6_combout\ : std_logic;
SIGNAL \inst1|Data0[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|Equal4~11_combout\ : std_logic;
SIGNAL \inst1|data~9_combout\ : std_logic;
SIGNAL \inst1|Data0[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|Equal4~9_combout\ : std_logic;
SIGNAL \inst1|data~7_combout\ : std_logic;
SIGNAL \inst1|Equal4~10_combout\ : std_logic;
SIGNAL \inst1|data~8_combout\ : std_logic;
SIGNAL \inst1|Data0[5]~feeder_combout\ : std_logic;
SIGNAL \inst5|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|Equal4~5_combout\ : std_logic;
SIGNAL \inst1|data~3_combout\ : std_logic;
SIGNAL \inst1|Equal4~4_combout\ : std_logic;
SIGNAL \inst1|data~2_combout\ : std_logic;
SIGNAL \inst1|Data0[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|Equal4~3_combout\ : std_logic;
SIGNAL \inst1|data~1_combout\ : std_logic;
SIGNAL \inst1|data~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|LessThan0~3_combout\ : std_logic;
SIGNAL \inst5|counter[0]~60_combout\ : std_logic;
SIGNAL \inst5|counter[1]~20_combout\ : std_logic;
SIGNAL \inst5|counter[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|counter[1]~21\ : std_logic;
SIGNAL \inst5|counter[2]~22_combout\ : std_logic;
SIGNAL \inst5|counter[2]~23\ : std_logic;
SIGNAL \inst5|counter[3]~24_combout\ : std_logic;
SIGNAL \inst5|counter[3]~25\ : std_logic;
SIGNAL \inst5|counter[4]~26_combout\ : std_logic;
SIGNAL \inst5|counter[4]~27\ : std_logic;
SIGNAL \inst5|counter[5]~28_combout\ : std_logic;
SIGNAL \inst5|counter[5]~29\ : std_logic;
SIGNAL \inst5|counter[6]~30_combout\ : std_logic;
SIGNAL \inst5|counter[6]~31\ : std_logic;
SIGNAL \inst5|counter[7]~32_combout\ : std_logic;
SIGNAL \inst5|counter[7]~33\ : std_logic;
SIGNAL \inst5|counter[8]~34_combout\ : std_logic;
SIGNAL \inst5|counter[8]~35\ : std_logic;
SIGNAL \inst5|counter[9]~36_combout\ : std_logic;
SIGNAL \inst5|counter[9]~37\ : std_logic;
SIGNAL \inst5|counter[10]~38_combout\ : std_logic;
SIGNAL \inst5|counter[10]~39\ : std_logic;
SIGNAL \inst5|counter[11]~40_combout\ : std_logic;
SIGNAL \inst5|counter[11]~41\ : std_logic;
SIGNAL \inst5|counter[12]~42_combout\ : std_logic;
SIGNAL \inst5|counter[12]~43\ : std_logic;
SIGNAL \inst5|counter[13]~44_combout\ : std_logic;
SIGNAL \inst5|counter[13]~45\ : std_logic;
SIGNAL \inst5|counter[14]~46_combout\ : std_logic;
SIGNAL \inst5|counter[14]~47\ : std_logic;
SIGNAL \inst5|counter[15]~48_combout\ : std_logic;
SIGNAL \inst5|counter[15]~49\ : std_logic;
SIGNAL \inst5|counter[16]~50_combout\ : std_logic;
SIGNAL \inst5|counter[16]~51\ : std_logic;
SIGNAL \inst5|counter[17]~52_combout\ : std_logic;
SIGNAL \inst5|counter[17]~53\ : std_logic;
SIGNAL \inst5|counter[18]~54_combout\ : std_logic;
SIGNAL \inst5|counter[18]~55\ : std_logic;
SIGNAL \inst5|counter[19]~56_combout\ : std_logic;
SIGNAL \inst5|counter[19]~57\ : std_logic;
SIGNAL \inst5|counter[20]~58_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~6clkctrl_outclk\ : std_logic;
SIGNAL \inst5|b1~combout\ : std_logic;
SIGNAL \inst5|b1~clkctrl_outclk\ : std_logic;
SIGNAL \inst|zahl[0]~2_combout\ : std_logic;
SIGNAL \inst5|LessThan0~4_combout\ : std_logic;
SIGNAL \inst5|process_0~3_combout\ : std_logic;
SIGNAL \inst5|process_0~4_combout\ : std_logic;
SIGNAL \inst5|process_0~0_combout\ : std_logic;
SIGNAL \inst5|process_0~1_combout\ : std_logic;
SIGNAL \inst5|process_0~2_combout\ : std_logic;
SIGNAL \inst5|process_0~6_combout\ : std_logic;
SIGNAL \inst1|data~11_combout\ : std_logic;
SIGNAL \inst1|Equal4~12_combout\ : std_logic;
SIGNAL \inst1|data~10_combout\ : std_logic;
SIGNAL \inst5|process_0~5_combout\ : std_logic;
SIGNAL \inst5|process_0~7_combout\ : std_logic;
SIGNAL \inst5|process_0~8_combout\ : std_logic;
SIGNAL \inst5|b3~combout\ : std_logic;
SIGNAL \inst|zahl[1]~1_combout\ : std_logic;
SIGNAL \inst|zahl[2]~0_combout\ : std_logic;
SIGNAL \inst1|channel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst1|data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|zahl\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|clk_spi_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Data0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|ALT_INV_active2~q\ : std_logic;
SIGNAL \inst5|ALT_INV_Equal0~6clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_b3~combout\ : std_logic;

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

\inst5|b1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|b1~combout\);

\inst1|clk_spi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|clk_spi~q\);

\inst5|Equal0~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|Equal0~6_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst1|ALT_INV_active2~q\ <= NOT \inst1|active2~q\;
\inst5|ALT_INV_Equal0~6clkctrl_outclk\ <= NOT \inst5|Equal0~6clkctrl_outclk\;
\inst1|ALT_INV_clk_spi~clkctrl_outclk\ <= NOT \inst1|clk_spi~clkctrl_outclk\;
\inst5|ALT_INV_b3~combout\ <= NOT \inst5|b3~combout\;
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

-- Location: LCCOMB_X39_Y31_N26
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

-- Location: FF_X39_Y31_N27
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

-- Location: LCCOMB_X39_Y31_N8
\inst1|clk_spi_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[1]~0_combout\ = \inst1|clk_spi_count\(1) $ (\inst1|clk_spi_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|clk_spi_count\(1),
	datad => \inst1|clk_spi_count\(0),
	combout => \inst1|clk_spi_count[1]~0_combout\);

-- Location: FF_X39_Y31_N9
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

-- Location: LCCOMB_X39_Y31_N22
\inst1|clk_spi_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[2]~1_combout\ = \inst1|clk_spi_count\(2) $ (((\inst1|clk_spi_count\(1) & \inst1|clk_spi_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|clk_spi_count\(1),
	datac => \inst1|clk_spi_count\(2),
	datad => \inst1|clk_spi_count\(0),
	combout => \inst1|clk_spi_count[2]~1_combout\);

-- Location: FF_X39_Y31_N23
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

-- Location: LCCOMB_X39_Y31_N10
\inst1|clk_spi_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi_count[3]~2_combout\ = \inst1|clk_spi_count\(3) $ (((\inst1|clk_spi_count\(2) & (\inst1|clk_spi_count\(1) & \inst1|clk_spi_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clk_spi_count\(2),
	datab => \inst1|clk_spi_count\(1),
	datac => \inst1|clk_spi_count\(3),
	datad => \inst1|clk_spi_count\(0),
	combout => \inst1|clk_spi_count[3]~2_combout\);

-- Location: FF_X39_Y31_N11
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

-- Location: LCCOMB_X39_Y31_N24
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|clk_spi_count\(0) & (!\inst1|clk_spi_count\(1) & (!\inst1|clk_spi_count\(2) & !\inst1|clk_spi_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|clk_spi_count\(0),
	datab => \inst1|clk_spi_count\(1),
	datac => \inst1|clk_spi_count\(2),
	datad => \inst1|clk_spi_count\(3),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y31_N12
\inst1|clk_spi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|clk_spi~0_combout\ = \inst1|clk_spi~q\ $ (\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|clk_spi~q\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|clk_spi~0_combout\);

-- Location: LCCOMB_X39_Y31_N0
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

-- Location: FF_X39_Y31_N1
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X40_Y30_N20
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

-- Location: LCCOMB_X39_Y30_N24
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

-- Location: FF_X39_Y30_N25
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

-- Location: FF_X40_Y30_N21
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

-- Location: LCCOMB_X40_Y30_N30
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

-- Location: FF_X40_Y30_N31
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

-- Location: LCCOMB_X40_Y30_N0
\inst1|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[2]~1_combout\ = \inst1|count\(2) $ (((\inst1|count\(1) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datac => \inst1|count\(2),
	datad => \inst1|count\(0),
	combout => \inst1|count[2]~1_combout\);

-- Location: FF_X40_Y30_N1
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

-- Location: LCCOMB_X40_Y30_N26
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

-- Location: FF_X40_Y30_N27
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

-- Location: LCCOMB_X40_Y30_N18
\inst1|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~1_combout\ = (\inst1|count\(1) & (\inst1|count\(2) & (\inst1|count\(3) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(3),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~1_combout\);

-- Location: LCCOMB_X40_Y30_N6
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

-- Location: FF_X40_Y30_N7
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

-- Location: LCCOMB_X40_Y30_N2
\inst1|channel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|channel[1]~2_combout\ = \inst1|channel\(1) $ (((\inst1|Equal4~1_combout\ & \inst1|channel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~1_combout\,
	datac => \inst1|channel\(1),
	datad => \inst1|channel\(0),
	combout => \inst1|channel[1]~2_combout\);

-- Location: FF_X40_Y30_N3
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

-- Location: LCCOMB_X40_Y30_N8
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

-- Location: FF_X40_Y30_N9
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

-- Location: LCCOMB_X40_Y30_N12
\inst1|DIN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DIN~1_combout\ = (\inst1|count\(0) & ((\inst1|channel\(1)))) # (!\inst1|count\(0) & (\inst1|channel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|channel\(2),
	datac => \inst1|count\(0),
	datad => \inst1|channel\(1),
	combout => \inst1|DIN~1_combout\);

-- Location: LCCOMB_X40_Y30_N22
\inst1|DIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DIN~0_combout\ = (!\inst1|count\(3) & (\inst1|count\(1) & !\inst1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datac => \inst1|count\(1),
	datad => \inst1|count\(2),
	combout => \inst1|DIN~0_combout\);

-- Location: LCCOMB_X40_Y30_N24
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\inst1|count\(3) & (!\inst1|count\(0) & (!\inst1|count\(1) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datab => \inst1|count\(0),
	datac => \inst1|count\(1),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X40_Y30_N16
\inst1|DIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DIN~2_combout\ = (\inst1|DIN~0_combout\ & (\inst1|DIN~1_combout\)) # (!\inst1|DIN~0_combout\ & (((\inst1|channel\(0) & \inst1|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DIN~1_combout\,
	datab => \inst1|channel\(0),
	datac => \inst1|DIN~0_combout\,
	datad => \inst1|Equal4~0_combout\,
	combout => \inst1|DIN~2_combout\);

-- Location: FF_X40_Y30_N17
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

-- Location: LCCOMB_X39_Y31_N28
\inst1|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SCLK~0_combout\ = (\inst1|clk_spi~q\) # (!\inst1|active2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|clk_spi~q\,
	datad => \inst1|active2~q\,
	combout => \inst1|SCLK~0_combout\);

-- Location: LCCOMB_X39_Y31_N14
\inst1|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~6_combout\ = (\inst1|count\(1) & (\inst1|count\(0) & (\inst1|count\(3) & !\inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~6_combout\);

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

-- Location: LCCOMB_X40_Y30_N28
\inst1|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~2_combout\ = (!\inst1|count\(3) & (!\inst1|count\(0) & (!\inst1|count\(1) & !\inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datab => \inst1|count\(0),
	datac => \inst1|count\(1),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~2_combout\);

-- Location: LCCOMB_X39_Y30_N2
\inst1|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~4_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~6_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~6_combout\ & ((\inst1|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~6_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(4),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~4_combout\);

-- Location: FF_X39_Y30_N3
\inst1|data[4]\ : dffeas
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
	q => \inst1|data\(4));

-- Location: LCCOMB_X37_Y30_N8
\inst1|Data0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[4]~feeder_combout\ = \inst1|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|data\(4),
	combout => \inst1|Data0[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y30_N10
\inst1|Data0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[11]~0_combout\ = (!\inst1|channel\(0) & (\inst1|channel\(1) & (!\inst1|channel\(2) & \inst1|active2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|channel\(0),
	datab => \inst1|channel\(1),
	datac => \inst1|channel\(2),
	datad => \inst1|active2~q\,
	combout => \inst1|Data0[11]~0_combout\);

-- Location: LCCOMB_X37_Y30_N6
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

-- Location: FF_X37_Y30_N9
\inst1|Data0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[4]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(4));

-- Location: LCCOMB_X39_Y31_N18
\inst1|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~7_combout\ = (!\inst1|count\(1) & (!\inst1|count\(0) & (\inst1|count\(3) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~7_combout\);

-- Location: LCCOMB_X39_Y30_N28
\inst1|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~5_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~7_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~7_combout\ & ((\inst1|data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~7_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(3),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~5_combout\);

-- Location: FF_X39_Y30_N29
\inst1|data[3]\ : dffeas
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
	q => \inst1|data\(3));

-- Location: LCCOMB_X37_Y30_N14
\inst1|Data0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[3]~feeder_combout\ = \inst1|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(3),
	combout => \inst1|Data0[3]~feeder_combout\);

-- Location: FF_X37_Y30_N15
\inst1|Data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[3]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(3));

-- Location: LCCOMB_X39_Y30_N14
\inst1|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~8_combout\ = (!\inst1|count\(1) & (\inst1|count\(2) & (\inst1|count\(3) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(3),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~8_combout\);

-- Location: LCCOMB_X39_Y30_N22
\inst1|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~6_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~8_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~8_combout\ & ((\inst1|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~8_combout\,
	datac => \inst1|data\(2),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~6_combout\);

-- Location: FF_X39_Y30_N23
\inst1|data[2]\ : dffeas
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
	q => \inst1|data\(2));

-- Location: LCCOMB_X37_Y30_N18
\inst1|Data0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[2]~feeder_combout\ = \inst1|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(2),
	combout => \inst1|Data0[2]~feeder_combout\);

-- Location: FF_X37_Y30_N19
\inst1|Data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[2]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(2));

-- Location: LCCOMB_X37_Y30_N10
\inst5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~1_combout\ = (!\inst1|Data0\(4) & (!\inst1|Data0\(3) & !\inst1|Data0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Data0\(4),
	datac => \inst1|Data0\(3),
	datad => \inst1|Data0\(2),
	combout => \inst5|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y30_N14
\inst1|Equal4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~11_combout\ = (!\inst1|count\(1) & (!\inst1|count\(2) & (\inst1|count\(3) & !\inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(3),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~11_combout\);

-- Location: LCCOMB_X39_Y30_N4
\inst1|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~9_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~11_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~11_combout\ & ((\inst1|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~11_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(7),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~9_combout\);

-- Location: FF_X39_Y30_N5
\inst1|data[7]\ : dffeas
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
	q => \inst1|data\(7));

-- Location: LCCOMB_X37_Y30_N30
\inst1|Data0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[7]~feeder_combout\ = \inst1|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(7),
	combout => \inst1|Data0[7]~feeder_combout\);

-- Location: FF_X37_Y30_N31
\inst1|Data0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[7]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(7));

-- Location: LCCOMB_X39_Y31_N20
\inst1|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~9_combout\ = (!\inst1|count\(1) & (\inst1|count\(0) & (\inst1|count\(3) & !\inst1|count\(2))))

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
	combout => \inst1|Equal4~9_combout\);

-- Location: LCCOMB_X39_Y30_N20
\inst1|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~7_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~9_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~9_combout\ & ((\inst1|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~9_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(6),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~7_combout\);

-- Location: FF_X39_Y30_N21
\inst1|data[6]\ : dffeas
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
	q => \inst1|data\(6));

-- Location: FF_X38_Y30_N19
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

-- Location: LCCOMB_X39_Y31_N6
\inst1|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~10_combout\ = (\inst1|count\(1) & (!\inst1|count\(0) & (\inst1|count\(3) & !\inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~10_combout\);

-- Location: LCCOMB_X39_Y30_N6
\inst1|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~8_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~10_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~10_combout\ & ((\inst1|data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~10_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(5),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~8_combout\);

-- Location: FF_X39_Y30_N7
\inst1|data[5]\ : dffeas
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
	q => \inst1|data\(5));

-- Location: LCCOMB_X38_Y30_N4
\inst1|Data0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Data0[5]~feeder_combout\ = \inst1|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|data\(5),
	combout => \inst1|Data0[5]~feeder_combout\);

-- Location: FF_X38_Y30_N5
\inst1|Data0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	d => \inst1|Data0[5]~feeder_combout\,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(5));

-- Location: LCCOMB_X38_Y30_N26
\inst5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~2_combout\ = (\inst1|Data0\(6) & \inst1|Data0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(6),
	datab => \inst1|Data0\(5),
	combout => \inst5|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y30_N16
\inst1|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~5_combout\ = (\inst1|count\(1) & (\inst1|count\(2) & (!\inst1|count\(3) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(3),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~5_combout\);

-- Location: LCCOMB_X39_Y30_N12
\inst1|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~3_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~5_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~5_combout\ & ((\inst1|data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~input_o\,
	datab => \inst1|Equal4~5_combout\,
	datac => \inst1|data\(8),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~3_combout\);

-- Location: FF_X39_Y30_N13
\inst1|data[8]\ : dffeas
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
	q => \inst1|data\(8));

-- Location: FF_X38_Y30_N11
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

-- Location: LCCOMB_X39_Y30_N18
\inst1|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~4_combout\ = (!\inst1|count\(1) & (\inst1|count\(2) & (!\inst1|count\(3) & \inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(3),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~4_combout\);

-- Location: LCCOMB_X39_Y30_N26
\inst1|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~2_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~4_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~4_combout\ & ((\inst1|data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~4_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(10),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~2_combout\);

-- Location: FF_X39_Y30_N27
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

-- Location: LCCOMB_X37_Y30_N4
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

-- Location: FF_X37_Y30_N5
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

-- Location: LCCOMB_X40_Y30_N4
\inst1|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~3_combout\ = (\inst1|count\(1) & (\inst1|count\(2) & (!\inst1|count\(3) & !\inst1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(3),
	datad => \inst1|count\(0),
	combout => \inst1|Equal4~3_combout\);

-- Location: LCCOMB_X39_Y30_N0
\inst1|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~1_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~3_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~3_combout\ & ((\inst1|data\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal4~3_combout\,
	datab => \DOUT~input_o\,
	datac => \inst1|data\(9),
	datad => \inst1|Equal4~2_combout\,
	combout => \inst1|data~1_combout\);

-- Location: FF_X39_Y30_N1
\inst1|data[9]\ : dffeas
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
	q => \inst1|data\(9));

-- Location: FF_X38_Y30_N29
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

-- Location: LCCOMB_X39_Y30_N30
\inst1|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~0_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~0_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~0_combout\ & ((\inst1|data\(11))))))

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
	combout => \inst1|data~0_combout\);

-- Location: FF_X39_Y30_N31
\inst1|data[11]\ : dffeas
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
	q => \inst1|data\(11));

-- Location: FF_X38_Y30_N27
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

-- Location: LCCOMB_X38_Y30_N24
\inst5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~0_combout\ = (!\inst1|Data0\(8) & (!\inst1|Data0\(10) & (!\inst1|Data0\(9) & !\inst1|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(8),
	datab => \inst1|Data0\(10),
	datac => \inst1|Data0\(9),
	datad => \inst1|Data0\(11),
	combout => \inst5|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~3_combout\ = (!\inst1|Data0\(7) & (\inst5|LessThan0~0_combout\ & ((\inst5|LessThan0~1_combout\) # (!\inst5|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~1_combout\,
	datab => \inst1|Data0\(7),
	datac => \inst5|LessThan0~2_combout\,
	datad => \inst5|LessThan0~0_combout\,
	combout => \inst5|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y1_N16
\inst5|counter[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[0]~60_combout\ = !\inst5|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|counter\(0),
	combout => \inst5|counter[0]~60_combout\);

-- Location: FF_X28_Y1_N27
\inst5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|counter[0]~60_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(0));

-- Location: LCCOMB_X28_Y2_N12
\inst5|counter[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[1]~20_combout\ = (\inst5|counter\(0) & (\inst5|counter\(1) $ (VCC))) # (!\inst5|counter\(0) & (\inst5|counter\(1) & VCC))
-- \inst5|counter[1]~21\ = CARRY((\inst5|counter\(0) & \inst5|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(0),
	datab => \inst5|counter\(1),
	datad => VCC,
	combout => \inst5|counter[1]~20_combout\,
	cout => \inst5|counter[1]~21\);

-- Location: LCCOMB_X28_Y2_N2
\inst5|counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[1]~feeder_combout\ = \inst5|counter[1]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|counter[1]~20_combout\,
	combout => \inst5|counter[1]~feeder_combout\);

-- Location: FF_X28_Y2_N3
\inst5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[1]~feeder_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(1));

-- Location: LCCOMB_X28_Y2_N14
\inst5|counter[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[2]~22_combout\ = (\inst5|counter\(2) & (!\inst5|counter[1]~21\)) # (!\inst5|counter\(2) & ((\inst5|counter[1]~21\) # (GND)))
-- \inst5|counter[2]~23\ = CARRY((!\inst5|counter[1]~21\) # (!\inst5|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(2),
	datad => VCC,
	cin => \inst5|counter[1]~21\,
	combout => \inst5|counter[2]~22_combout\,
	cout => \inst5|counter[2]~23\);

-- Location: FF_X28_Y2_N15
\inst5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[2]~22_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(2));

-- Location: LCCOMB_X28_Y2_N16
\inst5|counter[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[3]~24_combout\ = (\inst5|counter\(3) & (\inst5|counter[2]~23\ $ (GND))) # (!\inst5|counter\(3) & (!\inst5|counter[2]~23\ & VCC))
-- \inst5|counter[3]~25\ = CARRY((\inst5|counter\(3) & !\inst5|counter[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(3),
	datad => VCC,
	cin => \inst5|counter[2]~23\,
	combout => \inst5|counter[3]~24_combout\,
	cout => \inst5|counter[3]~25\);

-- Location: FF_X28_Y2_N17
\inst5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[3]~24_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(3));

-- Location: LCCOMB_X28_Y2_N18
\inst5|counter[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[4]~26_combout\ = (\inst5|counter\(4) & (!\inst5|counter[3]~25\)) # (!\inst5|counter\(4) & ((\inst5|counter[3]~25\) # (GND)))
-- \inst5|counter[4]~27\ = CARRY((!\inst5|counter[3]~25\) # (!\inst5|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(4),
	datad => VCC,
	cin => \inst5|counter[3]~25\,
	combout => \inst5|counter[4]~26_combout\,
	cout => \inst5|counter[4]~27\);

-- Location: FF_X28_Y2_N19
\inst5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[4]~26_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(4));

-- Location: LCCOMB_X28_Y2_N20
\inst5|counter[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[5]~28_combout\ = (\inst5|counter\(5) & (\inst5|counter[4]~27\ $ (GND))) # (!\inst5|counter\(5) & (!\inst5|counter[4]~27\ & VCC))
-- \inst5|counter[5]~29\ = CARRY((\inst5|counter\(5) & !\inst5|counter[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(5),
	datad => VCC,
	cin => \inst5|counter[4]~27\,
	combout => \inst5|counter[5]~28_combout\,
	cout => \inst5|counter[5]~29\);

-- Location: FF_X28_Y2_N21
\inst5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[5]~28_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(5));

-- Location: LCCOMB_X28_Y2_N22
\inst5|counter[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[6]~30_combout\ = (\inst5|counter\(6) & (!\inst5|counter[5]~29\)) # (!\inst5|counter\(6) & ((\inst5|counter[5]~29\) # (GND)))
-- \inst5|counter[6]~31\ = CARRY((!\inst5|counter[5]~29\) # (!\inst5|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(6),
	datad => VCC,
	cin => \inst5|counter[5]~29\,
	combout => \inst5|counter[6]~30_combout\,
	cout => \inst5|counter[6]~31\);

-- Location: FF_X28_Y2_N23
\inst5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[6]~30_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(6));

-- Location: LCCOMB_X28_Y2_N24
\inst5|counter[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[7]~32_combout\ = (\inst5|counter\(7) & (\inst5|counter[6]~31\ $ (GND))) # (!\inst5|counter\(7) & (!\inst5|counter[6]~31\ & VCC))
-- \inst5|counter[7]~33\ = CARRY((\inst5|counter\(7) & !\inst5|counter[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(7),
	datad => VCC,
	cin => \inst5|counter[6]~31\,
	combout => \inst5|counter[7]~32_combout\,
	cout => \inst5|counter[7]~33\);

-- Location: FF_X28_Y2_N25
\inst5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[7]~32_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(7));

-- Location: LCCOMB_X28_Y2_N26
\inst5|counter[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~34_combout\ = (\inst5|counter\(8) & (!\inst5|counter[7]~33\)) # (!\inst5|counter\(8) & ((\inst5|counter[7]~33\) # (GND)))
-- \inst5|counter[8]~35\ = CARRY((!\inst5|counter[7]~33\) # (!\inst5|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(8),
	datad => VCC,
	cin => \inst5|counter[7]~33\,
	combout => \inst5|counter[8]~34_combout\,
	cout => \inst5|counter[8]~35\);

-- Location: FF_X28_Y2_N27
\inst5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[8]~34_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(8));

-- Location: LCCOMB_X28_Y2_N28
\inst5|counter[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[9]~36_combout\ = (\inst5|counter\(9) & (\inst5|counter[8]~35\ $ (GND))) # (!\inst5|counter\(9) & (!\inst5|counter[8]~35\ & VCC))
-- \inst5|counter[9]~37\ = CARRY((\inst5|counter\(9) & !\inst5|counter[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(9),
	datad => VCC,
	cin => \inst5|counter[8]~35\,
	combout => \inst5|counter[9]~36_combout\,
	cout => \inst5|counter[9]~37\);

-- Location: FF_X28_Y2_N29
\inst5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[9]~36_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(9));

-- Location: LCCOMB_X28_Y2_N30
\inst5|counter[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[10]~38_combout\ = (\inst5|counter\(10) & (!\inst5|counter[9]~37\)) # (!\inst5|counter\(10) & ((\inst5|counter[9]~37\) # (GND)))
-- \inst5|counter[10]~39\ = CARRY((!\inst5|counter[9]~37\) # (!\inst5|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(10),
	datad => VCC,
	cin => \inst5|counter[9]~37\,
	combout => \inst5|counter[10]~38_combout\,
	cout => \inst5|counter[10]~39\);

-- Location: FF_X28_Y2_N31
\inst5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[10]~38_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(10));

-- Location: LCCOMB_X28_Y1_N0
\inst5|counter[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[11]~40_combout\ = (\inst5|counter\(11) & (\inst5|counter[10]~39\ $ (GND))) # (!\inst5|counter\(11) & (!\inst5|counter[10]~39\ & VCC))
-- \inst5|counter[11]~41\ = CARRY((\inst5|counter\(11) & !\inst5|counter[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(11),
	datad => VCC,
	cin => \inst5|counter[10]~39\,
	combout => \inst5|counter[11]~40_combout\,
	cout => \inst5|counter[11]~41\);

-- Location: FF_X28_Y1_N1
\inst5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[11]~40_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(11));

-- Location: LCCOMB_X28_Y1_N2
\inst5|counter[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[12]~42_combout\ = (\inst5|counter\(12) & (!\inst5|counter[11]~41\)) # (!\inst5|counter\(12) & ((\inst5|counter[11]~41\) # (GND)))
-- \inst5|counter[12]~43\ = CARRY((!\inst5|counter[11]~41\) # (!\inst5|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(12),
	datad => VCC,
	cin => \inst5|counter[11]~41\,
	combout => \inst5|counter[12]~42_combout\,
	cout => \inst5|counter[12]~43\);

-- Location: FF_X28_Y1_N3
\inst5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[12]~42_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(12));

-- Location: LCCOMB_X28_Y1_N4
\inst5|counter[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[13]~44_combout\ = (\inst5|counter\(13) & (\inst5|counter[12]~43\ $ (GND))) # (!\inst5|counter\(13) & (!\inst5|counter[12]~43\ & VCC))
-- \inst5|counter[13]~45\ = CARRY((\inst5|counter\(13) & !\inst5|counter[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(13),
	datad => VCC,
	cin => \inst5|counter[12]~43\,
	combout => \inst5|counter[13]~44_combout\,
	cout => \inst5|counter[13]~45\);

-- Location: FF_X28_Y1_N5
\inst5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[13]~44_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(13));

-- Location: LCCOMB_X28_Y1_N6
\inst5|counter[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[14]~46_combout\ = (\inst5|counter\(14) & (!\inst5|counter[13]~45\)) # (!\inst5|counter\(14) & ((\inst5|counter[13]~45\) # (GND)))
-- \inst5|counter[14]~47\ = CARRY((!\inst5|counter[13]~45\) # (!\inst5|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(14),
	datad => VCC,
	cin => \inst5|counter[13]~45\,
	combout => \inst5|counter[14]~46_combout\,
	cout => \inst5|counter[14]~47\);

-- Location: FF_X28_Y1_N7
\inst5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[14]~46_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(14));

-- Location: LCCOMB_X28_Y1_N8
\inst5|counter[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[15]~48_combout\ = (\inst5|counter\(15) & (\inst5|counter[14]~47\ $ (GND))) # (!\inst5|counter\(15) & (!\inst5|counter[14]~47\ & VCC))
-- \inst5|counter[15]~49\ = CARRY((\inst5|counter\(15) & !\inst5|counter[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(15),
	datad => VCC,
	cin => \inst5|counter[14]~47\,
	combout => \inst5|counter[15]~48_combout\,
	cout => \inst5|counter[15]~49\);

-- Location: FF_X28_Y1_N9
\inst5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[15]~48_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(15));

-- Location: LCCOMB_X28_Y1_N10
\inst5|counter[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[16]~50_combout\ = (\inst5|counter\(16) & (!\inst5|counter[15]~49\)) # (!\inst5|counter\(16) & ((\inst5|counter[15]~49\) # (GND)))
-- \inst5|counter[16]~51\ = CARRY((!\inst5|counter[15]~49\) # (!\inst5|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(16),
	datad => VCC,
	cin => \inst5|counter[15]~49\,
	combout => \inst5|counter[16]~50_combout\,
	cout => \inst5|counter[16]~51\);

-- Location: FF_X28_Y1_N11
\inst5|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[16]~50_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(16));

-- Location: LCCOMB_X28_Y1_N12
\inst5|counter[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[17]~52_combout\ = (\inst5|counter\(17) & (\inst5|counter[16]~51\ $ (GND))) # (!\inst5|counter\(17) & (!\inst5|counter[16]~51\ & VCC))
-- \inst5|counter[17]~53\ = CARRY((\inst5|counter\(17) & !\inst5|counter[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(17),
	datad => VCC,
	cin => \inst5|counter[16]~51\,
	combout => \inst5|counter[17]~52_combout\,
	cout => \inst5|counter[17]~53\);

-- Location: FF_X28_Y1_N13
\inst5|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[17]~52_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(17));

-- Location: LCCOMB_X28_Y1_N14
\inst5|counter[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[18]~54_combout\ = (\inst5|counter\(18) & (!\inst5|counter[17]~53\)) # (!\inst5|counter\(18) & ((\inst5|counter[17]~53\) # (GND)))
-- \inst5|counter[18]~55\ = CARRY((!\inst5|counter[17]~53\) # (!\inst5|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(18),
	datad => VCC,
	cin => \inst5|counter[17]~53\,
	combout => \inst5|counter[18]~54_combout\,
	cout => \inst5|counter[18]~55\);

-- Location: FF_X28_Y1_N15
\inst5|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[18]~54_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(18));

-- Location: LCCOMB_X28_Y1_N16
\inst5|counter[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[19]~56_combout\ = (\inst5|counter\(19) & (\inst5|counter[18]~55\ $ (GND))) # (!\inst5|counter\(19) & (!\inst5|counter[18]~55\ & VCC))
-- \inst5|counter[19]~57\ = CARRY((\inst5|counter\(19) & !\inst5|counter[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(19),
	datad => VCC,
	cin => \inst5|counter[18]~55\,
	combout => \inst5|counter[19]~56_combout\,
	cout => \inst5|counter[19]~57\);

-- Location: FF_X28_Y1_N17
\inst5|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[19]~56_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(19));

-- Location: LCCOMB_X28_Y1_N18
\inst5|counter[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[20]~58_combout\ = \inst5|counter\(20) $ (\inst5|counter[19]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	cin => \inst5|counter[19]~57\,
	combout => \inst5|counter[20]~58_combout\);

-- Location: FF_X28_Y1_N19
\inst5|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~input_o\,
	d => \inst5|counter[20]~58_combout\,
	clrn => \inst5|ALT_INV_Equal0~6clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(20));

-- Location: LCCOMB_X28_Y1_N30
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (\inst5|counter\(18) & (!\inst5|counter\(19) & (\inst5|counter\(17) & \inst5|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(18),
	datab => \inst5|counter\(19),
	datac => \inst5|counter\(17),
	datad => \inst5|counter\(16),
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y1_N22
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|counter\(14) & (\inst5|counter\(13) & (\inst5|counter\(15) & !\inst5|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datab => \inst5|counter\(13),
	datac => \inst5|counter\(15),
	datad => \inst5|counter\(12),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y2_N8
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|counter\(6) & (\inst5|counter\(5) & (!\inst5|counter\(7) & !\inst5|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(6),
	datab => \inst5|counter\(5),
	datac => \inst5|counter\(7),
	datad => \inst5|counter\(4),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y1_N26
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|counter\(2) & (!\inst5|counter\(1) & (!\inst5|counter\(0) & !\inst5|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datab => \inst5|counter\(1),
	datac => \inst5|counter\(0),
	datad => \inst5|counter\(3),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|counter\(10) & (!\inst5|counter\(11) & (!\inst5|counter\(9) & \inst5|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(10),
	datab => \inst5|counter\(11),
	datac => \inst5|counter\(9),
	datad => \inst5|counter\(8),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y1_N28
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~3_combout\ & (\inst5|Equal0~1_combout\ & (\inst5|Equal0~0_combout\ & \inst5|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~3_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal0~0_combout\,
	datad => \inst5|Equal0~2_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y1_N20
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|counter\(20) & (\inst5|Equal0~5_combout\ & \inst5|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~6_combout\);

-- Location: CLKCTRL_G19
\inst5|Equal0~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|Equal0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|Equal0~6clkctrl_outclk\);

-- Location: LCCOMB_X37_Y30_N22
\inst5|b1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|b1~combout\ = (GLOBAL(\inst5|Equal0~6clkctrl_outclk\) & ((\inst5|LessThan0~3_combout\))) # (!GLOBAL(\inst5|Equal0~6clkctrl_outclk\) & (\inst5|b1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|b1~combout\,
	datac => \inst5|LessThan0~3_combout\,
	datad => \inst5|Equal0~6clkctrl_outclk\,
	combout => \inst5|b1~combout\);

-- Location: CLKCTRL_G10
\inst5|b1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|b1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|b1~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y30_N20
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

-- Location: LCCOMB_X38_Y30_N18
\inst5|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LessThan0~4_combout\ = (!\inst1|Data0\(9) & !\inst1|Data0\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(9),
	datad => \inst1|Data0\(11),
	combout => \inst5|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y30_N30
\inst5|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~3_combout\ = (\inst5|LessThan0~4_combout\ & (((!\inst1|Data0\(6)) # (!\inst1|Data0\(7))) # (!\inst1|Data0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(8),
	datab => \inst1|Data0\(7),
	datac => \inst1|Data0\(6),
	datad => \inst5|LessThan0~4_combout\,
	combout => \inst5|process_0~3_combout\);

-- Location: LCCOMB_X38_Y30_N28
\inst5|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~4_combout\ = (\inst1|Data0\(10) & \inst1|Data0\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Data0\(10),
	datad => \inst1|Data0\(11),
	combout => \inst5|process_0~4_combout\);

-- Location: LCCOMB_X38_Y30_N22
\inst5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~0_combout\ = (\inst1|Data0\(9)) # (\inst1|Data0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(9),
	datad => \inst1|Data0\(8),
	combout => \inst5|process_0~0_combout\);

-- Location: LCCOMB_X37_Y30_N12
\inst5|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~1_combout\ = (\inst1|Data0\(4) & (\inst1|Data0\(3) & (\inst1|Data0\(7) & \inst1|Data0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(4),
	datab => \inst1|Data0\(3),
	datac => \inst1|Data0\(7),
	datad => \inst1|Data0\(2),
	combout => \inst5|process_0~1_combout\);

-- Location: LCCOMB_X38_Y30_N8
\inst5|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~2_combout\ = (!\inst1|Data0\(10) & ((\inst5|process_0~0_combout\) # ((\inst5|LessThan0~2_combout\ & \inst5|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan0~2_combout\,
	datab => \inst1|Data0\(10),
	datac => \inst5|process_0~0_combout\,
	datad => \inst5|process_0~1_combout\,
	combout => \inst5|process_0~2_combout\);

-- Location: LCCOMB_X38_Y30_N10
\inst5|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~6_combout\ = (\inst1|Data0\(9)) # ((\inst1|Data0\(5)) # (\inst1|Data0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(9),
	datab => \inst1|Data0\(5),
	datad => \inst1|Data0\(11),
	combout => \inst5|process_0~6_combout\);

-- Location: LCCOMB_X39_Y30_N8
\inst1|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~11_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~1_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~1_combout\ & ((\inst1|data\(0))))))

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
	combout => \inst1|data~11_combout\);

-- Location: FF_X39_Y30_N9
\inst1|data[0]\ : dffeas
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
	q => \inst1|data\(0));

-- Location: FF_X38_Y30_N23
\inst1|Data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(0),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(0));

-- Location: LCCOMB_X39_Y31_N30
\inst1|Equal4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~12_combout\ = (\inst1|count\(1) & (!\inst1|count\(0) & (\inst1|count\(3) & \inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(0),
	datac => \inst1|count\(3),
	datad => \inst1|count\(2),
	combout => \inst1|Equal4~12_combout\);

-- Location: LCCOMB_X39_Y30_N10
\inst1|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data~10_combout\ = (!\inst1|Equal4~2_combout\ & ((\inst1|Equal4~12_combout\ & (\DOUT~input_o\)) # (!\inst1|Equal4~12_combout\ & ((\inst1|data\(1))))))

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
	combout => \inst1|data~10_combout\);

-- Location: FF_X39_Y30_N11
\inst1|data[1]\ : dffeas
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
	q => \inst1|data\(1));

-- Location: FF_X38_Y30_N1
\inst1|Data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|clk_spi~clkctrl_outclk\,
	asdata => \inst1|data\(1),
	sload => VCC,
	ena => \inst1|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Data0\(1));

-- Location: LCCOMB_X38_Y30_N0
\inst5|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~5_combout\ = (\inst1|Data0\(3) & ((\inst1|Data0\(0)) # (\inst1|Data0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Data0\(0),
	datac => \inst1|Data0\(1),
	datad => \inst1|Data0\(3),
	combout => \inst5|process_0~5_combout\);

-- Location: LCCOMB_X38_Y30_N6
\inst5|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~7_combout\ = (!\inst5|process_0~6_combout\ & (((!\inst5|process_0~5_combout\) # (!\inst1|Data0\(2))) # (!\inst1|Data0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Data0\(4),
	datab => \inst1|Data0\(2),
	datac => \inst5|process_0~6_combout\,
	datad => \inst5|process_0~5_combout\,
	combout => \inst5|process_0~7_combout\);

-- Location: LCCOMB_X38_Y30_N16
\inst5|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~8_combout\ = (\inst5|process_0~3_combout\) # ((\inst5|process_0~4_combout\) # ((\inst5|process_0~2_combout\) # (\inst5|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~3_combout\,
	datab => \inst5|process_0~4_combout\,
	datac => \inst5|process_0~2_combout\,
	datad => \inst5|process_0~7_combout\,
	combout => \inst5|process_0~8_combout\);

-- Location: LCCOMB_X38_Y30_N14
\inst5|b3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|b3~combout\ = (GLOBAL(\inst5|Equal0~6clkctrl_outclk\) & ((!\inst5|process_0~8_combout\))) # (!GLOBAL(\inst5|Equal0~6clkctrl_outclk\) & (\inst5|b3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|b3~combout\,
	datac => \inst5|Equal0~6clkctrl_outclk\,
	datad => \inst5|process_0~8_combout\,
	combout => \inst5|b3~combout\);

-- Location: FF_X38_Y30_N21
\inst|zahl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|b1~clkctrl_outclk\,
	d => \inst|zahl[0]~2_combout\,
	clrn => \inst5|ALT_INV_b3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zahl\(0));

-- Location: LCCOMB_X38_Y30_N2
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

-- Location: FF_X38_Y30_N3
\inst|zahl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|b1~clkctrl_outclk\,
	d => \inst|zahl[1]~1_combout\,
	clrn => \inst5|ALT_INV_b3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zahl\(1));

-- Location: LCCOMB_X38_Y30_N12
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

-- Location: FF_X38_Y30_N13
\inst|zahl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|b1~clkctrl_outclk\,
	d => \inst|zahl[2]~0_combout\,
	clrn => \inst5|ALT_INV_b3~combout\,
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


