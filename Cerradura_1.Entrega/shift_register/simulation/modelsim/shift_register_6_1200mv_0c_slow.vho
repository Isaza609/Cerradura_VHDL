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

-- DATE "03/24/2026 16:54:13"

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

ENTITY 	shift_register IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Din : IN std_logic_vector(3 DOWNTO 0);
	Dout0 : OUT std_logic_vector(3 DOWNTO 0);
	Dout1 : OUT std_logic_vector(3 DOWNTO 0);
	Dout2 : OUT std_logic_vector(3 DOWNTO 0);
	Dout3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END shift_register;

-- Design Ports Information
-- Dout0[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout0[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout0[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout0[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout3[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout3[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout3[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout3[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift_register IS
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
SIGNAL ww_Din : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dout0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dout1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dout2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dout3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dout0[0]~output_o\ : std_logic;
SIGNAL \Dout0[1]~output_o\ : std_logic;
SIGNAL \Dout0[2]~output_o\ : std_logic;
SIGNAL \Dout0[3]~output_o\ : std_logic;
SIGNAL \Dout1[0]~output_o\ : std_logic;
SIGNAL \Dout1[1]~output_o\ : std_logic;
SIGNAL \Dout1[2]~output_o\ : std_logic;
SIGNAL \Dout1[3]~output_o\ : std_logic;
SIGNAL \Dout2[0]~output_o\ : std_logic;
SIGNAL \Dout2[1]~output_o\ : std_logic;
SIGNAL \Dout2[2]~output_o\ : std_logic;
SIGNAL \Dout2[3]~output_o\ : std_logic;
SIGNAL \Dout3[0]~output_o\ : std_logic;
SIGNAL \Dout3[1]~output_o\ : std_logic;
SIGNAL \Dout3[2]~output_o\ : std_logic;
SIGNAL \Dout3[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \D0[0]~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \D0[1]~feeder_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \D0[2]~feeder_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \D0[3]~feeder_combout\ : std_logic;
SIGNAL \D1[0]~feeder_combout\ : std_logic;
SIGNAL \D1[1]~feeder_combout\ : std_logic;
SIGNAL \D1[2]~feeder_combout\ : std_logic;
SIGNAL \D1[3]~feeder_combout\ : std_logic;
SIGNAL \D2[0]~feeder_combout\ : std_logic;
SIGNAL \D2[1]~feeder_combout\ : std_logic;
SIGNAL \D2[2]~feeder_combout\ : std_logic;
SIGNAL \D2[3]~feeder_combout\ : std_logic;
SIGNAL \D3[0]~feeder_combout\ : std_logic;
SIGNAL \D3[1]~feeder_combout\ : std_logic;
SIGNAL \D3[2]~feeder_combout\ : std_logic;
SIGNAL \D3[3]~feeder_combout\ : std_logic;
SIGNAL D3 : std_logic_vector(3 DOWNTO 0);
SIGNAL D2 : std_logic_vector(3 DOWNTO 0);
SIGNAL D1 : std_logic_vector(3 DOWNTO 0);
SIGNAL D0 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Din <= Din;
Dout0 <= ww_Dout0;
Dout1 <= ww_Dout1;
Dout2 <= ww_Dout2;
Dout3 <= ww_Dout3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X0_Y6_N23
\Dout0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D0(0),
	devoe => ww_devoe,
	o => \Dout0[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\Dout0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D0(1),
	devoe => ww_devoe,
	o => \Dout0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Dout0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D0(2),
	devoe => ww_devoe,
	o => \Dout0[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\Dout0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D0(3),
	devoe => ww_devoe,
	o => \Dout0[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Dout1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D1(0),
	devoe => ww_devoe,
	o => \Dout1[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Dout1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D1(1),
	devoe => ww_devoe,
	o => \Dout1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\Dout1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D1(2),
	devoe => ww_devoe,
	o => \Dout1[2]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\Dout1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D1(3),
	devoe => ww_devoe,
	o => \Dout1[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\Dout2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D2(0),
	devoe => ww_devoe,
	o => \Dout2[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\Dout2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D2(1),
	devoe => ww_devoe,
	o => \Dout2[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Dout2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D2(2),
	devoe => ww_devoe,
	o => \Dout2[2]~output_o\);

-- Location: IOOBUF_X41_Y27_N2
\Dout2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D2(3),
	devoe => ww_devoe,
	o => \Dout2[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Dout3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D3(0),
	devoe => ww_devoe,
	o => \Dout3[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Dout3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D3(1),
	devoe => ww_devoe,
	o => \Dout3[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Dout3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D3(2),
	devoe => ww_devoe,
	o => \Dout3[2]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\Dout3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D3(3),
	devoe => ww_devoe,
	o => \Dout3[3]~output_o\);

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

-- Location: IOIBUF_X0_Y6_N8
\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\D0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D0[0]~feeder_combout\ = \Din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[0]~input_o\,
	combout => \D0[0]~feeder_combout\);

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

-- Location: FF_X1_Y6_N17
\D0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D0[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D0(0));

-- Location: IOIBUF_X23_Y29_N29
\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: LCCOMB_X23_Y28_N28
\D0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D0[1]~feeder_combout\ = \Din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[1]~input_o\,
	combout => \D0[1]~feeder_combout\);

-- Location: FF_X23_Y28_N29
\D0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D0[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D0(1));

-- Location: IOIBUF_X21_Y29_N8
\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: LCCOMB_X21_Y28_N0
\D0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D0[2]~feeder_combout\ = \Din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[2]~input_o\,
	combout => \D0[2]~feeder_combout\);

-- Location: FF_X21_Y28_N1
\D0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D0[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D0(2));

-- Location: IOIBUF_X41_Y27_N8
\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: LCCOMB_X40_Y27_N28
\D0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D0[3]~feeder_combout\ = \Din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[3]~input_o\,
	combout => \D0[3]~feeder_combout\);

-- Location: FF_X40_Y27_N29
\D0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D0[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D0(3));

-- Location: LCCOMB_X1_Y6_N6
\D1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[0]~feeder_combout\ = D0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D0(0),
	combout => \D1[0]~feeder_combout\);

-- Location: FF_X1_Y6_N7
\D1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D1[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1(0));

-- Location: LCCOMB_X23_Y28_N10
\D1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[1]~feeder_combout\ = D0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D0(1),
	combout => \D1[1]~feeder_combout\);

-- Location: FF_X23_Y28_N11
\D1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D1[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1(1));

-- Location: LCCOMB_X21_Y28_N10
\D1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[2]~feeder_combout\ = D0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D0(2),
	combout => \D1[2]~feeder_combout\);

-- Location: FF_X21_Y28_N11
\D1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D1[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1(2));

-- Location: LCCOMB_X40_Y27_N10
\D1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D1[3]~feeder_combout\ = D0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D0(3),
	combout => \D1[3]~feeder_combout\);

-- Location: FF_X40_Y27_N11
\D1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D1[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1(3));

-- Location: LCCOMB_X1_Y6_N0
\D2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[0]~feeder_combout\ = D1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D1(0),
	combout => \D2[0]~feeder_combout\);

-- Location: FF_X1_Y6_N1
\D2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D2[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2(0));

-- Location: LCCOMB_X23_Y28_N0
\D2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[1]~feeder_combout\ = D1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D1(1),
	combout => \D2[1]~feeder_combout\);

-- Location: FF_X23_Y28_N1
\D2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D2[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2(1));

-- Location: LCCOMB_X21_Y28_N28
\D2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[2]~feeder_combout\ = D1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D1(2),
	combout => \D2[2]~feeder_combout\);

-- Location: FF_X21_Y28_N29
\D2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D2[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2(2));

-- Location: LCCOMB_X40_Y27_N16
\D2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D2[3]~feeder_combout\ = D1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D1(3),
	combout => \D2[3]~feeder_combout\);

-- Location: FF_X40_Y27_N17
\D2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D2[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2(3));

-- Location: LCCOMB_X1_Y6_N14
\D3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3[0]~feeder_combout\ = D2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D2(0),
	combout => \D3[0]~feeder_combout\);

-- Location: FF_X1_Y6_N15
\D3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D3[0]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3(0));

-- Location: LCCOMB_X23_Y28_N22
\D3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3[1]~feeder_combout\ = D2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D2(1),
	combout => \D3[1]~feeder_combout\);

-- Location: FF_X23_Y28_N23
\D3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D3[1]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3(1));

-- Location: LCCOMB_X21_Y28_N22
\D3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3[2]~feeder_combout\ = D2(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D2(2),
	combout => \D3[2]~feeder_combout\);

-- Location: FF_X21_Y28_N23
\D3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D3[2]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3(2));

-- Location: LCCOMB_X40_Y27_N6
\D3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D3[3]~feeder_combout\ = D2(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => D2(3),
	combout => \D3[3]~feeder_combout\);

-- Location: FF_X40_Y27_N7
\D3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \D3[3]~feeder_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3(3));

ww_Dout0(0) <= \Dout0[0]~output_o\;

ww_Dout0(1) <= \Dout0[1]~output_o\;

ww_Dout0(2) <= \Dout0[2]~output_o\;

ww_Dout0(3) <= \Dout0[3]~output_o\;

ww_Dout1(0) <= \Dout1[0]~output_o\;

ww_Dout1(1) <= \Dout1[1]~output_o\;

ww_Dout1(2) <= \Dout1[2]~output_o\;

ww_Dout1(3) <= \Dout1[3]~output_o\;

ww_Dout2(0) <= \Dout2[0]~output_o\;

ww_Dout2(1) <= \Dout2[1]~output_o\;

ww_Dout2(2) <= \Dout2[2]~output_o\;

ww_Dout2(3) <= \Dout2[3]~output_o\;

ww_Dout3(0) <= \Dout3[0]~output_o\;

ww_Dout3(1) <= \Dout3[1]~output_o\;

ww_Dout3(2) <= \Dout3[2]~output_o\;

ww_Dout3(3) <= \Dout3[3]~output_o\;
END structure;


