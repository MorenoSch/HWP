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

-- DATE "05/23/2018 01:24:46"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	conditionalSum IS
    PORT (
	sum0 : OUT std_logic;
	carry_in : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	Sum1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	carry_out : OUT std_logic
	);
END conditionalSum;

-- Design Ports Information
-- sum0	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum1	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_out	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_in	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conditionalSum IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sum0 : std_logic;
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_Sum1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL \sum0~output_o\ : std_logic;
SIGNAL \Sum1~output_o\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \carry_in~input_o\ : std_logic;
SIGNAL \inst|inst2|sum_bit~0_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst4|result0~0_combout\ : std_logic;
SIGNAL \inst4|result1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sum0 <= ww_sum0;
ww_carry_in <= carry_in;
ww_A0 <= A0;
ww_B0 <= B0;
Sum1 <= ww_Sum1;
ww_A1 <= A1;
ww_B1 <= B1;
carry_out <= ww_carry_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\sum0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|sum_bit~0_combout\,
	devoe => ww_devoe,
	o => \sum0~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Sum1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|result0~0_combout\,
	devoe => ww_devoe,
	o => \Sum1~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\carry_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|result1~0_combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\B0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\carry_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_in,
	o => \carry_in~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\inst|inst2|sum_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|sum_bit~0_combout\ = \B0~input_o\ $ (\A0~input_o\ $ (\carry_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \carry_in~input_o\,
	combout => \inst|inst2|sum_bit~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\A1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\inst|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = (\B0~input_o\ & ((\A0~input_o\) # (\carry_in~input_o\))) # (!\B0~input_o\ & (\A0~input_o\ & \carry_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \carry_in~input_o\,
	combout => \inst|inst3~0_combout\);

-- Location: LCCOMB_X1_Y6_N12
\inst4|result0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|result0~0_combout\ = \A1~input_o\ $ (\B1~input_o\ $ (\inst|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \inst|inst3~0_combout\,
	combout => \inst4|result0~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\inst4|result1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|result1~0_combout\ = (\A1~input_o\ & ((\B1~input_o\) # (\inst|inst3~0_combout\))) # (!\A1~input_o\ & (\B1~input_o\ & \inst|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1~input_o\,
	datac => \B1~input_o\,
	datad => \inst|inst3~0_combout\,
	combout => \inst4|result1~0_combout\);

ww_sum0 <= \sum0~output_o\;

ww_Sum1 <= \Sum1~output_o\;

ww_carry_out <= \carry_out~output_o\;
END structure;


