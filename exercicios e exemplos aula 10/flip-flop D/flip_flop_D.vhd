	LIBRARY IEEE;
	USE IEEE.std_logic_1164.all;

	ENTITY flip_flop_D IS
	  PORT(
	  d, clk: in std_logic;
	  q, q_not: out std_logic
	  );
	end flip_flop_D;
	architecture arq_flip_flop_D of flip_flop_D is
	
	signal q_temp: std_logic;
	
	begin
	PROCESS(clk)
	BEGIN
			IF clk'EVENT and clk='1' THEN
						q_temp <= d;
			else
						q_temp <= q_temp;
			END IF;
	END PROCESS;
			q <= q_temp;
			q_not <= not(q_temp);
	end arq_flip_flop_D;