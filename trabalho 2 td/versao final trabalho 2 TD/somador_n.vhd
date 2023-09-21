library ieee;
use ieee.std_logic_1164.all;

entity somador_n is
generic(N : integer := 4);
port 
	(
		a,b	   : in std_logic_vector(N-1 downto 0);
		s	   : out std_logic_vector(N-1 downto 0);
		cout 	   : out std_logic
	);

end somador_n;

architecture rtl of somador_n is

component FA
port 
	(
		a,b,cin	   : in std_logic;
		s,cout	   : out std_logic
	);

end component;

signal c : std_logic_vector(N downto 0);

begin

	G1: FOR i in 0 to N-1 GENERATE
	    SN: FA port map(a(i),b(i),c(i),s(i),c(i+1));
	END GENERATE;

c(0) <= '0';
cout <= c(N);

end rtl;