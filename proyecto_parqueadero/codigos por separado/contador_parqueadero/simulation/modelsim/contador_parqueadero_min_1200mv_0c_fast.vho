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

-- DATE "10/21/2025 13:51:32"

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

ENTITY 	contador_parqueadero IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	boton : IN std_logic;
	btn_bot : IN std_logic;
	seg : BUFFER std_logic_vector(6 DOWNTO 0);
	led_full : BUFFER std_logic
	);
END contador_parqueadero;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_full	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_bot	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_parqueadero IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_btn_bot : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_full : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \led_full~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \boton_prev~q\ : std_logic;
SIGNAL \plazas_disponibles[2]~3_combout\ : std_logic;
SIGNAL \btn_bot~input_o\ : std_logic;
SIGNAL \btn_bot_prev~feeder_combout\ : std_logic;
SIGNAL \btn_bot_prev~q\ : std_logic;
SIGNAL \plazas_disponibles[2]~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \plazas_disponibles~7_combout\ : std_logic;
SIGNAL \plazas_disponibles[2]~8_combout\ : std_logic;
SIGNAL \plazas_disponibles[1]~4_combout\ : std_logic;
SIGNAL \plazas_disponibles[2]~5_combout\ : std_logic;
SIGNAL \plazas_disponibles[2]~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL plazas_disponibles : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_boton <= boton;
ww_btn_bot <= btn_bot;
seg <= ww_seg;
led_full <= ww_led_full;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;

-- Location: IOOBUF_X32_Y29_N23
\seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\seg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\seg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\seg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\seg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led_full~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \led_full~output_o\);

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

-- Location: IOIBUF_X0_Y23_N1
\boton~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X9_Y27_N29
boton_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \boton~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \boton_prev~q\);

-- Location: LCCOMB_X9_Y27_N30
\plazas_disponibles[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles[2]~3_combout\ = (!\boton~input_o\ & \boton_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \boton~input_o\,
	datad => \boton_prev~q\,
	combout => \plazas_disponibles[2]~3_combout\);

-- Location: IOIBUF_X0_Y23_N15
\btn_bot~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_bot,
	o => \btn_bot~input_o\);

-- Location: LCCOMB_X9_Y27_N20
\btn_bot_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_bot_prev~feeder_combout\ = \btn_bot~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn_bot~input_o\,
	combout => \btn_bot_prev~feeder_combout\);

-- Location: FF_X9_Y27_N21
btn_bot_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \btn_bot_prev~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_bot_prev~q\);

-- Location: LCCOMB_X9_Y27_N26
\plazas_disponibles[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles[2]~2_combout\ = (\btn_bot~input_o\) # (((!plazas_disponibles(1) & !plazas_disponibles(2))) # (!\btn_bot_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_bot~input_o\,
	datab => plazas_disponibles(1),
	datac => plazas_disponibles(2),
	datad => \btn_bot_prev~q\,
	combout => \plazas_disponibles[2]~2_combout\);

-- Location: LCCOMB_X9_Y27_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!plazas_disponibles(0) & (plazas_disponibles(1) & plazas_disponibles(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => plazas_disponibles(0),
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y27_N4
\plazas_disponibles~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles~7_combout\ = (\plazas_disponibles[2]~2_combout\ & ((plazas_disponibles(0) & ((!\plazas_disponibles[2]~3_combout\))) # (!plazas_disponibles(0) & (!\Equal0~0_combout\ & \plazas_disponibles[2]~3_combout\)))) # 
-- (!\plazas_disponibles[2]~2_combout\ & (((!plazas_disponibles(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plazas_disponibles[2]~2_combout\,
	datab => \Equal0~0_combout\,
	datac => plazas_disponibles(0),
	datad => \plazas_disponibles[2]~3_combout\,
	combout => \plazas_disponibles~7_combout\);

-- Location: FF_X9_Y27_N5
\plazas_disponibles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \plazas_disponibles~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => plazas_disponibles(0));

-- Location: LCCOMB_X9_Y27_N2
\plazas_disponibles[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles[2]~8_combout\ = (\plazas_disponibles[2]~2_combout\ & ((\boton~input_o\) # ((\Equal0~0_combout\) # (!\boton_prev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~input_o\,
	datab => \boton_prev~q\,
	datac => \plazas_disponibles[2]~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \plazas_disponibles[2]~8_combout\);

-- Location: LCCOMB_X9_Y27_N8
\plazas_disponibles[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles[1]~4_combout\ = plazas_disponibles(1) $ (((!\plazas_disponibles[2]~8_combout\ & (\plazas_disponibles[2]~2_combout\ $ (plazas_disponibles(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plazas_disponibles[2]~2_combout\,
	datab => plazas_disponibles(0),
	datac => plazas_disponibles(1),
	datad => \plazas_disponibles[2]~8_combout\,
	combout => \plazas_disponibles[1]~4_combout\);

-- Location: FF_X9_Y27_N9
\plazas_disponibles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \plazas_disponibles[1]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => plazas_disponibles(1));

-- Location: LCCOMB_X9_Y27_N24
\plazas_disponibles[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles[2]~5_combout\ = (plazas_disponibles(0) & (((!\btn_bot~input_o\ & \btn_bot_prev~q\)) # (!plazas_disponibles(2)))) # (!plazas_disponibles(0) & (!\btn_bot~input_o\ & (!plazas_disponibles(2) & \btn_bot_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_bot~input_o\,
	datab => plazas_disponibles(0),
	datac => plazas_disponibles(2),
	datad => \btn_bot_prev~q\,
	combout => \plazas_disponibles[2]~5_combout\);

-- Location: LCCOMB_X9_Y27_N10
\plazas_disponibles[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_disponibles[2]~6_combout\ = (plazas_disponibles(1) & ((plazas_disponibles(2)) # ((\plazas_disponibles[2]~3_combout\ & !\plazas_disponibles[2]~5_combout\)))) # (!plazas_disponibles(1) & (((plazas_disponibles(2) & 
-- !\plazas_disponibles[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plazas_disponibles[2]~3_combout\,
	datab => plazas_disponibles(1),
	datac => plazas_disponibles(2),
	datad => \plazas_disponibles[2]~5_combout\,
	combout => \plazas_disponibles[2]~6_combout\);

-- Location: FF_X9_Y27_N11
\plazas_disponibles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \plazas_disponibles[2]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => plazas_disponibles(2));

-- Location: LCCOMB_X33_Y27_N4
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (plazas_disponibles(1) & (plazas_disponibles(2) $ (!plazas_disponibles(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_disponibles(2),
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X33_Y27_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!plazas_disponibles(2) & (plazas_disponibles(1) $ (!plazas_disponibles(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_disponibles(2),
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y27_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (plazas_disponibles(2) & (!plazas_disponibles(1) & !plazas_disponibles(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_disponibles(2),
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y27_N14
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (plazas_disponibles(0)) # ((!plazas_disponibles(2) & plazas_disponibles(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_disponibles(2),
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y27_N0
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((plazas_disponibles(1) & !plazas_disponibles(0))) # (!plazas_disponibles(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_disponibles(2),
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X33_Y27_N22
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!plazas_disponibles(2)) # (!plazas_disponibles(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => plazas_disponibles(1),
	datad => plazas_disponibles(2),
	combout => \Mux0~0_combout\);

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_led_full <= \led_full~output_o\;
END structure;


