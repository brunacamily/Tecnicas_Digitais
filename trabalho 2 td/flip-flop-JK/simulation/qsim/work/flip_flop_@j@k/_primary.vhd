library verilog;
use verilog.vl_types.all;
entity flip_flop_JK is
    port(
        clk             : in     vl_logic;
        q_out           : out    vl_logic_vector(5 downto 0);
        q_not           : out    vl_logic_vector(5 downto 0)
    );
end flip_flop_JK;
