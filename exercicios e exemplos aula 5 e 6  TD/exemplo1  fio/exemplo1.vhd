ENTITY exemplo1 IS
	PORT (	
	a: in bit;
	b: out bit 
	);
END exemplo1;

architecture arq_exemplo1 of exemplo1 is
begin
 	b <= a;
end arq_exemplo1;