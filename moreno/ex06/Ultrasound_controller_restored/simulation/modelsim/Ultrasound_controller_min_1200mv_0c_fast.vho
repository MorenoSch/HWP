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

-- DATE "06/19/2018 18:59:18"

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

ENTITY 	motor_test IS
    PORT (
	motor_signal1 : OUT std_logic;
	clk_50 : IN std_logic;
	direction : IN std_logic;
	speed : IN std_logic_vector(9 DOWNTO 0);
	motor_signal2 : OUT std_logic
	);
END motor_test;

-- Design Ports Information
-- motor_signal1	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_signal2	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF motor_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_motor_signal1 : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_direction : std_logic;
SIGNAL ww_speed : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_motor_signal2 : std_logic;
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_signal1~output_o\ : std_logic;
SIGNAL \motor_signal2~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|counter[0]~27_combout\ : std_logic;
SIGNAL \inst1|counter[1]~9_combout\ : std_logic;
SIGNAL \inst1|counter[1]~10\ : std_logic;
SIGNAL \inst1|counter[2]~11_combout\ : std_logic;
SIGNAL \inst1|counter[2]~12\ : std_logic;
SIGNAL \inst1|counter[3]~13_combout\ : std_logic;
SIGNAL \inst1|counter[3]~14\ : std_logic;
SIGNAL \inst1|counter[4]~15_combout\ : std_logic;
SIGNAL \inst1|counter[4]~16\ : std_logic;
SIGNAL \inst1|counter[5]~17_combout\ : std_logic;
SIGNAL \inst1|counter[5]~18\ : std_logic;
SIGNAL \inst1|counter[6]~19_combout\ : std_logic;
SIGNAL \inst1|counter[6]~20\ : std_logic;
SIGNAL \inst1|counter[7]~21_combout\ : std_logic;
SIGNAL \inst1|counter[7]~22\ : std_logic;
SIGNAL \inst1|counter[8]~23_combout\ : std_logic;
SIGNAL \inst1|counter[8]~24\ : std_logic;
SIGNAL \inst1|counter[9]~25_combout\ : std_logic;
SIGNAL \speed[9]~input_o\ : std_logic;
SIGNAL \speed[8]~input_o\ : std_logic;
SIGNAL \speed[7]~input_o\ : std_logic;
SIGNAL \speed[6]~input_o\ : std_logic;
SIGNAL \speed[5]~input_o\ : std_logic;
SIGNAL \speed[4]~input_o\ : std_logic;
SIGNAL \speed[3]~input_o\ : std_logic;
SIGNAL \speed[2]~input_o\ : std_logic;
SIGNAL \speed[1]~input_o\ : std_logic;
SIGNAL \speed[0]~input_o\ : std_logic;
SIGNAL \inst1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|LessThan0~13_cout\ : std_logic;
SIGNAL \inst1|LessThan0~15_cout\ : std_logic;
SIGNAL \inst1|LessThan0~17_cout\ : std_logic;
SIGNAL \inst1|LessThan0~18_combout\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \inst1|motor_signal1~0_combout\ : std_logic;
SIGNAL \inst1|motor_signal1~q\ : std_logic;
SIGNAL \inst1|motor_signal2~0_combout\ : std_logic;
SIGNAL \inst1|motor_signal2~q\ : std_logic;
SIGNAL \inst1|counter\ : std_logic_vector(9 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

motor_signal1 <= ww_motor_signal1;
ww_clk_50 <= clk_50;
ww_direction <= direction;
ww_speed <= speed;
motor_signal2 <= ww_motor_signal2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y0_N2
\motor_signal1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|motor_signal1~q\,
	devoe => ww_devoe,
	o => \motor_signal1~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\motor_signal2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|motor_signal2~q\,
	devoe => ww_devoe,
	o => \motor_signal2~output_o\);

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

-- Location: LCCOMB_X40_Y3_N24
\inst1|counter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[0]~27_combout\ = !\inst1|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|counter\(0),
	combout => \inst1|counter[0]~27_combout\);

-- Location: FF_X40_Y3_N25
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: LCCOMB_X39_Y3_N0
\inst1|counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[1]~9_combout\ = (\inst1|counter\(1) & (\inst1|counter\(0) $ (VCC))) # (!\inst1|counter\(1) & (\inst1|counter\(0) & VCC))
-- \inst1|counter[1]~10\ = CARRY((\inst1|counter\(1) & \inst1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datab => \inst1|counter\(0),
	datad => VCC,
	combout => \inst1|counter[1]~9_combout\,
	cout => \inst1|counter[1]~10\);

-- Location: FF_X39_Y3_N1
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LCCOMB_X39_Y3_N2
\inst1|counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[2]~11_combout\ = (\inst1|counter\(2) & (!\inst1|counter[1]~10\)) # (!\inst1|counter\(2) & ((\inst1|counter[1]~10\) # (GND)))
-- \inst1|counter[2]~12\ = CARRY((!\inst1|counter[1]~10\) # (!\inst1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(2),
	datad => VCC,
	cin => \inst1|counter[1]~10\,
	combout => \inst1|counter[2]~11_combout\,
	cout => \inst1|counter[2]~12\);

-- Location: FF_X39_Y3_N3
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LCCOMB_X39_Y3_N4
\inst1|counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[3]~13_combout\ = (\inst1|counter\(3) & (\inst1|counter[2]~12\ $ (GND))) # (!\inst1|counter\(3) & (!\inst1|counter[2]~12\ & VCC))
-- \inst1|counter[3]~14\ = CARRY((\inst1|counter\(3) & !\inst1|counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(3),
	datad => VCC,
	cin => \inst1|counter[2]~12\,
	combout => \inst1|counter[3]~13_combout\,
	cout => \inst1|counter[3]~14\);

-- Location: FF_X39_Y3_N5
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: LCCOMB_X39_Y3_N6
\inst1|counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[4]~15_combout\ = (\inst1|counter\(4) & (!\inst1|counter[3]~14\)) # (!\inst1|counter\(4) & ((\inst1|counter[3]~14\) # (GND)))
-- \inst1|counter[4]~16\ = CARRY((!\inst1|counter[3]~14\) # (!\inst1|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(4),
	datad => VCC,
	cin => \inst1|counter[3]~14\,
	combout => \inst1|counter[4]~15_combout\,
	cout => \inst1|counter[4]~16\);

-- Location: FF_X39_Y3_N7
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LCCOMB_X39_Y3_N8
\inst1|counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[5]~17_combout\ = (\inst1|counter\(5) & (\inst1|counter[4]~16\ $ (GND))) # (!\inst1|counter\(5) & (!\inst1|counter[4]~16\ & VCC))
-- \inst1|counter[5]~18\ = CARRY((\inst1|counter\(5) & !\inst1|counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(5),
	datad => VCC,
	cin => \inst1|counter[4]~16\,
	combout => \inst1|counter[5]~17_combout\,
	cout => \inst1|counter[5]~18\);

-- Location: FF_X39_Y3_N9
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: LCCOMB_X39_Y3_N10
\inst1|counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[6]~19_combout\ = (\inst1|counter\(6) & (!\inst1|counter[5]~18\)) # (!\inst1|counter\(6) & ((\inst1|counter[5]~18\) # (GND)))
-- \inst1|counter[6]~20\ = CARRY((!\inst1|counter[5]~18\) # (!\inst1|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(6),
	datad => VCC,
	cin => \inst1|counter[5]~18\,
	combout => \inst1|counter[6]~19_combout\,
	cout => \inst1|counter[6]~20\);

-- Location: FF_X39_Y3_N11
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LCCOMB_X39_Y3_N12
\inst1|counter[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[7]~21_combout\ = (\inst1|counter\(7) & (\inst1|counter[6]~20\ $ (GND))) # (!\inst1|counter\(7) & (!\inst1|counter[6]~20\ & VCC))
-- \inst1|counter[7]~22\ = CARRY((\inst1|counter\(7) & !\inst1|counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(7),
	datad => VCC,
	cin => \inst1|counter[6]~20\,
	combout => \inst1|counter[7]~21_combout\,
	cout => \inst1|counter[7]~22\);

-- Location: FF_X39_Y3_N13
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: LCCOMB_X39_Y3_N14
\inst1|counter[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[8]~23_combout\ = (\inst1|counter\(8) & (!\inst1|counter[7]~22\)) # (!\inst1|counter\(8) & ((\inst1|counter[7]~22\) # (GND)))
-- \inst1|counter[8]~24\ = CARRY((!\inst1|counter[7]~22\) # (!\inst1|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(8),
	datad => VCC,
	cin => \inst1|counter[7]~22\,
	combout => \inst1|counter[8]~23_combout\,
	cout => \inst1|counter[8]~24\);

-- Location: FF_X39_Y3_N15
\inst1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(8));

-- Location: LCCOMB_X39_Y3_N16
\inst1|counter[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[9]~25_combout\ = \inst1|counter[8]~24\ $ (!\inst1|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|counter\(9),
	cin => \inst1|counter[8]~24\,
	combout => \inst1|counter[9]~25_combout\);

-- Location: FF_X39_Y3_N17
\inst1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(9));

-- Location: IOIBUF_X53_Y17_N1
\speed[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(9),
	o => \speed[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\speed[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(8),
	o => \speed[8]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\speed[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(7),
	o => \speed[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\speed[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(6),
	o => \speed[6]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\speed[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(5),
	o => \speed[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\speed[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(4),
	o => \speed[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\speed[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(3),
	o => \speed[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\speed[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(2),
	o => \speed[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\speed[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(1),
	o => \speed[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\speed[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(0),
	o => \speed[0]~input_o\);

-- Location: LCCOMB_X40_Y3_N4
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_cout\ = CARRY((\speed[0]~input_o\ & !\inst1|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[0]~input_o\,
	datab => \inst1|counter\(0),
	datad => VCC,
	cout => \inst1|LessThan0~1_cout\);

-- Location: LCCOMB_X40_Y3_N6
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_cout\ = CARRY((\inst1|counter\(1) & ((!\inst1|LessThan0~1_cout\) # (!\speed[1]~input_o\))) # (!\inst1|counter\(1) & (!\speed[1]~input_o\ & !\inst1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datab => \speed[1]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~1_cout\,
	cout => \inst1|LessThan0~3_cout\);

-- Location: LCCOMB_X40_Y3_N8
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_cout\ = CARRY((\inst1|counter\(2) & (\speed[2]~input_o\ & !\inst1|LessThan0~3_cout\)) # (!\inst1|counter\(2) & ((\speed[2]~input_o\) # (!\inst1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(2),
	datab => \speed[2]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~3_cout\,
	cout => \inst1|LessThan0~5_cout\);

-- Location: LCCOMB_X40_Y3_N10
\inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_cout\ = CARRY((\speed[3]~input_o\ & (\inst1|counter\(3) & !\inst1|LessThan0~5_cout\)) # (!\speed[3]~input_o\ & ((\inst1|counter\(3)) # (!\inst1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[3]~input_o\,
	datab => \inst1|counter\(3),
	datad => VCC,
	cin => \inst1|LessThan0~5_cout\,
	cout => \inst1|LessThan0~7_cout\);

-- Location: LCCOMB_X40_Y3_N12
\inst1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_cout\ = CARRY((\speed[4]~input_o\ & ((!\inst1|LessThan0~7_cout\) # (!\inst1|counter\(4)))) # (!\speed[4]~input_o\ & (!\inst1|counter\(4) & !\inst1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[4]~input_o\,
	datab => \inst1|counter\(4),
	datad => VCC,
	cin => \inst1|LessThan0~7_cout\,
	cout => \inst1|LessThan0~9_cout\);

-- Location: LCCOMB_X40_Y3_N14
\inst1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~11_cout\ = CARRY((\inst1|counter\(5) & ((!\inst1|LessThan0~9_cout\) # (!\speed[5]~input_o\))) # (!\inst1|counter\(5) & (!\speed[5]~input_o\ & !\inst1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(5),
	datab => \speed[5]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~9_cout\,
	cout => \inst1|LessThan0~11_cout\);

-- Location: LCCOMB_X40_Y3_N16
\inst1|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~13_cout\ = CARRY((\inst1|counter\(6) & (\speed[6]~input_o\ & !\inst1|LessThan0~11_cout\)) # (!\inst1|counter\(6) & ((\speed[6]~input_o\) # (!\inst1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(6),
	datab => \speed[6]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~11_cout\,
	cout => \inst1|LessThan0~13_cout\);

-- Location: LCCOMB_X40_Y3_N18
\inst1|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~15_cout\ = CARRY((\inst1|counter\(7) & ((!\inst1|LessThan0~13_cout\) # (!\speed[7]~input_o\))) # (!\inst1|counter\(7) & (!\speed[7]~input_o\ & !\inst1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(7),
	datab => \speed[7]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~13_cout\,
	cout => \inst1|LessThan0~15_cout\);

-- Location: LCCOMB_X40_Y3_N20
\inst1|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~17_cout\ = CARRY((\inst1|counter\(8) & (\speed[8]~input_o\ & !\inst1|LessThan0~15_cout\)) # (!\inst1|counter\(8) & ((\speed[8]~input_o\) # (!\inst1|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(8),
	datab => \speed[8]~input_o\,
	datad => VCC,
	cin => \inst1|LessThan0~15_cout\,
	cout => \inst1|LessThan0~17_cout\);

-- Location: LCCOMB_X40_Y3_N22
\inst1|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~18_combout\ = (\inst1|counter\(9) & (\inst1|LessThan0~17_cout\ & \speed[9]~input_o\)) # (!\inst1|counter\(9) & ((\inst1|LessThan0~17_cout\) # (\speed[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(9),
	datad => \speed[9]~input_o\,
	cin => \inst1|LessThan0~17_cout\,
	combout => \inst1|LessThan0~18_combout\);

-- Location: IOIBUF_X53_Y17_N8
\direction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: LCCOMB_X40_Y3_N28
\inst1|motor_signal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|motor_signal1~0_combout\ = (\inst1|LessThan0~18_combout\ & \direction~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan0~18_combout\,
	datad => \direction~input_o\,
	combout => \inst1|motor_signal1~0_combout\);

-- Location: FF_X40_Y3_N29
\inst1|motor_signal1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|motor_signal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|motor_signal1~q\);

-- Location: LCCOMB_X40_Y3_N26
\inst1|motor_signal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|motor_signal2~0_combout\ = (\inst1|LessThan0~18_combout\ & !\direction~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan0~18_combout\,
	datad => \direction~input_o\,
	combout => \inst1|motor_signal2~0_combout\);

-- Location: FF_X40_Y3_N27
\inst1|motor_signal2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|motor_signal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|motor_signal2~q\);

ww_motor_signal1 <= \motor_signal1~output_o\;

ww_motor_signal2 <= \motor_signal2~output_o\;
END structure;


