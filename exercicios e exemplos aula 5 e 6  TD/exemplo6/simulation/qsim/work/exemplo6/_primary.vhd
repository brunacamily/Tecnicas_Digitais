library verilog;
use verilog.vl_types.all;
entity exemplo6 is
    port(
        bus_1           : in     vl_logic_vector(1 downto 0);
        bus_2           : out    vl_logic_vector(1 downto 0)
    );
end exemplo6;
