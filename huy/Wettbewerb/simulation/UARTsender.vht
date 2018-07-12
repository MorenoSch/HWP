-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/02/2018 17:37:56"
                                                            
-- Vhdl Test Bench template for design  :  UARTsender
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UARTsender_vhd_tst IS
END UARTsender_vhd_tst;
ARCHITECTURE UARTsender_arch OF UARTsender_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC := '0';
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ready : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL serial : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT UARTsender
	PORT (
	clk_50 : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ready : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	serial : OUT STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UARTsender
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	data => data,
	ready => ready,
	reset => reset,
	serial => serial,
	start => start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	reset <= '1';
	data <= "11100011";
	start <= '0';
	wait for 40 ns;
	reset <= '0';
	wait for 20 ns;
	start <= '1';
	wait for 40 ns;
	start <= '0';
	wait for 20 ns;
WAIT;                                                       
END PROCESS init;                                           

clk_50 <= not clk_50 after 10 ns;
                                        
END UARTsender_arch;
