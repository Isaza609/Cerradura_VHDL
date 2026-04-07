library verilog;
use verilog.vl_types.all;
entity top_cerradura_vlg_check_tst is
    port(
        Disp0           : in     vl_logic_vector(0 to 6);
        Disp1           : in     vl_logic_vector(0 to 6);
        Disp2           : in     vl_logic_vector(0 to 6);
        Disp3           : in     vl_logic_vector(0 to 6);
        LED_acceso      : in     vl_logic;
        LED_alarma      : in     vl_logic;
        LED_clave       : in     vl_logic;
        LED_horario     : in     vl_logic;
        LED_intentos    : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_cerradura_vlg_check_tst;
