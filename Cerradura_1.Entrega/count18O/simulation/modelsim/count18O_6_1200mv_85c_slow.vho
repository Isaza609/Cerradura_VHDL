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

-- DATE "03/19/2026 17:49:23"

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

ENTITY 	count18O IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	UP_DOWN : IN std_logic;
	CNT : OUT std_logic_vector(7 DOWNTO 0)
	);
END count18O;

-- Design Ports Information
-- CNT[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CNT[7]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP_DOWN	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF count18O IS
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
SIGNAL ww_UP_DOWN : std_logic;
SIGNAL ww_CNT : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT[0]~output_o\ : std_logic;
SIGNAL \CNT[1]~output_o\ : std_logic;
SIGNAL \CNT[2]~output_o\ : std_logic;
SIGNAL \CNT[3]~output_o\ : std_logic;
SIGNAL \CNT[4]~output_o\ : std_logic;
SIGNAL \CNT[5]~output_o\ : std_logic;
SIGNAL \CNT[6]~output_o\ : std_logic;
SIGNAL \CNT[7]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \UP_DOWN~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \CNT_int~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \CNT_int~5_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \CNT_int~7_combout\ : std_logic;
SIGNAL \CNT_int[0]~1_combout\ : std_logic;
SIGNAL \CNT_int[0]~2_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \CNT_int~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \CNT_int~0_combout\ : std_logic;
SIGNAL \CNT_int~3_combout\ : std_logic;
SIGNAL CNT_int : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_UP_DOWN <= UP_DOWN;
CNT <= ww_CNT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X0_Y7_N9
\CNT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(0),
	devoe => ww_devoe,
	o => \CNT[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\CNT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(1),
	devoe => ww_devoe,
	o => \CNT[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\CNT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(2),
	devoe => ww_devoe,
	o => \CNT[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\CNT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(3),
	devoe => ww_devoe,
	o => \CNT[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\CNT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(4),
	devoe => ww_devoe,
	o => \CNT[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\CNT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(5),
	devoe => ww_devoe,
	o => \CNT[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\CNT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(6),
	devoe => ww_devoe,
	o => \CNT[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\CNT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => CNT_int(7),
	devoe => ww_devoe,
	o => \CNT[7]~output_o\);

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

-- Location: LCCOMB_X2_Y7_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = CNT_int(0) $ (VCC)
-- \Add1~1\ = CARRY(CNT_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y6_N1
\UP_DOWN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_DOWN,
	o => \UP_DOWN~input_o\);

-- Location: LCCOMB_X2_Y7_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (CNT_int(1) & (\Add1~1\ & VCC)) # (!CNT_int(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!CNT_int(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y7_N12
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = CNT_int(0) $ (VCC)
-- \Add0~1\ = CARRY(CNT_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y7_N14
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (CNT_int(1) & (!\Add0~1\)) # (!CNT_int(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!CNT_int(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X2_Y7_N30
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add1~2_combout\ & ((\Add0~2_combout\) # ((!\UP_DOWN~input_o\ & \Add0~3_combout\)))) # (!\Add1~2_combout\ & (!\UP_DOWN~input_o\ & ((\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \UP_DOWN~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add0~3_combout\,
	combout => \Add0~5_combout\);

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

-- Location: FF_X2_Y7_N31
\CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(1));

-- Location: LCCOMB_X2_Y7_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (CNT_int(2) & ((GND) # (!\Add1~3\))) # (!CNT_int(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((CNT_int(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X1_Y7_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (CNT_int(2) & (\Add0~4\ $ (GND))) # (!CNT_int(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((CNT_int(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y7_N28
\CNT_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int~4_combout\ = (!\CNT_int[0]~2_combout\ & ((\UP_DOWN~input_o\ & (\Add1~4_combout\)) # (!\UP_DOWN~input_o\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \CNT_int[0]~2_combout\,
	datac => \Add1~4_combout\,
	datad => \Add0~6_combout\,
	combout => \CNT_int~4_combout\);

-- Location: FF_X1_Y7_N29
\CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CNT_int~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(2));

-- Location: LCCOMB_X1_Y7_N18
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (CNT_int(3) & (!\Add0~7\)) # (!CNT_int(3) & ((\Add0~7\) # (GND)))
-- \Add0~9\ = CARRY((!\Add0~7\) # (!CNT_int(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y7_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (CNT_int(3) & (\Add1~5\ & VCC)) # (!CNT_int(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!CNT_int(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X1_Y7_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\UP_DOWN~input_o\ & (((\Add0~2_combout\ & \Add1~6_combout\)))) # (!\UP_DOWN~input_o\ & ((\Add0~8_combout\) # ((\Add0~2_combout\ & \Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add0~2_combout\,
	datad => \Add1~6_combout\,
	combout => \Add0~10_combout\);

-- Location: FF_X1_Y7_N11
\CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(3));

-- Location: LCCOMB_X2_Y7_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (CNT_int(4) & ((GND) # (!\Add1~7\))) # (!CNT_int(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((CNT_int(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X1_Y7_N20
\Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (CNT_int(4) & (\Add0~9\ $ (GND))) # (!CNT_int(4) & (!\Add0~9\ & VCC))
-- \Add0~12\ = CARRY((CNT_int(4) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(4),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X1_Y7_N0
\CNT_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int~5_combout\ = (\UP_DOWN~input_o\ & (\Add1~8_combout\)) # (!\UP_DOWN~input_o\ & (((!\CNT_int[0]~2_combout\ & \Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \Add1~8_combout\,
	datac => \CNT_int[0]~2_combout\,
	datad => \Add0~11_combout\,
	combout => \CNT_int~5_combout\);

-- Location: FF_X1_Y7_N1
\CNT_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CNT_int~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(4));

-- Location: LCCOMB_X1_Y7_N22
\Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (CNT_int(5) & (!\Add0~12\)) # (!CNT_int(5) & ((\Add0~12\) # (GND)))
-- \Add0~14\ = CARRY((!\Add0~12\) # (!CNT_int(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(5),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X1_Y7_N24
\Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (CNT_int(6) & (\Add0~14\ $ (GND))) # (!CNT_int(6) & (!\Add0~14\ & VCC))
-- \Add0~16\ = CARRY((CNT_int(6) & !\Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(6),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X1_Y7_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~16\ $ (CNT_int(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CNT_int(7),
	cin => \Add0~16\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X2_Y7_N22
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (CNT_int(6) & ((GND) # (!\Add1~11\))) # (!CNT_int(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((CNT_int(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X2_Y7_N24
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!CNT_int(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CNT_int(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X2_Y7_N28
\CNT_int~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int~7_combout\ = (\UP_DOWN~input_o\ & (((\Add1~14_combout\)))) # (!\UP_DOWN~input_o\ & (!\CNT_int[0]~2_combout\ & (\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \CNT_int[0]~2_combout\,
	datac => \Add0~18_combout\,
	datad => \Add1~14_combout\,
	combout => \CNT_int~7_combout\);

-- Location: FF_X2_Y7_N29
\CNT_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CNT_int~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(7));

-- Location: LCCOMB_X2_Y7_N2
\CNT_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int[0]~1_combout\ = (CNT_int(4) & (CNT_int(7) & (CNT_int(5) & CNT_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(4),
	datab => CNT_int(7),
	datac => CNT_int(5),
	datad => CNT_int(2),
	combout => \CNT_int[0]~1_combout\);

-- Location: LCCOMB_X2_Y7_N0
\CNT_int[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int[0]~2_combout\ = (\CNT_int[0]~1_combout\ & (!\UP_DOWN~input_o\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_int[0]~1_combout\,
	datac => \UP_DOWN~input_o\,
	datad => \Equal1~0_combout\,
	combout => \CNT_int[0]~2_combout\);

-- Location: LCCOMB_X2_Y7_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (CNT_int(5) & (\Add1~9\ & VCC)) # (!CNT_int(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!CNT_int(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CNT_int(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X2_Y7_N8
\CNT_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int~6_combout\ = (\UP_DOWN~input_o\ & (((\Add1~10_combout\)))) # (!\UP_DOWN~input_o\ & (!\CNT_int[0]~2_combout\ & ((\Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DOWN~input_o\,
	datab => \CNT_int[0]~2_combout\,
	datac => \Add1~10_combout\,
	datad => \Add0~13_combout\,
	combout => \CNT_int~6_combout\);

-- Location: FF_X2_Y7_N9
\CNT_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CNT_int~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(5));

-- Location: LCCOMB_X2_Y7_N26
\Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add1~12_combout\ & ((\Add0~2_combout\) # ((!\UP_DOWN~input_o\ & \Add0~15_combout\)))) # (!\Add1~12_combout\ & (!\UP_DOWN~input_o\ & ((\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \UP_DOWN~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X2_Y7_N27
\CNT_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(6));

-- Location: LCCOMB_X1_Y7_N8
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!CNT_int(0) & (!CNT_int(6) & (!CNT_int(1) & !CNT_int(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(0),
	datab => CNT_int(6),
	datac => CNT_int(1),
	datad => CNT_int(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!CNT_int(2) & (!CNT_int(4) & (!CNT_int(5) & !CNT_int(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CNT_int(2),
	datab => CNT_int(4),
	datac => CNT_int(5),
	datad => CNT_int(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X1_Y7_N4
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\UP_DOWN~input_o\ & ((!\Equal1~1_combout\) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UP_DOWN~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X1_Y7_N6
\CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int~0_combout\ = (!\UP_DOWN~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UP_DOWN~input_o\,
	datad => \Add0~0_combout\,
	combout => \CNT_int~0_combout\);

-- Location: LCCOMB_X2_Y7_N4
\CNT_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CNT_int~3_combout\ = (!\CNT_int[0]~2_combout\ & ((\CNT_int~0_combout\) # ((\Add1~0_combout\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add0~2_combout\,
	datac => \CNT_int~0_combout\,
	datad => \CNT_int[0]~2_combout\,
	combout => \CNT_int~3_combout\);

-- Location: FF_X2_Y7_N5
\CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CNT_int~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CNT_int(0));

ww_CNT(0) <= \CNT[0]~output_o\;

ww_CNT(1) <= \CNT[1]~output_o\;

ww_CNT(2) <= \CNT[2]~output_o\;

ww_CNT(3) <= \CNT[3]~output_o\;

ww_CNT(4) <= \CNT[4]~output_o\;

ww_CNT(5) <= \CNT[5]~output_o\;

ww_CNT(6) <= \CNT[6]~output_o\;

ww_CNT(7) <= \CNT[7]~output_o\;
END structure;


