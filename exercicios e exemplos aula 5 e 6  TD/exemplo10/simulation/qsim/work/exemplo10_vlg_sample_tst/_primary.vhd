library verilog;
use verilog.vl_types.all;
entity exemplo10_vlg_sample_tst is
    port(
        e               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end exemplo10_vlg_sample_tst;
