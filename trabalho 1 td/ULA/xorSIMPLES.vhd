LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity xorSIMPLES is 
port(
entrada01: in std_logic;
entrada02: in std_logic;
Sout: out std_logic
);
end xorSIMPLES;
architecture arch_xorSIMPLES of xorSIMPLES is 
begin 

Sout <= entrada01 xor entrada02;

end arch_xorSIMPLES;