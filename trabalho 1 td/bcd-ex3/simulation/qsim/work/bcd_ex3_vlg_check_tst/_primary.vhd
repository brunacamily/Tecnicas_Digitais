library verilog;
use verilog.vl_types.all;
entity bcd_ex3_vlg_check_tst is
    port(
        ex3             : in     vl_logic_vector(3 downto 0);
        over            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end bcd_ex3_vlg_check_tst;
