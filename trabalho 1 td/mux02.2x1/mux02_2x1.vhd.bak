LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity mux02_2x1 is 
port(
entrada01: in std_logic;
entrada02: in std_logic;
desloca: in std_logic;
saida: out std_logic

);
end mux02_2x1;
architecture arch_mux02_2x1 of mux02_2x1 is 
signal zero: std_logic;
begin 
zero<='0';
	WITH desloca SELECT
	saida <=
		entrada01 WHEN '0',
		entrada02 WHEN '1',
		'0' WHEN OTHERS;


end arch_mux02_2x1;