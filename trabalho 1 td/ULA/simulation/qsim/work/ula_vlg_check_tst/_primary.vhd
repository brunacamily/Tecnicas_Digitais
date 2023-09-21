library verilog;
use verilog.vl_types.all;
entity ula_vlg_check_tst is
    port(
        n               : in     vl_logic;
        seg7            : in     vl_logic_vector(13 downto 0);
        v               : in     vl_logic;
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ula_vlg_check_tst;
