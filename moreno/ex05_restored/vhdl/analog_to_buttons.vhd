-- analog_to_buttons
-- converts the reading of the adc into the corresponding button


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity analog_to_buttons is port(
	analogIn : in std_logic_vector(11 downto 0);
	clk 		: in std_logic;
	button1pressed : out std_logic;
	button3pressed : out std_logic);
end analog_to_buttons;


architecture behavior of analog_to_buttons is
signal b3: std_logic;
signal b1: std_logic;
signal counter: unsigned(20 downto 0);

begin
process(clk)
begin
	if( rising_edge(clk)) then
		counter <= counter + 1;
	end if;
	if( counter = 500000) then 
		counter <= "000000000000000000000";
		if(unsigned(analogIn) < 100) then
			b1 <= '1';
		else
			b1 <= '0';
		end if;
	
		if(unsigned(analogIn) < 2300 and unsigned(analogIn) > 1500 ) then
			b3 <= '1';
		else
			b3 <= '0';
		end if;
	end if;
	
end process;
button1pressed <= b1;
button3pressed <= b3;

end behavior;