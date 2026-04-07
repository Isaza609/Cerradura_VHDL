library verilog;
use verilog.vl_types.all;
entity validacion_vlg_sample_tst is
    port(
        clave_ingresada : in     vl_logic_vector(15 downto 0);
        count18O_val    : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end validacion_vlg_sample_tst;
