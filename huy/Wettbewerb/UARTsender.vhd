-- COPYRIGHT 2012: Jan Burchard, Lehrstuhl fuer Rechnerarchitektur, Universitaet Freiburg
-- This file is only for the hardware labs "grand challenge" 2012!
-- It must not be uploaded, distributet or otherwise made available to any third party!

-- dataToSerial: transmits 3x8 bits via serial (9600 bauds)
-- usage: connect clock_50 to 50 mhz clock, and any data you want to transmit to a free data port
-- receive the data via "serialReceiver" on the arduino.

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity UARTsender is port(
	clk_50 : in std_logic;
	data   : in std_logic_vector(7 downto 0);
	reset  : in std_logic;
	start  : in std_logic;
	ready  : out std_logic := '0';
	serial : out std_logic := '1'
);
end UARTsender;


architecture behavior of UARTsender is
	-- create the serial clk (9600 baud)
	signal serialClk : std_logic := '1';

	signal serialClkTimer : natural := 1;
	constant serialCLkTime : natural := 2604;
	
	-- Buffer the data in
	signal data_int : std_logic_vector(7 downto 0) := (others => '0');
	signal start_int : std_logic := '0';
	signal running : std_logic := '0';
	
	-- serial state machine:
	signal serialState : natural := 10;
	
	
	
begin
	process(clk_50)
	begin
		if reset = '1' then
			start_int <= '0';
			data_int <= (others => '0');
			serialClkTimer <= 1;
			serialClk <= '1';
		elsif rising_edge(clk_50) then
			-- Increment serial clock
			serialClkTimer <= serialClkTimer + 1;
			if serialClkTimer = serialCLkTime then
				serialClk <= not serialClk;
				serialClkTimer <= 1;
			end if;
			-- Got start signal from external source
			if start = '1' then
				start_int <= '1';
				data_int <= data;
			end if;
			
			-- Finished handling start signal 
			if start_int = '1' and running = '1' then
				start_int <= '0';
			end if;
			
			-- Send ready signal
			ready <= '0';
			if start_int = '0' and running = '0' then
			--if serialState > 9 then
				ready <= '1';
			end if;	
		end if;
	end process;

	-- create the serial signal
	process(serialClk, reset)
	begin
		if reset = '1' then
			serialState <= 10;
			running <= '0';
		-- change the serial state
		else	
		
			if rising_edge(serialClk) then
				if running = '0' then
				   -- send stop bit
					serialState <= 9;
				elsif running = '1' and serialState < 10 then
					serialState <= serialState + 1;
				end if;
				
				if serialState = 10 then
					running <= '0';
				end if;
				
				-- get start bit from other process and set running
				if start_int = '1' and running = '0' then
					running <= '1';
					serialState <= 0;
				end if;
	
			end if;
		
			if falling_edge(serialClk) then
				-- start bit
				if serialState = 0 then
					serial <= '0';
				
				-- data
				elsif serialState > 0 and serialState < 9 then
					serial <= data_int(serialState - 1);				
				
				-- stop bit
				elsif serialState > 8 then
					serial <= '1';
				end if;	
			end if;
		end if;
	end process;
end behavior;
