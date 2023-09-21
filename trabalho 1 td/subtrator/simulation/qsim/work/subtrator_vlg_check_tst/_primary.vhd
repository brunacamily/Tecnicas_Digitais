library verilog;
use verilog.vl_types.all;
entity subtrator_vlg_check_tst is
    port(
        over            : in     vl_logic;
        sub             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end subtrator_vlg_check_tst;
