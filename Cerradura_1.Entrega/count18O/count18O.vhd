library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity count18O is
port (
    Clock, Reset : in std_logic;
    UP_DOWN : in std_logic;
    CNT     : out std_logic_vector (7 downto 0) 
    );

end count18O;


architecture arch_count18O of count18O is

    signal CNT_int    : integer range 0 to 180;
     
begin

    counter    : process (Clock, Reset)
    begin
        if (Reset = '0') then
            CNT_int <= 0;
        elsif (Clock' event and Clock = '1') then 
        
            -- Count Ascendente --
            if (UP_DOWN = '0') then
                if (CNT_int = 180) then 
                CNT_int <= 0;
                else 
                CNT_int <= CNT_int +1;
                end if;
            
            -- Count Descendente --
            else
                if (CNT_int = 0) then
                    CNT_int <= 180;
                else 
                    CNT_int <= CNT_int -1;
                end if;
            end if;
        end if;
    end process;
    
    CNT <= std_logic_vector (to_unsigned(CNT_int,8));
    
end arch_count18O;