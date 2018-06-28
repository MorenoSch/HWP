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

begin

end behavior;