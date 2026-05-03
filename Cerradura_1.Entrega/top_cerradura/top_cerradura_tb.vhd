library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_cerradura_tb is
end top_cerradura_tb;

architecture behavior of top_cerradura_tb is 

    -- Component Declaration for the Unit Under Test (UUT)
    component top_cerradura
    port(
         CLOCK_50 : in  std_logic;
         Clock_reg : in  std_logic;
         Reset : in  std_logic;
         Din : in  std_logic_vector(3 downto 0);
         confirmar : in  std_logic;
         UP_DOWN : in  std_logic;
         sensor_puerta : in std_logic;
         Disp0 : out  std_logic_vector(0 to 6);
         Disp1 : out  std_logic_vector(0 to 6);
         Disp2 : out  std_logic_vector(0 to 6);
         Disp3 : out  std_logic_vector(0 to 6);
         LED_acceso : out  std_logic;
         LED_clave : out  std_logic;
         LED_horario : out  std_logic;
         LED_intentos : out  std_logic_vector(1 downto 0);
         LED_alarma : out  std_logic;
         LED_load : out std_logic;
         LED_clk_count : out std_logic
        );
    end component;
    
    --Inputs
    signal CLOCK_50 : std_logic := '0';
    signal Clock_reg : std_logic := '1';
    signal Reset : std_logic := '1';
    signal Din : std_logic_vector(3 downto 0) := (others => '0');
    signal confirmar : std_logic := '1';
    signal UP_DOWN : std_logic := '0';
    signal sensor_puerta : std_logic := '1'; -- Default closed

    --Outputs
    signal Disp0 : std_logic_vector(0 to 6);
    signal Disp1 : std_logic_vector(0 to 6);
    signal Disp2 : std_logic_vector(0 to 6);
    signal Disp3 : std_logic_vector(0 to 6);
    signal LED_acceso : std_logic;
    signal LED_clave : std_logic;
    signal LED_horario : std_logic;
    signal LED_intentos : std_logic_vector(1 downto 0);
    signal LED_alarma : std_logic;
    signal LED_load : std_logic;
    signal LED_clk_count : std_logic;

    -- Clock period definitions
    constant CLOCK_50_period : time := 20 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: top_cerradura port map (
          CLOCK_50 => CLOCK_50,
          Clock_reg => Clock_reg,
          Reset => Reset,
          Din => Din,
          confirmar => confirmar,
          UP_DOWN => UP_DOWN,
          sensor_puerta => sensor_puerta,
          Disp0 => Disp0,
          Disp1 => Disp1,
          Disp2 => Disp2,
          Disp3 => Disp3,
          LED_acceso => LED_acceso,
          LED_clave => LED_clave,
          LED_horario => LED_horario,
          LED_intentos => LED_intentos,
          LED_alarma => LED_alarma,
          LED_load => LED_load,
          LED_clk_count => LED_clk_count
        );

    -- Clock process definitions
    CLOCK_50_process :process
    begin
        CLOCK_50 <= '0';
        wait for CLOCK_50_period/2;
        CLOCK_50 <= '1';
        wait for CLOCK_50_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin        
        -- Reset system
        Reset <= '0';
        wait for 100 ns;    
        Reset <= '1';
        wait for 100 ns;

        -- Test Scenario 1: Normal open and close
        -- Assume valid code is entered, we simulate access_ok (we skip full key entry and just simulate what we can or rely on it)
        -- Since valid key needs specific logic, we will just simulate sensor_puerta scenarios.
        
        -- Door left open, no lock engaging.
        sensor_puerta <= '0';
        wait for 2 sec;
        -- Should see it stays unlocked.
        
        -- Door left open too long -> alarm
        wait for 15 sec; 
        -- Should trigger alarm
        
        -- Close door
        sensor_puerta <= '1';
        wait for 2 sec;

        wait;
    end process;

end behavior;
