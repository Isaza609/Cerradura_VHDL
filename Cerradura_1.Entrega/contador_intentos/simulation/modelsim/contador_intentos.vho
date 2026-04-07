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

-- DATE "04/06/2026 09:34:01"

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

ENTITY 	contador_intentos IS
    PORT (
	Clock_intento : IN std_logic;
	Reset : IN std_logic;
	acceso_ok : IN std_logic;
	intentos : OUT std_logic_vector(1 DOWNTO 0);
	alarma : OUT std_logic
	);
END contador_intentos;

-- Design Ports Information
-- intentos[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- intentos[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acceso_ok	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_intento	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_intentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock_intento : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_acceso_ok : std_logic;
SIGNAL ww_intentos : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_alarma : std_logic;
SIGNAL \Clock_intento~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \intentos[0]~output_o\ : std_logic;
SIGNAL \intentos[1]~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \Clock_intento~input_o\ : std_logic;
SIGNAL \Clock_intento~inputclkctrl_outclk\ : std_logic;
SIGNAL \acceso_ok~input_o\ : std_logic;
SIGNAL \cont_int~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cont_int~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL cont_int : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_Clock_intento <= Clock_intento;
ww_Reset <= Reset;
ww_acceso_ok <= acceso_ok;
intentos <= ww_intentos;
alarma <= ww_alarma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock_intento~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_intento~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X0_Y4_N2
\intentos[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont_int(0),
	devoe => ww_devoe,
	o => \intentos[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\intentos[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cont_int(1),
	devoe => ww_devoe,
	o => \intentos[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock_intento~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock_intento,
	o => \Clock_intento~input_o\);

-- Location: CLKCTRL_G4
\Clock_intento~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_intento~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_intento~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N8
\acceso_ok~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acceso_ok,
	o => \acceso_ok~input_o\);

-- Location: LCCOMB_X1_Y4_N6
\cont_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont_int~1_combout\ = (!\acceso_ok~input_o\ & ((cont_int(1)) # (cont_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acceso_ok~input_o\,
	datac => cont_int(1),
	datad => cont_int(0),
	combout => \cont_int~1_combout\);

-- Location: IOIBUF_X0_Y14_N8
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: FF_X1_Y4_N7
\cont_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_intento~inputclkctrl_outclk\,
	d => \cont_int~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_int(1));

-- Location: LCCOMB_X1_Y4_N0
\cont_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont_int~0_combout\ = (!\acceso_ok~input_o\ & ((cont_int(1)) # (!cont_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acceso_ok~input_o\,
	datac => cont_int(0),
	datad => cont_int(1),
	combout => \cont_int~0_combout\);

-- Location: FF_X1_Y4_N1
\cont_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_intento~inputclkctrl_outclk\,
	d => \cont_int~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_int(0));

-- Location: LCCOMB_X1_Y4_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cont_int(0) & cont_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_int(0),
	datad => cont_int(1),
	combout => \Equal0~0_combout\);

ww_intentos(0) <= \intentos[0]~output_o\;

ww_intentos(1) <= \intentos[1]~output_o\;

ww_alarma <= \alarma~output_o\;
END structure;


