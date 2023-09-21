library verilog;
use verilog.vl_types.all;
entity exemplo10 is
    port(
        e               : in     vl_logic_vector(2 downto 0);
        s               : out    vl_logic_vector(7 downto 0)
    );
end exemplo10;
