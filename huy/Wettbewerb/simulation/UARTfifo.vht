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
-- Generated on "07/02/2018 19:41:55"
                                                            
-- Vhdl Test Bench template for design  :  UARTfifo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UARTfifo_vhd_tst IS
END UARTfifo_vhd_tst;
ARCHITECTURE UARTfifo_arch OF UARTfifo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC := '0';
SIGNAL data_in : STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL ready : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL uart_byte_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL uart_ready_in : STD_LOGIC;
SIGNAL uart_start : STD_LOGIC;
COMPONENT UARTfifo
	PORT (
	clk_50 : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	ready : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	uart_byte_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	uart_ready_in : IN STD_LOGIC;
	uart_start : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UARTfifo
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	data_in => data_in,
	ready => ready,
	reset => reset,
	start => start,
	uart_byte_out => uart_byte_out,
	uart_ready_in => uart_ready_in,
	uart_start => uart_start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
reset <= '1';
uart_ready_in <= '1';
data_in <=  "011100011011001000100001011010111111110010110010";
start <= '0';
wait for 40 ns;
reset <= '0';

wait for 40 ns;
start <= '1';
wait for 40 ns;
start <= '0';
uart_ready_in <= '0';

wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';
wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';
wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';
wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';
wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';
wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';
wait for 100 ns;
uart_ready_in <= '1';
wait until uart_start = '1';
wait for 20 ns;
uart_ready_in <= '0';

                 
WAIT;                                                       
END PROCESS init;   

clk_50 <= not clk_50 after 5 ns;
                                                  
END UARTfifo_arch;
