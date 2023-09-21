library verilog;
use verilog.vl_types.all;
entity teste_vlg_sample_tst is
    port(
        CLEAR           : in     vl_logic;
        CLOCK           : in     vl_logic;
        CRES_DECRES     : in     vl_logic;
        entrada_digite  : in     vl_logic_vector(5 downto 0);
        HOLD            : in     vl_logic;
        LOAD            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end teste_vlg_sample_tst;
