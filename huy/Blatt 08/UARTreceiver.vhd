-- UART receiver

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UARTreceiver is port (
	clk_50: in std_logic;	-- 50 MHz clock
	serial: in std_logic;    -- serial port
	data: out std_logic_vector(7 downto 0); -- data output
	dataReady : out std_logic -- 1, if new data received
);
end UARTreceiver;

architecture behavior of UARTreceiver is
type state_type is (idle, startBit, dataBits, stopBit, timeout);
signal state : state_type := idle;
signal time_count : unsigned(10 downto 0) := (others => '0');
signal data_index : unsigned(2 downto 0) := (others => '0');
signal starting : std_logic := '0';
signal last_starting : std_logic := '0';
begin
process(clk_50)
begin
	if rising_edge(clk_50) then
		if state = idle then
			dataReady <= '0'; -- to initialize dataReady
			if starting /= last_starting then
				state <= startBit;
				last_starting <= starting;
				time_count <= (others => '0');
			end if;
		elsif state = startBit then
			time_count <= time_count + 1;
			if time_count > 651 then -- wait 651 ticks ~ 13 us
				state <= dataBits;
				time_count <= (others => '0');
				data_index <= (others => '0');
			end if;
		elsif state = dataBits then
			time_count <= time_count + 1;
			if time_count > 1302 then -- wait 1302 ticks ~ 26 us
				time_count <= (others => '0');
				data(to_integer(data_index)) <= serial;
				if data_index = "111" then
					state <= stopBit;
				end if;
				data_index <= data_index + 1;
			end if;
		elsif state = stopBit then
			time_count <= time_count + 1;
			if time_count > 1302 then -- wait 1302 ticks ~ 26 us
				time_count <= (others => '0');
				state <= timeout;
				dataReady <= serial;
			end if;
		elsif state = timeout then
			time_count <= time_count + 1;
			if time_count > 651 then -- wait 651 ticks ~ 13 us
				time_count <= (others => '0');
				dataReady <= '0';
				state <= idle;
			end if;
		end if;
	end if;
end process;

process(serial)
begin
	if falling_edge(serial) then
		if state = idle then
			starting <= not starting;
		end if;
	end if;
end process;

end behavior;