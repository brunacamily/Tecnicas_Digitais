LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity decod_bin_7seg is 
port(
		entrada: in std_logic_vector(3 downto 0);
		saida7SEG: out std_logic_vector(13	downto 0)
);
end decod_bin_7seg;
architecture arch_decod_bin_7seg of decod_bin_7seg is 
signal zero: std_logic;
begin 

	WITH entrada SELECT
	saida7SEG <=
		"11111100000000" WHEN "1000",
		"11111100001111" WHEN "1001",
		"11111100100000" WHEN "1010",
		"11111100100100" WHEN "1011",
		"11111101001100" WHEN "1100",
		"11111100000110" WHEN "1101",
		"11111100010010" WHEN "1110",
		"11111101001111" WHEN "1111",
		"11111110000001" WHEN "0000",
		"11111111001111" WHEN "0001",
		"11111110010010" WHEN "0010",
		"11111110000110" WHEN "0011",
		"11111111001100" WHEN "0100",
		"11111110100100" WHEN "0101",
		"11111110100000" WHEN "0110",
		"11111110001111" WHEN "0111",
		"11111101111110" WHEN OTHERS;
		
end arch_decod_bin_7seg;