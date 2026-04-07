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

-- DATE "04/06/2026 10:31:11"

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

ENTITY 	temporizador_open IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	iniciar : IN std_logic;
	open_activo : OUT std_logic
	);
END temporizador_open;

-- Design Ports Information
-- open_activo	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF temporizador_open IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_open_activo : std_logic;
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \open_activo~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[2]~2_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \contador[2]~0_combout\ : std_logic;
SIGNAL \contando~0_combout\ : std_logic;
SIGNAL \contando~q\ : std_logic;
SIGNAL contador : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_iniciar <= iniciar;
open_activo <= ww_open_activo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X0_Y22_N23
\open_activo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contando~q\,
	devoe => ww_devoe,
	o => \open_activo~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N8
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X1_Y22_N18
\contador~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (!contador(2) & (\contando~q\ & (contador(1) $ (contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \contando~q\,
	datac => contador(1),
	datad => contador(0),
	combout => \contador~1_combout\);

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

-- Location: LCCOMB_X1_Y22_N26
\contador[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~2_combout\ = (\iniciar~input_o\) # (\contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iniciar~input_o\,
	datad => \contando~q\,
	combout => \contador[2]~2_combout\);

-- Location: FF_X1_Y22_N19
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \contador~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \contador[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X1_Y22_N28
\contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = ((!contador(0) & ((!contador(1)) # (!contador(2))))) # (!\contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \contando~q\,
	datac => contador(0),
	datad => contador(1),
	combout => \contador~3_combout\);

-- Location: FF_X1_Y22_N29
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \contador~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \contador[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X1_Y22_N22
\contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (\contando~q\ & ((contador(0) & (!contador(2) & contador(1))) # (!contador(0) & (contador(2) & !contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contando~q\,
	datab => contador(0),
	datac => contador(2),
	datad => contador(1),
	combout => \contador~4_combout\);

-- Location: FF_X1_Y22_N23
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \contador~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \contador[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X1_Y22_N24
\contador[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~0_combout\ = (\contando~q\ & (((!contador(1) & !contador(0))) # (!contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datac => \contando~q\,
	datad => contador(0),
	combout => \contador[2]~0_combout\);

-- Location: LCCOMB_X1_Y22_N12
\contando~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contando~0_combout\ = (\contador[2]~0_combout\) # ((\iniciar~input_o\ & !\contando~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iniciar~input_o\,
	datac => \contando~q\,
	datad => \contador[2]~0_combout\,
	combout => \contando~0_combout\);

-- Location: FF_X1_Y22_N13
contando : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \contando~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contando~q\);

ww_open_activo <= \open_activo~output_o\;
END structure;


