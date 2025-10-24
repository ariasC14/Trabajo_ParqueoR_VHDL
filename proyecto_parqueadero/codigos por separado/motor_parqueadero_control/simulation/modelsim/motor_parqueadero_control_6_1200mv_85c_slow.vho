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

-- DATE "10/21/2025 19:22:49"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	motor_parqueadero_control IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	nuevo_auto : IN std_logic;
	tecla_val : IN std_logic_vector(3 DOWNTO 0);
	liberar : IN std_logic;
	enable : OUT std_logic;
	dir : OUT std_logic;
	pos_actual : OUT std_logic_vector(2 DOWNTO 0);
	plazas_disp : OUT STD.STANDARD.integer range 0 TO 6
	);
END motor_parqueadero_control;

-- Design Ports Information
-- enable	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_actual[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_actual[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_actual[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_disp[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_disp[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- plazas_disp[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nuevo_auto	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liberar	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla_val[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla_val[2]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla_val[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tecla_val[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF motor_parqueadero_control IS
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
SIGNAL ww_nuevo_auto : std_logic;
SIGNAL ww_tecla_val : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_liberar : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_pos_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_plazas_disp : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enable~output_o\ : std_logic;
SIGNAL \dir~output_o\ : std_logic;
SIGNAL \pos_actual[0]~output_o\ : std_logic;
SIGNAL \pos_actual[1]~output_o\ : std_logic;
SIGNAL \pos_actual[2]~output_o\ : std_logic;
SIGNAL \plazas_disp[0]~output_o\ : std_logic;
SIGNAL \plazas_disp[1]~output_o\ : std_logic;
SIGNAL \plazas_disp[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \nuevo_auto~input_o\ : std_logic;
SIGNAL \tecla_val[0]~input_o\ : std_logic;
SIGNAL \estado_espacios~6_combout\ : std_logic;
SIGNAL \tecla_val[1]~input_o\ : std_logic;
SIGNAL \tecla_val[2]~input_o\ : std_logic;
SIGNAL \tecla_val[3]~input_o\ : std_logic;
SIGNAL \liberar~input_o\ : std_logic;
SIGNAL \estado_espacios~10_combout\ : std_logic;
SIGNAL \estado_espacios~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_espacios~8_combout\ : std_logic;
SIGNAL \estado_espacios~9_combout\ : std_logic;
SIGNAL \estado_espacios~3_combout\ : std_logic;
SIGNAL \estado_espacios~15_combout\ : std_logic;
SIGNAL \estado_espacios~16_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \estado_espacios~17_combout\ : std_logic;
SIGNAL \estado_espacios~7_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \estado_espacios~13_combout\ : std_logic;
SIGNAL \estado_espacios~12_combout\ : std_logic;
SIGNAL \estado_espacios~14_combout\ : std_logic;
SIGNAL \target_pos~3_combout\ : std_logic;
SIGNAL \estado_espacios~4_combout\ : std_logic;
SIGNAL \estado_espacios~5_combout\ : std_logic;
SIGNAL \target_pos~9_combout\ : std_logic;
SIGNAL \target_pos~10_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \target_pos~2_combout\ : std_logic;
SIGNAL \target_pos~12_combout\ : std_logic;
SIGNAL \target_pos~11_combout\ : std_logic;
SIGNAL \target_pos~6_combout\ : std_logic;
SIGNAL \target_pos~7_combout\ : std_logic;
SIGNAL \target_pos~5_combout\ : std_logic;
SIGNAL \target_pos~8_combout\ : std_logic;
SIGNAL \target_pos~4_combout\ : std_logic;
SIGNAL \target_pos~13_combout\ : std_logic;
SIGNAL \target_pos~14_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \motor_enable~0_combout\ : std_logic;
SIGNAL \motor_enable~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \motor_dir~q\ : std_logic;
SIGNAL \plazas_total~0_combout\ : std_logic;
SIGNAL \plazas_total~1_combout\ : std_logic;
SIGNAL \plazas_total~2_combout\ : std_logic;
SIGNAL \plazas_total~3_combout\ : std_logic;
SIGNAL \estado_espacios~2_combout\ : std_logic;
SIGNAL \plazas_total~4_combout\ : std_logic;
SIGNAL \plazas_total~5_combout\ : std_logic;
SIGNAL target_pos : std_logic_vector(2 DOWNTO 0);
SIGNAL plazas_total : std_logic_vector(2 DOWNTO 0);
SIGNAL indice_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL estado_espacios : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL ALT_INV_plazas_total : std_logic_vector(2 DOWNTO 1);
SIGNAL ALT_INV_indice_actual : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_nuevo_auto <= nuevo_auto;
ww_tecla_val <= tecla_val;
ww_liberar <= liberar;
enable <= ww_enable;
dir <= ww_dir;
pos_actual <= ww_pos_actual;
plazas_disp <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_plazas_disp));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_plazas_total(2) <= NOT plazas_total(2);
ALT_INV_plazas_total(1) <= NOT plazas_total(1);
ALT_INV_indice_actual(0) <= NOT indice_actual(0);

-- Location: IOOBUF_X21_Y29_N9
\enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_enable~q\,
	devoe => ww_devoe,
	o => \enable~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\dir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_dir~q\,
	devoe => ww_devoe,
	o => \dir~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\pos_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_indice_actual(0),
	devoe => ww_devoe,
	o => \pos_actual[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\pos_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => indice_actual(1),
	devoe => ww_devoe,
	o => \pos_actual[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\pos_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => indice_actual(2),
	devoe => ww_devoe,
	o => \pos_actual[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\plazas_disp[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => plazas_total(0),
	devoe => ww_devoe,
	o => \plazas_disp[0]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\plazas_disp[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_plazas_total(1),
	devoe => ww_devoe,
	o => \plazas_disp[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\plazas_disp[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_plazas_total(2),
	devoe => ww_devoe,
	o => \plazas_disp[2]~output_o\);

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

-- Location: IOIBUF_X23_Y0_N29
\nuevo_auto~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nuevo_auto,
	o => \nuevo_auto~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\tecla_val[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla_val(0),
	o => \tecla_val[0]~input_o\);

-- Location: LCCOMB_X24_Y12_N24
\estado_espacios~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~6_combout\ = (\nuevo_auto~input_o\) # (estado_espacios(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datad => estado_espacios(0),
	combout => \estado_espacios~6_combout\);

-- Location: IOIBUF_X23_Y29_N1
\tecla_val[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla_val(1),
	o => \tecla_val[1]~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\tecla_val[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla_val(2),
	o => \tecla_val[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\tecla_val[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tecla_val(3),
	o => \tecla_val[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\liberar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_liberar,
	o => \liberar~input_o\);

-- Location: LCCOMB_X23_Y12_N2
\estado_espacios~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~10_combout\ = (estado_espacios(1)) # ((\nuevo_auto~input_o\ & estado_espacios(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_espacios(1),
	datac => \nuevo_auto~input_o\,
	datad => estado_espacios(0),
	combout => \estado_espacios~10_combout\);

-- Location: LCCOMB_X23_Y12_N22
\estado_espacios~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~11_combout\ = (\estado_espacios~10_combout\ & (((\tecla_val[0]~input_o\) # (!\estado_espacios~17_combout\)) # (!\tecla_val[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[1]~input_o\,
	datab => \estado_espacios~10_combout\,
	datac => \tecla_val[0]~input_o\,
	datad => \estado_espacios~17_combout\,
	combout => \estado_espacios~11_combout\);

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

-- Location: FF_X23_Y12_N23
\estado_espacios[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_espacios~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_espacios(1));

-- Location: LCCOMB_X24_Y12_N22
\estado_espacios~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~8_combout\ = (estado_espacios(2)) # ((\nuevo_auto~input_o\ & (estado_espacios(1) & estado_espacios(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => estado_espacios(1),
	datac => estado_espacios(2),
	datad => estado_espacios(0),
	combout => \estado_espacios~8_combout\);

-- Location: LCCOMB_X23_Y12_N28
\estado_espacios~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~9_combout\ = (\estado_espacios~8_combout\ & (((!\estado_espacios~17_combout\) # (!\tecla_val[1]~input_o\)) # (!\tecla_val[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => \estado_espacios~8_combout\,
	datac => \tecla_val[1]~input_o\,
	datad => \estado_espacios~17_combout\,
	combout => \estado_espacios~9_combout\);

-- Location: FF_X23_Y12_N29
\estado_espacios[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_espacios~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_espacios(2));

-- Location: LCCOMB_X21_Y12_N20
\estado_espacios~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~3_combout\ = (!\tecla_val[3]~input_o\ & (!\tecla_val[0]~input_o\ & \liberar~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tecla_val[3]~input_o\,
	datac => \tecla_val[0]~input_o\,
	datad => \liberar~input_o\,
	combout => \estado_espacios~3_combout\);

-- Location: LCCOMB_X22_Y12_N8
\estado_espacios~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~15_combout\ = (((\tecla_val[1]~input_o\) # (\Mux0~1_combout\)) # (!\estado_espacios~3_combout\)) # (!\tecla_val[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[2]~input_o\,
	datab => \estado_espacios~3_combout\,
	datac => \tecla_val[1]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \estado_espacios~15_combout\);

-- Location: LCCOMB_X23_Y12_N20
\estado_espacios~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~16_combout\ = (\estado_espacios~15_combout\ & ((estado_espacios(3)) # ((\nuevo_auto~input_o\ & !\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => \process_0~0_combout\,
	datac => estado_espacios(3),
	datad => \estado_espacios~15_combout\,
	combout => \estado_espacios~16_combout\);

-- Location: FF_X23_Y12_N21
\estado_espacios[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_espacios~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_espacios(3));

-- Location: LCCOMB_X23_Y12_N16
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\tecla_val[1]~input_o\ & (\tecla_val[0]~input_o\)) # (!\tecla_val[1]~input_o\ & ((\tecla_val[0]~input_o\ & (estado_espacios(0))) # (!\tecla_val[0]~input_o\ & ((estado_espacios(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[1]~input_o\,
	datab => \tecla_val[0]~input_o\,
	datac => estado_espacios(0),
	datad => estado_espacios(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\tecla_val[1]~input_o\ & ((\Mux0~0_combout\ & (!estado_espacios(2))) # (!\Mux0~0_combout\ & ((!estado_espacios(1)))))) # (!\tecla_val[1]~input_o\ & (((!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[1]~input_o\,
	datab => estado_espacios(2),
	datac => estado_espacios(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X23_Y12_N24
\estado_espacios~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~17_combout\ = (!\tecla_val[2]~input_o\ & (!\tecla_val[3]~input_o\ & (\liberar~input_o\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[2]~input_o\,
	datab => \tecla_val[3]~input_o\,
	datac => \liberar~input_o\,
	datad => \Mux0~1_combout\,
	combout => \estado_espacios~17_combout\);

-- Location: LCCOMB_X23_Y12_N14
\estado_espacios~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~7_combout\ = (\estado_espacios~6_combout\ & (((\tecla_val[1]~input_o\) # (!\estado_espacios~17_combout\)) # (!\tecla_val[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => \estado_espacios~6_combout\,
	datac => \tecla_val[1]~input_o\,
	datad => \estado_espacios~17_combout\,
	combout => \estado_espacios~7_combout\);

-- Location: FF_X23_Y12_N15
\estado_espacios[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_espacios~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_espacios(0));

-- Location: LCCOMB_X23_Y12_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((!estado_espacios(2)) # (!estado_espacios(1))) # (!estado_espacios(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_espacios(0),
	datac => estado_espacios(1),
	datad => estado_espacios(2),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X23_Y12_N18
\estado_espacios~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~13_combout\ = (\tecla_val[1]~input_o\) # ((\tecla_val[3]~input_o\) # ((!\tecla_val[2]~input_o\) # (!\liberar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[1]~input_o\,
	datab => \tecla_val[3]~input_o\,
	datac => \liberar~input_o\,
	datad => \tecla_val[2]~input_o\,
	combout => \estado_espacios~13_combout\);

-- Location: LCCOMB_X23_Y12_N4
\estado_espacios~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~12_combout\ = (estado_espacios(4)) # ((\nuevo_auto~input_o\ & (!\process_0~0_combout\ & estado_espacios(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => \process_0~0_combout\,
	datac => estado_espacios(3),
	datad => estado_espacios(4),
	combout => \estado_espacios~12_combout\);

-- Location: LCCOMB_X23_Y12_N26
\estado_espacios~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~14_combout\ = (\estado_espacios~12_combout\ & (((\estado_espacios~13_combout\) # (!estado_espacios(4))) # (!\tecla_val[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => \estado_espacios~13_combout\,
	datac => estado_espacios(4),
	datad => \estado_espacios~12_combout\,
	combout => \estado_espacios~14_combout\);

-- Location: FF_X23_Y12_N27
\estado_espacios[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_espacios~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_espacios(4));

-- Location: LCCOMB_X23_Y12_N10
\target_pos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~3_combout\ = (estado_espacios(3) & (estado_espacios(4) & !\process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_espacios(3),
	datac => estado_espacios(4),
	datad => \process_0~0_combout\,
	combout => \target_pos~3_combout\);

-- Location: LCCOMB_X22_Y12_N6
\estado_espacios~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~4_combout\ = (((!estado_espacios(5)) # (!\tecla_val[1]~input_o\)) # (!\estado_espacios~3_combout\)) # (!\tecla_val[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[2]~input_o\,
	datab => \estado_espacios~3_combout\,
	datac => \tecla_val[1]~input_o\,
	datad => estado_espacios(5),
	combout => \estado_espacios~4_combout\);

-- Location: LCCOMB_X22_Y12_N20
\estado_espacios~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~5_combout\ = (\estado_espacios~4_combout\ & ((estado_espacios(5)) # ((\target_pos~3_combout\ & \nuevo_auto~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \target_pos~3_combout\,
	datab => \nuevo_auto~input_o\,
	datac => estado_espacios(5),
	datad => \estado_espacios~4_combout\,
	combout => \estado_espacios~5_combout\);

-- Location: FF_X22_Y12_N21
\estado_espacios[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_espacios~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_espacios(5));

-- Location: LCCOMB_X22_Y12_N12
\target_pos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~9_combout\ = ((!estado_espacios(4)) # (!estado_espacios(3))) # (!estado_espacios(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_espacios(5),
	datac => estado_espacios(3),
	datad => estado_espacios(4),
	combout => \target_pos~9_combout\);

-- Location: LCCOMB_X21_Y12_N18
\target_pos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~10_combout\ = (\nuevo_auto~input_o\ & (!\process_0~0_combout\ & ((\target_pos~9_combout\) # (target_pos(2))))) # (!\nuevo_auto~input_o\ & (((target_pos(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => \process_0~0_combout\,
	datac => \target_pos~9_combout\,
	datad => target_pos(2),
	combout => \target_pos~10_combout\);

-- Location: LCCOMB_X22_Y12_N16
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\tecla_val[0]~input_o\ & (((\tecla_val[1]~input_o\) # (!estado_espacios(4))))) # (!\tecla_val[0]~input_o\ & (((!\tecla_val[1]~input_o\)) # (!estado_espacios(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => estado_espacios(5),
	datac => \tecla_val[1]~input_o\,
	datad => estado_espacios(4),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X22_Y12_N30
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (\tecla_val[2]~input_o\ $ (((!\tecla_val[0]~input_o\ & !\tecla_val[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => \tecla_val[2]~input_o\,
	datac => \tecla_val[1]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X22_Y12_N10
\target_pos~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~2_combout\ = (\tecla_val[2]~input_o\ & ((\tecla_val[0]~input_o\ & (!\tecla_val[1]~input_o\)) # (!\tecla_val[0]~input_o\ & ((\tecla_val[1]~input_o\) # (!\Mux0~1_combout\))))) # (!\tecla_val[2]~input_o\ & (!\Mux0~1_combout\ & 
-- ((\tecla_val[0]~input_o\) # (\tecla_val[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => \tecla_val[2]~input_o\,
	datac => \tecla_val[1]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \target_pos~2_combout\);

-- Location: LCCOMB_X22_Y12_N2
\target_pos~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~12_combout\ = (!\tecla_val[3]~input_o\ & (\liberar~input_o\ & (!\Mux0~3_combout\ & \target_pos~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[3]~input_o\,
	datab => \liberar~input_o\,
	datac => \Mux0~3_combout\,
	datad => \target_pos~2_combout\,
	combout => \target_pos~12_combout\);

-- Location: LCCOMB_X21_Y12_N24
\target_pos~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~11_combout\ = (\target_pos~12_combout\ & ((\tecla_val[2]~input_o\))) # (!\target_pos~12_combout\ & (\target_pos~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \target_pos~10_combout\,
	datac => \tecla_val[2]~input_o\,
	datad => \target_pos~12_combout\,
	combout => \target_pos~11_combout\);

-- Location: FF_X21_Y12_N25
\target_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \target_pos~11_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => target_pos(2));

-- Location: FF_X21_Y12_N23
\indice_actual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => target_pos(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indice_actual(2));

-- Location: LCCOMB_X22_Y12_N18
\target_pos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~6_combout\ = (estado_espacios(1) & ((estado_espacios(3)) # (!estado_espacios(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_espacios(2),
	datac => estado_espacios(3),
	datad => estado_espacios(1),
	combout => \target_pos~6_combout\);

-- Location: LCCOMB_X21_Y12_N28
\target_pos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~7_combout\ = (\nuevo_auto~input_o\ & (!\target_pos~3_combout\ & ((\target_pos~6_combout\) # (!estado_espacios(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => \target_pos~6_combout\,
	datac => estado_espacios(0),
	datad => \target_pos~3_combout\,
	combout => \target_pos~7_combout\);

-- Location: LCCOMB_X21_Y12_N26
\target_pos~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~5_combout\ = (!target_pos(0) & (((estado_espacios(5) & \target_pos~3_combout\)) # (!\nuevo_auto~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => target_pos(0),
	datab => \nuevo_auto~input_o\,
	datac => estado_espacios(5),
	datad => \target_pos~3_combout\,
	combout => \target_pos~5_combout\);

-- Location: LCCOMB_X21_Y12_N12
\target_pos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~8_combout\ = (\target_pos~12_combout\ & (!\tecla_val[0]~input_o\)) # (!\target_pos~12_combout\ & (((!\target_pos~7_combout\ & !\target_pos~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[0]~input_o\,
	datab => \target_pos~7_combout\,
	datac => \target_pos~5_combout\,
	datad => \target_pos~12_combout\,
	combout => \target_pos~8_combout\);

-- Location: FF_X21_Y12_N13
\target_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \target_pos~8_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => target_pos(0));

-- Location: LCCOMB_X23_Y12_N12
\target_pos~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~4_combout\ = (\nuevo_auto~input_o\ & (estado_espacios(0) & ((!estado_espacios(2)) # (!estado_espacios(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => estado_espacios(1),
	datab => estado_espacios(2),
	datac => \nuevo_auto~input_o\,
	datad => estado_espacios(0),
	combout => \target_pos~4_combout\);

-- Location: LCCOMB_X23_Y12_N30
\target_pos~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~13_combout\ = (\nuevo_auto~input_o\ & (\target_pos~3_combout\ & ((target_pos(1)) # (!estado_espacios(5))))) # (!\nuevo_auto~input_o\ & (((target_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => estado_espacios(5),
	datac => \target_pos~3_combout\,
	datad => target_pos(1),
	combout => \target_pos~13_combout\);

-- Location: LCCOMB_X23_Y12_N8
\target_pos~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \target_pos~14_combout\ = (\target_pos~12_combout\ & (\tecla_val[1]~input_o\)) # (!\target_pos~12_combout\ & (((\target_pos~4_combout\) # (\target_pos~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tecla_val[1]~input_o\,
	datab => \target_pos~4_combout\,
	datac => \target_pos~13_combout\,
	datad => \target_pos~12_combout\,
	combout => \target_pos~14_combout\);

-- Location: FF_X23_Y12_N9
\target_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \target_pos~14_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => target_pos(1));

-- Location: FF_X21_Y12_N17
\indice_actual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => target_pos(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indice_actual(1));

-- Location: FF_X21_Y12_N31
\indice_actual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => target_pos(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indice_actual(0));

-- Location: LCCOMB_X21_Y12_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (target_pos(0) & (indice_actual(0) & (indice_actual(1) $ (!target_pos(1))))) # (!target_pos(0) & (!indice_actual(0) & (indice_actual(1) $ (!target_pos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => target_pos(0),
	datab => indice_actual(1),
	datac => indice_actual(0),
	datad => target_pos(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (target_pos(2) $ (!indice_actual(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => target_pos(2),
	datac => indice_actual(2),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
\motor_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_enable~0_combout\ = !\Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~1_combout\,
	combout => \motor_enable~0_combout\);

-- Location: FF_X22_Y12_N1
motor_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \motor_enable~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_enable~q\);

-- Location: LCCOMB_X21_Y12_N16
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (target_pos(1) & (((indice_actual(0) & !target_pos(0))) # (!indice_actual(1)))) # (!target_pos(1) & (indice_actual(0) & (!indice_actual(1) & !target_pos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indice_actual(0),
	datab => target_pos(1),
	datac => indice_actual(1),
	datad => target_pos(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X21_Y12_N4
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (target_pos(2) & (!\LessThan2~0_combout\ & indice_actual(2))) # (!target_pos(2) & ((indice_actual(2)) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => target_pos(2),
	datac => \LessThan2~0_combout\,
	datad => indice_actual(2),
	combout => \LessThan2~1_combout\);

-- Location: FF_X21_Y12_N5
motor_dir : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_dir~q\);

-- Location: LCCOMB_X23_Y12_N6
\plazas_total~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_total~0_combout\ = (estado_espacios(3) & estado_espacios(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_espacios(3),
	datac => estado_espacios(4),
	combout => \plazas_total~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\plazas_total~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_total~1_combout\ = ((estado_espacios(5) & (!\process_0~0_combout\ & \plazas_total~0_combout\))) # (!\nuevo_auto~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nuevo_auto~input_o\,
	datab => estado_espacios(5),
	datac => \process_0~0_combout\,
	datad => \plazas_total~0_combout\,
	combout => \plazas_total~1_combout\);

-- Location: LCCOMB_X22_Y12_N26
\plazas_total~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_total~2_combout\ = plazas_total(0) $ (((\target_pos~12_combout\) # (!\plazas_total~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plazas_total~1_combout\,
	datac => plazas_total(0),
	datad => \target_pos~12_combout\,
	combout => \plazas_total~2_combout\);

-- Location: FF_X22_Y12_N27
\plazas_total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \plazas_total~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => plazas_total(0));

-- Location: LCCOMB_X22_Y12_N24
\plazas_total~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_total~3_combout\ = plazas_total(0) $ (plazas_total(1) $ (!\target_pos~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_total(0),
	datac => plazas_total(1),
	datad => \target_pos~12_combout\,
	combout => \plazas_total~3_combout\);

-- Location: LCCOMB_X21_Y12_N30
\estado_espacios~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_espacios~2_combout\ = (!\tecla_val[3]~input_o\ & \liberar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tecla_val[3]~input_o\,
	datad => \liberar~input_o\,
	combout => \estado_espacios~2_combout\);

-- Location: LCCOMB_X22_Y12_N4
\plazas_total~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_total~4_combout\ = ((!\Mux0~3_combout\ & (\estado_espacios~2_combout\ & \target_pos~2_combout\))) # (!\plazas_total~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \estado_espacios~2_combout\,
	datac => \plazas_total~1_combout\,
	datad => \target_pos~2_combout\,
	combout => \plazas_total~4_combout\);

-- Location: FF_X22_Y12_N25
\plazas_total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \plazas_total~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \plazas_total~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => plazas_total(1));

-- Location: LCCOMB_X22_Y12_N14
\plazas_total~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \plazas_total~5_combout\ = plazas_total(2) $ (((plazas_total(0) & (!plazas_total(1) & \target_pos~12_combout\)) # (!plazas_total(0) & (plazas_total(1) & !\target_pos~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => plazas_total(0),
	datab => plazas_total(1),
	datac => plazas_total(2),
	datad => \target_pos~12_combout\,
	combout => \plazas_total~5_combout\);

-- Location: FF_X22_Y12_N15
\plazas_total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \plazas_total~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \plazas_total~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => plazas_total(2));

ww_enable <= \enable~output_o\;

ww_dir <= \dir~output_o\;

ww_pos_actual(0) <= \pos_actual[0]~output_o\;

ww_pos_actual(1) <= \pos_actual[1]~output_o\;

ww_pos_actual(2) <= \pos_actual[2]~output_o\;

ww_plazas_disp(0) <= \plazas_disp[0]~output_o\;

ww_plazas_disp(1) <= \plazas_disp[1]~output_o\;

ww_plazas_disp(2) <= \plazas_disp[2]~output_o\;
END structure;


