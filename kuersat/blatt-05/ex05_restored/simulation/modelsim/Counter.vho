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

-- DATE "06/07/2018 12:23:54"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	myCounter IS
    PORT (
	count : IN std_logic;
	rst : IN std_logic;
	countOut : OUT std_logic_vector(2 DOWNTO 0)
	);
END myCounter;

-- Design Ports Information
-- countOut[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countOut[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countOut[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF myCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_count : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_countOut : std_logic_vector(2 DOWNTO 0);
SIGNAL \countOut[0]~output_o\ : std_logic;
SIGNAL \countOut[1]~output_o\ : std_logic;
SIGNAL \countOut[2]~output_o\ : std_logic;
SIGNAL \count~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \zahl[1]~15_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \zahl[2]~3_combout\ : std_logic;
SIGNAL \zahl[2]~14_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL zahl : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_count <= count;
ww_rst <= rst;
countOut <= ww_countOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X51_Y34_N9
\countOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => zahl(0),
	devoe => ww_devoe,
	o => \countOut[0]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\countOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => zahl(1),
	devoe => ww_devoe,
	o => \countOut[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\countOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => zahl(2),
	devoe => ww_devoe,
	o => \countOut[2]~output_o\);

-- Location: IOIBUF_X51_Y34_N22
\count~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count,
	o => \count~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X52_Y33_N10
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!zahl(0) & (\count~input_o\ & \rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => zahl(0),
	datac => \count~input_o\,
	datad => \rst~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X52_Y33_N0
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ((zahl(0) & \count~input_o\)) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => zahl(0),
	datac => \count~input_o\,
	datad => \rst~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X52_Y33_N18
\zahl[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- zahl(0) = (!\comb~0_combout\ & ((\comb~1_combout\) # (zahl(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \comb~0_combout\,
	datad => zahl(0),
	combout => zahl(0));

-- Location: LCCOMB_X52_Y33_N24
\zahl[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \zahl[1]~15_combout\ = (\count~input_o\ & (\rst~input_o\ & (zahl(0) $ (zahl(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => zahl(0),
	datab => zahl(1),
	datac => \count~input_o\,
	datad => \rst~input_o\,
	combout => \zahl[1]~15_combout\);

-- Location: LCCOMB_X52_Y33_N12
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\zahl[1]~15_combout\ & ((\count~input_o\) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \count~input_o\,
	datad => \zahl[1]~15_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X52_Y33_N14
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\zahl[1]~15_combout\ & ((\count~input_o\) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \count~input_o\,
	datad => \zahl[1]~15_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X52_Y33_N28
\zahl[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- zahl(1) = (!\comb~2_combout\ & ((\comb~3_combout\) # (zahl(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datac => \comb~3_combout\,
	datad => zahl(1),
	combout => zahl(1));

-- Location: LCCOMB_X52_Y33_N20
\zahl[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \zahl[2]~3_combout\ = zahl(2) $ (((zahl(0) & zahl(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => zahl(0),
	datac => zahl(2),
	datad => zahl(1),
	combout => \zahl[2]~3_combout\);

-- Location: LCCOMB_X52_Y33_N6
\zahl[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \zahl[2]~14_combout\ = (\rst~input_o\ & (\count~input_o\ & \zahl[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \count~input_o\,
	datad => \zahl[2]~3_combout\,
	combout => \zahl[2]~14_combout\);

-- Location: LCCOMB_X52_Y33_N16
\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\zahl[2]~14_combout\ & ((\count~input_o\) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \count~input_o\,
	datad => \zahl[2]~14_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X52_Y33_N2
\comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\zahl[2]~14_combout\ & ((\count~input_o\) # (!\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \count~input_o\,
	datad => \zahl[2]~14_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X52_Y33_N22
\zahl[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- zahl(2) = (!\comb~4_combout\ & ((zahl(2)) # (\comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~4_combout\,
	datac => zahl(2),
	datad => \comb~5_combout\,
	combout => zahl(2));

ww_countOut(0) <= \countOut[0]~output_o\;

ww_countOut(1) <= \countOut[1]~output_o\;

ww_countOut(2) <= \countOut[2]~output_o\;
END structure;


