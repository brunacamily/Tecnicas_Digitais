library verilog;
use verilog.vl_types.all;
entity aula9_exemplo16_vlg_sample_tst is
    port(
        carga           : in     vl_logic;
        clock16         : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        limpa           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end aula9_exemplo16_vlg_sample_tst;
