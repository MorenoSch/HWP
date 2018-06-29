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
signal heading : std_logic_vector(8 downto 0) := (others => '0');
begin
process(dataReady)
begin
	if rising_edge(dataReady) then
		heading(0) <= '0';
		heading(1) <= heading_in(0);
		heading(2) <= heading_in(1);
		heading(3) <= heading_in(2);
		heading(4) <= heading_in(3);
		heading(5) <= heading_in(4);
		heading(6) <= heading_in(5);
		heading(7) <= heading_in(6);
		heading(8) <= heading_in(7);
	end if;
end process;
heading_out <= heading;
end behavior;