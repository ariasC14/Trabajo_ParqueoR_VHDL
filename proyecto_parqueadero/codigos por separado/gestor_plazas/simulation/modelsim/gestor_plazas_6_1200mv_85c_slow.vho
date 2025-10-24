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

-- DATE "10/23/2025 14:45:12"

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

ENTITY 	gestor_plazas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sensor_filtered : IN std_logic;
	control_puerta_sig : IN std_logic;
	btn_bot : IN std_logic;
	teclado_plaza : IN std_logic_vector(3 DOWNTO 0);
	motor_start : OUT std_logic;
	motor_plaza : OUT std_logic_vector(3 DOWNTO 0);
	plazas_ocupadas_out : OUT std_logic_vector(5 DOWNTO 0)
	);
END gestor_plazas;

-- Design Ports Information
-- btn_bot	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado_plaza[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado_plaza[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado_plaza[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- teclado_plaza[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_start	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_plaza[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_plaza[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_plaza[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_plaza[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_ocupadas_out[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_ocupadas_out[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_ocupadas_out[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_ocupadas_out[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_ocupadas_out[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_ocupadas_out[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_filtered	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_puerta_sig	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestor_plazas IS
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
SIGNAL ww_sensor_filtered : std_logic;
SIGNAL ww_control_puerta_sig : std_logic;
SIGNAL ww_btn_bot : std_logic;
SIGNAL ww_teclado_plaza : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_motor_start : std_logic;
SIGNAL ww_motor_plaza : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_plazas_ocupadas_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_bot~input_o\ : std_logic;
SIGNAL \teclado_plaza[0]~input_o\ : std_logic;
SIGNAL \teclado_plaza[1]~input_o\ : std_logic;
SIGNAL \teclado_plaza[2]~input_o\ : std_logic;
SIGNAL \teclado_plaza[3]~input_o\ : std_logic;
SIGNAL \motor_start~output_o\ : std_logic;
SIGNAL \motor_plaza[0]~output_o\ : std_logic;
SIGNAL \motor_plaza[1]~output_o\ : std_logic;
SIGNAL \motor_plaza[2]~output_o\ : std_logic;
SIGNAL \motor_plaza[3]~output_o\ : std_logic;
SIGNAL \plazas_ocupadas_out[0]~output_o\ : std_logic;
SIGNAL \plazas_ocupadas_out[1]~output_o\ : std_logic;
SIGNAL \plazas_ocupadas_out[2]~output_o\ : std_logic;
SIGNAL \plazas_ocupadas_out[3]~output_o\ : std_logic;
SIGNAL \plazas_ocupadas_out[4]~output_o\ : std_logic;
SIGNAL \plazas_ocupadas_out[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor_filtered~input_o\ : std_logic;
SIGNAL \control_puerta_sig~input_o\ : std_logic;
SIGNAL \estado_maquina[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \motor_start_int~q\ : std_logic;
SIGNAL \motor_plaza_int[0]~0_combout\ : std_logic;
SIGNAL motor_plaza_int : std_logic_vector(3 DOWNTO 0);
SIGNAL estado_maquina : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sensor_filtered <= sensor_filtered;
ww_control_puerta_sig <= control_puerta_sig;
ww_btn_bot <= btn_bot;
ww_teclado_plaza <= teclado_plaza;
motor_start <= ww_motor_start;
motor_plaza <= ww_motor_plaza;
plazas_ocupadas_out <= ww_plazas_ocupadas_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N2
\motor_start~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_start_int~q\,
	devoe => ww_devoe,
	o => \motor_start~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\motor_plaza[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => motor_plaza_int(0),
	devoe => ww_devoe,
	o => \motor_plaza[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\motor_plaza[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_plaza[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\motor_plaza[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_plaza[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\motor_plaza[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_plaza[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\plazas_ocupadas_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \plazas_ocupadas_out[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\plazas_ocupadas_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \plazas_ocupadas_out[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\plazas_ocupadas_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \plazas_ocupadas_out[2]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\plazas_ocupadas_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \plazas_ocupadas_out[3]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\plazas_ocupadas_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \plazas_ocupadas_out[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\plazas_ocupadas_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \plazas_ocupadas_out[5]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X0_Y2_N8
\sensor_filtered~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_filtered,
	o => \sensor_filtered~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\control_puerta_sig~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control_puerta_sig,
	o => \control_puerta_sig~input_o\);

-- Location: LCCOMB_X1_Y2_N0
\estado_maquina[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_maquina[0]~0_combout\ = (estado_maquina(0)) # ((!\sensor_filtered~input_o\ & !\control_puerta_sig~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_filtered~input_o\,
	datac => estado_maquina(0),
	datad => \control_puerta_sig~input_o\,
	combout => \estado_maquina[0]~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y2_N1
\estado_maquina[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_maquina[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_maquina(0));

-- Location: LCCOMB_X1_Y2_N16
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\sensor_filtered~input_o\ & (!\control_puerta_sig~input_o\ & !estado_maquina(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_filtered~input_o\,
	datab => \control_puerta_sig~input_o\,
	datad => estado_maquina(0),
	combout => \Mux4~0_combout\);

-- Location: FF_X1_Y2_N17
motor_start_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_start_int~q\);

-- Location: LCCOMB_X1_Y2_N14
\motor_plaza_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_plaza_int[0]~0_combout\ = (motor_plaza_int(0)) # ((!\sensor_filtered~input_o\ & (!\control_puerta_sig~input_o\ & !estado_maquina(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_filtered~input_o\,
	datab => \control_puerta_sig~input_o\,
	datac => motor_plaza_int(0),
	datad => estado_maquina(0),
	combout => \motor_plaza_int[0]~0_combout\);

-- Location: FF_X1_Y2_N15
\motor_plaza_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_plaza_int[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => motor_plaza_int(0));

-- Location: IOIBUF_X3_Y29_N29
\btn_bot~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_bot,
	o => \btn_bot~input_o\);

-- Location: IOIBUF_X37_Y29_N15
\teclado_plaza[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado_plaza(0),
	o => \teclado_plaza[0]~input_o\);

-- Location: IOIBUF_X41_Y26_N15
\teclado_plaza[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado_plaza(1),
	o => \teclado_plaza[1]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\teclado_plaza[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado_plaza(2),
	o => \teclado_plaza[2]~input_o\);

-- Location: IOIBUF_X41_Y25_N22
\teclado_plaza[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado_plaza(3),
	o => \teclado_plaza[3]~input_o\);

ww_motor_start <= \motor_start~output_o\;

ww_motor_plaza(0) <= \motor_plaza[0]~output_o\;

ww_motor_plaza(1) <= \motor_plaza[1]~output_o\;

ww_motor_plaza(2) <= \motor_plaza[2]~output_o\;

ww_motor_plaza(3) <= \motor_plaza[3]~output_o\;

ww_plazas_ocupadas_out(0) <= \plazas_ocupadas_out[0]~output_o\;

ww_plazas_ocupadas_out(1) <= \plazas_ocupadas_out[1]~output_o\;

ww_plazas_ocupadas_out(2) <= \plazas_ocupadas_out[2]~output_o\;

ww_plazas_ocupadas_out(3) <= \plazas_ocupadas_out[3]~output_o\;

ww_plazas_ocupadas_out(4) <= \plazas_ocupadas_out[4]~output_o\;

ww_plazas_ocupadas_out(5) <= \plazas_ocupadas_out[5]~output_o\;
END structure;


