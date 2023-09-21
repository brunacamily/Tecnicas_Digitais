library verilog;
use verilog.vl_types.all;
entity exemplo15_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        d               : in     vl_logic;
        load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exemplo15_vlg_sample_tst;
