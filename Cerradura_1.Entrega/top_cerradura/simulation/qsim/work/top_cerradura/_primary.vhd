library verilog;
use verilog.vl_types.all;
entity top_cerradura is
    port(
        Clock_reg       : in     vl_logic;
        Reset           : in     vl_logic;
        Din             : in     vl_logic_vector(3 downto 0);
        confirmar       : in     vl_logic;
        Clock_count     : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        Disp0           : out    vl_logic_vector(0 to 6);
        Disp1           : out    vl_logic_vector(0 to 6);
        Disp2           : out    vl_logic_vector(0 to 6);
        Disp3           : out    vl_logic_vector(0 to 6);
        LED_acceso      : out    vl_logic;
        LED_clave       : out    vl_logic;
        LED_horario     : out    vl_logic;
        LED_intentos    : out    vl_logic_vector(1 downto 0);
        LED_alarma      : out    vl_logic
    );
end top_cerradura;
