LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity Elogico is 
port(
	ent1, ent2:in std_logic_vector(3 downto 0);
	over: out std_logic;
	Saida: out std_logic_vector(3 downto 0)
);
end Elogico;
architecture arch_Elogico of Elogico is 

begin 

saida(0)<= ent1(0) and ent2(0);
saida(1)<= ent1(1) and ent2(1);
saida(2)<= ent1(2) and ent2(2);
saida(3)<= ent1(3) and ent2(3);

over<='0';

end arch_Elogico;