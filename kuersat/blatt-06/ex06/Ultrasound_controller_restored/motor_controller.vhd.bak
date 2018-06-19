-- controller: controlling motor
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motor_controller is port(
	clk_50 : in std_logic;
	speed  : in std_logic_vector(9 downto 0);
	direction : in std_logic;
	
	motor_signal1 : out std_logic;
	motor_signal2 : out std_logic
);
end motor_controller;


architecture behavior of motor_controller is
	-- counter to ensure that the ultrasonic sensor isn't triggered to often
	signal counter : unsigned(19 downto 0) := (others => '0');
	signal PWM 		: unsigned(19 downto 0) := (others => '0');
		
begin
process(clk_50)
begin
	if rising_edge(clk_50) then
		counter <= counter + 1;
		if (speed = "0000000000") then
			motor_signal1 <= '0';
			motor_signal2 <= '0';
		else
			--- TODO Left shift speed by 5 and set PWM that value
			if (counter < (PWM)) then
				if(direction = '1') then
					motor_signal1 <= '1';
					motor_signal2 <= '0';
				end if;
				if(direction = '0') then
					motor_signal2 <= '1';
					motor_signal1 <= '0';
				end if;
			end if;
		end if;
		if (counter > 32768) then
			counter <= "00000000000000000000";
		end if;
	end if;
end process;
end behavior;