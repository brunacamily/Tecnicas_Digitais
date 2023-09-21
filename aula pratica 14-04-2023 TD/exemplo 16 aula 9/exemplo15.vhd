
entity exemplo15 is 
	port(
		clear: in bit;
		d:in bit;
		load:in bit;
		clock:  in bit;
		q: out bit

	);
end exemplo15;

architecture arch_exemplo15 of exemplo15 is 
	signal q_temp: bit;
BEGIN
processo1: PROCESS(clock, clear)
BEGIN
			IF clear = '1' THEN
				q_temp <= '0';
			ELSIF clock'EVENT and clock='1' THEN
				IF load = '1' THEN
						q_temp <= d;
				ELSE
						q_temp <= q_temp;
				END IF;
			END IF;
END PROCESS;
q <= q_temp;

end arch_exemplo15;