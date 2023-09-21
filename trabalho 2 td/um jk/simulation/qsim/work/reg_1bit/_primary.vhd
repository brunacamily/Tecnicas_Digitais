library verilog;
use verilog.vl_types.all;
entity reg_1bit is
    port(
        d               : in     vl_logic;
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        load            : in     vl_logic;
        hold            : in     vl_logic;
        q_out           : out    vl_logic;
        q_not           : out    vl_logic
    );
end reg_1bit;
