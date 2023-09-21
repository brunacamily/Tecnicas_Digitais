library verilog;
use verilog.vl_types.all;
entity shifterESQ is
    port(
        in1             : in     vl_logic_vector(3 downto 0);
        indesl          : in     vl_logic;
        over            : out    vl_logic;
        outS            : out    vl_logic_vector(3 downto 0)
    );
end shifterESQ;
