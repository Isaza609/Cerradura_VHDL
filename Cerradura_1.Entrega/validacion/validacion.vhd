library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity validacion is
    port(
        clave_ingresada : in  std_logic_vector(15 downto 0);
        count18O_val    : in  std_logic_vector(7 downto 0);
        clave_ok        : out std_logic;
        horario_ok      : out std_logic;
        acceso_ok       : out std_logic
    );
end validacion;

architecture arch_validacion of validacion is

    constant CLAVE_MANANA : std_logic_vector(15 downto 0) := x"2073";
    constant CLAVE_TARDE  : std_logic_vector(15 downto 0) := x"1234";
    constant CLAVE_NOCHE  : std_logic_vector(15 downto 0) := x"5678";
    constant CLAVE_ADMIN  : std_logic_vector(15 downto 0) := x"9999";

    signal count_int : integer range 0 to 255;

begin

    count_int <= to_integer(unsigned(count18O_val));

    process(clave_ingresada, count_int)
    begin
        -- Valores por defecto
        clave_ok   <= '0';
        horario_ok <= '0';
        acceso_ok  <= '0';

        -- CLAVE MANANA: solo entre 0 y 59
        if clave_ingresada = CLAVE_MANANA then
            clave_ok <= '1';

            if count_int >= 0 and count_int <= 59 then
                horario_ok <= '1';
                acceso_ok  <= '1';
            end if;

        -- CLAVE TARDE: solo entre 60 y 119
        elsif clave_ingresada = CLAVE_TARDE then
            clave_ok <= '1';

            if count_int >= 60 and count_int <= 119 then
                horario_ok <= '1';
                acceso_ok  <= '1';
            end if;

        -- CLAVE NOCHE: solo entre 120 y 180
        elsif clave_ingresada = CLAVE_NOCHE then
            clave_ok <= '1';

            if count_int >= 120 and count_int <= 180 then
                horario_ok <= '1';
                acceso_ok  <= '1';
            end if;

        -- CLAVE ADMIN: acceso siempre
        elsif clave_ingresada = CLAVE_ADMIN then
            clave_ok   <= '1';
            horario_ok <= '1';
            acceso_ok  <= '1';
        end if;
    end process;

end arch_validacion;