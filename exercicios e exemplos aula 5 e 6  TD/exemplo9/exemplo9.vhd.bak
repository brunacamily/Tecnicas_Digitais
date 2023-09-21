LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity exemplo9 is
 Port ( A0 : in STD_LOGIC;
 A1 : in STD_LOGIC;
 A2 : in STD_LOGIC;
 D0 : out STD_LOGIC;
 D1 : out STD_LOGIC;
 D2 : out STD_LOGIC;
 D3 : out STD_LOGIC;
 D4 : out STD_LOGIC;
 D5 : out STD_LOGIC;
 D6 : out STD_LOGIC;
 D7 : out STD_LOGIC);
end exemplo9;
architecture arq_exemplo9 of exemplo9 is
begin
D0 <= ((not A0) and (not A1) and (not A2));
D1 <= ( A0 and (not A1) and (not A2));
D2 <= ((not A0) and A1 and (not A2));
D3 <= (A0 and A1 and (not A2));
D4 <= ((not A0) and (not A1) and A2);
D5 <= ( A0 and (not A1) and A2);
D6 <= ((not A0) and A1 and A2);
D7 <= ( A0 and A1 and A2);
end arq_exemplo9;