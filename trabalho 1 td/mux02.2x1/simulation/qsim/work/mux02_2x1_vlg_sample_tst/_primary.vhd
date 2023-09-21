library verilog;
use verilog.vl_types.all;
entity mux02_2x1_vlg_sample_tst is
    port(
        desloca         : in     vl_logic;
        entrada01       : in     vl_logic;
        entrada02       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux02_2x1_vlg_sample_tst;
