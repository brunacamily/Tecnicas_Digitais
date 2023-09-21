LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY exemplo5 IS
	PORT (	
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
   s: out std_logic
	
	);
END exemplo5;

architecture arq_exemplo5 of exemplo5 is
signal sig1:  std_logic;
begin

	sig1<= not(a and b);
	s<= sig1 or not(c) ;	
	
end arq_exemplo5;