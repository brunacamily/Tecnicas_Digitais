library verilog;
use verilog.vl_types.all;
entity mux2x1_vlg_sample_tst is
    port(
        desloca         : in     vl_logic;
        entrada         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux2x1_vlg_sample_tst;
