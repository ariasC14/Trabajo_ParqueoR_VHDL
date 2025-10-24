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

-- DATE "10/22/2025 13:17:50"

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

ENTITY 	control_parada_semaforo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	btn_emergencia : IN std_logic;
	btn_segura : IN std_logic;
	led_rojo : OUT std_logic;
	led_amarillo : OUT std_logic;
	led_verde : OUT std_logic
	);
END control_parada_semaforo;

-- Design Ports Information
-- led_rojo	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_amarillo	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_verde	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_segura	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_emergencia	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_parada_semaforo IS
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
SIGNAL ww_btn_emergencia : std_logic;
SIGNAL ww_btn_segura : std_logic;
SIGNAL ww_led_rojo : std_logic;
SIGNAL ww_led_amarillo : std_logic;
SIGNAL ww_led_verde : std_logic;
SIGNAL \led_rojo~output_o\ : std_logic;
SIGNAL \led_amarillo~output_o\ : std_logic;
SIGNAL \led_verde~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \btn_emergencia~input_o\ : std_logic;
SIGNAL \estado_emergencia~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado_emergencia~q\ : std_logic;
SIGNAL \btn_segura~input_o\ : std_logic;
SIGNAL \led_verde~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_led_verde~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_btn_emergencia <= btn_emergencia;
ww_btn_segura <= btn_segura;
led_rojo <= ww_led_rojo;
led_amarillo <= ww_led_amarillo;
led_verde <= ww_led_verde;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_led_verde~0_combout\ <= NOT \led_verde~0_combout\;

-- Location: IOOBUF_X5_Y0_N30
\led_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_emergencia~q\,
	devoe => ww_devoe,
	o => \led_rojo~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\led_amarillo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \btn_segura~input_o\,
	devoe => ww_devoe,
	o => \led_amarillo~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\led_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_verde~0_combout\,
	devoe => ww_devoe,
	o => \led_verde~output_o\);

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

-- Location: IOIBUF_X0_Y26_N1
\btn_emergencia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_emergencia,
	o => \btn_emergencia~input_o\);

-- Location: LCCOMB_X40_Y15_N8
\estado_emergencia~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_emergencia~0_combout\ = (\btn_emergencia~input_o\) # (\estado_emergencia~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_emergencia~input_o\,
	datac => \estado_emergencia~q\,
	combout => \estado_emergencia~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X40_Y15_N9
estado_emergencia : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_emergencia~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_emergencia~q\);

-- Location: IOIBUF_X0_Y26_N8
\btn_segura~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_segura,
	o => \btn_segura~input_o\);

-- Location: LCCOMB_X3_Y1_N28
\led_verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_verde~0_combout\ = (\btn_segura~input_o\) # (\estado_emergencia~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_segura~input_o\,
	datad => \estado_emergencia~q\,
	combout => \led_verde~0_combout\);

ww_led_rojo <= \led_rojo~output_o\;

ww_led_amarillo <= \led_amarillo~output_o\;

ww_led_verde <= \led_verde~output_o\;
END structure;


