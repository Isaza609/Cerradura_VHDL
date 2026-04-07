library verilog;
use verilog.vl_types.all;
entity contador_intentos_vlg_sample_tst is
    port(
        acceso_ok       : in     vl_logic;
        Clock_intento   : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_intentos_vlg_sample_tst;
