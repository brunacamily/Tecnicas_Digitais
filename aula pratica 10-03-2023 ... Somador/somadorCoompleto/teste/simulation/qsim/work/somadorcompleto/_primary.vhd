library verilog;
use verilog.vl_types.all;
entity somadorcompleto is
    port(
        c               : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        sum1            : out    vl_logic;
        carry1          : out    vl_logic
    );
end somadorcompleto;
