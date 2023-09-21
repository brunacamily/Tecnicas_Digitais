entity somadorparalelo is 
port(
	a, b :in bit_vector(3 downto 0);
	sum: out bit_vector(3 downto 0);
   carry: out bit
);
end somadorparalelo;
architecture arch_somadorparalelo of somadorparalelo  is 
signal sum_1: bit;
signal sum_2: bit;
signal sum_3: bit;
signal count :bit;
signal count1 :bit;
signal count2: bit;
signal count3: bit;
signal count4: bit;
signal count5: bit;
signal count6: bit;
signal count7: bit;
signal count8: bit;

component meiosomador
port(
	a,b :in bit;
	sum, carry: out bit
);
end component;


begin 
meio: meiosomador
 port map (a=>a(0), b=>b(0), sum=>sum(0), carry=>count );

meio0: meiosomador
	port map (a=>a(1), b=>b(1), sum=>sum_1, carry=>count1 );
meio1: meiosomador
	port map (a=>sum_1, b=>count, sum=>sum(1), carry=>count2 );
	count3 <= count1 or count2;
	
meio2:meiosomador
	port map ( a=>a(2), b=>b(2), sum=>sum_2, carry=>count4 );
meio3: meiosomador
	port map ( a=>sum_2, b=>count3, sum=>sum(2), carry=>count5 );
	count6 <= count4 or count5;
	
meio4:meiosomador
	port map (a=>a(3), b=>b(3), sum=>sum_3, carry=>count7 );
meio5: meiosomador
	port map (a=>sum_3, b=>count6, sum=>sum(3), carry=>count8 );
	carry <= count7 or count8;

end arch_somadorparalelo;