library verilog;
use verilog.vl_types.all;
entity bcd_ex3 is
    port(
        ent             : in     vl_logic_vector(3 downto 0);
        over            : out    vl_logic;
        ex3             : out    vl_logic_vector(3 downto 0)
    );
end bcd_ex3;
