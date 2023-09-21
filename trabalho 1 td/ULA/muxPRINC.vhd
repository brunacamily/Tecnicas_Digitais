LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity muxPRINC is 
port(
	in01: in std_logic_vector(3 downto 0);
	in02: in std_logic_vector(3 downto 0);
	in03: in std_logic_vector(3 downto 0);
	in04: in std_logic_vector(3 downto 0);
	in05: in std_logic_vector(3 downto 0);
	in06: in std_logic_vector(3 downto 0);
	in07: in std_logic_vector(3 downto 0);
	in08: in std_logic_vector(3 downto 0);
	in09: in std_logic_vector(3 downto 0);
	in10: in std_logic_vector(3 downto 0);
	in11: in std_logic_vector(3 downto 0);
	in12: in std_logic_vector(3 downto 0);
	in13: in std_logic_vector(3 downto 0);
	in14: in std_logic_vector(3 downto 0);
	in15: in std_logic_vector(3 downto 0);
	in16: in std_logic_vector(3 downto 0);
	sinal: in std_logic_vector(3 downto 0);
	saidamux: out std_logic_vector(3 downto 0)
);
end muxPRINC;
architecture arch_muxPRINC of muxPRINC is 

begin 

	WITH sinal SELECT
	saidamux <=
		in01 WHEN "0000",
		in02 WHEN "0001",
		in03 WHEN "0010",
		in04 WHEN "0011",
		in05 WHEN "0100",
		in06 WHEN "0101",
		in07 WHEN "0110",
		in08 WHEN "0111",
		in09 WHEN "1000",
		in10 WHEN "1001",
		in11 WHEN "1010",
		in12 WHEN "1011",
		in13 WHEN "1100",
		in14 WHEN "1101",
		in15 WHEN "1110",
		in16 WHEN "1111",
		
		"1111" WHEN OTHERS;

end arch_muxPRINC;