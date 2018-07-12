-- COPYRIGHT 2012: Jan Burchard, Lehrstuhl fuer Rechnerarchitektur, Universitaet Freiburg
-- This file is only for the hardware labs "grand challenge" 2012!
-- It must not be uploaded, distributet or otherwise made available to any third party!

-- dataToSerial: transmits 3x8 bits via serial (9600 bauds)
-- usage: connect clock_50 to 50 mhz clock, and any data you want to transmit to a free data port
-- receive the data via "serialReceiver" on the arduino.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity UARTfifo is port(
	clk_50    		: in std_logic;
	data_in   		: in std_logic_vector(47 downto 0);
	reset     		: in std_logic;
	start     		: in std_logic;
	uart_ready_in 	: in std_logic;
	uart_start		: out std_logic := '0';
	ready				: out std_logic := '0';
	uart_byte_out	: out std_logic_vector(7 downto 0)
);
end UARTfifo;


architecture behavior of UARTfifo is
	-- Buffer the data in
	signal start_int : std_logic := '0';
	signal uart_enable : std_logic := '0';
	signal data_int : std_logic_vector(55 downto 0) := (others => '0');
	signal dataCount: integer range 0 to 7 := 0;
	
	
begin
	
	pr: process(clk_50, reset)
	begin
	   if (reset = '1') then
			ready <= '0';
			start_int <= '0';
			uart_enable <= '0';
			uart_start <= '0';
			uart_byte_out <= (others => '0');
			data_int <= (others => '0');
			dataCount <= 0;
			-- TODO
		elsif rising_edge(clk_50) then
			ready <= '0';
			uart_start <= '0';
			if start = '1' and start_int = '0' then
				start_int <= '1';
				data_int(55 downto 8) <= data_in;
				data_int(7 downto 0) <= "00001010";
				dataCount <= 0;
			elsif start_int = '1' then
				if dataCount = 7 and uart_ready_in = '1' and uart_enable = '0' then
					ready <= '1';
					start_int <= '0';
				elsif uart_ready_in = '1' and uart_enable = '0' then
					uart_enable <= '1';
					uart_byte_out <= data_int((data_int'length - (dataCount * 8)) - 1 downto data_int'length - ((dataCount + 1) * 8));
					dataCount <= dataCount + 1;
					uart_start <= '1';
				elsif uart_ready_in = '0' and uart_enable = '1' then
					uart_enable <= '0';
				end if;
			end if;
		end if;
	end process;
end behavior;