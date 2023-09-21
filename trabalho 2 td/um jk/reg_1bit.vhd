-- contador 6 bits (0 a 63)

		LIBRARY IEEE;
		USE IEEE.std_logic_1164.all;
		USE IEEE.std_logic_unsigned.all;

		entity reg_1bit is 
		port(
			clock: in std_logic;
	      k: out std_logic		
      );
		end reg_1bit;
		
		architecture arch_reg_1bit of reg_1bit is 
		
			signal j:  std_logic;
			
		begin 
		
				processo01: PROCESS(clock)
				variable j:  std_logic;
		BEGIN
j:='0';
				IF clock'EVENT and clock='1' THEN
					j:=j+1;
		END IF;
		END PROCESS;
		
		k<=j;
		
		end arch_reg_1bit;