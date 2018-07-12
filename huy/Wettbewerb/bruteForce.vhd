library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity partialBruteForce is
	generic (
		dataWidth : natural := 48;
		keyWidth : natural := 22;
		blockWidth : natural := 12;
		keyPrefixWidth : natural := 3
	);
	port(
		clk_50 				: in std_logic;
		reset    			: in std_logic;
		cypher_in 			: in std_logic_vector(dataWidth - 1 downto 0);
		start 				: in std_logic;
		plain_out 			: out std_logic_vector(dataWidth - 1 downto 0);
		plain_out_ready	: out std_logic := '0';
		key_prefix        : in std_logic_vector(keyPrefixWidth - 1 downto 0)
	);
end partialBruteForce;

architecture behavior of partialBruteForce is
component des is
	generic (
		dataWidth : natural := 12;
		keyWidth : natural := 9;
		reversed : std_logic := '0'
	);
	port(
		clk_50 : in std_logic;
		rst    : in std_logic;
		mode   : in std_logic; -- 0 encrypt, 1 decrypt
		key_in : in std_logic_vector(keyWidth - 1 downto 0);
		data_in : in std_logic_vector(dataWidth - 1 downto 0);
		enable : in std_logic;
		data_out: out std_logic_vector(dataWidth - 1 downto 0);
		ready	 : out std_logic := '0'
	);
end component;

signal mode   : std_logic; -- 0 encrypt, 1 decrypt
signal enable  : std_logic;
signal block_data_in: std_logic_vector(blockWidth - 1 downto 0);
signal block_data_out: std_logic_vector(blockWidth - 1 downto 0);
signal data : std_logic_vector(dataWidth - 1 downto 0);
signal ready : std_logic := '0';
signal key_suffix : std_logic_vector(keyWidth - keyPrefixWidth - 1 downto 0) := (others => '0');
signal key : std_logic_vector(keyWidth - 1 downto 0);
constant reversed : std_logic := '0';

type state_type is (init, beginDecode, decode0, decode1, decode2, decode3, decoded);
signal state : state_type := init;

begin

key(keyWidth - 1 downto keyWidth - keyPrefixWidth) <= key_prefix;
key(keyWidth - keyPrefixWidth - 1 downto 0) <= key_suffix;
plain_out <= data;

process(clk_50)
constant max_part_key : std_logic_vector(keywidth - 4 downto 0) := (others => '1');
begin
	if rising_edge(clk_50) then
		if reset = '1' then
			state <= init;
			key_suffix <= (others => '0');
			plain_out_ready <= '0';
		elsif state = init then
			if start = '1' then
				state <= beginDecode;
			end if;
		elsif state = beginDecode then
			block_data_in <= cypher_in(dataWidth - 1 downto dataWidth - 12);
			state <= decode0;
			enable <= '1';
		elsif state = decode0 then
			enable <= '0';
			if ready <= '1' then
				if block_data_out = "010010000101" then -- 8 bits of H and first 4 bits of W
					data(dataWidth - 1 downto dataWidth - 12) <= block_data_out;
					state <= decode1;
					block_data_in <= cypher_in(dataWidth - 13 downto dataWidth - 24);
					enable <= '1';
				else
					state <= beginDecode;
					key_suffix <= std_logic_vector(unsigned(key_suffix) + 1);
				end if;
			end if;
		elsif state = decode1 then
			enable <= '0';
			if ready <= '1' then
				if block_data_out = "011101010000" then -- last 4 bits of W and 8 bits of P
					data(dataWidth - 13 downto dataWidth - 24) <= block_data_out;
					state <= decode2;
					block_data_in <= cypher_in(dataWidth - 25 downto dataWidth - 36);
					enable <= '1';
				else
					state <= beginDecode;
					key_suffix <= std_logic_vector(unsigned(key_suffix) + 1);
				end if;
			end if;
		elsif state = decode2 then
			enable <= '0';
			if ready <= '1' then
				data(dataWidth - 25 downto dataWidth - 36) <= block_data_out;
				state <= decode3;
				block_data_in <= cypher_in(dataWidth - 37 downto dataWidth - 48);
				enable <= '1';
			end if;
		elsif state = decode3 then
			enable <= '0';
			if ready <= '1' then
				data(dataWidth - 37 downto dataWidth - 48) <= block_data_out;
				state <= decoded;
				plain_out_ready <= '1';
			end if;
		end if;
	end if;
end process;

partialBruteForce: des
generic map (
	dataWidth => blockWidth,
	keyWidth  => keyWidth,
	reversed  => reversed
)
port map(
	clk_50  => clk_50,
	rst     => reset,
	mode   => mode,
	key_in  => key,
	data_in => block_data_in,
	enable => enable,
	data_out=> block_data_out,
	ready	  => ready
);

end behavior;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bruteForce is
	generic (
		dataWidth : natural := 48;
		keyWidth : natural := 22;
		blockWidth : natural := 12;
		keyPrefixWidth : natural := 3
	);
	port(
		clk_50 				: in std_logic;
		reset    			: in std_logic;
		cypher_in 			: in std_logic_vector(dataWidth - 1 downto 0);
		start 				: in std_logic;
		plain_out 			: out std_logic_vector(dataWidth - 1 downto 0);
		plain_out_ready	: out std_logic := '0'
	);
end bruteForce;

architecture behavior of bruteForce is

component partialBruteForce is
	generic (
		dataWidth : natural := 48;
		keyWidth : natural := 22;
		blockWidth : natural := 12;
		keyPrefixWidth : natural := 3
	);
	port(
		clk_50 				: in std_logic;
		reset    			: in std_logic;
		cypher_in 			: in std_logic_vector(dataWidth - 1 downto 0);
		start 				: in std_logic;
		plain_out 			: out std_logic_vector(dataWidth - 1 downto 0);
		plain_out_ready	: out std_logic := '0';
		key_prefix        : in std_logic_vector(keyPrefixWidth - 1 downto 0)
	);
end component;

signal correct : std_logic_vector(7 downto 0) := (others => '0');
signal data0_out : std_logic_vector(dataWidth - 1 downto 0);
signal data1_out : std_logic_vector(dataWidth - 1 downto 0);
signal data2_out : std_logic_vector(dataWidth - 1 downto 0);
signal data3_out : std_logic_vector(dataWidth - 1 downto 0);
signal data4_out : std_logic_vector(dataWidth - 1 downto 0);
signal data5_out : std_logic_vector(dataWidth - 1 downto 0);
signal data6_out : std_logic_vector(dataWidth - 1 downto 0);
signal data7_out : std_logic_vector(dataWidth - 1 downto 0);

begin

process(clk_50)
begin
	if rising_edge(clk_50) then
		if reset = '1' then
			plain_out_ready <= '0';
		elsif correct(0) = '1' then
			plain_out <= data0_out;
			plain_out_ready <= '1';
		elsif correct(1) = '1' then
			plain_out <= data1_out;
			plain_out_ready <= '1';
		elsif correct(2) = '1' then
			plain_out <= data2_out;
			plain_out_ready <= '1';
		elsif correct(3) = '1' then
			plain_out <= data3_out;
			plain_out_ready <= '1';
		elsif correct(4) = '1' then
			plain_out <= data4_out;
			plain_out_ready <= '1';
		elsif correct(5) = '1' then
			plain_out <= data5_out;
			plain_out_ready <= '1';
		elsif correct(6) = '1' then
			plain_out <= data6_out;
			plain_out_ready <= '1';
		elsif correct(7) = '1' then
			plain_out <= data7_out;
			plain_out_ready <= '1';
		else
			plain_out_ready <= '0';
		end if;
	end if;
end process;

bf0 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data0_out,
	plain_out_ready	=> correct(0),
	key_prefix        => "000"
);

bf1 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data1_out,
	plain_out_ready	=> correct(1),
	key_prefix        => "001"
);

bf2 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data2_out,
	plain_out_ready	=> correct(2),
	key_prefix        => "010"
);

bf3 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data3_out,
	plain_out_ready	=> correct(3),
	key_prefix        => "011"
);

bf4 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data4_out,
	plain_out_ready	=> correct(4),
	key_prefix        => "100"
);

bf5 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data5_out,
	plain_out_ready	=> correct(5),
	key_prefix        => "101"
);

bf6 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data6_out,
	plain_out_ready	=> correct(6),
	key_prefix        => "110"
);

bf7 : partialBruteForce
generic map (
	dataWidth => dataWidth,
	keyWidth => keyWidth,
	blockWidth => blockWidth,
	keyPrefixWidth => keyPrefixWidth
)
port map(
	clk_50 				=> clk_50,
	reset    			=> reset,
	cypher_in 			=> cypher_in,
	start 				=> start,
	plain_out 			=> data7_out,
	plain_out_ready	=> correct(7),
	key_prefix        => "111"
);

end behavior;