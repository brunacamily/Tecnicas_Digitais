library verilog;
use verilog.vl_types.all;
entity exemplo15 is
    port(
        clear           : in     vl_logic;
        d               : in     vl_logic;
        load            : in     vl_logic;
        clock           : in     vl_logic;
        q               : out    vl_logic
    );
end exemplo15;
