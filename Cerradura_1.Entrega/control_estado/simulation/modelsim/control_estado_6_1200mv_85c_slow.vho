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

-- DATE "04/06/2026 17:02:55"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_estado IS
    PORT (
	confirmar : IN std_logic;
	acceso_ok : IN std_logic;
	alarma : IN std_logic;
	open_activo : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic
	);
END control_estado;

-- Design Ports Information
-- S0	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acceso_ok	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- open_activo	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_estado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_confirmar : std_logic;
SIGNAL ww_acceso_ok : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_open_activo : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \open_activo~input_o\ : std_logic;
SIGNAL \alarma~input_o\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \acceso_ok~input_o\ : std_logic;
SIGNAL \S0~0_combout\ : std_logic;
SIGNAL \S1~0_combout\ : std_logic;

BEGIN

ww_confirmar <= confirmar;
ww_acceso_ok <= acceso_ok;
ww_alarma <= alarma;
ww_open_activo <= open_activo;
S0 <= ww_S0;
S1 <= ww_S1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y2_N2
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S0~0_combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1~0_combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOIBUF_X0_Y10_N15
\open_activo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_open_activo,
	o => \open_activo~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\alarma~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alarma,
	o => \alarma~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\acceso_ok~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acceso_ok,
	o => \acceso_ok~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\S0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S0~0_combout\ = (\alarma~input_o\) # ((!\open_activo~input_o\ & (\confirmar~input_o\ & !\acceso_ok~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \open_activo~input_o\,
	datab => \alarma~input_o\,
	datac => \confirmar~input_o\,
	datad => \acceso_ok~input_o\,
	combout => \S0~0_combout\);

-- Location: LCCOMB_X1_Y6_N10
\S1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S1~0_combout\ = (\open_activo~input_o\) # ((\alarma~input_o\) # ((\confirmar~input_o\ & \acceso_ok~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \open_activo~input_o\,
	datab => \alarma~input_o\,
	datac => \confirmar~input_o\,
	datad => \acceso_ok~input_o\,
	combout => \S1~0_combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;
END structure;


