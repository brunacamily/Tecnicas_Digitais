library verilog;
use verilog.vl_types.all;
entity shifterDIR_vlg_check_tst is
    port(
        over            : in     vl_logic;
        s               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end shifterDIR_vlg_check_tst;
