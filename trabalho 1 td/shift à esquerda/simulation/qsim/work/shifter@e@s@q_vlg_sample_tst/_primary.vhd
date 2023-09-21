library verilog;
use verilog.vl_types.all;
entity shifterESQ_vlg_sample_tst is
    port(
        in1             : in     vl_logic_vector(3 downto 0);
        indesl          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end shifterESQ_vlg_sample_tst;
