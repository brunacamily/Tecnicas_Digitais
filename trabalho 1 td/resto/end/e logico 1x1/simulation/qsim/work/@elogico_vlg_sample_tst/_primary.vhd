library verilog;
use verilog.vl_types.all;
entity Elogico_vlg_sample_tst is
    port(
        ent1            : in     vl_logic_vector(3 downto 0);
        ent2            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Elogico_vlg_sample_tst;
