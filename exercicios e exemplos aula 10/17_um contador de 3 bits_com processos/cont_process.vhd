-- contador assíncrono de 3 bits com componentes Flip-flops D

		LIBRARY IEEE;
		USE IEEE.std_logic_1164.all;

		entity cont_process is 
		port(
			d: in std_logic_vector(2 downto 0);
			clear: in std_logic;
			clock: in std_logic;
			load: in std_logic;
			q: out std_logic_vector(2 downto 0)
		);
			
		end cont_process;
		architecture arch_cont_process of cont_process is 
		
		signal q_temp: std_logic_vector(2 downto 0);
		
		begin
	
	
		
			processo1: PROCESS(clock, clear)
		BEGIN
			IF clear = '1' THEN
					q_temp(0) <= '0';
				ELSIF clock'EVENT and clock='1' THEN
					IF load = '1' THEN
						q_temp(0) <= d(0);
					ELSE
						q_temp(0) <= q_temp(0);
					END IF;
			END IF;
		END PROCESS;
		q(0) <= q_temp(0);

		
		
		
			
			processo2: PROCESS(clock, clear)
		BEGIN
			IF clear = '1' THEN
					q_temp(1) <= '0';
				ELSIF clock'EVENT and clock='1' THEN
					IF load = '1' THEN
						q_temp(1) <= d(1);
					ELSE
						q_temp(1) <= q_temp(1);
					END IF;
			END IF;
		END PROCESS;
		q(1) <= q_temp(1);
		
		
		
		
				processo3: PROCESS(clock, clear)
		BEGIN
			IF clear = '1' THEN
					q_temp(2) <= '0';
				ELSIF clock'EVENT and clock='1' THEN
					IF load = '1' THEN
						q_temp(2) <= d(2);
					ELSE
						q_temp(2) <= q_temp(2);
					END IF;
			END IF;
		END PROCESS;
		q(2) <=q_temp(1) and q_temp(0);
		
		

		end arch_cont_process;