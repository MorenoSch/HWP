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
	signal counter : unsigned(4 downto 0);
	signal SCLK_int : std_logic := '1';
	type state_type is (init0, init1, init2, init3, init4, pause, readX, readY, readZ);
	signal state : state_type := pause;
	signal next_state : state_type := init0;
	signal transmission_count : unsigned(4 downto 0);
	signal time_count : unsigned(15 downto 0);
	signal pause_entered : std_logic := '0';
begin
process(clk_50)
begin
	if rising_edge(clk_50) then
		counter <= counter + 1;
		if counter = 25 then
			SCLK_int <= not(SCLK_int);
			counter <= "00000";
		end if;
	end if;
end process;
SCLK <= SCLK_int;

-- state machine
process(clk_50)
begin
	if rising_edge(clk_50) then
		if reset_n = '0' then
			state <= pause;
			next_state <= init0;
		end if;
		if state = init0 then
			if transmission_count = 16 then
				state <= pause;
				next_state <= init1;
			end if;
		elsif state = init1 then
			if transmission_count = 16 then
				state <= pause;
				next_state <= init2;
			end if;
		elsif state = init2 then
			if transmission_count = 16 then
				state <= pause;
				next_state <= init3;
			end if;
		elsif state = init3 then
			if transmission_count = 16 then
				state <= pause;
				next_state <= init4;
			end if;
		elsif state = init4 then
			if transmission_count = 16 then
				state <= pause;
				next_state <= readX;
			end if;
		elsif state = pause then
			if pause_entered = '0' then
				pause_entered <= '1';
				time_count <= (others => '0');
			else
				time_count <= time_count + 1;
			end if;
			if next_state = readX and time_count >= 50000 and SCLK_int = '1' then
				state <= readX;
				pause_entered <= '0';
			elsif next_state = readX and time_count >= 500 and SCLK_int = '1' then
				state <= next_state;
				pause_entered <= '0';
			end if;
		elsif state = readX then
			if transmission_count = 25 then
				state <= pause;
				next_state <= readY;
			end if;
		elsif state = readY then
			if transmission_count = 25 then
				state <= pause;
				next_state <= readZ;
			end if;
		elsif state = readZ then
			if transmission_count = 25 then
				state <= pause;
				next_state <= readX;
			end if;
		end if;
	end if;
end process;
end behavior;