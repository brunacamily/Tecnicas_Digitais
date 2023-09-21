LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity somador is 

port(
	entA,entB:in std_logic_vector(3 downto 0);
	soma: out std_logic_vector(3 downto 0);
	over: out std_logic  -- overflow;
);	end somador;

architecture arch_somador of somador  is 
signal fio: std_logic_vector(3 downto 0);
signal um: std_logic;

component halfadder 
port(
a,b :in std_logic;
sum, carry: out std_logic
);
end component;

component fulladder
port(
	inA,inB,inC :in std_logic;
	outSUM,outCARRY: out std_logic
);
end component;
begin
um<='1';

half: halfadder
	port map( a=>entA(0), b=>entB(0), sum=>soma(0), carry=>fio(0) );
full2: fulladder
	port map( inA=>entA(1), inB=>entB(1), inC=>fio(0), outSUM=>soma(1), outCARRY=>fio(1) );
full3: fulladder
	port map( inA=>entA(2), inB=>entB(2), inC=>fio(1), outSUM=>soma(2), outCARRY=>fio(2) );
full4: fulladder
	port map( inA=>entA(3), inB=>entB(3), inC=>fio(2), outSUM=>soma(3), outCARRY=>fio(3) );
	
	over<= (fio(2) xor fio(3));
end arch_somador;