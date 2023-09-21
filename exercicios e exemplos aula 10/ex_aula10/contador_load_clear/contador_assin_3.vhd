-- contador assíncrono de 3 bits com componentes Flip-flops D

		LIBRARY IEEE;
		USE IEEE.std_logic_1164.all;

		entity contador_assin_3 is 
		port(
			d: in std_logic_vector(2 downto 0);
			clear: in std_logic;
			clk: in std_logic;
			q_out: out std_logic_vector(2 downto 0);
			q_not: out std_logic_vector(2 downto 0)
		);
			
		end contador_assin_3;
		architecture arch_contador_assin_3 of contador_assin_3 is 
		
		signal q_temp: std_logic_vector(2 downto 0);
		
		begin 
		
		
				pro01:	PROCESS(clk)
				BEGIN
						IF clk'EVENT and clk='1' THEN
									q_temp(0) <= d(0);
						else
									q_temp(0) <= q_temp(0);
						END IF;
				END PROCESS;
					
				pro02:	PROCESS(q_temp(0))
						BEGIN
						IF q_temp(0)'EVENT and q_temp(0)='1' THEN
									q_temp(1) <= d(1);
						else
									q_temp(1) <= q_temp(1);
						END IF;
				END PROCESS;			
						
				pro03:	PROCESS(q_temp(1))
						BEGIN
						IF q_temp(1)'EVENT and q_temp(1)='1' THEN
									q_temp(2) <= d(2);
						else
									q_temp(2) <= q_temp(2);
						END IF;
				END PROCESS;
				
	
			pro00:	PROCESS(clear)
						BEGIN
						IF clear='1' THEN
									q_out <= "000";
									q_not <= "111";
						else 
								q_out(0) <= q_temp(0);
								q_not(0) <= not(q_temp(0));
								q_out(1) <= q_temp(1);
								q_not(1) <= not(q_temp(1));
								q_out(2) <= q_temp(2);
								q_not(2) <= not(q_temp(2));
						
						END IF;
				END PROCESS;
				
	

		end arch_contador_assin_3;