library verilog;
use verilog.vl_types.all;
entity shifterDIR is
    port(
        in01            : in     vl_logic_vector(3 downto 0);
        sinalDES        : in     vl_logic;
        over            : out    vl_logic;
        s               : out    vl_logic_vector(3 downto 0)
    );
end shifterDIR;
