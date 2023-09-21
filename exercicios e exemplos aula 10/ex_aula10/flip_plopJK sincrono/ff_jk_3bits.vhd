-- contador assíncrono de 3 bits com componentes Flip-flops D

		LIBRARY IEEE;
		USE IEEE.std_logic_1164.all;

		entity ff_jk_3bits is 
		port(
			j,k: in std_logic_vector(2 downto 0);
			clear: in std_logic;
			clk: in std_logic;
			q_out: out std_logic_vector(2 downto 0);
			q_not: out std_logic_vector(2 downto 0)
		);
			
		end ff_jk_3bits;
		architecture arch_ff_jk_3bits of ff_jk_3bits is 
		
		signal q_temp: std_logic_vector(2 downto 0);
		
		begin 
		
		
		processo1: PROCESS(clk, clear)
		BEGIN
		IF clear = '1' THEN
			q_temp(0) <= q_temp(0);
		ELSIF clk'EVENT and clk='1' THEN
			IF j(0)='0' and k(0)='0' THEN
				q_temp(0) <= q_temp(0);
			ELSIF j(0)='0' and k(0)='1' THEN
				q_temp(0) <= '0';
				ELSIF j(0)='1' and k(0)='0' THEN
					q_temp(0) <= '1';
					else
						q_temp(0) <= not q_temp(0);						
			END IF;
		END IF;
		END PROCESS;	

				processo2: PROCESS(clk, clear)
				BEGIN
				IF clear = '1' THEN
					q_temp(1) <= q_temp(1);
					
				ELSIF clk'EVENT and clk='1' THEN
					IF j(1)='0' and k(1)='0' THEN
						q_temp(1) <= q_temp(1);
						
					ELSIF j(1)='0' and k(1)='1' THEN
						q_temp(1) <= '0';
						
						ELSIF j(1)='1' and k(1)='0' THEN
							q_temp(1) <= '1';
							
							else
								q_temp(1) <= not q_temp(1);						
					END IF;
				END IF;
				END PROCESS;	


			k(2)<=q_temp(0) and q_temp(1);
			processo3: PROCESS(clk, clear)
				BEGIN
				IF clear = '1' THEN
					q_temp(2) <= q_temp(2);
					
				ELSIF clk'EVENT and clk='1' THEN
					IF j(2)='0' and k(2)='0' THEN
						q_temp(2) <= q_temp(2);
						
					ELSIF j(1)='0' and k(1)='1' THEN
						q_temp(2) <= '0';
						
						ELSIF j(2)='1' and k(2)='0' THEN
							q_temp(2) <= '1';
							
							else
								q_temp(2) <= not q_temp(2);						
					END IF;
				END IF;
				END PROCESS;





q_out(0)<=q_temp(0);
q_not(0)<=not q_temp(0);
q_out(1)<=q_temp(1);
q_not(1)<=not q_temp(1);
q_out(2)<=q_temp(2);
q_not(2)<=not q_temp(2);




		end arch_ff_jk_3bits;