library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_intentos is
    port(
        Clock_intento : in  std_logic;
        Reset         : in  std_logic;
        acceso_ok     : in  std_logic;

        intentos      : out std_logic_vector(1 downto 0);
        alarma        : out std_logic
    );
end entity;

architecture arch_contador_intentos of contador_intentos is

    signal cont_int : integer range 0 to 3 := 0;

begin

    process(Clock_intento, Reset)
    begin
        if Reset = '0' then
            cont_int <= 0;

        elsif rising_edge(Clock_intento) then
            if acceso_ok = '1' then
                cont_int <= 0;
            else
                if cont_int < 3 then
                    cont_int <= cont_int + 1;
                else
                    cont_int <= 3;
                end if;
            end if;
        end if;
    end process;

    intentos <= std_logic_vector(to_unsigned(cont_int, 2));

    alarma <= '1' when cont_int = 3 else '0';

end architecture;