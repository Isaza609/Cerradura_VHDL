library verilog;
use verilog.vl_types.all;
entity validacion_vlg_check_tst is
    port(
        acceso_ok       : in     vl_logic;
        clave_ok        : in     vl_logic;
        horario_ok      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end validacion_vlg_check_tst;
