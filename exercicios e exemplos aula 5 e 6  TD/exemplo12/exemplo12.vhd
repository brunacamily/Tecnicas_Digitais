LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY exemplo12 IS
	PORT (	
	a: in std_logic_vector(3 downto 0);
	sel: in std_logic_vector(1 downto 0);
	s: out std_logic
	);
END exemplo12;
architecture arq_exemplo12 of exemplo12 is
begin
 	 WITH sel SELECT
	s <=
	a(0)	WHEN "00",
	a(1)	WHEN "01",
	a(2)  WHEN "10",
	a(3)	WHEN "11",
	'0' WHEN others;
end arq_exemplo12; 