entity somadorparalelo2 is 
port(
	a, b :in bit_vector(3 downto 0);
	sum: out bit_vector(3 downto 0);
   carry: out bit
);
end somadorparalelo2;
architecture arch_somadorparalelo2 of somadorparalelo2  is 
signal count :bit_vector(3 downto 0);
component meiosomador
port(
	a,b :in bit;
	sum, carry: out bit
);
end component;
component somadorcompleto
port(
	c, a1,b1 :in bit;
	sum1, carry1: out bit
);
end component;
begin 
meio: meiosomador
	port map (a=>a(0), b=>(not b(0)), sum=>sum(0), carry=>count(0) );
complet1: somadorcompleto
	port map ( a1=>a(1), b1=>(not b(1)), c=>count(0), sum1=>sum(1)  , carry1=> count(1));
complet2: somadorcompleto
	port map ( a1=>a(2), b1=>(not b(2)), c=>count(1), sum1=> sum(2), carry1=> count(2) );
complet3: somadorcompleto
	port map ( a1=>a(3), b1=>(not b(3)), c=>count(2), sum1=>sum(3), carry1=> carry );
	
end arch_somadorparalelo2;