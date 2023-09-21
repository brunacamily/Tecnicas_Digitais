library verilog;
use verilog.vl_types.all;
entity reg_1bit_vlg_check_tst is
    port(
        q_not           : in     vl_logic;
        q_out           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end reg_1bit_vlg_check_tst;
