library verilog;
use verilog.vl_types.all;
entity count18O_vlg_check_tst is
    port(
        CNT             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end count18O_vlg_check_tst;
