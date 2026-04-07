-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/06/2026 00:31:48"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_cerradura IS
    PORT (
	Clock_reg : IN std_logic;
	Reset : IN std_logic;
	Din : IN std_logic_vector(3 DOWNTO 0);
	confirmar : IN std_logic;
	Clock_count : IN std_logic;
	UP_DOWN : IN std_logic;
	Disp0 : OUT std_logic_vector(0 TO 6);
	Disp1 : OUT std_logic_vector(0 TO 6);
	Disp2 : OUT std_logic_vector(0 TO 6);
	Disp3 : OUT std_logic_vector(0 TO 6);
	LED_acceso : OUT std_logic;
	LED_clave : OUT std_logic;
	LED_horario : OUT std_logic
	);
END top_cerradura;

-- Design Ports Information
-- Disp0[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp0[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp0[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp0[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp0[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp0[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp0[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[6]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp2[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[6]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disp3[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_acceso	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_clave	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_horario	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_reg	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP_DOWN	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_count	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_cerradura IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock_reg : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Din : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_confirmar : std_logic;
SIGNAL ww_Clock_count : std_logic;
SIGNAL ww_UP_DOWN : std_logic;
SIGNAL ww_Disp0 : std_logic_vector(0 TO 6);
SIGNAL ww_Disp1 : std_logic_vector(0 TO 6);
SIGNAL ww_Disp2 : std_logic_vector(0 TO 6);
SIGNAL ww_Disp3 : std_logic_vector(0 TO 6);
SIGNAL ww_LED_acceso : std_logic;
SIGNAL ww_LED_clave : std_logic;
SIGNAL ww_LED_horario : std_logic;
SIGNAL \Clock_reg~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_count~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Disp0[6]~output_o\ : std_logic;
SIGNAL \Disp0[5]~output_o\ : std_logic;
SIGNAL \Disp0[4]~output_o\ : std_logic;
SIGNAL \Disp0[3]~output_o\ : std_logic;
SIGNAL \Disp0[2]~output_o\ : std_logic;
SIGNAL \Disp0[1]~output_o\ : std_logic;
SIGNAL \Disp0[0]~output_o\ : std_logic;
SIGNAL \Disp1[6]~output_o\ : std_logic;
SIGNAL \Disp1[5]~output_o\ : std_logic;
SIGNAL \Disp1[4]~output_o\ : std_logic;
SIGNAL \Disp1[3]~output_o\ : std_logic;
SIGNAL \Disp1[2]~output_o\ : std_logic;
SIGNAL \Disp1[1]~output_o\ : std_logic;
SIGNAL \Disp1[0]~output_o\ : std_logic;
SIGNAL \Disp2[6]~output_o\ : std_logic;
SIGNAL \Disp2[5]~output_o\ : std_logic;
SIGNAL \Disp2[4]~output_o\ : std_logic;
SIGNAL \Disp2[3]~output_o\ : std_logic;
SIGNAL \Disp2[2]~output_o\ : std_logic;
SIGNAL \Disp2[1]~output_o\ : std_logic;
SIGNAL \Disp2[0]~output_o\ : std_logic;
SIGNAL \Disp3[6]~output_o\ : std_logic;
SIGNAL \Disp3[5]~output_o\ : std_logic;
SIGNAL \Disp3[4]~output_o\ : std_logic;
SIGNAL \Disp3[3]~output_o\ : std_logic;
SIGNAL \Disp3[2]~output_o\ : std_logic;
SIGNAL \Disp3[1]~output_o\ : std_logic;
SIGNAL \Disp3[0]~output_o\ : std_logic;
SIGNAL \LED_acceso~output_o\ : std_logic;
SIGNAL \LED_clave~output_o\ : std_logic;
SIGNAL \LED_horario~output_o\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \Clock_count~input_o\ : std_logic;
SIGNAL \Clock_count~inputclkctrl_outclk\ : std_logic;
SIGNAL \UP_DOWN~input_o\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|CNT_int~6_combout\ : std_logic;
SIGNAL \U2|Add0~8\ : std_logic;
SIGNAL \U2|Add0~10\ : std_logic;
SIGNAL \U2|Add0~11_combout\ : std_logic;
SIGNAL \U2|Add1~9\ : std_logic;
SIGNAL \U2|Add1~10_combout\ : std_logic;
SIGNAL \U2|CNT_int~3_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|Add0~12\ : std_logic;
SIGNAL \U2|Add0~14\ : std_logic;
SIGNAL \U2|Add0~17_combout\ : std_logic;
SIGNAL \U2|Add1~11\ : std_logic;
SIGNAL \U2|Add1~13\ : std_logic;
SIGNAL \U2|Add1~14_combout\ : std_logic;
SIGNAL \U2|CNT_int~5_combout\ : std_logic;
SIGNAL \U2|CNT_int[7]~0_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|CNT_int[7]~1_combout\ : std_logic;
SIGNAL \U2|CNT_int~7_combout\ : std_logic;
SIGNAL \U2|Add1~1\ : std_logic;
SIGNAL \U2|Add1~2_combout\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|Add0~19_combout\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U2|Add1~3\ : std_logic;
SIGNAL \U2|Add1~4_combout\ : std_logic;
SIGNAL \U2|CNT_int~2_combout\ : std_logic;
SIGNAL \U2|Add0~5\ : std_logic;
SIGNAL \U2|Add0~7_combout\ : std_logic;
SIGNAL \U2|Add1~5\ : std_logic;
SIGNAL \U2|Add1~6_combout\ : std_logic;
SIGNAL \U2|Add0~16_combout\ : std_logic;
SIGNAL \U2|Add1~7\ : std_logic;
SIGNAL \U2|Add1~8_combout\ : std_logic;
SIGNAL \U2|Add0~9_combout\ : std_logic;
SIGNAL \U2|CNT_int~4_combout\ : std_logic;
SIGNAL \U2|Equal1~1_combout\ : std_logic;
SIGNAL \U2|Add0~6_combout\ : std_logic;
SIGNAL \U2|Add0~13_combout\ : std_logic;
SIGNAL \U2|Add1~12_combout\ : std_logic;
SIGNAL \U2|Add0~15_combout\ : std_logic;
SIGNAL \U3|acceso_ok~3_combout\ : std_logic;
SIGNAL \U3|acceso_ok~4_combout\ : std_logic;
SIGNAL \Clock_reg~input_o\ : std_logic;
SIGNAL \Clock_reg~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \U1|D0[0]~feeder_combout\ : std_logic;
SIGNAL \U3|Equal1~0_combout\ : std_logic;
SIGNAL \U1|D1[0]~feeder_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \U1|D0[3]~feeder_combout\ : std_logic;
SIGNAL \U1|D1[3]~feeder_combout\ : std_logic;
SIGNAL \U1|D2[3]~feeder_combout\ : std_logic;
SIGNAL \U3|Equal0~0_combout\ : std_logic;
SIGNAL \U3|Equal0~1_combout\ : std_logic;
SIGNAL \U3|Equal1~1_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \U1|D1[2]~feeder_combout\ : std_logic;
SIGNAL \U3|Equal2~0_combout\ : std_logic;
SIGNAL \U1|D3[2]~feeder_combout\ : std_logic;
SIGNAL \U3|Equal2~1_combout\ : std_logic;
SIGNAL \U3|acceso_ok~5_combout\ : std_logic;
SIGNAL \U3|Equal1~2_combout\ : std_logic;
SIGNAL \U3|Equal1~3_combout\ : std_logic;
SIGNAL \U3|acceso_ok~0_combout\ : std_logic;
SIGNAL \U3|acceso_ok~1_combout\ : std_logic;
SIGNAL \U3|acceso_ok~2_combout\ : std_logic;
SIGNAL \U3|Equal3~1_combout\ : std_logic;
SIGNAL \U3|Equal3~3_combout\ : std_logic;
SIGNAL \U3|Equal3~0_combout\ : std_logic;
SIGNAL \U3|Equal3~2_combout\ : std_logic;
SIGNAL \U3|Equal3~4_combout\ : std_logic;
SIGNAL \U3|acceso_ok~6_combout\ : std_logic;
SIGNAL \U3|Equal0~3_combout\ : std_logic;
SIGNAL \U3|Equal0~2_combout\ : std_logic;
SIGNAL \U3|Equal0~4_combout\ : std_logic;
SIGNAL \U3|Equal0~5_combout\ : std_logic;
SIGNAL \U3|acceso_ok~7_combout\ : std_logic;
SIGNAL \U3|acceso_ok~8_combout\ : std_logic;
SIGNAL \U3|acceso_ok~9_combout\ : std_logic;
SIGNAL \U5|Mux13~0_combout\ : std_logic;
SIGNAL \U5|Mux8~0_combout\ : std_logic;
SIGNAL \U3|clave_ok~0_combout\ : std_logic;
SIGNAL \U1|D3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|D2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|D1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|D0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|CNT_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_confirmar~input_o\ : std_logic;
SIGNAL \U5|ALT_INV_Mux13~0_combout\ : std_logic;

BEGIN

ww_Clock_reg <= Clock_reg;
ww_Reset <= Reset;
ww_Din <= Din;
ww_confirmar <= confirmar;
ww_Clock_count <= Clock_count;
ww_UP_DOWN <= UP_DOWN;
Disp0 <= ww_Disp0;
Disp1 <= ww_Disp1;
Disp2 <= ww_Disp2;
Disp3 <= ww_Disp3;
LED_acceso <= ww_LED_acceso;
LED_clave <= ww_LED_clave;
LED_horario <= ww_LED_horario;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock_reg~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_reg~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock_count~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_count~input_o\);
\ALT_INV_confirmar~input_o\ <= NOT \confirmar~input_o\;
\U5|ALT_INV_Mux13~0_combout\ <= NOT \U5|Mux13~0_combout\;

-- Location: IOOBUF_X1_Y0_N16
\Disp0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp0[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\Disp0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp0[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\Disp0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp0[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\Disp0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp0[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\Disp0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp0[2]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\Disp0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp0[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\Disp0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp0[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\Disp1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp1[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Disp1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Disp1[5]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\Disp1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp1[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Disp1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Disp1[3]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\Disp1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp1[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\Disp1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Disp1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp1[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\Disp2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp2[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\Disp2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp2[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Disp2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Disp2[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\Disp2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp2[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Disp2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp2[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\Disp2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Disp2[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Disp2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_confirmar~input_o\,
	devoe => ww_devoe,
	o => \Disp2[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Disp3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Disp3[6]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\Disp3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Disp3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\Disp3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Disp3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Disp3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\Disp3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Disp3[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\LED_acceso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|acceso_ok~9_combout\,
	devoe => ww_devoe,
	o => \LED_acceso~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\LED_clave~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|clave_ok~0_combout\,
	devoe => ww_devoe,
	o => \LED_clave~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\LED_horario~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|acceso_ok~9_combout\,
	devoe => ww_devoe,
	o => \LED_horario~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\Clock_count~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_count,
	o => \Clock_count~input_o\);

-- Location: CLKCTRL_G2
\Clock_count~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_count~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_count~inputclkctrl_outclk\);

-- Location: IOIBUF_X23_Y29_N29
\UP_DOWN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_DOWN,
	o => \UP_DOWN~input_o\);

-- Location: LCCOMB_X22_Y28_N10
\U2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = \U2|CNT_int\(0) $ (VCC)
-- \U2|Add1~1\ = CARRY(\U2|CNT_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(0),
	datad => VCC,
	combout => \U2|Add1~0_combout\,
	cout => \U2|Add1~1\);

-- Location: LCCOMB_X23_Y28_N14
\U2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|CNT_int\(0) $ (VCC)
-- \U2|Add0~1\ = CARRY(\U2|CNT_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(0),
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: LCCOMB_X23_Y28_N2
\U2|CNT_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int~6_combout\ = (!\UP_DOWN~input_o\ & \U2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datac => \U2|Add0~0_combout\,
	combout => \U2|CNT_int~6_combout\);

-- Location: LCCOMB_X23_Y28_N20
\U2|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~7_combout\ = (\U2|CNT_int\(3) & (!\U2|Add0~5\)) # (!\U2|CNT_int\(3) & ((\U2|Add0~5\) # (GND)))
-- \U2|Add0~8\ = CARRY((!\U2|Add0~5\) # (!\U2|CNT_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(3),
	datad => VCC,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~7_combout\,
	cout => \U2|Add0~8\);

-- Location: LCCOMB_X23_Y28_N22
\U2|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~9_combout\ = (\U2|CNT_int\(4) & (\U2|Add0~8\ $ (GND))) # (!\U2|CNT_int\(4) & (!\U2|Add0~8\ & VCC))
-- \U2|Add0~10\ = CARRY((\U2|CNT_int\(4) & !\U2|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(4),
	datad => VCC,
	cin => \U2|Add0~8\,
	combout => \U2|Add0~9_combout\,
	cout => \U2|Add0~10\);

-- Location: LCCOMB_X23_Y28_N24
\U2|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~11_combout\ = (\U2|CNT_int\(5) & (!\U2|Add0~10\)) # (!\U2|CNT_int\(5) & ((\U2|Add0~10\) # (GND)))
-- \U2|Add0~12\ = CARRY((!\U2|Add0~10\) # (!\U2|CNT_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(5),
	datad => VCC,
	cin => \U2|Add0~10\,
	combout => \U2|Add0~11_combout\,
	cout => \U2|Add0~12\);

-- Location: LCCOMB_X22_Y28_N18
\U2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~8_combout\ = (\U2|CNT_int\(4) & ((GND) # (!\U2|Add1~7\))) # (!\U2|CNT_int\(4) & (\U2|Add1~7\ $ (GND)))
-- \U2|Add1~9\ = CARRY((\U2|CNT_int\(4)) # (!\U2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(4),
	datad => VCC,
	cin => \U2|Add1~7\,
	combout => \U2|Add1~8_combout\,
	cout => \U2|Add1~9\);

-- Location: LCCOMB_X22_Y28_N20
\U2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~10_combout\ = (\U2|CNT_int\(5) & (\U2|Add1~9\ & VCC)) # (!\U2|CNT_int\(5) & (!\U2|Add1~9\))
-- \U2|Add1~11\ = CARRY((!\U2|CNT_int\(5) & !\U2|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(5),
	datad => VCC,
	cin => \U2|Add1~9\,
	combout => \U2|Add1~10_combout\,
	cout => \U2|Add1~11\);

-- Location: LCCOMB_X23_Y28_N10
\U2|CNT_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int~3_combout\ = (\UP_DOWN~input_o\ & (((\U2|Add1~10_combout\)))) # (!\UP_DOWN~input_o\ & (\U2|Add0~11_combout\ & (!\U2|CNT_int[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \U2|Add0~11_combout\,
	datac => \U2|CNT_int[7]~1_combout\,
	datad => \U2|Add1~10_combout\,
	combout => \U2|CNT_int~3_combout\);

-- Location: IOIBUF_X0_Y14_N15
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G3
\Reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X23_Y28_N11
\U2|CNT_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|CNT_int~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(5));

-- Location: LCCOMB_X23_Y28_N26
\U2|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~13_combout\ = (\U2|CNT_int\(6) & (\U2|Add0~12\ $ (GND))) # (!\U2|CNT_int\(6) & (!\U2|Add0~12\ & VCC))
-- \U2|Add0~14\ = CARRY((\U2|CNT_int\(6) & !\U2|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(6),
	datad => VCC,
	cin => \U2|Add0~12\,
	combout => \U2|Add0~13_combout\,
	cout => \U2|Add0~14\);

-- Location: LCCOMB_X23_Y28_N28
\U2|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~17_combout\ = \U2|Add0~14\ $ (\U2|CNT_int\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|CNT_int\(7),
	cin => \U2|Add0~14\,
	combout => \U2|Add0~17_combout\);

-- Location: LCCOMB_X22_Y28_N22
\U2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~12_combout\ = (\U2|CNT_int\(6) & ((GND) # (!\U2|Add1~11\))) # (!\U2|CNT_int\(6) & (\U2|Add1~11\ $ (GND)))
-- \U2|Add1~13\ = CARRY((\U2|CNT_int\(6)) # (!\U2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(6),
	datad => VCC,
	cin => \U2|Add1~11\,
	combout => \U2|Add1~12_combout\,
	cout => \U2|Add1~13\);

-- Location: LCCOMB_X22_Y28_N24
\U2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~14_combout\ = \U2|CNT_int\(7) $ (!\U2|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(7),
	cin => \U2|Add1~13\,
	combout => \U2|Add1~14_combout\);

-- Location: LCCOMB_X23_Y28_N0
\U2|CNT_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int~5_combout\ = (\UP_DOWN~input_o\ & (((\U2|Add1~14_combout\)))) # (!\UP_DOWN~input_o\ & (\U2|Add0~17_combout\ & (!\U2|CNT_int[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \U2|Add0~17_combout\,
	datac => \U2|CNT_int[7]~1_combout\,
	datad => \U2|Add1~14_combout\,
	combout => \U2|CNT_int~5_combout\);

-- Location: FF_X23_Y28_N1
\U2|CNT_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|CNT_int~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(7));

-- Location: LCCOMB_X23_Y28_N30
\U2|CNT_int[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int[7]~0_combout\ = (!\UP_DOWN~input_o\ & (\U2|CNT_int\(7) & (\U2|CNT_int\(5) & \U2|CNT_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \U2|CNT_int\(7),
	datac => \U2|CNT_int\(5),
	datad => \U2|CNT_int\(4),
	combout => \U2|CNT_int[7]~0_combout\);

-- Location: LCCOMB_X22_Y28_N2
\U2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (!\U2|CNT_int\(3) & (!\U2|CNT_int\(6) & (!\U2|CNT_int\(1) & !\U2|CNT_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(3),
	datab => \U2|CNT_int\(6),
	datac => \U2|CNT_int\(1),
	datad => \U2|CNT_int\(0),
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y28_N4
\U2|CNT_int[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int[7]~1_combout\ = (\U2|CNT_int\(2) & (\U2|CNT_int[7]~0_combout\ & \U2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(2),
	datac => \U2|CNT_int[7]~0_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|CNT_int[7]~1_combout\);

-- Location: LCCOMB_X23_Y28_N6
\U2|CNT_int~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int~7_combout\ = (!\U2|CNT_int[7]~1_combout\ & ((\U2|CNT_int~6_combout\) # ((\U2|Add1~0_combout\ & \U2|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~0_combout\,
	datab => \U2|CNT_int~6_combout\,
	datac => \U2|CNT_int[7]~1_combout\,
	datad => \U2|Add0~6_combout\,
	combout => \U2|CNT_int~7_combout\);

-- Location: FF_X23_Y28_N7
\U2|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|CNT_int~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(0));

-- Location: LCCOMB_X22_Y28_N12
\U2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~2_combout\ = (\U2|CNT_int\(1) & (\U2|Add1~1\ & VCC)) # (!\U2|CNT_int\(1) & (!\U2|Add1~1\))
-- \U2|Add1~3\ = CARRY((!\U2|CNT_int\(1) & !\U2|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(1),
	datad => VCC,
	cin => \U2|Add1~1\,
	combout => \U2|Add1~2_combout\,
	cout => \U2|Add1~3\);

-- Location: LCCOMB_X23_Y28_N16
\U2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\U2|CNT_int\(1) & (!\U2|Add0~1\)) # (!\U2|CNT_int\(1) & ((\U2|Add0~1\) # (GND)))
-- \U2|Add0~3\ = CARRY((!\U2|Add0~1\) # (!\U2|CNT_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(1),
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: LCCOMB_X23_Y28_N8
\U2|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~19_combout\ = (\U2|Add1~2_combout\ & ((\U2|Add0~6_combout\) # ((\U2|Add0~2_combout\ & !\UP_DOWN~input_o\)))) # (!\U2|Add1~2_combout\ & (\U2|Add0~2_combout\ & (!\UP_DOWN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add1~2_combout\,
	datab => \U2|Add0~2_combout\,
	datac => \UP_DOWN~input_o\,
	datad => \U2|Add0~6_combout\,
	combout => \U2|Add0~19_combout\);

-- Location: FF_X23_Y28_N9
\U2|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|Add0~19_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(1));

-- Location: LCCOMB_X23_Y28_N18
\U2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = (\U2|CNT_int\(2) & (\U2|Add0~3\ $ (GND))) # (!\U2|CNT_int\(2) & (!\U2|Add0~3\ & VCC))
-- \U2|Add0~5\ = CARRY((\U2|CNT_int\(2) & !\U2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(2),
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: LCCOMB_X22_Y28_N14
\U2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~4_combout\ = (\U2|CNT_int\(2) & ((GND) # (!\U2|Add1~3\))) # (!\U2|CNT_int\(2) & (\U2|Add1~3\ $ (GND)))
-- \U2|Add1~5\ = CARRY((\U2|CNT_int\(2)) # (!\U2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(2),
	datad => VCC,
	cin => \U2|Add1~3\,
	combout => \U2|Add1~4_combout\,
	cout => \U2|Add1~5\);

-- Location: LCCOMB_X22_Y28_N0
\U2|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int~2_combout\ = (!\U2|CNT_int[7]~1_combout\ & ((\UP_DOWN~input_o\ & ((\U2|Add1~4_combout\))) # (!\UP_DOWN~input_o\ & (\U2|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \U2|Add0~4_combout\,
	datac => \U2|Add1~4_combout\,
	datad => \U2|CNT_int[7]~1_combout\,
	combout => \U2|CNT_int~2_combout\);

-- Location: FF_X22_Y28_N1
\U2|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|CNT_int~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(2));

-- Location: LCCOMB_X22_Y28_N16
\U2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add1~6_combout\ = (\U2|CNT_int\(3) & (\U2|Add1~5\ & VCC)) # (!\U2|CNT_int\(3) & (!\U2|Add1~5\))
-- \U2|Add1~7\ = CARRY((!\U2|CNT_int\(3) & !\U2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(3),
	datad => VCC,
	cin => \U2|Add1~5\,
	combout => \U2|Add1~6_combout\,
	cout => \U2|Add1~7\);

-- Location: LCCOMB_X22_Y28_N6
\U2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~16_combout\ = (\U2|Add0~7_combout\ & (((\U2|Add0~6_combout\ & \U2|Add1~6_combout\)) # (!\UP_DOWN~input_o\))) # (!\U2|Add0~7_combout\ & (((\U2|Add0~6_combout\ & \U2|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~7_combout\,
	datab => \UP_DOWN~input_o\,
	datac => \U2|Add0~6_combout\,
	datad => \U2|Add1~6_combout\,
	combout => \U2|Add0~16_combout\);

-- Location: FF_X22_Y28_N7
\U2|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|Add0~16_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(3));

-- Location: LCCOMB_X22_Y28_N28
\U2|CNT_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|CNT_int~4_combout\ = (\UP_DOWN~input_o\ & (\U2|Add1~8_combout\)) # (!\UP_DOWN~input_o\ & (((\U2|Add0~9_combout\ & !\U2|CNT_int[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \U2|Add1~8_combout\,
	datac => \U2|Add0~9_combout\,
	datad => \U2|CNT_int[7]~1_combout\,
	combout => \U2|CNT_int~4_combout\);

-- Location: FF_X22_Y28_N29
\U2|CNT_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|CNT_int~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(4));

-- Location: LCCOMB_X22_Y28_N8
\U2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Equal1~1_combout\ = (!\U2|CNT_int\(4) & (!\U2|CNT_int\(7) & (!\U2|CNT_int\(5) & !\U2|CNT_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(4),
	datab => \U2|CNT_int\(7),
	datac => \U2|CNT_int\(5),
	datad => \U2|CNT_int\(2),
	combout => \U2|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y28_N30
\U2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = (\UP_DOWN~input_o\ & ((!\U2|Equal1~0_combout\) # (!\U2|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datac => \U2|Equal1~1_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|Add0~6_combout\);

-- Location: LCCOMB_X23_Y28_N12
\U2|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|Add0~15_combout\ = (\UP_DOWN~input_o\ & (\U2|Add0~6_combout\ & ((\U2|Add1~12_combout\)))) # (!\UP_DOWN~input_o\ & ((\U2|Add0~13_combout\) # ((\U2|Add0~6_combout\ & \U2|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \U2|Add0~6_combout\,
	datac => \U2|Add0~13_combout\,
	datad => \U2|Add1~12_combout\,
	combout => \U2|Add0~15_combout\);

-- Location: FF_X23_Y28_N13
\U2|CNT_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_count~inputclkctrl_outclk\,
	d => \U2|Add0~15_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_int\(6));

-- Location: LCCOMB_X22_Y28_N4
\U3|acceso_ok~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~3_combout\ = (!\U2|CNT_int\(3) & (((!\U2|CNT_int\(0) & !\U2|CNT_int\(1))) # (!\U2|CNT_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(0),
	datab => \U2|CNT_int\(2),
	datac => \U2|CNT_int\(1),
	datad => \U2|CNT_int\(3),
	combout => \U3|acceso_ok~3_combout\);

-- Location: LCCOMB_X21_Y28_N20
\U3|acceso_ok~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~4_combout\ = ((\U3|acceso_ok~3_combout\) # (!\U2|CNT_int\(4))) # (!\U2|CNT_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|CNT_int\(5),
	datac => \U2|CNT_int\(4),
	datad => \U3|acceso_ok~3_combout\,
	combout => \U3|acceso_ok~4_combout\);

-- Location: IOIBUF_X0_Y14_N1
\Clock_reg~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_reg,
	o => \Clock_reg~input_o\);

-- Location: CLKCTRL_G4
\Clock_reg~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_reg~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_reg~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y29_N29
\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: FF_X21_Y27_N15
\U1|D0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \Din[1]~input_o\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D0\(1));

-- Location: FF_X21_Y27_N27
\U1|D1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D0\(1),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D1\(1));

-- Location: FF_X21_Y27_N31
\U1|D2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D1\(1),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D2\(1));

-- Location: FF_X21_Y27_N1
\U1|D3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D2\(1),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D3\(1));

-- Location: IOIBUF_X21_Y29_N8
\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: LCCOMB_X21_Y27_N16
\U1|D0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D0[0]~feeder_combout\ = \Din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[0]~input_o\,
	combout => \U1|D0[0]~feeder_combout\);

-- Location: FF_X21_Y27_N17
\U1|D0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D0[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D0\(0));

-- Location: LCCOMB_X21_Y27_N0
\U3|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal1~0_combout\ = (\U1|D1\(1) & (!\U1|D0\(1) & (!\U1|D3\(1) & \U1|D0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D1\(1),
	datab => \U1|D0\(1),
	datac => \U1|D3\(1),
	datad => \U1|D0\(0),
	combout => \U3|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y27_N8
\U1|D1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D1[0]~feeder_combout\ = \U1|D0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|D0\(0),
	combout => \U1|D1[0]~feeder_combout\);

-- Location: FF_X21_Y27_N9
\U1|D1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D1[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D1\(0));

-- Location: FF_X21_Y27_N5
\U1|D2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D1\(0),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D2\(0));

-- Location: FF_X21_Y27_N29
\U1|D3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D2\(0),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D3\(0));

-- Location: IOIBUF_X21_Y0_N1
\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X21_Y27_N6
\U1|D0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D0[3]~feeder_combout\ = \Din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[3]~input_o\,
	combout => \U1|D0[3]~feeder_combout\);

-- Location: FF_X21_Y27_N7
\U1|D0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D0[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D0\(3));

-- Location: LCCOMB_X21_Y27_N24
\U1|D1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D1[3]~feeder_combout\ = \U1|D0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|D0\(3),
	combout => \U1|D1[3]~feeder_combout\);

-- Location: FF_X21_Y27_N25
\U1|D1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D1[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D1\(3));

-- Location: LCCOMB_X21_Y27_N22
\U1|D2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D2[3]~feeder_combout\ = \U1|D1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|D1\(3),
	combout => \U1|D2[3]~feeder_combout\);

-- Location: FF_X21_Y27_N23
\U1|D2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D2[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D2\(3));

-- Location: LCCOMB_X21_Y27_N20
\U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~0_combout\ = (!\U1|D0\(3) & (!\U1|D1\(3) & (!\U1|D2\(3) & !\U1|D1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D0\(3),
	datab => \U1|D1\(3),
	datac => \U1|D2\(3),
	datad => \U1|D1\(0),
	combout => \U3|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y27_N30
\U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~1_combout\ = (\U1|D2\(1) & \U1|D2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|D2\(1),
	datad => \U1|D2\(0),
	combout => \U3|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y27_N12
\U3|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal1~1_combout\ = (\U3|Equal1~0_combout\ & (!\U1|D3\(0) & (\U3|Equal0~0_combout\ & \U3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal1~0_combout\,
	datab => \U1|D3\(0),
	datac => \U3|Equal0~0_combout\,
	datad => \U3|Equal0~1_combout\,
	combout => \U3|Equal1~1_combout\);

-- Location: IOIBUF_X23_Y29_N8
\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: FF_X22_Y27_N1
\U1|D0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \Din[2]~input_o\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D0\(2));

-- Location: LCCOMB_X22_Y27_N4
\U1|D1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D1[2]~feeder_combout\ = \U1|D0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|D0\(2),
	combout => \U1|D1[2]~feeder_combout\);

-- Location: FF_X22_Y27_N5
\U1|D1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D1[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D1\(2));

-- Location: FF_X22_Y27_N7
\U1|D2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D1\(2),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D2\(2));

-- Location: FF_X21_Y27_N19
\U1|D3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	asdata => \U1|D2\(3),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D3\(3));

-- Location: LCCOMB_X22_Y27_N2
\U3|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal2~0_combout\ = (\U1|D2\(2) & (\U1|D1\(2) & (\U1|D3\(3) & \U1|D0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D2\(2),
	datab => \U1|D1\(2),
	datac => \U1|D3\(3),
	datad => \U1|D0\(2),
	combout => \U3|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y27_N18
\U1|D3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|D3[2]~feeder_combout\ = \U1|D2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|D2\(2),
	combout => \U1|D3[2]~feeder_combout\);

-- Location: FF_X22_Y27_N19
\U1|D3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_reg~inputclkctrl_outclk\,
	d => \U1|D3[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|D3\(2));

-- Location: LCCOMB_X22_Y27_N0
\U3|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal2~1_combout\ = (\U3|Equal1~1_combout\ & (\U3|Equal2~0_combout\ & !\U1|D3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal1~1_combout\,
	datab => \U3|Equal2~0_combout\,
	datad => \U1|D3\(2),
	combout => \U3|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y27_N22
\U3|acceso_ok~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~5_combout\ = (!\U2|CNT_int\(6) & (\U3|acceso_ok~4_combout\ & (\U3|Equal2~1_combout\ & \U2|CNT_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(6),
	datab => \U3|acceso_ok~4_combout\,
	datac => \U3|Equal2~1_combout\,
	datad => \U2|CNT_int\(7),
	combout => \U3|acceso_ok~5_combout\);

-- Location: LCCOMB_X22_Y27_N20
\U3|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal1~2_combout\ = (!\U1|D0\(2) & (!\U1|D1\(2) & !\U1|D2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|D0\(2),
	datac => \U1|D1\(2),
	datad => \U1|D2\(2),
	combout => \U3|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y27_N14
\U3|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal1~3_combout\ = (\U3|Equal1~1_combout\ & (\U3|Equal1~2_combout\ & (!\U1|D3\(3) & \U1|D3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal1~1_combout\,
	datab => \U3|Equal1~2_combout\,
	datac => \U1|D3\(3),
	datad => \U1|D3\(2),
	combout => \U3|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y27_N24
\U3|acceso_ok~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~0_combout\ = (\U2|CNT_int\(6) & (((\U3|Equal2~1_combout\)))) # (!\U2|CNT_int\(6) & (\U3|Equal1~3_combout\ & (\U2|CNT_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(6),
	datab => \U3|Equal1~3_combout\,
	datac => \U2|CNT_int\(2),
	datad => \U3|Equal2~1_combout\,
	combout => \U3|acceso_ok~0_combout\);

-- Location: LCCOMB_X22_Y28_N26
\U3|acceso_ok~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~1_combout\ = (\U2|CNT_int\(3) & (\U2|CNT_int\(5) & \U2|CNT_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(3),
	datac => \U2|CNT_int\(5),
	datad => \U2|CNT_int\(4),
	combout => \U3|acceso_ok~1_combout\);

-- Location: LCCOMB_X22_Y27_N28
\U3|acceso_ok~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~2_combout\ = (\U3|acceso_ok~0_combout\ & (\U3|acceso_ok~1_combout\ & !\U2|CNT_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|acceso_ok~0_combout\,
	datac => \U3|acceso_ok~1_combout\,
	datad => \U2|CNT_int\(7),
	combout => \U3|acceso_ok~2_combout\);

-- Location: LCCOMB_X21_Y27_N28
\U3|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal3~1_combout\ = (!\U1|D1\(1) & (\U1|D1\(3) & (\U1|D3\(0) & !\U1|D3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D1\(1),
	datab => \U1|D1\(3),
	datac => \U1|D3\(0),
	datad => \U1|D3\(2),
	combout => \U3|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y27_N4
\U3|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal3~3_combout\ = (\U1|D2\(3) & (!\U1|D2\(1) & (\U1|D2\(0) & \U1|D3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D2\(3),
	datab => \U1|D2\(1),
	datac => \U1|D2\(0),
	datad => \U1|D3\(3),
	combout => \U3|Equal3~3_combout\);

-- Location: LCCOMB_X22_Y27_N10
\U3|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal3~0_combout\ = (\U1|D0\(3) & (!\U1|D0\(2) & (!\U1|D1\(2) & !\U1|D2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D0\(3),
	datab => \U1|D0\(2),
	datac => \U1|D1\(2),
	datad => \U1|D2\(2),
	combout => \U3|Equal3~0_combout\);

-- Location: LCCOMB_X21_Y27_N14
\U3|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal3~2_combout\ = (\U1|D1\(0) & (\U1|D0\(0) & (!\U1|D0\(1) & !\U1|D3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D1\(0),
	datab => \U1|D0\(0),
	datac => \U1|D0\(1),
	datad => \U1|D3\(1),
	combout => \U3|Equal3~2_combout\);

-- Location: LCCOMB_X21_Y27_N2
\U3|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal3~4_combout\ = (\U3|Equal3~1_combout\ & (\U3|Equal3~3_combout\ & (\U3|Equal3~0_combout\ & \U3|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal3~1_combout\,
	datab => \U3|Equal3~3_combout\,
	datac => \U3|Equal3~0_combout\,
	datad => \U3|Equal3~2_combout\,
	combout => \U3|Equal3~4_combout\);

-- Location: LCCOMB_X22_Y27_N30
\U3|acceso_ok~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~6_combout\ = (\U3|acceso_ok~2_combout\) # ((!\U3|Equal1~3_combout\ & ((\U3|acceso_ok~5_combout\) # (\U3|Equal3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|acceso_ok~5_combout\,
	datab => \U3|acceso_ok~2_combout\,
	datac => \U3|Equal1~3_combout\,
	datad => \U3|Equal3~4_combout\,
	combout => \U3|acceso_ok~6_combout\);

-- Location: LCCOMB_X22_Y27_N6
\U3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~3_combout\ = (!\U1|D0\(0) & (!\U1|D1\(2) & (\U1|D2\(2) & !\U1|D0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D0\(0),
	datab => \U1|D1\(2),
	datac => \U1|D2\(2),
	datad => \U1|D0\(2),
	combout => \U3|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y27_N26
\U3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~2_combout\ = (\U1|D0\(1) & (\U1|D3\(0) & (!\U1|D1\(1) & !\U1|D3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|D0\(1),
	datab => \U1|D3\(0),
	datac => \U1|D1\(1),
	datad => \U1|D3\(2),
	combout => \U3|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y27_N10
\U3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~4_combout\ = (\U3|Equal0~3_combout\ & (\U3|Equal0~1_combout\ & (\U3|Equal0~0_combout\ & \U3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal0~3_combout\,
	datab => \U3|Equal0~1_combout\,
	datac => \U3|Equal0~0_combout\,
	datad => \U3|Equal0~2_combout\,
	combout => \U3|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y27_N18
\U3|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|Equal0~5_combout\ = (\U3|Equal0~4_combout\ & (!\U1|D3\(3) & \U1|D3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal0~4_combout\,
	datac => \U1|D3\(3),
	datad => \U1|D3\(1),
	combout => \U3|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y27_N12
\U3|acceso_ok~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~7_combout\ = (!\U3|acceso_ok~1_combout\ & ((\U2|CNT_int\(6) & (\U3|Equal1~3_combout\)) # (!\U2|CNT_int\(6) & ((\U3|Equal0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(6),
	datab => \U3|Equal1~3_combout\,
	datac => \U3|acceso_ok~1_combout\,
	datad => \U3|Equal0~5_combout\,
	combout => \U3|acceso_ok~7_combout\);

-- Location: LCCOMB_X22_Y27_N26
\U3|acceso_ok~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~8_combout\ = (\U3|acceso_ok~7_combout\) # ((!\U2|CNT_int\(6) & (\U3|Equal0~5_combout\ & !\U2|CNT_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_int\(6),
	datab => \U3|Equal0~5_combout\,
	datac => \U2|CNT_int\(2),
	datad => \U3|acceso_ok~7_combout\,
	combout => \U3|acceso_ok~8_combout\);

-- Location: LCCOMB_X22_Y27_N16
\U3|acceso_ok~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|acceso_ok~9_combout\ = (\U3|acceso_ok~6_combout\ & (((\U3|acceso_ok~8_combout\ & !\U2|CNT_int\(7))) # (!\U3|Equal0~5_combout\))) # (!\U3|acceso_ok~6_combout\ & (((\U3|acceso_ok~8_combout\ & !\U2|CNT_int\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|acceso_ok~6_combout\,
	datab => \U3|Equal0~5_combout\,
	datac => \U3|acceso_ok~8_combout\,
	datad => \U2|CNT_int\(7),
	combout => \U3|acceso_ok~9_combout\);

-- Location: LCCOMB_X17_Y9_N24
\U5|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux13~0_combout\ = (!\U3|acceso_ok~9_combout\) # (!\confirmar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \confirmar~input_o\,
	datad => \U3|acceso_ok~9_combout\,
	combout => \U5|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\U5|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U5|Mux8~0_combout\ = (\confirmar~input_o\ & !\U3|acceso_ok~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \confirmar~input_o\,
	datad => \U3|acceso_ok~9_combout\,
	combout => \U5|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y27_N8
\U3|clave_ok~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3|clave_ok~0_combout\ = (\U3|Equal2~1_combout\) # ((\U3|Equal0~5_combout\) # ((\U3|Equal1~3_combout\) # (\U3|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Equal2~1_combout\,
	datab => \U3|Equal0~5_combout\,
	datac => \U3|Equal1~3_combout\,
	datad => \U3|Equal3~4_combout\,
	combout => \U3|clave_ok~0_combout\);

ww_Disp0(6) <= \Disp0[6]~output_o\;

ww_Disp0(5) <= \Disp0[5]~output_o\;

ww_Disp0(4) <= \Disp0[4]~output_o\;

ww_Disp0(3) <= \Disp0[3]~output_o\;

ww_Disp0(2) <= \Disp0[2]~output_o\;

ww_Disp0(1) <= \Disp0[1]~output_o\;

ww_Disp0(0) <= \Disp0[0]~output_o\;

ww_Disp1(6) <= \Disp1[6]~output_o\;

ww_Disp1(5) <= \Disp1[5]~output_o\;

ww_Disp1(4) <= \Disp1[4]~output_o\;

ww_Disp1(3) <= \Disp1[3]~output_o\;

ww_Disp1(2) <= \Disp1[2]~output_o\;

ww_Disp1(1) <= \Disp1[1]~output_o\;

ww_Disp1(0) <= \Disp1[0]~output_o\;

ww_Disp2(6) <= \Disp2[6]~output_o\;

ww_Disp2(5) <= \Disp2[5]~output_o\;

ww_Disp2(4) <= \Disp2[4]~output_o\;

ww_Disp2(3) <= \Disp2[3]~output_o\;

ww_Disp2(2) <= \Disp2[2]~output_o\;

ww_Disp2(1) <= \Disp2[1]~output_o\;

ww_Disp2(0) <= \Disp2[0]~output_o\;

ww_Disp3(6) <= \Disp3[6]~output_o\;

ww_Disp3(5) <= \Disp3[5]~output_o\;

ww_Disp3(4) <= \Disp3[4]~output_o\;

ww_Disp3(3) <= \Disp3[3]~output_o\;

ww_Disp3(2) <= \Disp3[2]~output_o\;

ww_Disp3(1) <= \Disp3[1]~output_o\;

ww_Disp3(0) <= \Disp3[0]~output_o\;

ww_LED_acceso <= \LED_acceso~output_o\;

ww_LED_clave <= \LED_clave~output_o\;

ww_LED_horario <= \LED_horario~output_o\;
END structure;


