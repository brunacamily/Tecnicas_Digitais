LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY exemplo8 IS
	PORT (	
	a: in std_logic;
	b: in std_logic;
	c: in std_logic;
	d: in std_logic;
	sel: in std_logic_vector(1 downto 0);
	s: out std_logic
	);
END exemplo8;

architecture arq_exemplo8 of exemplo8 is
begin
 	s <= ((not sel(0)) and (not sel(1) and a))or -- se entrada 00, saida = a
	     (  (not sel(0) and sel(1) and b)) or    -- se entrada 01, saida = b
		  ( sel(0) and (not sel(1) and c)) or     -- se entrada 10, saida = c
		  (sel(0) and sel(1) and d);              -- se entrada 11, saida = d
end arq_exemplo8; 