
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY exercicio2 IS
	PORT (	
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	s: out std_logic_vector(3 downto 0)
	);
END exercicio2;

architecture arq_exercicio2 of exercicio2 is
begin
 	S(0) <= (a and d) or (a and (not b) and c and d);
	s(1)<= (b and c and d) or (a and (not b) and c and (not d)) or (a and (not b) and (not c));
	s(2) <= ( b and d and (not c) ) or ( a and d and (not d) ) or ( b and c and (not d) ) or ( a and c and (not d)); 
	s(3) <= ( b and c and (not d)) or ( a and ( not d) ); 
	
end arq_exercicio2; 