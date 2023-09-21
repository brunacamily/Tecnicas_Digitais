library verilog;
use verilog.vl_types.all;
entity shifterDIR_vlg_sample_tst is
    port(
        in01            : in     vl_logic_vector(3 downto 0);
        sinalDES        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end shifterDIR_vlg_sample_tst;
