library verilog;
use verilog.vl_types.all;
entity contador_intentos_vlg_check_tst is
    port(
        alarma          : in     vl_logic;
        intentos        : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end contador_intentos_vlg_check_tst;
