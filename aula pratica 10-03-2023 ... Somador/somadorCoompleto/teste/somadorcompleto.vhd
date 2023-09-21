entity somadorcompleto is 
port(

c, a1,b1 :in bit;
sum1, carry1: out bit
);
end somadorcompleto;
architecture arch_somadorcompleto of somadorcompleto  is 
signal sum_1: bit;
signal count1 :bit;
signal count2: bit;

component meiosomador
port(
a,b :in bit;
sum, carry: out bit
);
end component;

begin 
meio: meiosomador
	port map (a=>a1, b=>b1, sum=>sum_1, carry=>count1 );
	
meio1: meiosomador
	port map (a=>sum_1, b=>c, sum=>sum1, carry=>count2 );
	
	carry1 <= count1 or count2;
		
end arch_somadorcompleto;
