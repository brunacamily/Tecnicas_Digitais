library verilog;
use verilog.vl_types.all;
entity exercicio3_vlg_sample_tst is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end exercicio3_vlg_sample_tst;
