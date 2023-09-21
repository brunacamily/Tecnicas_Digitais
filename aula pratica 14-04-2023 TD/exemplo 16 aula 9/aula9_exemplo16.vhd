
entity aula9_exemplo16 is 
	port(
		limpa: in bit;
		clock16:  in bit;
		carga:in bit;
		d: in bit_vector(3 downto 0);
		q: out bit_vector(3 downto 0)

	);
end aula9_exemplo16;

architecture arch_aula9_exemplo16 of aula9_exemplo16 is 
	signal q_temp: bit;

	
component exemplo15
port(
		clear: in bit;
		clock:  in bit;
		load:in bit;
		d:in bit;
		q: out bit		);
end component;

BEGIN
ex01:exemplo15
port map (clear=>limpa , clock=>clock16 , load=>carga , d=>d(0) , q=>q(0));

ex02:exemplo15
port map (clear=>limpa , clock=>clock16 , load=>carga , d=>d(1) , q=>q(1) );

ex03:exemplo15
port map (clear=>limpa , clock=>clock16 , load=>carga , d=>d(2) , q=>q(2));

ex04:exemplo15
port map (clear=>limpa , clock=>clock16 , load=>carga , d=>d(3) , q=>q(3)  );


end arch_aula9_exemplo16;