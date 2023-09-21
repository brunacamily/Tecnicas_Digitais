LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY bcd_ex3 IS
	PORT (	
	ent: in std_logic_vector(3 downto 0);
	over: out std_logic;
	ex3: out std_logic_vector(3 downto 0)  
	);
END bcd_ex3;

architecture arq_bcd_ex3 of bcd_ex3 is
begin

 	ex3(0)<= (ent(1) and (not ent(0))) or ((not ent(1)) and (not ent(0))); 
	ex3(1)<= (ent(1) and ent(0)) or ((not ent(1)) and (not ent(0)));     --
	ex3(2) <=  ((not ent(3)) and (not ent(2)) and (ent(0) or ent(1)))or ((not ent(2)) and ent(3) and (ent(0) or ent(1))) or    ((not ent(1)) and (not ent(0)) and ent(2));
	ex3(3) <= ((not ent(3)) and ent(2) and (ent(0) or ent(1))) or (ent(3) and     ((not ent(2)) or  ((not ent(1)) and (not ent(0)))  )    );
	
	
	WITH ent SELECT
	over <=
		'1' WHEN "0101",
		'1' WHEN "0110",
		'1' WHEN "0111",
		'0' WHEN OTHERS;
	
end arq_bcd_ex3;