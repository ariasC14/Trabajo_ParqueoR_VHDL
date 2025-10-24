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

-- DATE "10/21/2025 18:45:26"

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

ENTITY 	teclado IS
    PORT (
	clk : IN std_logic;
	filas : IN std_logic_vector(3 DOWNTO 0);
	columnas : OUT std_logic_vector(3 DOWNTO 0);
	key : OUT std_logic_vector(3 DOWNTO 0);
	segT : OUT std_logic_vector(6 DOWNTO 0)
	);
END teclado;

-- Design Ports Information
-- columnas[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columnas[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segT[6]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF teclado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_filas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_columnas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segT : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \columnas[0]~output_o\ : std_logic;
SIGNAL \columnas[1]~output_o\ : std_logic;
SIGNAL \columnas[2]~output_o\ : std_logic;
SIGNAL \columnas[3]~output_o\ : std_logic;
SIGNAL \key[0]~output_o\ : std_logic;
SIGNAL \key[1]~output_o\ : std_logic;
SIGNAL \key[2]~output_o\ : std_logic;
SIGNAL \key[3]~output_o\ : std_logic;
SIGNAL \segT[0]~output_o\ : std_logic;
SIGNAL \segT[1]~output_o\ : std_logic;
SIGNAL \segT[2]~output_o\ : std_logic;
SIGNAL \segT[3]~output_o\ : std_logic;
SIGNAL \segT[4]~output_o\ : std_logic;
SIGNAL \segT[5]~output_o\ : std_logic;
SIGNAL \segT[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \div_cnt~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \div_cnt~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \div_cnt~2_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \div_cnt~3_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \div_cnt~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \div_cnt~5_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \div_cnt~6_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \clk_div~feeder_combout\ : std_logic;
SIGNAL \clk_div~q\ : std_logic;
SIGNAL \clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \scan_col[0]~0_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \columnas[0]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \columnas[1]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \columnas[2]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \columnas[3]~reg0_q\ : std_logic;
SIGNAL \filas[0]~input_o\ : std_logic;
SIGNAL \filas[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \filas[2]~input_o\ : std_logic;
SIGNAL \filas[3]~input_o\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL scan_col : std_logic_vector(1 DOWNTO 0);
SIGNAL key_val : std_logic_vector(3 DOWNTO 0);
SIGNAL div_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_filas <= filas;
columnas <= ww_columnas;
key <= ww_key;
segT <= ww_segT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;

-- Location: IOOBUF_X16_Y0_N2
\columnas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \columnas[0]~reg0_q\,
	devoe => ww_devoe,
	o => \columnas[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\columnas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \columnas[1]~reg0_q\,
	devoe => ww_devoe,
	o => \columnas[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\columnas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \columnas[2]~reg0_q\,
	devoe => ww_devoe,
	o => \columnas[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\columnas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \columnas[3]~reg0_q\,
	devoe => ww_devoe,
	o => \columnas[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\key[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => key_val(0),
	devoe => ww_devoe,
	o => \key[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\key[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => key_val(1),
	devoe => ww_devoe,
	o => \key[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\key[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => key_val(2),
	devoe => ww_devoe,
	o => \key[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\key[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => key_val(3),
	devoe => ww_devoe,
	o => \key[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\segT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \segT[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\segT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \segT[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\segT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \segT[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\segT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \segT[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\segT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \segT[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\segT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \segT[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\segT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux25~0_combout\,
	devoe => ww_devoe,
	o => \segT[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y22_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = div_cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(div_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X4_Y22_N16
\div_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~0_combout\ = (\Add0~0_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \div_cnt~0_combout\);

-- Location: FF_X5_Y22_N9
\div_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \div_cnt~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(0));

-- Location: LCCOMB_X5_Y22_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (div_cnt(1) & (!\Add0~1\)) # (!div_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!div_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X5_Y22_N3
\div_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(1));

-- Location: LCCOMB_X5_Y22_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (div_cnt(2) & (\Add0~3\ $ (GND))) # (!div_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((div_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X5_Y22_N5
\div_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(2));

-- Location: LCCOMB_X5_Y22_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (div_cnt(3) & (!\Add0~5\)) # (!div_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!div_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X5_Y22_N7
\div_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(3));

-- Location: LCCOMB_X5_Y22_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (div_cnt(4) & (\Add0~7\ $ (GND))) # (!div_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((div_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X4_Y22_N6
\div_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~1_combout\ = (\Add0~8_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~10_combout\,
	combout => \div_cnt~1_combout\);

-- Location: FF_X4_Y22_N7
\div_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(4));

-- Location: LCCOMB_X5_Y22_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (div_cnt(5) & (!\Add0~9\)) # (!div_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!div_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X5_Y22_N11
\div_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(5));

-- Location: LCCOMB_X5_Y22_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (div_cnt(6) & (\Add0~11\ $ (GND))) # (!div_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((div_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X4_Y22_N14
\div_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~2_combout\ = (\Add0~12_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Equal0~10_combout\,
	combout => \div_cnt~2_combout\);

-- Location: FF_X4_Y22_N15
\div_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(6));

-- Location: LCCOMB_X5_Y22_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (div_cnt(7) & (!\Add0~13\)) # (!div_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!div_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X5_Y22_N15
\div_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(7));

-- Location: LCCOMB_X5_Y22_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (div_cnt(8) & (\Add0~15\ $ (GND))) # (!div_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((div_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X4_Y22_N8
\div_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~3_combout\ = (!\Equal0~10_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~16_combout\,
	combout => \div_cnt~3_combout\);

-- Location: FF_X4_Y22_N9
\div_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(8));

-- Location: LCCOMB_X5_Y22_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (div_cnt(9) & (!\Add0~17\)) # (!div_cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!div_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X4_Y22_N26
\div_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~4_combout\ = (!\Equal0~10_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~18_combout\,
	combout => \div_cnt~4_combout\);

-- Location: FF_X4_Y22_N27
\div_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(9));

-- Location: LCCOMB_X5_Y22_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (div_cnt(10) & (\Add0~19\ $ (GND))) # (!div_cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((div_cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X5_Y22_N21
\div_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(10));

-- Location: LCCOMB_X5_Y22_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (div_cnt(11) & (!\Add0~21\)) # (!div_cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!div_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X5_Y22_N23
\div_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(11));

-- Location: LCCOMB_X5_Y22_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (div_cnt(12) & (\Add0~23\ $ (GND))) # (!div_cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((div_cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X5_Y22_N25
\div_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(12));

-- Location: LCCOMB_X5_Y22_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (div_cnt(13) & (!\Add0~25\)) # (!div_cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!div_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X5_Y22_N27
\div_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(13));

-- Location: LCCOMB_X5_Y22_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (div_cnt(14) & (\Add0~27\ $ (GND))) # (!div_cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((div_cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X4_Y22_N10
\div_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~5_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~28_combout\,
	combout => \div_cnt~5_combout\);

-- Location: FF_X4_Y22_N11
\div_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(14));

-- Location: LCCOMB_X5_Y22_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (div_cnt(15) & (!\Add0~29\)) # (!div_cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!div_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X4_Y22_N4
\div_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_cnt~6_combout\ = (\Add0~30_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~10_combout\,
	combout => \div_cnt~6_combout\);

-- Location: FF_X4_Y22_N5
\div_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \div_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(15));

-- Location: LCCOMB_X4_Y22_N12
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (div_cnt(14) & (div_cnt(15) & (!div_cnt(12) & !div_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(14),
	datab => div_cnt(15),
	datac => div_cnt(12),
	datad => div_cnt(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X4_Y22_N24
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (div_cnt(4) & (div_cnt(6) & (!div_cnt(7) & !div_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(4),
	datab => div_cnt(6),
	datac => div_cnt(7),
	datad => div_cnt(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X4_Y22_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!div_cnt(1) & (!div_cnt(0) & (!div_cnt(2) & !div_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(1),
	datab => div_cnt(0),
	datac => div_cnt(2),
	datad => div_cnt(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y22_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (div_cnt(9) & (div_cnt(8) & (!div_cnt(10) & !div_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(9),
	datab => div_cnt(8),
	datac => div_cnt(10),
	datad => div_cnt(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X4_Y22_N22
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X5_Y21_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (div_cnt(16) & (\Add0~31\ $ (GND))) # (!div_cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((div_cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X5_Y21_N1
\div_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(16));

-- Location: LCCOMB_X5_Y21_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (div_cnt(17) & (!\Add0~33\)) # (!div_cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!div_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X5_Y21_N3
\div_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(17));

-- Location: LCCOMB_X5_Y21_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (div_cnt(18) & (\Add0~35\ $ (GND))) # (!div_cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((div_cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X5_Y21_N5
\div_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(18));

-- Location: LCCOMB_X5_Y21_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (div_cnt(19) & (!\Add0~37\)) # (!div_cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!div_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X5_Y21_N7
\div_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(19));

-- Location: LCCOMB_X5_Y21_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (div_cnt(20) & (\Add0~39\ $ (GND))) # (!div_cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((div_cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X5_Y21_N9
\div_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(20));

-- Location: LCCOMB_X5_Y21_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (div_cnt(21) & (!\Add0~41\)) # (!div_cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!div_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X5_Y21_N11
\div_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(21));

-- Location: LCCOMB_X5_Y21_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (div_cnt(22) & (\Add0~43\ $ (GND))) # (!div_cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((div_cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X5_Y21_N13
\div_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(22));

-- Location: LCCOMB_X5_Y21_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (div_cnt(23) & (!\Add0~45\)) # (!div_cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!div_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X5_Y21_N15
\div_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(23));

-- Location: LCCOMB_X5_Y21_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (div_cnt(24) & (\Add0~47\ $ (GND))) # (!div_cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((div_cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X5_Y21_N17
\div_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(24));

-- Location: LCCOMB_X5_Y21_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (div_cnt(25) & (!\Add0~49\)) # (!div_cnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!div_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X5_Y21_N19
\div_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(25));

-- Location: LCCOMB_X5_Y21_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (div_cnt(26) & (\Add0~51\ $ (GND))) # (!div_cnt(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((div_cnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X5_Y21_N21
\div_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(26));

-- Location: LCCOMB_X5_Y21_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (div_cnt(27) & (!\Add0~53\)) # (!div_cnt(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!div_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X5_Y21_N23
\div_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(27));

-- Location: LCCOMB_X5_Y21_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (div_cnt(28) & (\Add0~55\ $ (GND))) # (!div_cnt(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((div_cnt(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X5_Y21_N25
\div_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(28));

-- Location: LCCOMB_X5_Y21_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (div_cnt(29) & (!\Add0~57\)) # (!div_cnt(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!div_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X5_Y21_N27
\div_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(29));

-- Location: LCCOMB_X5_Y21_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (div_cnt(30) & (\Add0~59\ $ (GND))) # (!div_cnt(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((div_cnt(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => div_cnt(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X5_Y21_N29
\div_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(30));

-- Location: LCCOMB_X5_Y21_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = div_cnt(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X5_Y21_N31
\div_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => div_cnt(31));

-- Location: LCCOMB_X4_Y21_N26
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!div_cnt(31) & !div_cnt(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => div_cnt(31),
	datad => div_cnt(30),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X4_Y21_N12
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!div_cnt(26) & (!div_cnt(25) & (!div_cnt(27) & !div_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(26),
	datab => div_cnt(25),
	datac => div_cnt(27),
	datad => div_cnt(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X4_Y21_N0
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!div_cnt(28) & (!div_cnt(29) & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(28),
	datab => div_cnt(29),
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X4_Y21_N2
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!div_cnt(23) & (!div_cnt(22) & (!div_cnt(20) & !div_cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(23),
	datab => div_cnt(22),
	datac => div_cnt(20),
	datad => div_cnt(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X4_Y21_N4
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!div_cnt(17) & (!div_cnt(16) & (!div_cnt(19) & !div_cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => div_cnt(17),
	datab => div_cnt(16),
	datac => div_cnt(19),
	datad => div_cnt(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X4_Y22_N18
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~9_combout\ & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X4_Y22_N20
\clk_div~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = \clk_div~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div~q\,
	datad => \Equal0~10_combout\,
	combout => \clk_div~0_combout\);

-- Location: LCCOMB_X4_Y22_N28
\clk_div~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_div~feeder_combout\ = \clk_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div~0_combout\,
	combout => \clk_div~feeder_combout\);

-- Location: FF_X4_Y22_N29
clk_div : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div~q\);

-- Location: CLKCTRL_G1
\clk_div~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y21_N8
\scan_col[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scan_col[0]~0_combout\ = !scan_col(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scan_col(0),
	combout => \scan_col[0]~0_combout\);

-- Location: FF_X32_Y21_N9
\scan_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \scan_col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_col(0));

-- Location: LCCOMB_X32_Y21_N22
\Mux21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = scan_col(1) $ (scan_col(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scan_col(1),
	datad => scan_col(0),
	combout => \Mux21~4_combout\);

-- Location: FF_X32_Y21_N23
\scan_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => scan_col(1));

-- Location: LCCOMB_X31_Y21_N24
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!scan_col(1)) # (!scan_col(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scan_col(0),
	datad => scan_col(1),
	combout => \Mux19~0_combout\);

-- Location: FF_X31_Y21_N25
\columnas[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \columnas[0]~reg0_q\);

-- Location: LCCOMB_X32_Y21_N20
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (scan_col(1)) # (scan_col(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scan_col(1),
	datad => scan_col(0),
	combout => \Mux18~0_combout\);

-- Location: FF_X32_Y21_N21
\columnas[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \columnas[1]~reg0_q\);

-- Location: LCCOMB_X31_Y21_N10
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (scan_col(1)) # (!scan_col(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scan_col(0),
	datad => scan_col(1),
	combout => \Mux17~0_combout\);

-- Location: FF_X31_Y21_N11
\columnas[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \columnas[2]~reg0_q\);

-- Location: LCCOMB_X32_Y21_N14
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (scan_col(0)) # (!scan_col(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => scan_col(1),
	datad => scan_col(0),
	combout => \Mux16~0_combout\);

-- Location: FF_X32_Y21_N15
\columnas[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \columnas[3]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N29
\filas[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_filas(0),
	o => \filas[0]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\filas[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_filas(1),
	o => \filas[1]~input_o\);

-- Location: LCCOMB_X32_Y21_N18
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\filas[0]~input_o\ & \filas[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \filas[0]~input_o\,
	datad => \filas[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\filas[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_filas(2),
	o => \filas[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\filas[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_filas(3),
	o => \filas[3]~input_o\);

-- Location: LCCOMB_X32_Y21_N4
\Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (key_val(0) & ((\Equal1~0_combout\ & (!\filas[2]~input_o\ & !\filas[3]~input_o\)) # (!\Equal1~0_combout\ & ((!\filas[3]~input_o\) # (!\filas[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \filas[2]~input_o\,
	datac => \filas[3]~input_o\,
	datad => key_val(0),
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X32_Y21_N30
\Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\filas[3]~input_o\ & (!\filas[2]~input_o\ & ((!scan_col(0))))) # (!\filas[3]~input_o\ & (\filas[2]~input_o\ & (scan_col(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datab => \filas[2]~input_o\,
	datac => scan_col(1),
	datad => scan_col(0),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X32_Y21_N10
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\filas[0]~input_o\ & ((\filas[1]~input_o\ & (key_val(0))) # (!\filas[1]~input_o\ & ((scan_col(0)))))) # (!\filas[0]~input_o\ & ((\filas[1]~input_o\ & ((!scan_col(0)))) # (!\filas[1]~input_o\ & (key_val(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[0]~input_o\,
	datab => key_val(0),
	datac => \filas[1]~input_o\,
	datad => scan_col(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\filas[3]~input_o\ & (\filas[2]~input_o\ & \Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datac => \filas[2]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X32_Y21_N28
\Mux23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~2_combout\) # ((\Mux23~1_combout\) # ((\Equal1~0_combout\ & \Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux23~3_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X31_Y21_N30
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (((!\filas[0]~input_o\) # (!\filas[1]~input_o\)) # (!\filas[2]~input_o\)) # (!\filas[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datab => \filas[2]~input_o\,
	datac => \filas[1]~input_o\,
	datad => \filas[0]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: FF_X32_Y21_N29
\key_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux23~4_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_val(0));

-- Location: LCCOMB_X31_Y21_N12
\Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\filas[3]~input_o\ & (\filas[1]~input_o\ & (\filas[2]~input_o\ $ (\filas[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datab => \filas[2]~input_o\,
	datac => \filas[1]~input_o\,
	datad => \filas[0]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X31_Y21_N22
\Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (\filas[0]~input_o\ $ (((scan_col(0)) # (scan_col(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \filas[0]~input_o\,
	datac => scan_col(0),
	datad => scan_col(1),
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X31_Y21_N20
\Mux22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\filas[3]~input_o\ & ((\filas[2]~input_o\ & (\filas[1]~input_o\ $ (!\filas[0]~input_o\))) # (!\filas[2]~input_o\ & ((!\filas[0]~input_o\) # (!\filas[1]~input_o\))))) # (!\filas[3]~input_o\ & (((!\filas[0]~input_o\) # 
-- (!\filas[1]~input_o\)) # (!\filas[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datab => \filas[2]~input_o\,
	datac => \filas[1]~input_o\,
	datad => \filas[0]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X31_Y21_N28
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\filas[1]~input_o\ & (!\filas[3]~input_o\ & (!scan_col(0)))) # (!\filas[1]~input_o\ & (\filas[3]~input_o\ & ((scan_col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[1]~input_o\,
	datab => \filas[3]~input_o\,
	datac => scan_col(0),
	datad => scan_col(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X31_Y21_N6
\Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\filas[0]~input_o\ & (\filas[2]~input_o\ & \Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \filas[0]~input_o\,
	datac => \filas[2]~input_o\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X31_Y21_N16
\Mux22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~3_combout\) # ((\Mux22~1_combout\) # ((\Mux22~4_combout\ & key_val(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~3_combout\,
	datab => \Mux22~4_combout\,
	datac => key_val(1),
	datad => \Mux22~1_combout\,
	combout => \Mux22~5_combout\);

-- Location: FF_X31_Y21_N17
\key_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux22~5_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_val(1));

-- Location: LCCOMB_X32_Y21_N0
\Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\filas[2]~input_o\ & (!\filas[1]~input_o\ & ((!scan_col(0)) # (!scan_col(1))))) # (!\filas[2]~input_o\ & (\filas[1]~input_o\ & (scan_col(1) $ (!scan_col(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[2]~input_o\,
	datab => \filas[1]~input_o\,
	datac => scan_col(1),
	datad => scan_col(0),
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X31_Y21_N18
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\filas[3]~input_o\ & (\filas[2]~input_o\ & (\filas[1]~input_o\ & \filas[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datab => \filas[2]~input_o\,
	datac => \filas[1]~input_o\,
	datad => \filas[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X31_Y21_N0
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & ((\Mux17~0_combout\) # ((\Mux22~4_combout\ & key_val(2))))) # (!\Mux21~0_combout\ & (\Mux22~4_combout\ & (key_val(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux22~4_combout\,
	datac => key_val(2),
	datad => \Mux17~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X31_Y21_N2
\Mux21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~1_combout\) # ((\filas[3]~input_o\ & (\filas[0]~input_o\ & \Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datab => \filas[0]~input_o\,
	datac => \Mux21~2_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~3_combout\);

-- Location: FF_X31_Y21_N3
\key_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux21~3_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_val(2));

-- Location: LCCOMB_X31_Y21_N26
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux21~0_combout\ & ((\Mux17~0_combout\) # ((\Mux22~4_combout\ & key_val(3))))) # (!\Mux21~0_combout\ & (\Mux22~4_combout\ & (key_val(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux22~4_combout\,
	datac => key_val(3),
	datad => \Mux17~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X32_Y21_N26
\Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (scan_col(1) & (scan_col(0) & (\filas[0]~input_o\ $ (\filas[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[0]~input_o\,
	datab => \filas[1]~input_o\,
	datac => scan_col(1),
	datad => scan_col(0),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X32_Y21_N24
\Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\filas[2]~input_o\ & (((\Mux20~1_combout\)))) # (!\filas[2]~input_o\ & (\Equal1~0_combout\ & ((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \filas[2]~input_o\,
	datac => \Mux20~1_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X31_Y21_N8
\Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~0_combout\) # ((\filas[3]~input_o\ & \Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \filas[3]~input_o\,
	datac => \Mux20~0_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: FF_X31_Y21_N9
\key_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Mux20~3_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => key_val(3));

-- Location: LCCOMB_X3_Y21_N12
\Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (key_val(2) & (!key_val(1) & (key_val(0) $ (!key_val(3))))) # (!key_val(2) & (key_val(0) & (key_val(1) $ (!key_val(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X3_Y21_N6
\Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (key_val(1) & ((key_val(0) & ((key_val(3)))) # (!key_val(0) & (key_val(2))))) # (!key_val(1) & (key_val(2) & (key_val(0) $ (key_val(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X3_Y21_N28
\Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (key_val(2) & (key_val(3) & ((key_val(1)) # (!key_val(0))))) # (!key_val(2) & (!key_val(0) & (key_val(1) & !key_val(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X3_Y21_N10
\Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (key_val(1) & ((key_val(0) & (key_val(2))) # (!key_val(0) & (!key_val(2) & key_val(3))))) # (!key_val(1) & (!key_val(3) & (key_val(0) $ (key_val(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X3_Y21_N0
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (key_val(1) & (key_val(0) & ((!key_val(3))))) # (!key_val(1) & ((key_val(2) & ((!key_val(3)))) # (!key_val(2) & (key_val(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X3_Y21_N22
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (key_val(0) & (key_val(3) $ (((key_val(1)) # (!key_val(2)))))) # (!key_val(0) & (key_val(1) & (!key_val(2) & !key_val(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X3_Y21_N4
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (key_val(0) & ((key_val(3)) # (key_val(1) $ (key_val(2))))) # (!key_val(0) & ((key_val(1)) # (key_val(2) $ (key_val(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => key_val(0),
	datab => key_val(1),
	datac => key_val(2),
	datad => key_val(3),
	combout => \Mux25~0_combout\);

ww_columnas(0) <= \columnas[0]~output_o\;

ww_columnas(1) <= \columnas[1]~output_o\;

ww_columnas(2) <= \columnas[2]~output_o\;

ww_columnas(3) <= \columnas[3]~output_o\;

ww_key(0) <= \key[0]~output_o\;

ww_key(1) <= \key[1]~output_o\;

ww_key(2) <= \key[2]~output_o\;

ww_key(3) <= \key[3]~output_o\;

ww_segT(0) <= \segT[0]~output_o\;

ww_segT(1) <= \segT[1]~output_o\;

ww_segT(2) <= \segT[2]~output_o\;

ww_segT(3) <= \segT[3]~output_o\;

ww_segT(4) <= \segT[4]~output_o\;

ww_segT(5) <= \segT[5]~output_o\;

ww_segT(6) <= \segT[6]~output_o\;
END structure;


