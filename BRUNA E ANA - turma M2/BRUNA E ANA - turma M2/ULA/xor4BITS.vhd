LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity xor4BITS is 
port(
	in1, in2:in std_logic_vector(3 downto 0);
	over: out std_logic;
	outS: out std_logic_vector(3 downto 0)
);
end xor4BITS;
architecture arch_xor4BITS of xor4BITS is 

component xorSIMPLES
port(
entrada01: in std_logic;
entrada02: in std_logic;
Sout: out std_logic
);
end component;

begin 

xor01: xorSIMPLES
	PORT MAP ( entrada01=>in1(0), entrada02=>in2(0), Sout=>outS(0));
xor02: xorSIMPLES
	PORT MAP ( entrada01=>in1(1), entrada02=>in2(1), Sout=>outS(1));
xor03: xorSIMPLES
	PORT MAP ( entrada01=>in1(2), entrada02=>in2(2), Sout=>outS(2));
xor04: xorSIMPLES
	PORT MAP ( entrada01=>in1(3), entrada02=>in2(3), Sout=>outS(3));
	
	over<='0';
	
end arch_xor4BITS;