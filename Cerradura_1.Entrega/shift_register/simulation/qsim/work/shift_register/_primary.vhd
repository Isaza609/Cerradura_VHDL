library verilog;
use verilog.vl_types.all;
entity shift_register is
    port(
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        Din             : in     vl_logic_vector(3 downto 0);
        Dout0           : out    vl_logic_vector(3 downto 0);
        Dout1           : out    vl_logic_vector(3 downto 0);
        Dout2           : out    vl_logic_vector(3 downto 0);
        Dout3           : out    vl_logic_vector(3 downto 0)
    );
end shift_register;
