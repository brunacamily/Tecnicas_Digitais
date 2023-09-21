-- contador 6 bits (0 a 63)

		LIBRARY IEEE;
		USE IEEE.std_logic_1164.all;

		entity flip_flop_JK is 
		port(
			clk: in std_logic;
			q_out: out std_logic_vector(5 downto 0);
			q_not: out std_logic_vector(5 downto 0)			
      );
		end flip_flop_JK;
		
		architecture arch_flip_flop_JK of flip_flop_JK is 
		
		signal j,k: std_logic_vector(5 downto 0);
		signal q_temp: std_logic_vector(5 downto 0);
		
		begin 
		j(0)<='1';
		k(0)<='1';
		
		
		processo1: PROCESS(clk)
		BEGIN
		IF clk'EVENT and clk='1' THEN
			IF j(0)='0' and k(0)='0' THEN
				q_temp(0) <= q_temp(0);
			ELSIF j(0)='0' and k(0)='1' THEN
				q_temp(0) <= '0';
				ELSIF j(0)='1' and k(0)='0' THEN
					q_temp(0) <= '1';
					ELSIF j(0)='1' and k(0)='1' THEN
						q_temp(0) <= not q_temp(0);
							else
						q_temp(0) <= q_temp(0);
			END IF;
		END IF;
		END PROCESS;	
		
		j(1)<=q_temp(0);
		k(1)<=q_temp(0);
		
		
							processo2: PROCESS(clk)
							BEGIN	
							IF clk'EVENT and clk='1' THEN
								IF j(1)='0' and k(1)='0' THEN
									q_temp(1) <= q_temp(1);
								ELSIF j(1)='0' and k(1)='1' THEN
									q_temp(1) <= '0';
									ELSIF j(1)='1' and k(1)='0' THEN
										q_temp(1) <= '1';
											ELSIF j(1)='1' and k(1)='1' THEN
													q_temp(1) <= not q_temp(1);
												else
													q_temp(1) <= q_temp(1);
								END IF;
							END IF;
							END PROCESS;	
						j(2)<=q_temp(0) and q_temp(1);
						k(2)<=q_temp(0) and q_temp(1);
						
			
			processo3: PROCESS(clk)
				BEGIN
				IF clk'EVENT and clk='1' THEN
					IF j(2)='0' and k(2)='0' THEN
						q_temp(2) <= q_temp(2);
					ELSIF j(2)='0' and k(2)='1' THEN
						q_temp(2) <= '0';
						ELSIF j(2)='1' and k(2)='0' THEN
							q_temp(2) <= '1';
							ELSIF j(2)='1' and k(2)='1' THEN
								q_temp(2) <= not q_temp(2);
								else
									q_temp(2) <= q_temp(2);				
					END IF;
				END IF;
				END PROCESS;
			j(3)<=j(2) and q_temp(2);
			k(3)<=k(2) and q_temp(2);
				
				
				processo4: PROCESS(clk)
				BEGIN
				IF clk'EVENT and clk='1' THEN
					IF j(3)='0' and k(3)='0' THEN
						q_temp(3) <= q_temp(3);
					ELSIF j(3)='0' and k(3)='1' THEN
						q_temp(3) <= '0';
						ELSIF j(3)='1' and k(3)='0' THEN
							q_temp(3) <= '1';
							ELSIF j(3)='1' and k(3)='1' THEN
								q_temp(3) <= not q_temp(3);
								else
									q_temp(3) <= q_temp(3);				
					END IF;
				END IF;
				END PROCESS;
			j(4)<=j(3) and q_temp(3);
			k(4)<=k(3) and q_temp(3);
				
				
				processo5: PROCESS(clk)
				BEGIN
				IF clk'EVENT and clk='1' THEN
					IF j(4)='0' and k(4)='0' THEN
						q_temp(4) <= q_temp(4);
					ELSIF j(4)='0' and k(4)='1' THEN
						q_temp(4) <= '0';
						ELSIF j(4)='1' and k(4)='0' THEN
							q_temp(4) <= '1';
							ELSIF j(4)='1' and k(4)='1' THEN
								q_temp(4) <= not q_temp(4);
								else
									q_temp(4) <= q_temp(4);				
					END IF;
				END IF;
				END PROCESS;	
			j(5)<=j(4) and q_temp(4);
			k(5)<=k(4) and q_temp(4);
				
				
				processo6: PROCESS(clk)
				BEGIN
				IF clk'EVENT and clk='1' THEN
					IF j(5)='0' and k(5)='0' THEN
						q_temp(5) <= q_temp(5);
					ELSIF j(5)='0' and k(5)='1' THEN
						q_temp(5) <= '0';
						ELSIF j(5)='1' and k(5)='0' THEN
							q_temp(5) <= '1';
							ELSIF j(5)='1' and k(5)='1' THEN
								q_temp(5) <= not q_temp(5);
								else
									q_temp(5) <= q_temp(5);				
					END IF;
				END IF;
				END PROCESS;


q_out <=q_temp;
q_not<=not q_temp ;



		end arch_flip_flop_JK;