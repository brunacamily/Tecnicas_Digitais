library verilog;
use verilog.vl_types.all;
entity flip_flop_D is
    port(
        entrada         : in     vl_logic;
        limpa           : in     vl_logic;
        clock           : in     vl_logic;
        saida           : out    vl_logic;
        saida_neg       : out    vl_logic
    );
end flip_flop_D;
