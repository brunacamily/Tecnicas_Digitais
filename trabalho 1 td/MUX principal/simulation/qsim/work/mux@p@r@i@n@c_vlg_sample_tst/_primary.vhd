library verilog;
use verilog.vl_types.all;
entity muxPRINC_vlg_sample_tst is
    port(
        in01            : in     vl_logic_vector(3 downto 0);
        in02            : in     vl_logic_vector(3 downto 0);
        in03            : in     vl_logic_vector(3 downto 0);
        in04            : in     vl_logic_vector(3 downto 0);
        in05            : in     vl_logic_vector(3 downto 0);
        in06            : in     vl_logic_vector(3 downto 0);
        in07            : in     vl_logic_vector(3 downto 0);
        in08            : in     vl_logic_vector(3 downto 0);
        in09            : in     vl_logic_vector(3 downto 0);
        in10            : in     vl_logic_vector(3 downto 0);
        in11            : in     vl_logic_vector(3 downto 0);
        in12            : in     vl_logic_vector(3 downto 0);
        in13            : in     vl_logic_vector(3 downto 0);
        in14            : in     vl_logic_vector(3 downto 0);
        in15            : in     vl_logic_vector(3 downto 0);
        in16            : in     vl_logic_vector(3 downto 0);
        sinal           : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end muxPRINC_vlg_sample_tst;
