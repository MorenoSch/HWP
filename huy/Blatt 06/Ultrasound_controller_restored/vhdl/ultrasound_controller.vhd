library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ultrasound_controller is port(
	clk_50: in std_logic;
	
	-- enable signal
	enable : in std_logic;
	
	-- trigger, connected to ultrasound sensor
	trigger: inout std_logic;

	-- finished signal - high if system is idle
	finished : out std_logic;
		
	-- distance in cm (maximum = 255)
	distance : out std_logic_vector(7 downto 0)
);
end ultrasound_controller;



architecture behavior of ultrasound_controller is
signal counter : unsigned(20 downto 0) := (others => '0');
signal state : std_logic_vector(2 downto 0) := (others => '0');
signal tmpdistance: unsigned(20 downto 0) := (others => '1');
begin
	process (clk_50)
	begin
		if (rising_edge(clk_50)) then
			if (state = "000") then -- initial state
				trigger <= '0';
				finished <= '1';
				if (enable = '1') then
					state <= "001";
				end if;
			elsif (state = "001") then -- start pulse
				finished <= '0';
				trigger <= '1';
				counter <= (others => '0');
				state <= "010";
			elsif (state = "010") then -- end pulse
				counter <= counter + 1;			
				if (counter >= 500) then
					counter <= (others => '0');
					trigger <= 'Z';
					state <= "011";
				end if;
			elsif (state = "011") then -- wait for pulse start
				counter <= counter + 1;
				if (trigger = '1' and counter >= 3000) then
					state <= "100";
				end if;
				if (counter >= 1500000) then
					tmpdistance <= to_unsigned(255, 21);
					counter <= (others => '0');
					state <= "110";
				end if;
			elsif (state = "100") then -- wait for pulse end
				counter <= counter + 1;
				if (trigger = '0') then
					state <= "101";
				end if;
			elsif (state = "101") then -- calculate pulse end
				tmpdistance <= counter / to_unsigned(2900, 21);
				state <= "110";
			elsif (state = "110") then -- output distance
				state <= "111";
				counter <= (others => '0');
			elsif (state = "111") then -- timeout
				counter <= counter + 1;
				if (counter >= 50000) then
					state <= "000";
					counter <= (others => '0');
				end if;
			end if;
		end if;
	end process;
	
	process (tmpdistance)
	begin
		if (tmpdistance > 255) then
			distance <= "11111111";
		else
			for i in 0 to 7 loop
				distance(i) <= tmpdistance(i);
			end loop;
		end if;
	end process;
end behavior;
