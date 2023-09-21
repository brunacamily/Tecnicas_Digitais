library verilog;
use verilog.vl_types.all;
entity exemplo6_vlg_sample_tst is
    port(
        bus_1           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end exemplo6_vlg_sample_tst;
