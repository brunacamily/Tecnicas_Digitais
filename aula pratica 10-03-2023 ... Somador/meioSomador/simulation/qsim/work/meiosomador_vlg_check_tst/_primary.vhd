library verilog;
use verilog.vl_types.all;
entity meiosomador_vlg_check_tst is
    port(
        carry           : in     vl_logic;
        sum             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end meiosomador_vlg_check_tst;
