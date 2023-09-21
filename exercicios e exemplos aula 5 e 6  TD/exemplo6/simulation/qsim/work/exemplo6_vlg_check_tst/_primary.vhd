library verilog;
use verilog.vl_types.all;
entity exemplo6_vlg_check_tst is
    port(
        bus_2           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end exemplo6_vlg_check_tst;
