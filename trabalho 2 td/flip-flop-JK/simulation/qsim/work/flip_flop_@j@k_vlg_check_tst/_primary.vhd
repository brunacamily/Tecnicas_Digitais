library verilog;
use verilog.vl_types.all;
entity flip_flop_JK_vlg_check_tst is
    port(
        q_not           : in     vl_logic_vector(5 downto 0);
        q_out           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end flip_flop_JK_vlg_check_tst;
