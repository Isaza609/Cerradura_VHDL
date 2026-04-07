library verilog;
use verilog.vl_types.all;
entity count18O is
    port(
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        UP_DOWN         : in     vl_logic;
        CNT             : out    vl_logic_vector(7 downto 0)
    );
end count18O;
