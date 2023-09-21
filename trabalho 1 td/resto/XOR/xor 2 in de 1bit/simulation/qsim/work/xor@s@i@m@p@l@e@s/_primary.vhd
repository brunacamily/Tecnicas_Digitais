library verilog;
use verilog.vl_types.all;
entity xorSIMPLES is
    port(
        entrada01       : in     vl_logic;
        entrada02       : in     vl_logic;
        Sout            : out    vl_logic
    );
end xorSIMPLES;
