library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE ieee.math_real.ceil;
USE ieee.math_real.floor;

entity desDummy is
	port(
		clk_50   : in std_logic;
		reset    : in std_logic;
		data_out : out std_logic_vector(47 downto 0);
		start	   : out std_logic := '0'
	);
end desDummy;

architecture Behavioral of desDummy is

	signal counter: std_logic_vector(31 downto 0) := (others => '0');
	signal started : std_logic := '0';
	constant countMax: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(50000000, 32));
begin
	cnt : process(clk_50)
	begin
		if reset = '1' then
			start <= '0';
			started <= '0';
			counter <= (others => '0');
		elsif rising_edge(clk_50) then
			start <= '0';
			if counter = countMax then
				counter <= (others => '0');
				start <= '1';
				started <= '1';
			elsif started = '0' then 
				counter <= std_logic_vector(unsigned(counter) + 1);
			end if;
		end if;
	end process;
data_out <= "011100011011001000100001011010111111110010110010";

end Behavioral;
