library verilog;
use verilog.vl_types.all;
entity aula9_exemplo16 is
    port(
        limpa           : in     vl_logic;
        clock16         : in     vl_logic;
        carga           : in     vl_logic;
        d               : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end aula9_exemplo16;
