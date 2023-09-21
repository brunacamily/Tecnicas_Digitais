LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity shifterESQ is 
	 port(
	 in1: in std_logic_vector(3 downto 0);
	 indesl: in std_logic;
	 over: out std_logic;
	 outS: out std_logic_vector(3 downto 0)
);
end shifterESQ;
architecture arch_shifterESQ of shifterESQ is 
signal fioXOR: std_logic;
component mux2x1
port(
entrada: in std_logic;
desloca: in std_logic;
saida: out std_logic
);
end component; 
component mux02_2x1
port(
entrada01: in std_logic;
entrada02: in std_logic;
desloca: in std_logic;
saida: out std_logic
);
end component;
begin 
mux1: mux2x1
	port map( entrada=>in1(0), desloca=>indesl, saida=>outS(0) );
mux2: mux02_2x1
	port map( entrada01=>in1(1),entrada02=>in1(0), desloca=>indesl ,saida=>outS(1) );
mux3: mux02_2x1
	port map( entrada01=>in1(2),entrada02=>in1(1), desloca=>indesl ,saida=>outS(2) );
mux4: mux02_2x1
	port map( entrada01=>in1(3),entrada02=>in1(2), desloca=>indesl ,saida=>outS(3) );
	
	
		over<='0' when indesl='1' and (in1="1100" or
												 in1="1101" or
												 in1="1110" or
												 in1="1111" or
												 in1="0000" or
												 in1="0001" or
												 in1="0010" or
												 in1="0011" ) else				
				'0' when indesl='0' else
				'1';
				
				
	
end arch_shifterESQ;