library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sbox1 is
  port(
		input  : in  std_logic_vector(3 downto 0);
		output : out std_logic_vector(2 downto 0)
	);
end sbox1;

architecture Behavioral of sbox1 is
  subtype lutin is std_logic_vector (3 downto 0);
  subtype lutout is std_logic_vector (2 downto 0);
  type lut is array (natural range 0 to 15) of lutout;
  signal temp: std_logic_vector (2 downto 0);
  constant bitcount : lut := (
    "101", "010", "001", "110", "011", "100", "111", "000",
    "001", "100", "110", "010", "000", "111", "101", "011"
  );

begin
  temp <= bitcount( to_integer ( unsigned (lutin'(input) ) ) );
  output <= lutout'(temp(2), temp(1), temp(0));
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sbox2 is
  port(
    input  : in  std_logic_vector(3 downto 0);
		output : out std_logic_vector(2 downto 0)
	);
end sbox2;

architecture Behavioral of sbox2 is
  subtype lutin is std_logic_vector (3 downto 0);
  subtype lutout is std_logic_vector (2 downto 0);
  type lut is array (natural range 0 to 15) of lutout;
  signal temp: std_logic_vector (2 downto 0);
  constant bitcount : lut := (
    "100", "000", "110", "101", "111", "001", "011", "010",
    "101", "011", "000", "111", "110", "010", "001", "100"
  );

begin
  temp <= bitcount( to_integer ( unsigned (lutin'(input) ) ) );
  output <= lutout'(temp(2), temp(1), temp(0));
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity expander is
  port(
		in_vector : in  std_logic_vector(5 downto 0);
		out_vector: out std_logic_vector(7 downto 0)
	);
end expander;

architecture Behavioral of expander is

begin
	out_vector <= in_vector(5) & in_vector(4) & in_vector(2) & in_vector(3)
						& in_vector(2) & in_vector(3) & in_vector(1) & in_vector(0);
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity get_key is
	generic (
		keyWidth : natural := 9
	);
	port(
		clk_50  : in  std_logic;
		key_in  : in  std_logic_vector(keyWidth - 1 downto 0);
		round   : in  std_logic_Vector(4 downto 0);
		key_out : out std_logic_vector(7 downto 0)
	);
end get_key;

architecture Behavioral of get_key is

begin
	
	key_out <= to_stdlogicvector(to_bitvector(key_in) rol to_integer(unsigned(round)-1))(keyWidth - 1 downto keyWidth - 8);
end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity des_round is
  port(
    clk_50 		: in 	std_logic;
    l_i_min_1 	: in 	std_logic_vector(5 downto 0);
    r_i_min_1 	: in 	std_logic_vector(5 downto 0);
    k_i			: in 	std_logic_vector(7 downto 0);
    l_i 			: out std_logic_vector(5 downto 0);
    r_i 			: out std_logic_vector(5 downto 0)
	);
end des_round;

architecture Behavioral of des_round is

	component sbox1 is
		port(
			input  : in  std_logic_vector(3 downto 0);
			output : out std_logic_vector(2 downto 0)
		);
	end component;
	component sbox2 is
		port(
			input  : in  std_logic_vector(3 downto 0);
			output : out std_logic_vector(2 downto 0)
		);
	end component;
	component expander is
		port(
			in_vector : in  std_logic_vector(5 downto 0);
			out_vector: out std_logic_vector(7 downto 0)
		);
	end component;

	signal expanded : std_logic_vector(7 downto 0) := (others => '0');
	signal xored : std_logic_vector(7 downto 0) := (others => '0');
	signal l_new : std_logic_vector(2 downto 0) := (others => '0');
	signal r_new : std_logic_vector(2 downto 0) := (others => '0');
	
begin
   -- ER
	exp : expander port map(r_i_min_1, expanded);
	xored <= (expanded xor k_i);
	-- (ER XOR K) Left
	s1 :  sbox1 port map (xored(7 downto 4), l_new);
	s2 :  sbox2 port map (xored(3 downto 0), r_new);
	--	(l_new + r_new) xor old L
	r_i <= (l_new & r_new) xor l_i_min_1;
	l_i <= r_i_min_1;
end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity des_loop is
	generic (
		totalRounds : natural := 16;
		keyWidth : natural := 9
	);
	port(
		clk_50 : in std_logic;
		rst    : in std_logic;
		mode   : in std_logic; -- 0 encrypt, 1 decrypt
		key_in : in std_logic_vector(keyWidth - 1 downto 0);
		blk_in : in std_logic_vector(11 downto 0);
		enable : in std_logic;
		blk_out: out std_logic_vector(11 downto 0);
		ready	 : out std_logic := '0'
	);
end des_loop;

architecture Behavioral of des_loop is

component des_round is
  port(
    clk_50 		: in 	std_logic;
    l_i_min_1 	: in 	std_logic_vector(5 downto 0);
    r_i_min_1 	: in 	std_logic_vector(5 downto 0);
    k_i			: in 	std_logic_vector(7 downto 0);
    l_i 			: out std_logic_vector(5 downto 0);
    r_i 			: out std_logic_vector(5 downto 0)
	);
end component;


component get_key is
	generic (
		keyWidth : natural := 9
	);
	port(
		clk_50  : in  std_logic;
		key_in  : in  std_logic_vector(keyWidth - 1 downto 0);
		round   : in  std_logic_Vector(4 downto 0);
		key_out : out std_logic_vector(7 downto 0)
	);
end component;

	signal round, round_i : unsigned(4 downto 0) := (others => '0'); 
	type state_type is (init, computeRound, compute);
	signal state : state_type := init;
	
	signal int_mode   : std_logic := '0'; -- 0 encrypt, 1 decrypt
	signal int_key_in : std_logic_vector(keyWidth - 1 downto 0) := (others => '0');
	signal int_blk_in : std_logic_vector(11 downto 0) := (others => '0');
	signal k_i : std_logic_vector(7 downto 0) := (others => '0');
	
	signal l_i_min_1 	: std_logic_vector(5 downto 0) := (others => '0');
   signal r_i_min_1 	: std_logic_vector(5 downto 0) := (others => '0');
   signal l_i 			: std_logic_vector(5 downto 0) := (others => '0');
   signal r_i 			: std_logic_vector(5 downto 0) := (others => '0');
	
	signal blk_out_int: std_logic_vector(11 downto 0) := (others => '0');
	
begin

	blk_out <= blk_out_int;
	
	pr: process(clk_50, rst)
	begin
	   if (rst = '1') then
			state <= init;
			int_mode <= '0';
			int_key_in <= (others => '0');
			int_blk_in <= (others => '0');
			blk_out_int <= (others => '0');
			round <= to_unsigned(1, round'length);
			round_i <= to_unsigned(1, round_i'length);
			ready <= '0';
			-- TODO
		elsif rising_edge(clk_50) then
			ready <= '0';
			if (state = init) then
				int_mode <= mode;
				int_key_in <= key_in;
				int_blk_in <= blk_in;
				round <= to_unsigned(1, round'length);
				round_i <= to_unsigned(1, round_i'length);
				l_i_min_1 <= blk_in(11 downto 6);
				r_i_min_1 <= blk_in(5 downto 0);
				if enable = '1' then
					state <= computeRound;
				end if;
			elsif (state = computeRound) then
				if mode = '0' then -- encrypt
					round_i <= round;
				else
					round_i <= to_unsigned(totalRounds, round_i'length) - round + 1;
				end if;
				state <= compute;
			elsif state = compute then
				state <= computeRound;
				l_i_min_1 <= l_i;
				r_i_min_1 <= r_i;
				round <= round + 1;
				if round = totalRounds then
					state <= init;
					blk_out_int <= r_i & l_i;
					ready <= '1';
				end if;
			else
				state <= init;
				-- TODP
			end if;
		end if;
	end process;

	keyer: get_key
		generic map (
			keyWidth => keyWidth
		)
		port map(
			clk_50		=> clk_50,
			key_in		=> int_key_in,
			round			=> std_logic_vector(round_i),
			key_out		=> k_i
		);
  
	des: des_round
		port map(
			clk_50 		=> clk_50,
			l_i_min_1 	=> l_i_min_1,
			r_i_min_1 	=> r_i_min_1,
			k_i			=> k_i,
			l_i 			=> l_i,
			r_i 			=> r_i
		);
		
end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
USE ieee.math_real.ceil;
USE ieee.math_real.floor;

entity des is
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
end des;

architecture Behavioral of des is

constant totalRounds : natural := keyWidth;
constant numberBlks : integer := integer(ceil(real(dataWidth) / real(12)));
constant numberBytes : integer := integer(ceil(real(dataWidth) / real(8)));
constant blkDataWidth : integer := 12;

component des_loop is
	generic (
		totalRounds : natural := 16;
		keyWidth : natural := 9
	);
	port(
		clk_50 : in std_logic;
		rst    : in std_logic;
		mode   : in std_logic; -- 0 encrypt, 1 decrypt
		key_in : in std_logic_vector(keyWidth - 1 downto 0);
		blk_in : in std_logic_vector(11 downto 0);
		enable : in std_logic;
		blk_out: out std_logic_vector(11 downto 0);
		ready	 : out std_logic := '0'
	);
end component;

	type state_type is (init, computeBlkInput, waitForBlk, output);
	signal state : state_type := init;
		
	signal blk_ready   	: std_logic := '0';
	signal int_mode   	: std_logic := '0'; -- 0 encrypt, 1 decrypt
	signal int_key_in 	: std_logic_vector(keyWidth - 1 downto 0) := (others => '0');
	signal int_data_in 	: std_logic_vector((numberBlks * blkDataWidth) - 1 downto 0) := (others => '0');
	signal int_data_out 	: std_logic_vector((numberBlks * blkDataWidth) - 1 downto 0) := (others => '0');
	signal blk_in, blk_out : std_logic_vector(11 downto 0) := (others => '0');
	signal blk_count		: unsigned(numberBlks - 1 downto 0) := (others => '0');
	signal blk_enable		: std_logic := '0';
	
begin

	assert integer(ceil(real(dataWidth) / real(12))) = integer(floor(real(dataWidth) / real(12))) report "ERROR: DataWidth has to be a multiple of 12! (Fill with zeros)" severity failure;
	
	pr: process(clk_50, rst)
	begin
	   if (rst = '1') then
			state <= init;
			ready <= '0';
			blk_count <=  (others => '0');
			int_mode <= '0'; -- 0 encrypt, 1 decrypt
			int_key_in <= (others => '0');
			int_data_in <= (others => '0');
			int_data_out <= (others => '0');
			data_out <= (others => '0');
			blk_in <= (others => '0');
			blk_enable <= '0';
			-- TODO
		elsif rising_edge(clk_50) then
			ready <= '0';
			blk_enable <= '0';
			if state = init then
				int_mode <= mode;
				int_key_in <= key_in;
				int_data_in(int_data_in'length - 1 downto (int_data_in'length - data_in'length)) <= data_in;
				if reversed = '1' then 
					for i in 0 to numberBytes - 1 loop
						int_data_in((i+1)*8-1 downto i*8) <= data_in(data_in'length - (i*8)-1 downto data_in'length - ((i+1)*8));
					end loop;
				end if;
				-- int_data_in(int_data_in'length - data_in'length - 1 downto 0) <= (others => '0');
				if enable = '1' then
					state <= computeBlkInput;
				end if;
				blk_count <= (others => '0');
			elsif state = computeBlkInput then
				blk_in <= int_data_in((to_integer(blk_count) + 1) * blkDataWidth - 1 downto to_integer(blk_count) * blkDataWidth);
				blk_enable <= '1';
				state <= waitForBlk;
			elsif state = waitForBlk then
				state <= waitForBlk;
				if blk_ready = '1' then
					int_data_out((to_integer(blk_count) + 1) * blkDataWidth - 1 downto to_integer(blk_count) * blkDataWidth) <= blk_out;
					blk_count <= blk_count + 1;
					state <= computeBlkInput;
					if blk_count = numberBlks - 1 then
						state <= output;
					end if;
				end if;
			elsif state = output then
				data_out <= int_data_out(int_data_out'length - 1 downto int_data_out'length - data_out'length);
				if reversed = '1' then 
					for i in 0 to numberBytes - 1 loop
						data_out((i+1)*8-1 downto i*8) <= int_data_out(int_data_out'length - (i*8)-1 downto int_data_out'length - ((i+1)*8));
					end loop;
				end if;
				state <= init;
				ready <= '1';
			else
				state <= init;
			end if;
			
		end if;
	end process;
	
		
	des: des_loop
	generic map (
		totalRounds => totalRounds,
		keyWidth => keyWidth
	)
	port map(
		clk_50 => clk_50,
		rst    => rst,
		mode   => int_mode,
		key_in => int_key_in,
		blk_in => blk_in,
		enable => blk_enable,
		blk_out=> blk_out,
		ready	 => blk_ready
	);
		
end Behavioral;
