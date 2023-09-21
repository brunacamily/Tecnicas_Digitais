LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity NOR_logico is 
port(
	in1: in std_logic_vector(3 downto 0);
	in2: in std_logic_vector(3 downto 0);
	over: out std_logic;
	saidaNOR: out std_logic_vector(3 downto 0)
);
end NOR_logico;
architecture arch_NOR_logico of NOR_logico is 
begin 

	saidaNOR(0) <= in1(0) NOR in2(0);
	saidaNOR(1) <= in1(1) NOR in2(1);
	saidaNOR(2) <= in1(2) NOR in2(2);
	saidaNOR(3) <= in1(3) NOR in2(3);
	
	over<='0';
	
end arch_NOR_logico;