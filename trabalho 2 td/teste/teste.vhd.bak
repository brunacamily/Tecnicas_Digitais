--   teste contador 6 bits (0 a 63)

		LIBRARY IEEE;
		USE IEEE.std_logic_1164.all;
		USE IEEE.std_logic_unsigned.all;

		entity teste is 
		port(
			CLOCK: in std_logic;
			CLEAR: in std_logic;
			LOAD: in std_logic;
			HOLD: in std_logic;
			CRES_DECRES: in std_logic;
--			SINAL_ESCOLHE_CLOCK: in std_logic;
			entrada_digite:  in std_logic_vector(5 downto 0); 
			SEGs: out std_logic_vector(5 downto 0);
			MIN: out std_logic_vector(5 downto 0);
			
			out_7seguiment_segundos: out std_logic_vector(13 downto 0);
			out_7seguiment_minutos: out std_logic_vector(13 downto 0)
			
	      );
		end teste;
		
		architecture arch_teste of teste is 
		
			signal  fio_segundo: std_logic_vector(5 downto 0) ;
			signal  fio_minuto: std_logic_vector(5 downto 0) ;
			signal  fio_info_seg: std_logic_vector(5 downto 0) ;
			
--			signal  clock_escolhido: std_logic;
--			signal  clock_lentoo: std_logic;
--			signal  clock_rapido: std_logic;
			
--			constant TIMECONST_LENT : integer := 25000000;
--			constant TIMECONST_FAST : integer := 5000000;
--			signal count0, count1: integer range 0 to 1000 := 0;
--			signal D: STD_LOGIC := '0';
				
			
		begin 
		fio_info_seg<="000101";
		

---------------------------------------------------------			
--		divisor_clock_01: process (CLOCK)
--		begin
--			if (CLOCK'event and CLOCK = '1') then
--				count0 <= count0 + 1;
--				if (count0 = TIMECONST_LENT) then
--						D <= not D;
--				end if;
--			end if;
--		clock_lentoo <= D;
--		end process;
--------------------------------------------------------
--		divisor_clock_02: process (CLOCK)
--		begin
--			if (CLOCK'event and CLOCK = '1') then
--				count1 <= count1 + 1;
--				if (count1 = TIMECONST_FAST) then
--						D <= not D;
--				end if;
--			end if;
--		clock_rapido <= D;
--		end process;
------------------------------------------------------------
--									-- ESCOLHA DO CLOCK --
--									WITH SINAL_ESCOLHE_CLOCK SELECT
--										clock_escolhido <=
--										clock_lentoo WHEN '0',
--										clock_rapido WHEN '1',
--										'0' WHEN OTHERS;


--         **trocar o clock para clock_escolhido e descomentar os anteriores



		processo01: 	process(CLOCK,CLEAR,HOLD )
		variable segundo, minuto: std_logic_vector(5 downto 0);
		begin		
			if CLEAR  = '1' then
					segundo := "000000";
					minuto := "000000";
				elsif CLOCK'event and CLOCK = '1' then 
						if HOLD = '1' then	
							segundo := segundo;
							minuto := minuto;
							elsif LOAD = '1' then
								if CRES_DECRES = '1' then
									minuto:=entrada_digite;	
									segundo:=fio_info_seg;
									elsif CRES_DECRES = '0' then
									segundo:="000000";
								end if;

								elsif CRES_DECRES = '0' then
										segundo := segundo + 1;
										if segundo = fio_info_seg and minuto < entrada_digite then
											segundo:="000000";
											minuto := minuto + 1;
										end if;
									
									elsif CRES_DECRES = '1' then
										segundo:=segundo -1;
										if segundo = fio_info_seg -1 then
											minuto := minuto -1;
											elsif segundo="000000" and minuto>"000000" then
												segundo:=fio_info_seg;
										end if;		
						end if;
			end if;
			fio_segundo <= segundo;
			fio_minuto <= minuto;
	end process;


	SEGs <= fio_segundo;
	MIN <= fio_minuto;
			




			
---------------------------------------------------------------------------------------							

	WITH fio_segundo SELECT
	out_7seguiment_segundos <= 
		"00000010000001" WHEN "000000", -- 00
		"00000011001111" WHEN "000001", -- 01
		"00000010010010" WHEN "000010", -- 02
		"00000010000110" WHEN "000011", -- 03
		"00000011001100" WHEN "000100", -- 04
		"00000010100100" WHEN "000101", -- 05
		"00000010100000" WHEN "000110", -- 06
		"00000010001111" WHEN "000111", -- 07
		"00000010000000" WHEN "001000", -- 08
		"00000010000100" WHEN "001001", -- 09
		"10011110000001" WHEN "001010", -- 10
		"10011111001111" WHEN "001011", -- 11
		"10011110010010" WHEN "001100", -- 12
		"10011110000110" WHEN "001101", -- 13
		"10011111001100" WHEN "001110", -- 14
		"10011110100100" WHEN "001111", -- 15
		"10011110100000" WHEN "010000", -- 16 
		"10011110001111" WHEN "010001", -- 17
		"10011110000000" WHEN "010010", -- 18
		"10011110000100" WHEN "010011", -- 19
		"00100100000001" WHEN "010100", -- 20
		"00100101001111" WHEN "010101", -- 21
		"00100100010010" WHEN "010110", -- 22
		"00100100000110" WHEN "010111", -- 23
		"00100101001100" WHEN "011000", -- 24
		"00100100100100" WHEN "011001", -- 25
		"00100100100000" WHEN "011010", -- 26
		"00100100001111" WHEN "011011", -- 27
		"00100100000000" WHEN "011100", -- 28
		"00100100000100" WHEN "011101", -- 29
		"00001100000001" WHEN "011110", -- 30 
		"00001101001111" WHEN "011111", -- 31 
		"00001100010010" WHEN "100000", -- 32
		"00001100000110" WHEN "100001", -- 33 
		"00001101001100" WHEN "100010", -- 34
		"00001100100100" WHEN "100011", -- 35
		"00001100100000" WHEN "100100", -- 36
		"00001100001111" WHEN "100101", -- 37 
		"00001100000000" WHEN "100110", -- 38
		"00001100000100" WHEN "100111", -- 39 
		"10011000000001" WHEN "101000", -- 40
		"10011001001111" WHEN "101001", -- 41 
		"10011000010010" WHEN "101010", -- 42
		"10011000000110" WHEN "101011", -- 43 
		"10011001001100" WHEN "101100", -- 44
		"10011000100100" WHEN "101101", -- 45
		"10011000100000" WHEN "101110", -- 46
		"10011000001111" WHEN "101111", -- 47
		"10011000000000" WHEN "110000", -- 48
		"10011000000100" WHEN "110001", -- 49
		"01001000000001" WHEN "110010", -- 50
		"01001001001111" WHEN "110011", -- 51
		"01001000010010" WHEN "110100", -- 52
		"01001000000110" WHEN "110101", -- 53
		"01001001001100" WHEN "110110", -- 54
		"01001000100100" WHEN "110111", -- 55
		"01001000100000" WHEN "111000", -- 56
		"01001000001111" WHEN "111001", -- 57
		"01001000000000" WHEN "111010", -- 58
		"01001000000100" WHEN "111011", -- 59 
		"11111101111110" WHEN OTHERS;
		
		


	WITH fio_minuto SELECT
	out_7seguiment_minutos <= 
		"00000010000001" WHEN "000000", -- 00
		"00000011001111" WHEN "000001", -- 01
		"00000010010010" WHEN "000010", -- 02
		"00000010000110" WHEN "000011", -- 03
		"00000011001100" WHEN "000100", -- 04
		"00000010100100" WHEN "000101", -- 05
		"00000010100000" WHEN "000110", -- 06
		"00000010001111" WHEN "000111", -- 07
		"00000010000000" WHEN "001000", -- 08
		"00000010000100" WHEN "001001", -- 09
		"10011110000001" WHEN "001010", -- 10
		"10011111001111" WHEN "001011", -- 11
		"10011110010010" WHEN "001100", -- 12
		"10011110000110" WHEN "001101", -- 13
		"10011111001100" WHEN "001110", -- 14
		"10011110100100" WHEN "001111", -- 15
		"10011110100000" WHEN "010000", -- 16 
		"10011110001111" WHEN "010001", -- 17
		"10011110000000" WHEN "010010", -- 18
		"10011110000100" WHEN "010011", -- 19
		"00100100000001" WHEN "010100", -- 20
		"00100101001111" WHEN "010101", -- 21
		"00100100010010" WHEN "010110", -- 22
		"00100100000110" WHEN "010111", -- 23
		"00100101001100" WHEN "011000", -- 24
		"00100100100100" WHEN "011001", -- 25
		"00100100100000" WHEN "011010", -- 26
		"00100100001111" WHEN "011011", -- 27
		"00100100000000" WHEN "011100", -- 28
		"00100100000100" WHEN "011101", -- 29
		"00001100000001" WHEN "011110", -- 30 
		"00001101001111" WHEN "011111", -- 31 
		"00001100010010" WHEN "100000", -- 32
		"00001100000110" WHEN "100001", -- 33 
		"00001101001100" WHEN "100010", -- 34
		"00001100100100" WHEN "100011", -- 35
		"00001100100000" WHEN "100100", -- 36
		"00001100001111" WHEN "100101", -- 37 
		"00001100000000" WHEN "100110", -- 38
		"00001100000100" WHEN "100111", -- 39 
		"10011000000001" WHEN "101000", -- 40
		"10011001001111" WHEN "101001", -- 41 
		"10011000010010" WHEN "101010", -- 42
		"10011000000110" WHEN "101011", -- 43 
		"10011001001100" WHEN "101100", -- 44
		"10011000100100" WHEN "101101", -- 45
		"10011000100000" WHEN "101110", -- 46
		"10011000001111" WHEN "101111", -- 47
		"10011000000000" WHEN "110000", -- 48
		"10011000000100" WHEN "110001", -- 49
		"01001000000001" WHEN "110010", -- 50
		"01001001001111" WHEN "110011", -- 51
		"01001000010010" WHEN "110100", -- 52
		"01001000000110" WHEN "110101", -- 53
		"01001001001100" WHEN "110110", -- 54
		"01001000100100" WHEN "110111", -- 55
		"01001000100000" WHEN "111000", -- 56
		"01001000001111" WHEN "111001", -- 57
		"01001000000000" WHEN "111010", -- 58
		"01001000000100" WHEN "111011", -- 59 
		"11111101111110" WHEN OTHERS;
		
	
	end arch_teste;