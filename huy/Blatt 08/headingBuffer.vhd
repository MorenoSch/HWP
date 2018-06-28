library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity headingBuffer is port (
	heading_in : in std_logic_vector(7 downto 0);
	dataReady : in std_logic;
	heading_out : out std_logic_vector(8 downto 0)
);
end headingBuffer;

architecture behavior of headingBuffer is
begin
process(dataReady)
begin
	if rising_edge(dataReady) then
		heading_out(0) <= '0';
		heading_out(1) <= heading_in(0);
		heading_out(2) <= heading_in(1);
		heading_out(3) <= heading_in(2);
		heading_out(4) <= heading_in(3);
		heading_out(5) <= heading_in(4);
		heading_out(6) <= heading_in(5);
		heading_out(7) <= heading_in(6);
		heading_out(8) <= heading_in(7);
	end if;
end process;
end behavior;