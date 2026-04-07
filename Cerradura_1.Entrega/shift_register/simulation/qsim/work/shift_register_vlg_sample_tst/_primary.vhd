library verilog;
use verilog.vl_types.all;
entity shift_register_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Din             : in     vl_logic_vector(3 downto 0);
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end shift_register_vlg_sample_tst;
