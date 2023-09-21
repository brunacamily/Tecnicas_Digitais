library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sinalMUX        : in     vl_logic_vector(3 downto 0);
        v               : out    vl_logic;
        z               : out    vl_logic;
        n               : out    vl_logic;
        seg7            : out    vl_logic_vector(13 downto 0)
    );
end ula;
