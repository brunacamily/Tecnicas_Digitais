LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity subtrator is 

port(
	entA,entB:in std_logic_vector(3 downto 0);
	sub: out std_logic_vector(3 downto 0);
	over: out std_logic  -- overflow;
);	end subtrator;

architecture arch_subtrator of subtrator  is 
signal fio: std_logic_vector(3 downto 0);
signal um: std_logic;

component fulladder
port(
	inA,inB,inC :in std_logic;
	outSUM,outCARRY: out std_logic
);
end component;
begin
um<='1';

full: fulladder
	port map( inA=>entA(0), inB=>(not entB(0)), inC=>um, outSUM=>sub(0), outCARRY=>fio(0) );
full2: fulladder
	port map( inA=>entA(1), inB=>(not entB(1)), inC=>fio(0), outSUM=>sub(1), outCARRY=>fio(1) );
full3: fulladder
	port map( inA=>entA(2), inB=>(not entB(2)), inC=>fio(1), outSUM=>sub(2), outCARRY=>fio(2) );
full4: fulladder
	port map( inA=>entA(3), inB=>(not entB(3)), inC=>fio(2), outSUM=>sub(3), outCARRY=>fio(3) );
	
over<= (fio(2) xor fio(3));
end arch_subtrator;