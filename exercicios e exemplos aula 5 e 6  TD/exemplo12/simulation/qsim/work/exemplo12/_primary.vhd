library verilog;
use verilog.vl_types.all;
entity exemplo12 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        s               : out    vl_logic
    );
end exemplo12;
