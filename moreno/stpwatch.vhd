-- Copyright 2012: Jan Burchard
-- adc reader
-- reads data from ADC128S022 via 4 wire SPI

library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stpwatch is
port(
clk_50 	: in std_logic;
startstop: in std_logic;
reset 	: in std_logic;

counting : out unsigned(5 downto 0));
end stpwatch;

architecture behavior of stpwatch is
signal count 	: unsigned(5 downto 0);
signal counter : unsigned(31 downto 0);
signal strstp  : boolean := true;

begin
process(clk_50)
begin
	if ( rising_edge(startstop)) then
		strstp <= not strstp;
	end if;
	if (rising_edge(reset)) then 
		count <= "000000";
	end if;
	if (rising_edge(clk_50) and strstp) then
		counter <= counter + 1; 
	end if;
	if( counter >= 55000000) then
		counter <= "00000000000000000000000000000000";
		count <= count + 1;
	end if;
end process;
counting <= count;
end behavior;