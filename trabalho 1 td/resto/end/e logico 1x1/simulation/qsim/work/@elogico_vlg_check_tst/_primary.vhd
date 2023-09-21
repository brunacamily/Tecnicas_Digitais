library verilog;
use verilog.vl_types.all;
entity Elogico_vlg_check_tst is
    port(
        Saida           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Elogico_vlg_check_tst;
