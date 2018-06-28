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
-- Generated on "06/28/2018 13:05:13"
                                                            
-- Vhdl Test Bench template for design  :  UARTreceiver
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UARTreceiver_vhd_tst IS
END UARTreceiver_vhd_tst;
ARCHITECTURE UARTreceiver_arch OF UARTreceiver_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataReady : STD_LOGIC;
SIGNAL serial : STD_LOGIC;
COMPONENT UARTreceiver
	PORT (
	clk_50 : IN STD_LOGIC;
	data : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataReady : BUFFER STD_LOGIC;
	serial : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UARTreceiver
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	data => data,
	dataReady => dataReady,
	serial => serial
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

-- generate clock signal
process
begin
	clk_50 <= '1';
	wait for 10 ns;
	clk_50 <= '0';
	wait for 10 ns;
end process;

-- simulate serial signal
process
begin
	serial <= '1';
	wait for 100 us;
	
	-- start bit
	serial <= '0';
	wait for 26 us;
	
	-- data bits: 01010111
	serial <= '1';
	wait for 26 us;
	serial <= '1';
	wait for 26 us;
	serial <= '1';
	wait for 26 us;
	serial <= '0';
	wait for 26 us;
	serial <= '1';
	wait for 26 us;
	serial <= '0';
	wait for 26 us;
	serial <= '1';
	wait for 26 us;
	serial <= '0';
	wait for 26 us;
	
	-- stop bit
	serial <= '1';
	wait for 26 us;
	
	-- idle
	wait;
end process;
END UARTreceiver_arch;
