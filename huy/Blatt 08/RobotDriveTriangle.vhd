library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RobotDriveTriangle is port (
	clk_50 : in std_logic;
	heading : in std_logic_vector(8 downto 0);
	targetHeadingOut : out std_logic_vector(8 downto 0);
	motorAspeed : out std_logic_vector(9 downto 0);
	motorAdirection : out std_logic;
	motorBspeed : out std_logic_vector(9 downto 0);
	motorBdirection : out std_logic
);
end RobotDriveTriangle;

architecture behavior of RobotDriveTriangle is
signal state : std_logic := '0';
signal time_count : unsigned(27 downto 0) := (others => '0');
signal target_heading : std_logic_vector(8 downto 0) := (others => '0');
signal speed : std_logic_vector(9 downto 0) := (others => '0');
begin
process(clk_50)
variable diff : unsigned(8 downto 0);
begin
	if rising_edge(clk_50) then
		if state = '0' then
			--drive forward
			speed <= "0101000000";
			time_count <= time_count + 1;
			if time_count >= 200000000 and unsigned(heading) < 360 then
				if unsigned(heading) < 270 then
					target_heading <= std_logic_vector(unsigned(heading) + 90);
				else
					target_heading <= std_logic_vector(unsigned(heading) - 270);
				end if;
				state <= '1';
			end if;
		elsif state = '1' then
			--rotate right
			speed <= "0100100000";
			if unsigned(heading) > unsigned(target_heading) then
				diff := unsigned(heading) - unsigned(target_heading);
			else
				diff := unsigned(target_heading) - unsigned(heading);
			end if;
			if (diff < 3 or diff > 357) and unsigned(heading) < 360 then
				state <= '0';
				time_count <= (others => '0');
			end if;
		else
			state <= '0';
			time_count <= (others => '0');
		end if;
	end if;
end process;
motorAspeed <= speed;
motorAdirection <= '1';
motorBspeed <= speed;
motorBdirection <= state;
targetheadingOut <= target_heading;
end behavior;