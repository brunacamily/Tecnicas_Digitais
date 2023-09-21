LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY exemplo11 IS
	PORT (	
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	s: out std_logic
	);
END exemplo11;
architecture arq_exemplo11 of exemplo11 is
begin
 	 WITH sel SELECT
	s <=
	a	WHEN "00",
	b	WHEN "01",
	c	WHEN "10",
	d	WHEN "11",
	'0' WHEN others;
end arq_exemplo11; 