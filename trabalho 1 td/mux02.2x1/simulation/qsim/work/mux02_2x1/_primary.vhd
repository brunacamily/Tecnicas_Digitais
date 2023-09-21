library verilog;
use verilog.vl_types.all;
entity mux02_2x1 is
    port(
        entrada01       : in     vl_logic;
        entrada02       : in     vl_logic;
        desloca         : in     vl_logic;
        saida           : out    vl_logic
    );
end mux02_2x1;
