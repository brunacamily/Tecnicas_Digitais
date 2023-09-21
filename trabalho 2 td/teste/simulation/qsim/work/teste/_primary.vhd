library verilog;
use verilog.vl_types.all;
entity teste is
    port(
        CLOCK           : in     vl_logic;
        CLEAR           : in     vl_logic;
        LOAD            : in     vl_logic;
        HOLD            : in     vl_logic;
        CRES_DECRES     : in     vl_logic;
        entrada_digite  : in     vl_logic_vector(5 downto 0);
        SEGs            : out    vl_logic_vector(5 downto 0);
        MIN             : out    vl_logic_vector(5 downto 0)
    );
end teste;
