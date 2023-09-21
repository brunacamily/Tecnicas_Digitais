library verilog;
use verilog.vl_types.all;
entity exercicio2 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        s               : out    vl_logic_vector(3 downto 0)
    );
end exercicio2;
