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
-- Generated on "05/23/2018 00:30:33"
                                                            
-- Vhdl Test Bench template for design  :  Halfadder_V
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Halfadder_V_vhd_tst IS
END Halfadder_V_vhd_tst;
ARCHITECTURE Halfadder_V_arch OF Halfadder_V_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL carry_bit : STD_LOGIC;
SIGNAL sum_bit : STD_LOGIC;
COMPONENT Halfadder_V
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	carry_bit : OUT STD_LOGIC;
	sum_bit : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Halfadder_V
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	carry_bit => carry_bit,
	sum_bit => sum_bit
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
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
END Halfadder_V_arch;
