library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity soundGenerator is port(
	clk_50 		: in std_logic; -- reset signal: set counter to 0 if rst = 0
	interrupt : in unsigned(18 downto 0);
	sound : out std_logic); -- counter output
end soundGenerator;

architecture behavioral of soundGenerator is
signal count : unsigned(20 downto 0) := "000000000000000000000";
signal output: std_logic := '0';
begin
	process(clk_50)
	begin
	if rising_edge(clk_50) then
		count <= count + 1;
		if count >= interrupt then
			count <= "000000000000000000000";
			output <= not output;
		end if;
	end if;
	end process;
	
	sound <= output;
end behavioral;
