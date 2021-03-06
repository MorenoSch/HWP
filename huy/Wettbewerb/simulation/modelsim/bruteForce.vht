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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/11/2018 12:43:57"
                                                            
-- Vhdl Test Bench template for design  :  bruteForce
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bruteForce_vhd_tst IS
END bruteForce_vhd_tst;
ARCHITECTURE bruteForce_arch OF bruteForce_vhd_tst IS
-- constants
constant dataWidth : natural := 48;
constant keyWidth : natural := 22;
constant blockWidth : natural := 12;
constant keyPrefixWidth : natural := 3;                                                
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC := '0';
SIGNAL cypher_in : STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL plain_out : STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL plain_out_ready : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT bruteForce
	generic (
		dataWidth : natural := 48;
		keyWidth : natural := 22;
		blockWidth : natural := 12;
		keyPrefixWidth : natural := 3
	);
	PORT (
	clk_50 : IN STD_LOGIC;
	cypher_in : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	plain_out : BUFFER STD_LOGIC_VECTOR(47 DOWNTO 0);
	plain_out_ready : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bruteForce
	GENERIC MAP (
		dataWidth => dataWidth,
		keyWidth => keyWidth,
		blockWidth => blockWidth,
		keyPrefixWidth => keyPrefixWidth
	)
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	cypher_in => cypher_in,
	plain_out => plain_out,
	plain_out_ready => plain_out_ready,
	reset => reset,
	start => start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	--cypher_in <= "011000100101011100101110101100101100101111100100";
	-- decoded with key "1010000000000000010110";
	cypher_in <= "111010000101001101100101001000010000010000001101";
	reset <= '1';
	start <= '0';
	wait for 20 ns;
	reset <= '0';
	wait for 20 ns;
	start <= '1';
	wait for 20 ns;
	start <= '0';
	wait until plain_out_ready = '1';
	--wait for 1 ms;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;

clk_50 <= not clk_50 after 10 ns;
                                          
END bruteForce_arch;