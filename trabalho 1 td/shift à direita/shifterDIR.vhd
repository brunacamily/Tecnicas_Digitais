LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity shifterDIR is 
port(
	in01:in std_logic_vector(3 downto 0);
	sinalDES: in std_logic;
	over: out std_logic;
	s: out std_logic_vector(3 downto 0)
);
end shifterDIR;
architecture arch_shifterDIR of shifterDIR is 

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
	port map( entrada=>in01(3), desloca=>sinalDES, saida=>S(3) );
mux2: mux02_2x1
	port map( entrada01=>in01(2),entrada02=>in01(3), desloca=>sinalDES ,saida=>S(2) );
mux3: mux02_2x1
	port map( entrada01=>in01(1),entrada02=>in01(2), desloca=>sinalDES ,saida=>S(1) );
mux4: mux02_2x1
	port map( entrada01=>in01(0),entrada02=>in01(1), desloca=>sinalDES ,saida=>S(0) );

		over<='0' when sinalDES='1' and in01="0000" else
				'0' when sinalDES='1' and in01="0010" else
				'0' when sinalDES='1' and in01="0100" else
				'0' when sinalDES='1' and in01="0110" else
				
				'0' when sinalDES='0' else
				'1';
end arch_shifterDIR;