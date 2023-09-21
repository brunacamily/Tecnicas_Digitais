library verilog;
use verilog.vl_types.all;
entity subtrator is
    port(
        entA            : in     vl_logic_vector(3 downto 0);
        entB            : in     vl_logic_vector(3 downto 0);
        sub             : out    vl_logic_vector(3 downto 0);
        over            : out    vl_logic
    );
end subtrator;
