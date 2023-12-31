LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity mux2x1 is 
port(
entrada: in std_logic;

desloca: in std_logic;
saida: out std_logic

);
end mux2x1;
architecture arch_mux2x1 of mux2x1 is 
signal zero: std_logic;
begin 
zero<='0';
	WITH desloca SELECT
	saida <=
		entrada WHEN '0',
		zero WHEN '1',
		'0' WHEN OTHERS;


end arch_mux2x1;