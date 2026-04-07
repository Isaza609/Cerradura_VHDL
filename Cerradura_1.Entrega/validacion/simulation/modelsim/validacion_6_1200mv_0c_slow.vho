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

-- DATE "04/03/2026 22:58:29"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	validacion IS
    PORT (
	clave_ingresada : IN std_logic_vector(15 DOWNTO 0);
	count18O_val : IN STD.STANDARD.integer range 0 TO 180;
	acceso_ok : OUT std_logic;
	clave_ok : OUT std_logic;
	horario_ok : OUT std_logic
	);
END validacion;

-- Design Ports Information
-- acceso_ok	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ok	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horario_ok	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[10]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[14]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[9]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clave_ingresada[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count18O_val[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF validacion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clave_ingresada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_count18O_val : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_acceso_ok : std_logic;
SIGNAL ww_clave_ok : std_logic;
SIGNAL ww_horario_ok : std_logic;
SIGNAL \count18O_val[1]~input_o\ : std_logic;
SIGNAL \count18O_val[0]~input_o\ : std_logic;
SIGNAL \acceso_ok~output_o\ : std_logic;
SIGNAL \clave_ok~output_o\ : std_logic;
SIGNAL \horario_ok~output_o\ : std_logic;
SIGNAL \clave_ingresada[13]~input_o\ : std_logic;
SIGNAL \clave_ingresada[0]~input_o\ : std_logic;
SIGNAL \clave_ingresada[12]~input_o\ : std_logic;
SIGNAL \clave_ingresada[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \clave_ingresada[15]~input_o\ : std_logic;
SIGNAL \clave_ingresada[4]~input_o\ : std_logic;
SIGNAL \clave_ingresada[9]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \clave_ingresada[11]~input_o\ : std_logic;
SIGNAL \clave_ingresada[8]~input_o\ : std_logic;
SIGNAL \clave_ingresada[7]~input_o\ : std_logic;
SIGNAL \clave_ingresada[5]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \clave_ingresada[14]~input_o\ : std_logic;
SIGNAL \clave_ingresada[10]~input_o\ : std_logic;
SIGNAL \clave_ingresada[6]~input_o\ : std_logic;
SIGNAL \clave_ingresada[3]~input_o\ : std_logic;
SIGNAL \clave_ingresada[2]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \count18O_val[7]~input_o\ : std_logic;
SIGNAL \count18O_val[6]~input_o\ : std_logic;
SIGNAL \count18O_val[4]~input_o\ : std_logic;
SIGNAL \count18O_val[3]~input_o\ : std_logic;
SIGNAL \count18O_val[5]~input_o\ : std_logic;
SIGNAL \acceso_ok~0_combout\ : std_logic;
SIGNAL \acceso_ok~2_combout\ : std_logic;
SIGNAL \acceso_ok~3_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \acceso_ok~4_combout\ : std_logic;
SIGNAL \count18O_val[2]~input_o\ : std_logic;
SIGNAL \acceso_ok~1_combout\ : std_logic;
SIGNAL \acceso_ok~5_combout\ : std_logic;
SIGNAL \clave_ok~0_combout\ : std_logic;

BEGIN

ww_clave_ingresada <= clave_ingresada;
ww_count18O_val <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(count18O_val, 8);
acceso_ok <= ww_acceso_ok;
clave_ok <= ww_clave_ok;
horario_ok <= ww_horario_ok;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y22_N9
\acceso_ok~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acceso_ok~5_combout\,
	devoe => ww_devoe,
	o => \acceso_ok~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\clave_ok~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clave_ok~0_combout\,
	devoe => ww_devoe,
	o => \clave_ok~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\horario_ok~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acceso_ok~5_combout\,
	devoe => ww_devoe,
	o => \horario_ok~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\clave_ingresada[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(13),
	o => \clave_ingresada[13]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\clave_ingresada[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(0),
	o => \clave_ingresada[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\clave_ingresada[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(12),
	o => \clave_ingresada[12]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\clave_ingresada[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(1),
	o => \clave_ingresada[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N22
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\clave_ingresada[13]~input_o\ & (!\clave_ingresada[0]~input_o\ & (\clave_ingresada[12]~input_o\ & !\clave_ingresada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[13]~input_o\,
	datab => \clave_ingresada[0]~input_o\,
	datac => \clave_ingresada[12]~input_o\,
	datad => \clave_ingresada[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y7_N22
\clave_ingresada[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(15),
	o => \clave_ingresada[15]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\clave_ingresada[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(4),
	o => \clave_ingresada[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\clave_ingresada[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(9),
	o => \clave_ingresada[9]~input_o\);

-- Location: LCCOMB_X8_Y9_N16
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\clave_ingresada[4]~input_o\ & \clave_ingresada[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clave_ingresada[4]~input_o\,
	datad => \clave_ingresada[9]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X0_Y8_N22
\clave_ingresada[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(11),
	o => \clave_ingresada[11]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\clave_ingresada[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(8),
	o => \clave_ingresada[8]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\clave_ingresada[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(7),
	o => \clave_ingresada[7]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\clave_ingresada[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(5),
	o => \clave_ingresada[5]~input_o\);

-- Location: LCCOMB_X1_Y12_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\clave_ingresada[11]~input_o\ & (!\clave_ingresada[8]~input_o\ & (!\clave_ingresada[7]~input_o\ & \clave_ingresada[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[11]~input_o\,
	datab => \clave_ingresada[8]~input_o\,
	datac => \clave_ingresada[7]~input_o\,
	datad => \clave_ingresada[5]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y12_N0
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & (!\clave_ingresada[15]~input_o\ & (\Equal1~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \clave_ingresada[15]~input_o\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clave_ingresada[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(14),
	o => \clave_ingresada[14]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\clave_ingresada[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(10),
	o => \clave_ingresada[10]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\clave_ingresada[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(6),
	o => \clave_ingresada[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\clave_ingresada[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(3),
	o => \clave_ingresada[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\clave_ingresada[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clave_ingresada(2),
	o => \clave_ingresada[2]~input_o\);

-- Location: LCCOMB_X1_Y12_N18
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\clave_ingresada[10]~input_o\ & (\clave_ingresada[6]~input_o\ & (\clave_ingresada[3]~input_o\ & !\clave_ingresada[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[10]~input_o\,
	datab => \clave_ingresada[6]~input_o\,
	datac => \clave_ingresada[3]~input_o\,
	datad => \clave_ingresada[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X1_Y12_N4
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal1~2_combout\ & (\clave_ingresada[14]~input_o\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \clave_ingresada[14]~input_o\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X1_Y12_N28
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\clave_ingresada[10]~input_o\ & (!\clave_ingresada[3]~input_o\ & (!\clave_ingresada[14]~input_o\ & \clave_ingresada[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[10]~input_o\,
	datab => \clave_ingresada[3]~input_o\,
	datac => \clave_ingresada[14]~input_o\,
	datad => \clave_ingresada[2]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X1_Y12_N6
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (!\clave_ingresada[6]~input_o\ & \Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \clave_ingresada[6]~input_o\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X1_Y12_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\clave_ingresada[15]~input_o\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clave_ingresada[15]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y12_N16
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\clave_ingresada[3]~input_o\ & (\clave_ingresada[6]~input_o\ & (!\clave_ingresada[12]~input_o\ & \clave_ingresada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[3]~input_o\,
	datab => \clave_ingresada[6]~input_o\,
	datac => \clave_ingresada[12]~input_o\,
	datad => \clave_ingresada[1]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y12_N24
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\clave_ingresada[2]~input_o\ & (\clave_ingresada[0]~input_o\ & (!\clave_ingresada[14]~input_o\ & !\clave_ingresada[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[2]~input_o\,
	datab => \clave_ingresada[0]~input_o\,
	datac => \clave_ingresada[14]~input_o\,
	datad => \clave_ingresada[10]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X1_Y12_N10
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal3~0_combout\ & (\clave_ingresada[4]~input_o\ & !\clave_ingresada[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \clave_ingresada[4]~input_o\,
	datad => \clave_ingresada[9]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X1_Y12_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\clave_ingresada[13]~input_o\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \clave_ingresada[13]~input_o\,
	datad => \Equal3~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X0_Y11_N22
\count18O_val[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(7),
	o => \count18O_val[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\count18O_val[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(6),
	o => \count18O_val[6]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\count18O_val[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(4),
	o => \count18O_val[4]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\count18O_val[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(3),
	o => \count18O_val[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\count18O_val[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(5),
	o => \count18O_val[5]~input_o\);

-- Location: LCCOMB_X2_Y23_N0
\acceso_ok~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_ok~0_combout\ = (\count18O_val[4]~input_o\ & (\count18O_val[3]~input_o\ & \count18O_val[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count18O_val[4]~input_o\,
	datac => \count18O_val[3]~input_o\,
	datad => \count18O_val[5]~input_o\,
	combout => \acceso_ok~0_combout\);

-- Location: LCCOMB_X2_Y23_N28
\acceso_ok~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_ok~2_combout\ = (\count18O_val[7]~input_o\) # ((\count18O_val[6]~input_o\ & \acceso_ok~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count18O_val[7]~input_o\,
	datac => \count18O_val[6]~input_o\,
	datad => \acceso_ok~0_combout\,
	combout => \acceso_ok~2_combout\);

-- Location: LCCOMB_X2_Y23_N6
\acceso_ok~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_ok~3_combout\ = (\Equal0~3_combout\ & (((\acceso_ok~2_combout\)))) # (!\Equal0~3_combout\ & ((\Equal1~4_combout\) # ((\Equal2~1_combout\ & !\acceso_ok~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal0~3_combout\,
	datad => \acceso_ok~2_combout\,
	combout => \acceso_ok~3_combout\);

-- Location: LCCOMB_X1_Y12_N14
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!\clave_ingresada[13]~input_o\ & (\clave_ingresada[3]~input_o\ & (\clave_ingresada[12]~input_o\ & !\clave_ingresada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[13]~input_o\,
	datab => \clave_ingresada[3]~input_o\,
	datac => \clave_ingresada[12]~input_o\,
	datad => \clave_ingresada[1]~input_o\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X1_Y12_N8
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (!\clave_ingresada[5]~input_o\ & (\clave_ingresada[8]~input_o\ & (\clave_ingresada[7]~input_o\ & !\clave_ingresada[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[5]~input_o\,
	datab => \clave_ingresada[8]~input_o\,
	datac => \clave_ingresada[7]~input_o\,
	datad => \clave_ingresada[6]~input_o\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X1_Y12_N12
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\clave_ingresada[11]~input_o\ & \clave_ingresada[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clave_ingresada[11]~input_o\,
	datac => \clave_ingresada[15]~input_o\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X1_Y12_N26
\Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (\Equal3~1_combout\ & (\Equal3~3_combout\ & (\Equal3~4_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X2_Y23_N8
\acceso_ok~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_ok~4_combout\ = (\Equal0~3_combout\) # ((\Equal1~4_combout\ & ((!\acceso_ok~2_combout\))) # (!\Equal1~4_combout\ & (\Equal2~1_combout\ & \acceso_ok~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal1~4_combout\,
	datac => \Equal0~3_combout\,
	datad => \acceso_ok~2_combout\,
	combout => \acceso_ok~4_combout\);

-- Location: IOIBUF_X1_Y0_N8
\count18O_val[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(2),
	o => \count18O_val[2]~input_o\);

-- Location: LCCOMB_X2_Y23_N2
\acceso_ok~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_ok~1_combout\ = (!\count18O_val[7]~input_o\ & ((\count18O_val[6]~input_o\ & ((!\acceso_ok~0_combout\))) # (!\count18O_val[6]~input_o\ & (\count18O_val[2]~input_o\ & \acceso_ok~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count18O_val[2]~input_o\,
	datab => \count18O_val[7]~input_o\,
	datac => \count18O_val[6]~input_o\,
	datad => \acceso_ok~0_combout\,
	combout => \acceso_ok~1_combout\);

-- Location: LCCOMB_X2_Y23_N26
\acceso_ok~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acceso_ok~5_combout\ = (\acceso_ok~4_combout\ & (\acceso_ok~3_combout\ $ (((!\acceso_ok~1_combout\))))) # (!\acceso_ok~4_combout\ & (!\acceso_ok~3_combout\ & (\Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acceso_ok~3_combout\,
	datab => \Equal3~5_combout\,
	datac => \acceso_ok~4_combout\,
	datad => \acceso_ok~1_combout\,
	combout => \acceso_ok~5_combout\);

-- Location: LCCOMB_X2_Y23_N12
\clave_ok~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clave_ok~0_combout\ = \Equal0~3_combout\ $ (\Equal3~5_combout\ $ (\Equal1~4_combout\ $ (\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal3~5_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal2~1_combout\,
	combout => \clave_ok~0_combout\);

-- Location: IOIBUF_X41_Y3_N8
\count18O_val[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(1),
	o => \count18O_val[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\count18O_val[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_count18O_val(0),
	o => \count18O_val[0]~input_o\);

ww_acceso_ok <= \acceso_ok~output_o\;

ww_clave_ok <= \clave_ok~output_o\;

ww_horario_ok <= \horario_ok~output_o\;
END structure;


