LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity XNOR_logico is 
port(
	in1: in std_logic_vector(3 downto 0);
	in2: in std_logic_vector(3 downto 0);
	over: out std_logic;
	saidaXNOR: out std_logic_vector(3 downto 0)
);
end XNOR_logico;
architecture arch_XNOR_logico of XNOR_logico is 
begin 

	saidaXNOR(0) <= in1(0) XNOR in2(0);
	saidaXNOR(1) <= in1(1) XNOR in2(1);
	saidaXNOR(2) <= in1(2) XNOR in2(2);
	saidaXNOR(3) <= in1(3) XNOR in2(3);
	
	over<='0';
	
end arch_XNOR_logico;