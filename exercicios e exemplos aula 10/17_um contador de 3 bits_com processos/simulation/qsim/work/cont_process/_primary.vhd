library verilog;
use verilog.vl_types.all;
entity cont_process is
    port(
        d               : in     vl_logic_vector(2 downto 0);
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        load            : in     vl_logic;
        q               : out    vl_logic_vector(2 downto 0)
    );
end cont_process;
