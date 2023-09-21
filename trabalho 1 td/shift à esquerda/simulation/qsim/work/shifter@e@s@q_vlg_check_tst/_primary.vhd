library verilog;
use verilog.vl_types.all;
entity shifterESQ_vlg_check_tst is
    port(
        outS            : in     vl_logic_vector(3 downto 0);
        over            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end shifterESQ_vlg_check_tst;
