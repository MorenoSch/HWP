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
-- Generated on "05/23/2018 00:34:15"
                                                            
-- Vhdl Test Bench template for design  :  zweibitmultiplexer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY zweibitmultiplexer_vhd_tst IS
END zweibitmultiplexer_vhd_tst;
ARCHITECTURE zweibitmultiplexer_arch OF zweibitmultiplexer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL result0 : STD_LOGIC;
SIGNAL result1 : STD_LOGIC;
SIGNAL S00 : STD_LOGIC;
SIGNAL S01 : STD_LOGIC;
SIGNAL S10 : STD_LOGIC;
SIGNAL S11 : STD_LOGIC;
SIGNAL selekt : STD_LOGIC;
COMPONENT zweibitmultiplexer
	PORT (
	result0 : OUT STD_LOGIC;
	result1 : OUT STD_LOGIC;
	S00 : IN STD_LOGIC;
	S01 : IN STD_LOGIC;
	S10 : IN STD_LOGIC;
	S11 : IN STD_LOGIC;
	selekt : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : zweibitmultiplexer
	PORT MAP (
-- list connections between master ports and signals
	result0 => result0,
	result1 => result1,
	S00 => S00,
	S01 => S01,
	S10 => S10,
	S11 => S11,
	selekt => selekt
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	S00 <= '1';
	S01 <= '1';
	S10 <= '0';
	S11 <= '0';
	selekt <= '1';
	wait for 50 ns;
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
END zweibitmultiplexer_arch;
