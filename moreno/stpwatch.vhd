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

counting : out std_logic_vector(5 downto 0));
end stpwatch;

architecture behavior of stpwatch is
signal count 	: unsigned(5 downto 0);
signal counter : unsigned(31 downto 0);
signal strstp  : boolean := true;
signal rst		: boolean := false;

begin
process(clk_50)
begin 
		if(rising_edge(startstop)) then
			strstp <= not strstp;
		end if;
		
		if(rising_edge(reset)) then
			rst <= not rst;
		end if;
	if (strstp) then
		if(rising_edge(clk_50)) then
			counter <= counter + 1;
		end if;
		if( counter >= 62000000 or rst) then
			counter <= "00000000000000000000000000000000";
			if(not rst) then
				count <= count + 1;
			else
				count <= "000000";
			end if;
		end if;
	end if;
end process;
counting <= std_logic_vector(count);
end behavior;