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
-- Generated on "05/21/2018 23:50:11"
                                                            
-- Vhdl Test Bench template for design  :  Volladder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Volladder_vhd_tst IS
END Volladder_vhd_tst;
ARCHITECTURE Volladder_arch OF Volladder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL carry_in : STD_LOGIC;
SIGNAL carry_out : STD_LOGIC;
SIGNAL sum : STD_LOGIC;
COMPONENT Volladder
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	carry_in : IN STD_LOGIC;
	carry_out : OUT STD_LOGIC;
	sum : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Volladder
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	carry_in => carry_in,
	carry_out => carry_out,
	sum => sum
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
END Volladder_arch;
