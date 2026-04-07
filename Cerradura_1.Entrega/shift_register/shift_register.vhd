library ieee;
use ieee.std_logic_1164.all;

entity shift_register is
	port 
		(
			Clock, Reset : in std_logic;
			Din 			 : in std_logic_vector(3 downto 0);
			Dout0, Dout1, Dout2, Dout3 : out std_logic_vector(3 downto 0)
		);
end entity;



architecture arch_shift_register of shift_register is

	signal D0,D1,D2,D3	: std_logic_vector(3 downto 0);

begin

	shift : process (Clock, Reset)
		begin 
			if (Reset = '0') then 
				D0 <= x"0";
				D1 <= x"0";
				D2 <= x"0";
				D3 <= x"0";
			elsif (Clock'event and Clock = '1') then
				D0 <= Din;
				D1 <= D0;
				D2 <= D1;
				D3 <= D2;
			end if;
		end process;
		
		Dout3 <= D3;
		Dout2 <= D2;
		Dout1 <= D1;
		Dout0 <= D0;

end arch_shift_register;
