library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity dataAccumulator is port(
	clk_50:			in std_logic;
	reset:			in std_logic;
	data_in: 		in std_logic_vector(7 downto 0);
	data_in_ready:	in std_logic;
	data_out:		out std_logic_vector(47 downto 0);
	data_out_ready:out std_logic := '0'
);
end dataAccumulator;



architecture behavior of dataAccumulator is
	
	signal dataCount: integer range 0 to 5 := 5;
	--signal dataCount: integer range 0 to 5 := 0;
	signal data: std_logic_vector(47 downto 0) := (others => '0');
	signal uart_enable : std_logic := '0';
	
begin
	
	pr: process(clk_50, reset)
	begin
	   if (reset = '1') then
			data_out_ready <= '0';
			uart_enable <= '0';
			data_out <= (others => '0');
			data <= (others => '0');
			dataCount <= 5;
			--dataCount <= 0;
			-- TODO
		elsif rising_edge(clk_50) then
			data_out_ready <= '0';
			if data_in_ready = '1' and uart_enable = '0' then
				uart_enable <= '1'; 
				data(((dataCount) + 1) * 8 - 1 downto ((dataCount)) * 8) <= data_in;
				--dataCount <= dataCount + 1;
				dataCount <= dataCount - 1;
				if dataCount = 0 then
				--if dataCount = 5 then
					data_out <= data;
					--data_out(47 downto 40) <= data_in;
					data_out(7 downto 0) <= data_in;
					data_out_ready <= '1';
					--dataCount <= 0;
					dataCount <= 5;
				end if;	
			elsif data_in_ready = '0' and uart_enable = '1' then
				uart_enable <= '0';
			end if;
		end if;
	end process;
end behavior;