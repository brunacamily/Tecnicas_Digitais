library verilog;
use verilog.vl_types.all;
entity mux2x1 is
    port(
        entrada         : in     vl_logic;
        desloca         : in     vl_logic;
        saida           : out    vl_logic
    );
end mux2x1;
