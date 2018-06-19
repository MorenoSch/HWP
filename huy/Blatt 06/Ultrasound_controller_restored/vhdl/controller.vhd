-- controller: controles 3 ultrasound sensors
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is port(
	clk_50 : in std_logic;
	
	finished_1 : in std_logic;
	finished_2 : in std_logic;
	finished_3 : in std_logic;
	
	enable_1 : out std_logic;
	enable_2 : out std_logic;
	enable_3 : out std_logic
);
end controller;


architecture behavior of controller is
	-- counter to ensure that the ultrasonic sensor isn't triggered to often
	signal counter : unsigned(19 downto 0) := (others => '0');
	signal enable_vector : std_logic_vector(2 downto 0) := (others => '0');
	signal started : std_logic := '0';
		
begin

	-- TODO: more advanced behavior
	
	-- counter (reset 50 times per second)
	process(clk_50)
	begin
		if rising_edge(clk_50) then
			if counter = 1000000-1 then
				counter <= (others => '0');
			else 
				counter <= counter + 1;
			end if;
			
			if (counter < 20 and enable_vector(0) = '1' and started = '0') then
				enable_1 <= '1';
				enable_2 <= '0';
				enable_3 <= '0';
			elsif (counter < 20 and enable_vector(1) = '1' and started = '0') then
				enable_1 <= '0';
				enable_2 <= '1';
				enable_3 <= '0';
			elsif (counter < 20 and enable_vector(2) = '1' and started = '0') then
				enable_1 <= '0';
				enable_2 <= '0';
				enable_3 <= '1';
			end if;
			if (counter < 20 and started = '0') then
				started <= '1';
			end if;
			
			if (enable_vector = "000") then -- start state
				enable_vector <= "100";
			elsif (enable_vector = "100" and finished_1 = '1' and started = '1') then
				enable_vector <= "010";
				started <= '0';
			elsif (enable_vector = "010" and finished_2 = '1' and started = '1') then
				enable_vector <= "001";
				started <= '0';
			elsif (enable_vector = "001" and finished_3 = '1' and started = '1') then
				enable_vector <= "100";
				started <= '0';
			end if;
		end if;
	end process;
	
	
	-- 20 clock cycles of enable signal
	
end behavior;