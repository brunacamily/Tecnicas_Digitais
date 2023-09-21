LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity fulladder is 
port(
	inA,inB,inC :in std_logic;
	outSUM,outCARRY: out std_logic
);
end fulladder;
architecture arch_fulladder of fulladder  is 
	signal fio: std_logic_vector(2 downto 0);
	
component halfadder
port(
a,b :in std_logic;
sum, carry: out std_logic
);
end component;

begin 
half: halfadder
	port map (a=>inA, b=>inB, sum=>fio(0), carry=>fio(1) );
half1: halfadder
	port map (a=>fio(0), b=>inC, sum=>outSUM, carry=>fio(2) );
	
outCARRY <= fio(1) or fio(2);
		
end arch_fulladder;