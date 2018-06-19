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
-- Generated on "06/18/2018 18:19:11"
                                                            
-- Vhdl Test Bench template for design  :  ultrasound_reader
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ultrasound_reader_vhd_tst IS
END ultrasound_reader_vhd_tst;
ARCHITECTURE ultrasound_reader_arch OF ultrasound_reader_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL lcd_e : STD_LOGIC;
SIGNAL lcd_rs : STD_LOGIC;
SIGNAL lcd_rw : STD_LOGIC;
SIGNAL us_1 : STD_LOGIC;
COMPONENT ultrasound_reader
	PORT (
	clk_50 : IN STD_LOGIC;
	lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	lcd_e : OUT STD_LOGIC;
	lcd_rs : OUT STD_LOGIC;
	lcd_rw : OUT STD_LOGIC;
	us_1 : INOUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ultrasound_reader
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	lcd_data => lcd_data,
	lcd_e => lcd_e,
	lcd_rs => lcd_rs,
	lcd_rw => lcd_rw,
	us_1 => us_1
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
END ultrasound_reader_arch;
