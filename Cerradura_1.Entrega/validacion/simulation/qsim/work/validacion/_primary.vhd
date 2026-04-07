library verilog;
use verilog.vl_types.all;
entity validacion is
    port(
        clave_ingresada : in     vl_logic_vector(15 downto 0);
        count18O_val    : in     vl_logic_vector(7 downto 0);
        clave_ok        : out    vl_logic;
        horario_ok      : out    vl_logic;
        acceso_ok       : out    vl_logic
    );
end validacion;
