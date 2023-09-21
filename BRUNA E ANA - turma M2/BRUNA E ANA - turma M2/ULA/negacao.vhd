LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity negacao is 
port(
	ent:in std_logic_vector(3 downto 0);
	over: out std_logic;
	OUTS: out std_logic_vector(3 downto 0)
);
end negacao;
architecture arch_negacao of negacao is 

begin 

OUTS(0)<= not ent(0);
OUTS(1)<= not ent(1);
OUTS(2)<= not ent(2);
OUTS(3)<= not ent(3);

over<='0';
end arch_negacao;