library ieee;
use ieee.std_logic_1164.all;


entity estado_sist is
	
	port
	(
		-- Input ports
		S0, S1 	: in std_logic;

		-- Output ports
		Disp0, Disp1, Disp2, Disp3	: out std_logic_vector(0 to 6)
		
	);
	
end estado_sist;

architecture arch_estado_sist of estado_sist is

    signal estado : std_logic_vector(1 downto 0);

begin

    estado <= S1 & S0;

    -- Display izquierdo
    with estado select
        Disp3 <= "1001111" when "00", -- I   -> IDLE
					  "1111111" when "01", -- apagado para ERR
                 "0000001" when "10", -- O   -> OPEN
                 "1111111" when "11", -- apagado para ALR
                 "1111111" when others; -- apagado

    -- Segundo display
    with estado select
        Disp2 <= "1000010" when "00", -- D
                 "0110000" when "01", -- E
                 "0011000" when "10", -- P
                 "0001000" when "11", -- A
                 "1111111" when others;

    -- Tercer display
    with estado select
        Disp1 <= "1110001" when "00", -- L
                 "1111010" when "01", -- R
                 "0110000" when "10", -- E
                 "1110001" when "11", -- L
                 "1111111" when others;

    -- Display derecho
    with estado select
        Disp0 <= "0110000" when "00", -- E
                 "1111010" when "01", -- R
                 "1101010" when "10", -- N
					  "1111010" when "11", -- R
                 "1111111" when others;

end arch_estado_sist;
