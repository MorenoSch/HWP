-- ADC reader: reads data from ADXL345

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g_reader is port (
	clk_50: in std_logic;	-- 50 MHz clock
	
	reset_n : in std_logic; -- reset signal (active low)

	-- SPI interface
	CS_N : out std_logic;   -- connected to chip select of g sensor
	SCLK : out std_logic;   -- spi clock
	SDIO : inout std_logic; -- spi data (bidirectional)
		
	-- data output
	dataX : out std_logic_vector(12 downto 0);
	dataY : out std_logic_vector(12 downto 0);
	dataZ : out std_logic_vector(12 downto 0)
);
end g_reader;


architecture behavior of g_reader is
	signal count : unsigned(5 downto 0);
	signal SCLK_int : std_logic := '1';
	signal transmission_count : unsigned(4 downto 0);
	signal time_count : unsigned(15 downto 0);
	type state_type is (init0, init1, init2, init3, init4, pause, readX, readY, readZ);
	signal state : state_type := pause;
	signal next_state : state_type := init0;

begin
process(clk_50)
begin
	if rising_edge(clk_50) then
		count <= count + 1;
		if count = 25 then
			SCLK_int <= not(SCLK_int);
			count <= "000000";
		end if;
	end if;
end process;
SCLK <= SCLK_int;

process(clk_50) 
begin
	if rising_edge(clk_50) then 
		if reset_n = '1' then
			state <= pause;
			next_state <= init0;
		end if;
		
		if state = pause then
			if next_state = readX then 
				if (time_count >= 50000) and (SCLK_int = '1') then
					state <= next_state;
				end if;
			else
				if (time_count >= 500) and (SCLK_int = '1') then
					state <= next_state;
				end if;
			end if;
		end if;	
		
		if state = init0 then
			if transmission_count = 16 then 
				next_state <= init1;
				state <= pause;
			end if;
		end if;
		
		if state = init1 then
			if transmission_count = 16 then 
				next_state <= init2;
				state <= pause;
			end if; 
		end if;
			
		if state = init2 then
			if transmission_count = 16 then 
				next_state <= init3;
				state <= pause;
			end if;
		end if;	
		
		if state = init3 then
			if transmission_count = 16 then 
				next_state <= init4;
				state <= pause;
			end if;
		end if;
 
		if state = init4 then
			if transmission_count = 16 then 
				next_state <= readX;
				state <= pause;
			end if;
		end if;
		
		if state = readX then
			if transmission_count = 25 then 
				next_state <= readY;
				state <= pause;
			end if;
		end if;
			
		if state = readY then
			if transmission_count = 25 then 
				next_state <= readZ;
				state <= pause;
			end if;
		end if;
		
		if state = readZ then
			if transmission_count = 25 then 
				next_state <= readX;
				state <= pause;
			end if;
		end if;
	end if;
end process;

CS_N <= '0', SCLK <= '1' when state = pause else
CS_N <= '1';

end behavior;

