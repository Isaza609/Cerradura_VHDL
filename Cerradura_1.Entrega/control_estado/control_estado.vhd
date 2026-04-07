library ieee;
use ieee.std_logic_1164.all;

entity control_estado is
    port(
        confirmar   : in  std_logic;
        acceso_ok   : in  std_logic;
        alarma      : in  std_logic;
        open_activo : in  std_logic;
        S0          : out std_logic;
        S1          : out std_logic
    );
end entity;

architecture arch_control_estado of control_estado is
begin
    process(confirmar, acceso_ok, alarma, open_activo)
    begin
        if alarma = '1' then
            S1 <= '1';
            S0 <= '1';
        elsif open_activo = '1' or (confirmar = '1' and acceso_ok = '1') then
            S1 <= '1';
            S0 <= '0';
        elsif confirmar = '1' and acceso_ok = '0' then
            S1 <= '0';
            S0 <= '1';
        else
            S1 <= '0';
            S0 <= '0';
        end if;
    end process;
end architecture;