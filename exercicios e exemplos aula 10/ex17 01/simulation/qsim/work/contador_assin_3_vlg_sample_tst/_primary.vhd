library verilog;
use verilog.vl_types.all;
entity contador_assin_3_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end contador_assin_3_vlg_sample_tst;
