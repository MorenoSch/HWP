-- analog_to_buttons
-- converts the reading of the adc into the corresponding button


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity analog_to_buttons is port(
	analogIn : in unsigned(11 downto 0);
	interrupt: out unsigned(18 downto 0);
	clk 		: in std_logic
);
end analog_to_buttons;


architecture behavior of analog_to_buttons is
signal counter: unsigned(20 downto 0);
constant sound1: unsigned(18 downto 0) := to_unsigned(500000, 19);
constant sound2: unsigned(18 downto 0) := to_unsigned(250000, 19);
constant sound3: unsigned(18 downto 0) := to_unsigned(175000, 19);
constant sound4: unsigned(18 downto 0) := to_unsigned(125000, 19);
constant sound5: unsigned(18 downto 0) := to_unsigned(100000, 19);
begin
	process(clk)
	begin
		if( rising_edge(clk)) then
			counter <= counter + 1;
		end if;
		if( counter = 500000) then 
			counter <= "000000000000000000000";
			if(analogIn < 100) then
				interrupt <= sound1;
			end if;
			if(analogIn < 1200 and analogIn > 500 ) then
				interrupt <= sound2;
			end if;
			if(analogIn < 2300 and analogIn > 1500 ) then
				interrupt <= sound3;
			end if;
			if(analogIn < 3000 and analogIn > 2500 ) then
				interrupt <= sound4;
			end if;
			if(analogIn < 3900 and analogIn > 3000 ) then
				interrupt <= sound5;
			end if;
		end if;
	end process;
end behavior;