library verilog;
use verilog.vl_types.all;
entity ff_jk_3bits_vlg_check_tst is
    port(
        q_not           : in     vl_logic_vector(2 downto 0);
        q_out           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end ff_jk_3bits_vlg_check_tst;
