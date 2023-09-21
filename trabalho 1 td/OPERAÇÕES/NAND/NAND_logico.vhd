LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity NAND_logico is 
port(
	in1: in std_logic_vector(3 downto 0);
	in2: in std_logic_vector(3 downto 0);
	over: out std_logic;
	saidaNAND: out std_logic_vector(3 downto 0)
);
end NAND_logico;
architecture arch_NAND_logico of NAND_logico is 
begin 

	saidaNAND(0) <= in1(0) nand in2(0);
	saidaNAND(1) <= in1(1) nand in2(1);
	saidaNAND(2) <= in1(2) nand in2(2);
	saidaNAND(3) <= in1(3) nand in2(3);
	
	over<='0';
	
end arch_NAND_logico;