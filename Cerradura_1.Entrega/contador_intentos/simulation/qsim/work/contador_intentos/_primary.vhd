library verilog;
use verilog.vl_types.all;
entity contador_intentos is
    port(
        Clock_intento   : in     vl_logic;
        Reset           : in     vl_logic;
        acceso_ok       : in     vl_logic;
        intentos        : out    vl_logic_vector(1 downto 0);
        alarma          : out    vl_logic
    );
end contador_intentos;
