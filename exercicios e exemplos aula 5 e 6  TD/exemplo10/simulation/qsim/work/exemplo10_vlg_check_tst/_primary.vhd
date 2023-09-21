library verilog;
use verilog.vl_types.all;
entity exemplo10_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end exemplo10_vlg_check_tst;
