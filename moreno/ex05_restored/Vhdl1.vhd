library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
 
entity debounce is port(
	CLK 		: in std_logic;

	DATA		: in std_logic_vector(11 downto 0);
	
	OP_DATA	: out std_logic_vector(11 downto 0));
		
end debounce;

architecture behavioral of debounce is
signal OP1, OP2, OP3	: std_logic_vector(11 downto 0);
signal counter 		: unsigned(20 downto 0); 
 
begin
process(CLK)
	begin
		If rising_edge(CLK) then
			counter <= counter + 1;
		end if;
		if counter = 1500000 then
			counter <= "000000000000000000000";
			OP1 <= DATA;
			OP2 <= OP1;
			OP3 <= OP2;
		end if;
 end process;
OP_DATA <= OP1 and OP2 and (not OP3);

end behavioral;