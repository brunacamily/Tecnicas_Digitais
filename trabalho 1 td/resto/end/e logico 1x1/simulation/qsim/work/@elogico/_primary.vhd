library verilog;
use verilog.vl_types.all;
entity Elogico is
    port(
        ent1            : in     vl_logic_vector(3 downto 0);
        ent2            : in     vl_logic_vector(3 downto 0);
        Saida           : out    vl_logic_vector(3 downto 0)
    );
end Elogico;
