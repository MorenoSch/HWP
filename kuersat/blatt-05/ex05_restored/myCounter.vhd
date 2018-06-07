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
signal zahl: std_logic_vector(2 downto 0);

begin
-- TODO
zahl <= "000" when rst = '0' else
"001" when zahl = "000" and rst = '1' and count = '1' else
"010" when zahl = "001" and rst = '1' and count = '1' else 
"011" when zahl = "010" and rst = '1' and count = '1' else
"100" when zahl = "011" and rst = '1' and count = '1' else
"101" when zahl = "100" and rst = '1' and count = '1' else
"110" when zahl = "101" and rst = '1' and count = '1' else
"111" when zahl = "110" and rst = '1' and count = '1' else 
"000" when zahl = "111" and rst = '1' and count = '1';
 
countOut <= zahl;
end behavioral;