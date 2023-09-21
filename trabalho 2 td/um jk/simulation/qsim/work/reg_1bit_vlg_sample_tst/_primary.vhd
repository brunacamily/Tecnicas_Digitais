library verilog;
use verilog.vl_types.all;
entity reg_1bit_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        d               : in     vl_logic;
        hold            : in     vl_logic;
        load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg_1bit_vlg_sample_tst;
