LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity selet_OVERFLOW is 
port(
	over01: in std_logic;
	over02: in std_logic;
	over03: in std_logic;
	over04: in std_logic;
	over05: in std_logic;
	over06: in std_logic;
	over07: in std_logic;
	over08: in std_logic;
	over09: in std_logic;
	over10: in std_logic;
	over11: in std_logic;
	over12: in std_logic;
	over13: in std_logic;
	over14: in std_logic;
	over15: in std_logic;
	over16: in std_logic;
	sinal: in  std_logic_vector(3 downto 0);
	saidaOVER: OUT std_logic	
);
end selet_OVERFLOW;
architecture arch_selet_OVERFLOW of selet_OVERFLOW is 
begin 

	WITH sinal SELECT
	saidaOVER <=
		over01 WHEN "0000",
		over02 WHEN "0001",
		over03 WHEN "0010",
		over04 WHEN "0011",
		over05 WHEN "0100",
		over06 WHEN "0101",
		over07 WHEN "0110",
		over08 WHEN "0111",
		over09 WHEN "1000",
		over10 WHEN "1001",
		over11 WHEN "1010",
		over12 WHEN "1011",
		over13 WHEN "1100",
		over14 WHEN "1101",
		over15 WHEN "1110",
		over16 WHEN "1111",
		'1' WHEN OTHERS;


end arch_selet_OVERFLOW;