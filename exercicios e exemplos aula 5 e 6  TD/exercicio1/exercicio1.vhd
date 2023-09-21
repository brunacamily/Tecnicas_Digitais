LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY exercicio1 IS
	PORT (	
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	ex3: out std_logic_vector(3 downto 0)  
	);
END exercicio1;

architecture arq_exercicio1 of exercicio1 is
begin

 	ex3(0)<= (b and d) or (b and c) or a;
	ex3(1)<= ( (not b) and d) or ( (not b) and c) or (b and (not c) and (not d)) ;
	ex3(2) <=  ((not c) and (not d)) or (c and d);
	ex3(3) <=  ((not c) and (not d)) or (c and (not d));
	
end arq_exercicio1;