library verilog;
use verilog.vl_types.all;
entity count18O_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end count18O_vlg_sample_tst;
