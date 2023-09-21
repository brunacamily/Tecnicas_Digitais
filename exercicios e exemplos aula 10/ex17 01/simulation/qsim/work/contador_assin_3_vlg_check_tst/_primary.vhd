library verilog;
use verilog.vl_types.all;
entity contador_assin_3_vlg_check_tst is
    port(
        q_not           : in     vl_logic_vector(2 downto 0);
        q_out           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end contador_assin_3_vlg_check_tst;
