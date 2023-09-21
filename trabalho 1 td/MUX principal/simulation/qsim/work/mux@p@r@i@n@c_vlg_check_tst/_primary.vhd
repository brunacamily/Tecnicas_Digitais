library verilog;
use verilog.vl_types.all;
entity muxPRINC_vlg_check_tst is
    port(
        saidamux        : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end muxPRINC_vlg_check_tst;
