library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity myCounter is port(
	count 	: in std_logic; -- count signal: increase counter on rising edge
	rst 		: in std_logic; -- reset signal: set counter to 0 if rst = 0
	countOut : out std_logic_vector(2 downto 0)); -- counter output
end myCounter;

architecture behavioral of myCounter is
-- signals, etc.
signal zahl: unsigned(2 downto 0);

begin
-- TODO
process(zahl, count, rst)
begin
	if ( rst = '0' ) then
		zahl <= "000";
	else 
		if rising_edge(count) then 
			zahl <= zahl+1;
		end if;
	end if;
end process;
 
countOut <= std_logic_vector(zahl);
end behavioral;