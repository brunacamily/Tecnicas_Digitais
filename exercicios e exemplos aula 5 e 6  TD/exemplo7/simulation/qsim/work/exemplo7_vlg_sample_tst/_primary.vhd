library verilog;
use verilog.vl_types.all;
entity exemplo7_vlg_sample_tst is
    port(
        vetor           : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end exemplo7_vlg_sample_tst;
