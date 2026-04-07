library verilog;
use verilog.vl_types.all;
entity top_cerradura_vlg_sample_tst is
    port(
        Clock_count     : in     vl_logic;
        Clock_reg       : in     vl_logic;
        confirmar       : in     vl_logic;
        Din             : in     vl_logic_vector(3 downto 0);
        Reset           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_cerradura_vlg_sample_tst;
