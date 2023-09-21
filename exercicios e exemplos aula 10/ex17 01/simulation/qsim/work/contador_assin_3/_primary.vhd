library verilog;
use verilog.vl_types.all;
entity contador_assin_3 is
    port(
        d               : in     vl_logic_vector(2 downto 0);
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        q_out           : out    vl_logic_vector(2 downto 0);
        q_not           : out    vl_logic_vector(2 downto 0)
    );
end contador_assin_3;
