library verilog;
use verilog.vl_types.all;
entity cont_process_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        d               : in     vl_logic_vector(2 downto 0);
        load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cont_process_vlg_sample_tst;
