library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity robot_controller is port(
	ultrasonic_1 : in std_logic_vector(7 downto 0);
	
	ultrasonic_2 : in std_logic_vector(7 downto 0);
	
	ultrasonic_3 : in std_logic_vector(7 downto 0);
	
	motor_A_speed : out std_logic_vector(9 downto 0);
	
	motor_A_direction : out std_logic;
	
	motor_B_speed : out std_logic_vector(9 downto 0);
	
	motor_B_direction : out std_logic
);
end robot_controller;



architecture behavior of robot_controller is
begin
	-- Drives forward, if theres is no wall nearby
	-- Rotates, if there is a wall nearby
	process(ultrasonic_2)
	begin
		if (unsigned(ultrasonic_2) < 50) then
			motor_A_speed <= "1000000000";
			motor_B_speed <= "1000000000";
			motor_A_direction <= '1';
			motor_B_direction <= '0';
		else
			motor_A_speed <= "1000000000";
			motor_B_speed <= "1000000000";
			motor_A_direction <= '1';
			motor_B_direction <= '1';
		end if;
	end process;
end behavior;