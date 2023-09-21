library ieee;
USE IEEE.std_logic_1164.all;
ENTITY exemplo6 IS
	PORT (	
	bus_1: in std_logic_vector(1 downto 0);
	bus_2: out  std_logic_vector(1 downto 0)
	
 ); END exemplo6;

architecture arq_exemplo6 of exemplo6 is
signal a: std_logic_vector(1 downto 0);

begin
	a(0) <= bus_1(0);
	a(1) <= bus_1(1);
	bus_2 <= a;
	
end arq_exemplo6;