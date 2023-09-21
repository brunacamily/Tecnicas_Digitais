LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity OUlogico is 
port(
	ent1, ent2:in std_logic_vector(3 downto 0);
	over: out std_logic;
	Saida: out std_logic_vector(3 downto 0)
);
end OUlogico;
architecture arch_OUlogico of OUlogico is 

begin 

saida(0)<= ent1(0) or ent2(0);
saida(1)<= ent1(1) or ent2(1);
saida(2)<= ent1(2) or ent2(2);
saida(3)<= ent1(3) or ent2(3);

over<='0';

end arch_OUlogico;