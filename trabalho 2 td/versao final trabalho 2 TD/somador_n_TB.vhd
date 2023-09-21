library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use STD.textio.all;
USE IEEE.NUMERIC_STD.ALL;

entity somador_n_TB is
end somador_n_TB;

architecture rtl of somador_n_TB is

component somador_n
generic(N : integer := 4);
port 
	(
		a,b	   : in std_logic_vector(N-1 downto 0);
		s	   : out std_logic_vector(N-1 downto 0);
		cout 	   : out std_logic
	);
end component;

signal a,b : std_logic_vector(7 downto 0);
signal s : std_logic_vector(7 downto 0);
signal cout : std_logic;



----------------------------------------------------------------------------

-- Funcao de String para STD_LOGIC_VECTOR:
function str_to_stdvec(inp: string) return std_logic_vector is
	variable temp: std_logic_vector(inp'range);
	begin
		for i in inp'range loop
			if (inp(i) = '1') then
					temp(i):= '1';
			elsif(inp(i)='0') then
		      temp(i):= '0';
			end if;
		end loop;
		return temp; 
end function str_to_stdvec;

-- Funcao de STD_LOGIC_VECTOR para string:
function stdvec_to_str(inp: std_logic_vector) return string is
	variable temp: string(inp'left+1 downto 1);
	begin
		for i in inp'reverse_range loop
			if (inp(i) = '1') then
					temp(i+1):= '1';
			elsif(inp(i)='0') then
					temp(i+1):= '0';
			end if;
		end loop;
		return temp; 
end function stdvec_to_str;
----------------------------------------------------------------------------




begin

UUT: somador_n generic map(N => 8)port map(a,b,s,cout);


P1: process
begin

   a <= x"00";
   b <= x"01";
   
   wait for 40 ns;
   
   a <= x"02";
   b <= x"01";
   
  wait for 40 ns;
   
   a <= x"0F";
   b <= x"01";
   
   wait;


end process;


--P2: process
--arquivo de entrada--
--file fileType : text;
--variable inType : std_logic_vector(15 downto 0);
--variable str_type : string(16 downto 1);
--variable lineType : line;
--arquivo de saida--
--file outfile : text;
--variable out1 : std_logic_vector(7 downto 0);
--variable str_out1 : string(8 downto 1);
--variable outline : line;



--begin

--	FILE_OPEN(fileType,"entrada.txt",READ_MODE);
--	FILE_OPEN(outfile,"saida.txt",WRITE_MODE);

--	WHILE NOT ENDFILE(fileType) LOOP
		
		
		
--		readline(fileType,lineType);
--		read(lineType,str_type);
--		inType := str_to_stdvec(str_type);
		
--		a <= inType(15 downto 8);
--		b <= inType(7 downto 0);
		
--		WAIT for 20 ns;
		
--		out1 := s;
--		str_out1 := stdvec_to_str(out1);
--		write(outline,str_out1);
--		writeline(outfile,outline);
		

--	END LOOP;
	
--	wait;

--end process;


end rtl;