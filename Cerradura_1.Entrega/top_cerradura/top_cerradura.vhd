library ieee;
use ieee.std_logic_1164.all;

entity top_cerradura is
    port(
        -- Reloj real de la placa
        CLOCK_50     : in  std_logic;

        -- Entradas principales
        Clock_reg    : in  std_logic;
        Reset        : in  std_logic;
        Din          : in  std_logic_vector(3 downto 0);
        confirmar    : in  std_logic;
        UP_DOWN      : in  std_logic;
        sensor_puerta: in  std_logic;

        -- Salidas displays
        Disp0        : out std_logic_vector(0 to 6);
        Disp1        : out std_logic_vector(0 to 6);
        Disp2        : out std_logic_vector(0 to 6);
        Disp3        : out std_logic_vector(0 to 6);

        -- LEDs de depuración
        LED_acceso   : out std_logic;
        LED_clave    : out std_logic;
        LED_horario  : out std_logic;

        -- LEDs para intentos fallidos
        LED_intentos : out std_logic_vector(1 downto 0);

        -- LED de alarma
        LED_alarma   : out std_logic;66666666
		  
		  --- LED DE CONTROL--
		  LED_load      : out std_logic;
		  LED_clk_count : out std_logic
		  
    );
	 
end entity;

architecture arch_top_cerradura of top_cerradura is

    component shift_register
        port(
            Clock, Reset : in std_logic;
            Din          : in std_logic_vector(3 downto 0);
            Dout0        : out std_logic_vector(3 downto 0);
            Dout1        : out std_logic_vector(3 downto 0);
            Dout2        : out std_logic_vector(3 downto 0);
            Dout3        : out std_logic_vector(3 downto 0)
        );
    end component;

    component divisorfrec
        port(
            clk   : in  std_logic;
            reset : in  std_logic;
            out1  : out std_logic;
            out2  : out std_logic
        );
    end component;

    component count18O
        port(
            Clock   : in  std_logic;
            Reset   : in  std_logic;
            UP_DOWN : in  std_logic;
            CNT     : out std_logic_vector(7 downto 0)
        );
    end component;

    component validacion
        port(
            clave_ingresada : in  std_logic_vector(15 downto 0);
            count18O_val    : in  std_logic_vector(7 downto 0);
            clave_ok        : out std_logic;
            horario_ok      : out std_logic;
            acceso_ok       : out std_logic
        );
    end component;

    component contador_intentos
        port(
            Clock_intento : in  std_logic;
            Reset         : in  std_logic;
            acceso_ok     : in  std_logic;
            Clock_1Hz     : in  std_logic;
            sensor_puerta : in  std_logic;
            intentos      : out std_logic_vector(1 downto 0);
            alarma        : out std_logic
        );
    end component;

    component temporizador_open
        generic(
            DURACION : integer := 5
        );
        port(
            Clock       : in  std_logic;
            Reset       : in  std_logic;
            iniciar     : in  std_logic;
            open_activo : out std_logic
        );
    end component;

    component control_estado
        port(
            confirmar   : in  std_logic;
            acceso_ok   : in  std_logic;
            alarma      : in  std_logic;
            open_activo : in  std_logic;
            sensor_puerta : in std_logic;
            S0          : out std_logic;
            S1          : out std_logic
        );
    end component;

    component estado_sist
        port(
            S0, S1 : in std_logic;
            Disp0  : out std_logic_vector(0 to 6);
            Disp1  : out std_logic_vector(0 to 6);
            Disp2  : out std_logic_vector(0 to 6);
            Disp3  : out std_logic_vector(0 to 6)
        );
    end component;

	 signal Clock_reg_int  : std_logic;
	 signal confirmar_int  : std_logic;
    
	 signal D0, D1, D2, D3 : std_logic_vector(3 downto 0);
    signal clave_int      : std_logic_vector(15 downto 0);
    signal cnt18O_int     : std_logic_vector(7 downto 0);

    signal clave_ok_int   : std_logic;
    signal horario_ok_int : std_logic;
    signal acceso_ok_int  : std_logic;

    signal intentos_int    : std_logic_vector(1 downto 0);
    signal alarma_int      : std_logic;

    signal open_activo_int : std_logic;
    signal iniciar_open    : std_logic;

    signal s0_int          : std_logic;
    signal s1_int          : std_logic;

    signal clk_count_int   : std_logic;
    signal clk_aux_int     : std_logic;

begin
		
		Clock_reg_int <= not Clock_reg;
		confirmar_int <= not confirmar;
		

    -- Registro de desplazamiento para armar la clave
		U1 : shift_register
		 port map(
			  Clock => Clock_reg_int,
			  Reset => Reset,
			  Din   => Din,
			  Dout0 => D0,
			  Dout1 => D1,
			  Dout2 => D2,
			  Dout3 => D3
		 );

    -- Concatenación corregida
    clave_int <= D0 & D1 & D2 & D3;

    -- Divisor de frecuencia
    U2 : divisorfrec
        port map(
            clk   => CLOCK_50,
            reset => Reset,
            out1  => clk_count_int,
            out2  => clk_aux_int
        );

    -- Contador horario
    U3 : count18O
        port map(
            Clock   => clk_count_int,
            Reset   => Reset,
            UP_DOWN => UP_DOWN,
            CNT     => cnt18O_int
        );

    -- Validación de clave y horario
    U4 : validacion
        port map(
            clave_ingresada => clave_int,
            count18O_val    => cnt18O_int,
            clave_ok        => clave_ok_int,
            horario_ok      => horario_ok_int,
            acceso_ok       => acceso_ok_int
        );

    -- Contador de intentos fallidos
    U5 : contador_intentos
    port map(
        Clock_intento => confirmar_int,
        Reset         => Reset,
        acceso_ok     => acceso_ok_int,
        Clock_1Hz     => clk_count_int,
        sensor_puerta => sensor_puerta,
        intentos      => intentos_int,
        alarma        => alarma_int
    );

    -- Señal que inicia el temporizador de apertura
    iniciar_open <= confirmar_int and acceso_ok_int and (not alarma_int);

    -- Temporizador de OPEN
    U6 : temporizador_open
        generic map(
            DURACION => 5
        )
        port map(
            Clock       => clk_count_int,
            Reset       => Reset,
            iniciar     => iniciar_open,
            open_activo => open_activo_int
        );

    -- Control de estado
    U7 : control_estado
    port map(
        confirmar   => confirmar_int,
        acceso_ok   => acceso_ok_int,
        alarma      => alarma_int,
        open_activo => open_activo_int,
        sensor_puerta => sensor_puerta,
        S0          => s0_int,
        S1          => s1_int
    );

    -- Visualización en displays
    U8 : estado_sist
        port map(
            S0    => s0_int,
            S1    => s1_int,
            Disp0 => Disp0,
            Disp1 => Disp1,
            Disp2 => Disp2,
            Disp3 => Disp3
        );

    -- LEDs de depuración
    LED_acceso   <= acceso_ok_int;
    LED_clave    <= clave_ok_int;
    LED_horario  <= horario_ok_int;

    -- LEDs de intentos y alarma
    LED_intentos <= intentos_int;
    LED_alarma   <= alarma_int;
	 
	 -- LED CONTROL
	 LED_load      <= Clock_reg_int;
	 LED_clk_count <= clk_count_int;

end architecture;