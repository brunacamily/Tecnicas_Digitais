library verilog;
use verilog.vl_types.all;
entity ff_jk_3bits is
    port(
        clk             : in     vl_logic;
        q_out           : out    vl_logic_vector(2 downto 0);
        q_not           : out    vl_logic_vector(2 downto 0)
    );
end ff_jk_3bits;
