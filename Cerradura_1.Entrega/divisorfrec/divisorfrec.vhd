library ieee;
use ieee.std_logic_1164.all;

entity divisorfrec is
    port
    (
        clk   : in  std_logic;
        reset : in  std_logic;
        out1  : out std_logic;
        out2  : out std_logic
    );
end divisorfrec;

architecture arch_divfreq of divisorfrec is

    signal count1 : integer range 0 to 25000000 := 0;
    signal count2 : integer range 0 to 25000000 := 0;
    signal clk1   : std_logic := '0';
    signal clk2   : std_logic := '0';

begin

    process (clk, reset)
    begin
        if reset = '0' then
            count1 <= 0;
            count2 <= 0;
            clk1   <= '0';
            clk2   <= '0';

        elsif rising_edge(clk) then

            if count1 = 24999999 then
                count1 <= 0;
                clk1   <= not clk1;
            else
                count1 <= count1 + 1;
            end if;

            if count2 = 25000000 then
                count2 <= 0;
                clk2   <= not clk2;
            else
                count2 <= count2 + 1;
            end if;

        end if;
    end process;

    out1 <= clk1;
    out2 <= clk2;

end arch_divfreq;