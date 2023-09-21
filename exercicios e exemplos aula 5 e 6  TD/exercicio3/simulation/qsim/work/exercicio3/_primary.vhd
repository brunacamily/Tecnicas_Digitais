library verilog;
use verilog.vl_types.all;
entity exercicio3 is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic
    );
end exercicio3;
