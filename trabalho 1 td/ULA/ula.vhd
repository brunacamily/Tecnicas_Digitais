LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
entity ula is 
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0);
	sinalMUX:in std_logic_vector(3 downto 0);
	v,z,n: out std_logic;
	seg7: out std_logic_vector(13 downto 0)
);
end ula;
architecture arch_ula of ula is 

signal shiftESQa: std_logic_vector(3 downto 0); --resultado shift à esquerda de A
signal shiftESQb: std_logic_vector(3 downto 0); --resultado shift à esquerda de B
signal shiftDIRa: std_logic_vector(3 downto 0); --resultado shift à direita de A
signal shiftDIRb: std_logic_vector(3 downto 0); --resultado shift à direita de A
signal OVERshiftESQa: std_logic;  -- sinal de overflow do resultado shift à esquerda de A (a*2)
signal OVERshiftESQb: std_logic;  -- sinal de overflow do resultado shift à esquerda de B (B*2)
signal overDIVa: std_logic;  -- sinal de overflow do resultado shift à direita de A (a/2) 
signal overDIVb: std_logic;  -- sinal de overflow do resultado shift à direita de B (b/2)
signal fiosoma: std_logic_vector(3 downto 0);  -- resultado a+b
signal oversoma: std_logic;  -- sinal de overflow da soma
signal fioSUB: std_logic_vector(3 downto 0);  -- resultado a-b
signal overSUB: std_logic;  -- sinal de overflow da subtração
signal fioEX3a: std_logic_vector(3 downto 0);  -- resultado exesso 3 de A
signal overEX3a: std_logic;    -- sinal de overflow do exesso 3 de A
signal fioEX3b: std_logic_vector(3 downto 0);  -- resultado exesso 3 de B
signal overEX3b: std_logic;      -- sinal de overflow do exesso 3 de B
signal fioOR: std_logic_vector(3 downto 0);  -- resultado da operação OR
signal fioAND: std_logic_vector(3 downto 0);  -- resultado da operação AND
signal fioXOR: std_logic_vector(3 downto 0);  -- resultado da operação XOR
signal fioNEGa: std_logic_vector(3 downto 0);  -- resultado da operação NEGACAO DE A
signal fioNEGb: std_logic_vector(3 downto 0);  -- resultado da operação NEGACAO DE B
signal fioNAND: std_logic_vector(3 downto 0);  -- resultado da operação A NAND B
signal fioNOR: std_logic_vector(3 downto 0);   -- resultado da operação A NOR B
signal fioXNOR: std_logic_vector(3 downto 0);  -- resultado da operação A XNOR B
signal fioOVER_LOGICO_0: std_logic;  --sinal overflow da operação logica: or
signal fioOVER_LOGICO_1: std_logic;  --sinal overflow da operação logica: and 
signal fioOVER_LOGICO_2: std_logic;  --sinal overflow da operação logica: xor
signal fioOVER_LOGICO_3: std_logic;  --sinal overflow da operação logica: negacao de a
signal fioOVER_LOGICO_4: std_logic;  --sinal overflow da operação logica: negacao de b
signal fioOVER_LOGICO_5: std_logic;  --sinal overflow da operação logica:   a nand b
signal fioOVER_LOGICO_6: std_logic;  --sinal overflow da operação logica: a nor b
signal fioOVER_LOGICO_7: std_logic;  --sinal overflow da operação logica:  a xnor b


--------------------------------
signal RESULTADO: std_logic_vector(3 downto 0);  -- resultado do MUX PRINCIPAL

component shifterESQ  -- shifter 2x (a ou b), serve para os dois
 port(
	 in1: in std_logic_vector(3 downto 0);
	 indesl: in std_logic;
	 over: out std_logic;
	 outS: out std_logic_vector(3 downto 0)
);
end component;

component somador 
port(
	entA,entB:in std_logic_vector(3 downto 0);
	soma: out std_logic_vector(3 downto 0);
	over: out std_logic  -- overflow;
);
end component;

component subtrator
port(
	entA,entB:in std_logic_vector(3 downto 0);
	sub: out std_logic_vector(3 downto 0);
	over: out std_logic  -- overflow;
);
end component;

component bcd_ex3
	PORT (	
	ent: in std_logic_vector(3 downto 0);
	over: out std_logic;
	ex3: out std_logic_vector(3 downto 0)  
);
end component;

component OUlogico
	PORT (	
	ent1, ent2:in std_logic_vector(3 downto 0);
	over: out std_logic;
	Saida: out std_logic_vector(3 downto 0)
);
end component;

component Elogico
port(
	ent1, ent2:in std_logic_vector(3 downto 0);
	over: out std_logic;
	Saida: out std_logic_vector(3 downto 0)
);
end component;

component xor4BITS
	PORT (	
	in1, in2:in std_logic_vector(3 downto 0);
	over: out std_logic;
	outS: out std_logic_vector(3 downto 0)
);
end component;

component negacao
	PORT (	
	ent:in std_logic_vector(3 downto 0);
	over: out std_logic;
	OUTS: out std_logic_vector(3 downto 0)
);
end component;


component shifterDIR
	PORT (	
	in01:in std_logic_vector(3 downto 0);
	sinalDES: in std_logic;
	over: out std_logic;
	s: out std_logic_vector(3 downto 0)
);
end component;

component NAND_logico
	PORT (	
	in1: in std_logic_vector(3 downto 0);
	in2: in std_logic_vector(3 downto 0);
	over: out std_logic;
	saidaNAND: out std_logic_vector(3 downto 0)
);
end component;

component NOR_logico
	PORT (	
	in1: in std_logic_vector(3 downto 0);
	in2: in std_logic_vector(3 downto 0);
	over: out std_logic;
	saidaNOR: out std_logic_vector(3 downto 0)
);
end component;

component XNOR_logico
	PORT (	
	in1: in std_logic_vector(3 downto 0);
	in2: in std_logic_vector(3 downto 0);
	over: out std_logic;
	saidaXNOR: out std_logic_vector(3 downto 0)
);
end component;

-------------------------------------------------------------------------

component muxPRINC
	PORT (	
	in01,in02,	in03,	in04,	in05,	in06,	in07,	in08,	in09, in10,in11, in12, in13, in14, in15, in16: in std_logic_vector(3 downto 0);
	sinal: in std_logic_vector(3 downto 0);
	saidamux: out std_logic_vector(3 downto 0)
);
end component;

--------------------------------------------------------------------------

component selet_OVERFLOW
	PORT (	
	over01,over02,	over03,	over04,	over05,	over06,over07,	over08,	over09, over10,over11, over12, over13, over14, over15, over16: in std_logic;
	sinal: in  std_logic_vector(3 downto 0);
	saidaOVER: OUT std_logic
);
end component;

---------------------------------------------------------------------------

component decod_bin_7seg
	PORT (	
	entrada: in std_logic_vector(3 downto 0);
		saida7SEG: out std_logic_vector(13	downto 0)
);
end component;
---------------------------------------------------------------------------

begin 



siftEa: shifterESQ 	--shift à esquerda de A
	PORT MAP ( in1=>a, indesl=>sinalMUX(1) ,over=>OVERshiftESQa, outS=>shiftESQa);
	
siftEb: shifterESQ 	-- shift à esquerda de B
	PORT MAP ( in1=>b, indesl=>sinalMUX(0) ,over=>OVERshiftESQb, outS=>shiftESQb);
	
DIV2a: shifterDIR    -- shift à direita de A
	PORT MAP ( in01=>a, sinalDES=>sinalMUX(2), over=>overDIVa, s=>shiftDIRa);

DIV2b: shifterDIR    -- shift à direita de B
	PORT MAP ( in01=>b, sinalDES=>sinalMUX(0), over=>overDIVb, s=>shiftDIRb);
	
soma: somador			-- soma A+B
	PORT MAP ( entA=>a, entB=>b, soma=>fiosoma , over=> oversoma );
	
sub: subtrator       -- subtração A+B
	PORT MAP (entA=>a ,entB=>b ,sub=>fioSUB, over=>overSUB);
	
ex3_01: bcd_ex3      -- Exesso 3 de A (A+3)
	PORT MAP ( ent=>a,over=>overEX3a , ex3=>fioEX3a);

ex3_02: bcd_ex3     -- Exesso 3 de B  (B+3)
	PORT MAP ( ent=>b,over=>overEX3b , ex3=>fioEX3b);
	
OU: OUlogico    -- A or B - logico
	PORT MAP (ent1=>a, ent2=>b, saida=>fioOR, over=>fioOVER_LOGICO_0);

Elogic: Elogico    -- A and B - logico
	PORT MAP (ent1=>a, ent2=>b, saida=>fioAND, over=>fioOVER_LOGICO_1);

XORlogic: xor4BITS    -- A xor B - logico
	PORT MAP (in1=>a, in2=>b, outS=>fioXOR, over=>fioOVER_LOGICO_2);

nagac01: negacao    -- !A- logico
	PORT MAP (ent=>a, OUTS=>fioNEGa, over=>fioOVER_LOGICO_3);

nagac02: negacao    -- !B- logico
	PORT MAP (ent=>b, OUTS=>fioNEGb, over=>fioOVER_LOGICO_4);
	
NANDlogic : NAND_logico     -- A nand b - logico
	PORT MAP (in1=>a, in2=>b, saidaNAND=> fioNAND, over => fioOVER_LOGICO_5 );

NORlogic : NOR_logico     -- A nor B - logico
	PORT MAP (in1=>a, in2=>b, saidaNOR=> fioNOR, over => fioOVER_LOGICO_6 );

XNORlogic : XNOR_logico     -- A xnor B - logico
	PORT MAP (in1=>a, in2=>b, saidaXNOR =>fioXNOR , over=> fioOVER_LOGICO_7 );

	
-----------------------------------------------------------------------------
	
MUX: muxPRINC    -- MULTIPLEXADOR PRINCIPAL
	PORT MAP ( in01=>fiosoma ,in02=>fioSUB,	in03=>shiftESQa,	in04=>shiftESQb,	in05=>shiftDIRa,	in06=>shiftDIRb,	in07=>fioEX3a ,in08=>fioEX3b,
in09=>fioOR , in10=>fioAND , in11=>fioXOR , in12=>fioNEGa , in13=> fioNEGb, in14=>fioNAND , in15=>fioNOR , in16=>fioXNOR , sinal=> sinalMUX, saidamux=>RESULTADO);
				

selOVER: selet_OVERFLOW    -- MULTIPLEXADOR overflow
	PORT MAP ( over01=>oversoma ,over02=>overSUB ,	over03=>OVERshiftESQa ,	over04=>OVERshiftESQb ,	over05=>overDIVa ,over06=>overDIVb ,over07=>overEX3a  ,over08=>overEX3b ,
over09=>fioOVER_LOGICO_0 , over10=>fioOVER_LOGICO_1  , over11=>fioOVER_LOGICO_2 , over12=>fioOVER_LOGICO_3 , over13=> fioOVER_LOGICO_4 , over14=> fioOVER_LOGICO_5 ,
 over15=>fioOVER_LOGICO_6 , over16=>fioOVER_LOGICO_7  , sinal=> sinalMUX, saidaOVER=>v );
 
	
decod_7seg : decod_bin_7seg     -- decodificador p/ 7 segmentos
	PORT MAP (entrada=>RESULTADO, saida7SEG=>seg7 );
	
	
					WITH RESULTADO(3) SELECT
						n <=
							'1' WHEN '1',
							'0' WHEN '0',
							'1' WHEN OTHERS;
							
					WITH RESULTADO SELECT
						z <=
							'1' WHEN "0000",
							'0' WHEN OTHERS;
						

end arch_ula;