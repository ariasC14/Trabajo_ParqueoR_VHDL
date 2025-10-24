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

-- DATE "10/22/2025 22:38:08"

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

ENTITY 	sensor_movimiento IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sensor_in : IN std_logic;
	control_puerta_int : BUFFER std_logic
	);
END sensor_movimiento;

-- Design Ports Information
-- control_puerta_int	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_in	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sensor_movimiento IS
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
SIGNAL ww_sensor_in : std_logic;
SIGNAL ww_control_puerta_int : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control_puerta_int~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor_in~input_o\ : std_logic;
SIGNAL \contador_10s[0]~33_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado.CONTANDO_CERRAR~0_combout\ : std_logic;
SIGNAL \estado.CONTANDO_CERRAR~q\ : std_logic;
SIGNAL \contador_10s[17]~32_combout\ : std_logic;
SIGNAL \contador_10s[17]~83_combout\ : std_logic;
SIGNAL \contador_10s[17]~84_combout\ : std_logic;
SIGNAL \contador_10s[0]~34\ : std_logic;
SIGNAL \contador_10s[1]~35_combout\ : std_logic;
SIGNAL \contador_10s[1]~36\ : std_logic;
SIGNAL \contador_10s[2]~37_combout\ : std_logic;
SIGNAL \contador_10s[2]~38\ : std_logic;
SIGNAL \contador_10s[3]~39_combout\ : std_logic;
SIGNAL \contador_10s[3]~40\ : std_logic;
SIGNAL \contador_10s[4]~41_combout\ : std_logic;
SIGNAL \contador_10s[4]~42\ : std_logic;
SIGNAL \contador_10s[5]~43_combout\ : std_logic;
SIGNAL \contador_10s[5]~44\ : std_logic;
SIGNAL \contador_10s[6]~45_combout\ : std_logic;
SIGNAL \contador_10s[6]~46\ : std_logic;
SIGNAL \contador_10s[7]~47_combout\ : std_logic;
SIGNAL \contador_10s[7]~48\ : std_logic;
SIGNAL \contador_10s[8]~49_combout\ : std_logic;
SIGNAL \contador_10s[8]~50\ : std_logic;
SIGNAL \contador_10s[9]~51_combout\ : std_logic;
SIGNAL \contador_10s[9]~52\ : std_logic;
SIGNAL \contador_10s[10]~53_combout\ : std_logic;
SIGNAL \contador_10s[10]~54\ : std_logic;
SIGNAL \contador_10s[11]~55_combout\ : std_logic;
SIGNAL \contador_10s[11]~56\ : std_logic;
SIGNAL \contador_10s[12]~57_combout\ : std_logic;
SIGNAL \contador_10s[12]~58\ : std_logic;
SIGNAL \contador_10s[13]~59_combout\ : std_logic;
SIGNAL \contador_10s[13]~60\ : std_logic;
SIGNAL \contador_10s[14]~61_combout\ : std_logic;
SIGNAL \contador_10s[14]~62\ : std_logic;
SIGNAL \contador_10s[15]~63_combout\ : std_logic;
SIGNAL \contador_10s[15]~64\ : std_logic;
SIGNAL \contador_10s[16]~65_combout\ : std_logic;
SIGNAL \contador_10s[16]~66\ : std_logic;
SIGNAL \contador_10s[17]~67_combout\ : std_logic;
SIGNAL \contador_10s[17]~68\ : std_logic;
SIGNAL \contador_10s[18]~69_combout\ : std_logic;
SIGNAL \contador_10s[18]~70\ : std_logic;
SIGNAL \contador_10s[19]~71_combout\ : std_logic;
SIGNAL \contador_10s[19]~72\ : std_logic;
SIGNAL \contador_10s[20]~73_combout\ : std_logic;
SIGNAL \contador_10s[20]~74\ : std_logic;
SIGNAL \contador_10s[21]~75_combout\ : std_logic;
SIGNAL \contador_10s[21]~76\ : std_logic;
SIGNAL \contador_10s[22]~77_combout\ : std_logic;
SIGNAL \contador_10s[22]~78\ : std_logic;
SIGNAL \contador_10s[23]~79_combout\ : std_logic;
SIGNAL \contador_10s[23]~80\ : std_logic;
SIGNAL \contador_10s[24]~81_combout\ : std_logic;
SIGNAL \contador_10s[24]~82\ : std_logic;
SIGNAL \contador_10s[25]~85_combout\ : std_logic;
SIGNAL \contador_10s[25]~86\ : std_logic;
SIGNAL \contador_10s[26]~87_combout\ : std_logic;
SIGNAL \contador_10s[26]~88\ : std_logic;
SIGNAL \contador_10s[27]~89_combout\ : std_logic;
SIGNAL \contador_10s[27]~90\ : std_logic;
SIGNAL \contador_10s[28]~91_combout\ : std_logic;
SIGNAL \contador_10s[28]~92\ : std_logic;
SIGNAL \contador_10s[29]~93_combout\ : std_logic;
SIGNAL \contador_10s[29]~94\ : std_logic;
SIGNAL \contador_10s[30]~95_combout\ : std_logic;
SIGNAL \contador_10s[30]~96\ : std_logic;
SIGNAL \contador_10s[31]~97_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector34~3_combout\ : std_logic;
SIGNAL \estado.ABIERTO~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \estado.CONTANDO_ABRIR~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \estado.CERRADO~q\ : std_logic;
SIGNAL \control_puerta_int~0_combout\ : std_logic;
SIGNAL \control_puerta_int~reg0_q\ : std_logic;
SIGNAL contador_10s : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sensor_in <= sensor_in;
control_puerta_int <= ww_control_puerta_int;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X7_Y0_N30
\control_puerta_int~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_puerta_int~reg0_q\,
	devoe => ww_devoe,
	o => \control_puerta_int~output_o\);

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

-- Location: IOIBUF_X9_Y0_N29
\sensor_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_in,
	o => \sensor_in~input_o\);

-- Location: LCCOMB_X23_Y17_N0
\contador_10s[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[0]~33_combout\ = contador_10s(0) $ (VCC)
-- \contador_10s[0]~34\ = CARRY(contador_10s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(0),
	datad => VCC,
	combout => \contador_10s[0]~33_combout\,
	cout => \contador_10s[0]~34\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X22_Y15_N8
\estado.CONTANDO_CERRAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado.CONTANDO_CERRAR~0_combout\ = (\Selector33~1_combout\ & (((\estado.CONTANDO_CERRAR~q\)))) # (!\Selector33~1_combout\ & (\estado.ABIERTO~q\ & (\sensor_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.ABIERTO~q\,
	datab => \sensor_in~input_o\,
	datac => \estado.CONTANDO_CERRAR~q\,
	datad => \Selector33~1_combout\,
	combout => \estado.CONTANDO_CERRAR~0_combout\);

-- Location: FF_X22_Y15_N9
\estado.CONTANDO_CERRAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado.CONTANDO_CERRAR~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CONTANDO_CERRAR~q\);

-- Location: LCCOMB_X22_Y16_N0
\contador_10s[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[17]~32_combout\ = (\LessThan0~10_combout\ & (\sensor_in~input_o\ $ (!\estado.CONTANDO_CERRAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_in~input_o\,
	datab => \estado.CONTANDO_CERRAR~q\,
	datad => \LessThan0~10_combout\,
	combout => \contador_10s[17]~32_combout\);

-- Location: LCCOMB_X22_Y16_N22
\contador_10s[17]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[17]~83_combout\ = ((\estado.ABIERTO~q\) # (!\contador_10s[17]~32_combout\)) # (!\estado.CERRADO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.CERRADO~q\,
	datac => \estado.ABIERTO~q\,
	datad => \contador_10s[17]~32_combout\,
	combout => \contador_10s[17]~83_combout\);

-- Location: LCCOMB_X21_Y16_N28
\contador_10s[17]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[17]~84_combout\ = (\sensor_in~input_o\) # (!\estado.ABIERTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor_in~input_o\,
	datad => \estado.ABIERTO~q\,
	combout => \contador_10s[17]~84_combout\);

-- Location: FF_X23_Y17_N1
\contador_10s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[0]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(0));

-- Location: LCCOMB_X23_Y17_N2
\contador_10s[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[1]~35_combout\ = (contador_10s(1) & (!\contador_10s[0]~34\)) # (!contador_10s(1) & ((\contador_10s[0]~34\) # (GND)))
-- \contador_10s[1]~36\ = CARRY((!\contador_10s[0]~34\) # (!contador_10s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(1),
	datad => VCC,
	cin => \contador_10s[0]~34\,
	combout => \contador_10s[1]~35_combout\,
	cout => \contador_10s[1]~36\);

-- Location: FF_X23_Y17_N3
\contador_10s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[1]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(1));

-- Location: LCCOMB_X23_Y17_N4
\contador_10s[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[2]~37_combout\ = (contador_10s(2) & (\contador_10s[1]~36\ $ (GND))) # (!contador_10s(2) & (!\contador_10s[1]~36\ & VCC))
-- \contador_10s[2]~38\ = CARRY((contador_10s(2) & !\contador_10s[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(2),
	datad => VCC,
	cin => \contador_10s[1]~36\,
	combout => \contador_10s[2]~37_combout\,
	cout => \contador_10s[2]~38\);

-- Location: FF_X23_Y17_N5
\contador_10s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[2]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(2));

-- Location: LCCOMB_X23_Y17_N6
\contador_10s[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[3]~39_combout\ = (contador_10s(3) & (!\contador_10s[2]~38\)) # (!contador_10s(3) & ((\contador_10s[2]~38\) # (GND)))
-- \contador_10s[3]~40\ = CARRY((!\contador_10s[2]~38\) # (!contador_10s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(3),
	datad => VCC,
	cin => \contador_10s[2]~38\,
	combout => \contador_10s[3]~39_combout\,
	cout => \contador_10s[3]~40\);

-- Location: FF_X23_Y17_N7
\contador_10s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[3]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(3));

-- Location: LCCOMB_X23_Y17_N8
\contador_10s[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[4]~41_combout\ = (contador_10s(4) & (\contador_10s[3]~40\ $ (GND))) # (!contador_10s(4) & (!\contador_10s[3]~40\ & VCC))
-- \contador_10s[4]~42\ = CARRY((contador_10s(4) & !\contador_10s[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(4),
	datad => VCC,
	cin => \contador_10s[3]~40\,
	combout => \contador_10s[4]~41_combout\,
	cout => \contador_10s[4]~42\);

-- Location: FF_X23_Y17_N9
\contador_10s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[4]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(4));

-- Location: LCCOMB_X23_Y17_N10
\contador_10s[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[5]~43_combout\ = (contador_10s(5) & (!\contador_10s[4]~42\)) # (!contador_10s(5) & ((\contador_10s[4]~42\) # (GND)))
-- \contador_10s[5]~44\ = CARRY((!\contador_10s[4]~42\) # (!contador_10s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(5),
	datad => VCC,
	cin => \contador_10s[4]~42\,
	combout => \contador_10s[5]~43_combout\,
	cout => \contador_10s[5]~44\);

-- Location: FF_X23_Y17_N11
\contador_10s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[5]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(5));

-- Location: LCCOMB_X23_Y17_N12
\contador_10s[6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[6]~45_combout\ = (contador_10s(6) & (\contador_10s[5]~44\ $ (GND))) # (!contador_10s(6) & (!\contador_10s[5]~44\ & VCC))
-- \contador_10s[6]~46\ = CARRY((contador_10s(6) & !\contador_10s[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(6),
	datad => VCC,
	cin => \contador_10s[5]~44\,
	combout => \contador_10s[6]~45_combout\,
	cout => \contador_10s[6]~46\);

-- Location: FF_X23_Y17_N13
\contador_10s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[6]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(6));

-- Location: LCCOMB_X23_Y17_N14
\contador_10s[7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[7]~47_combout\ = (contador_10s(7) & (!\contador_10s[6]~46\)) # (!contador_10s(7) & ((\contador_10s[6]~46\) # (GND)))
-- \contador_10s[7]~48\ = CARRY((!\contador_10s[6]~46\) # (!contador_10s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(7),
	datad => VCC,
	cin => \contador_10s[6]~46\,
	combout => \contador_10s[7]~47_combout\,
	cout => \contador_10s[7]~48\);

-- Location: FF_X22_Y17_N17
\contador_10s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[7]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(7));

-- Location: LCCOMB_X23_Y17_N16
\contador_10s[8]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[8]~49_combout\ = (contador_10s(8) & (\contador_10s[7]~48\ $ (GND))) # (!contador_10s(8) & (!\contador_10s[7]~48\ & VCC))
-- \contador_10s[8]~50\ = CARRY((contador_10s(8) & !\contador_10s[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(8),
	datad => VCC,
	cin => \contador_10s[7]~48\,
	combout => \contador_10s[8]~49_combout\,
	cout => \contador_10s[8]~50\);

-- Location: FF_X22_Y17_N27
\contador_10s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[8]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(8));

-- Location: LCCOMB_X23_Y17_N18
\contador_10s[9]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[9]~51_combout\ = (contador_10s(9) & (!\contador_10s[8]~50\)) # (!contador_10s(9) & ((\contador_10s[8]~50\) # (GND)))
-- \contador_10s[9]~52\ = CARRY((!\contador_10s[8]~50\) # (!contador_10s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(9),
	datad => VCC,
	cin => \contador_10s[8]~50\,
	combout => \contador_10s[9]~51_combout\,
	cout => \contador_10s[9]~52\);

-- Location: FF_X22_Y17_N9
\contador_10s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[9]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(9));

-- Location: LCCOMB_X23_Y17_N20
\contador_10s[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[10]~53_combout\ = (contador_10s(10) & (\contador_10s[9]~52\ $ (GND))) # (!contador_10s(10) & (!\contador_10s[9]~52\ & VCC))
-- \contador_10s[10]~54\ = CARRY((contador_10s(10) & !\contador_10s[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(10),
	datad => VCC,
	cin => \contador_10s[9]~52\,
	combout => \contador_10s[10]~53_combout\,
	cout => \contador_10s[10]~54\);

-- Location: FF_X22_Y17_N7
\contador_10s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[10]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(10));

-- Location: LCCOMB_X23_Y17_N22
\contador_10s[11]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[11]~55_combout\ = (contador_10s(11) & (!\contador_10s[10]~54\)) # (!contador_10s(11) & ((\contador_10s[10]~54\) # (GND)))
-- \contador_10s[11]~56\ = CARRY((!\contador_10s[10]~54\) # (!contador_10s(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(11),
	datad => VCC,
	cin => \contador_10s[10]~54\,
	combout => \contador_10s[11]~55_combout\,
	cout => \contador_10s[11]~56\);

-- Location: FF_X23_Y17_N23
\contador_10s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[11]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(11));

-- Location: LCCOMB_X23_Y17_N24
\contador_10s[12]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[12]~57_combout\ = (contador_10s(12) & (\contador_10s[11]~56\ $ (GND))) # (!contador_10s(12) & (!\contador_10s[11]~56\ & VCC))
-- \contador_10s[12]~58\ = CARRY((contador_10s(12) & !\contador_10s[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(12),
	datad => VCC,
	cin => \contador_10s[11]~56\,
	combout => \contador_10s[12]~57_combout\,
	cout => \contador_10s[12]~58\);

-- Location: FF_X22_Y16_N1
\contador_10s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[12]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(12));

-- Location: LCCOMB_X23_Y17_N26
\contador_10s[13]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[13]~59_combout\ = (contador_10s(13) & (!\contador_10s[12]~58\)) # (!contador_10s(13) & ((\contador_10s[12]~58\) # (GND)))
-- \contador_10s[13]~60\ = CARRY((!\contador_10s[12]~58\) # (!contador_10s(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(13),
	datad => VCC,
	cin => \contador_10s[12]~58\,
	combout => \contador_10s[13]~59_combout\,
	cout => \contador_10s[13]~60\);

-- Location: FF_X21_Y16_N17
\contador_10s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[13]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(13));

-- Location: LCCOMB_X23_Y17_N28
\contador_10s[14]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[14]~61_combout\ = (contador_10s(14) & (\contador_10s[13]~60\ $ (GND))) # (!contador_10s(14) & (!\contador_10s[13]~60\ & VCC))
-- \contador_10s[14]~62\ = CARRY((contador_10s(14) & !\contador_10s[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(14),
	datad => VCC,
	cin => \contador_10s[13]~60\,
	combout => \contador_10s[14]~61_combout\,
	cout => \contador_10s[14]~62\);

-- Location: FF_X23_Y17_N29
\contador_10s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[14]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(14));

-- Location: LCCOMB_X23_Y17_N30
\contador_10s[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[15]~63_combout\ = (contador_10s(15) & (!\contador_10s[14]~62\)) # (!contador_10s(15) & ((\contador_10s[14]~62\) # (GND)))
-- \contador_10s[15]~64\ = CARRY((!\contador_10s[14]~62\) # (!contador_10s(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(15),
	datad => VCC,
	cin => \contador_10s[14]~62\,
	combout => \contador_10s[15]~63_combout\,
	cout => \contador_10s[15]~64\);

-- Location: FF_X23_Y17_N31
\contador_10s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[15]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(15));

-- Location: LCCOMB_X23_Y16_N0
\contador_10s[16]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[16]~65_combout\ = (contador_10s(16) & (\contador_10s[15]~64\ $ (GND))) # (!contador_10s(16) & (!\contador_10s[15]~64\ & VCC))
-- \contador_10s[16]~66\ = CARRY((contador_10s(16) & !\contador_10s[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(16),
	datad => VCC,
	cin => \contador_10s[15]~64\,
	combout => \contador_10s[16]~65_combout\,
	cout => \contador_10s[16]~66\);

-- Location: FF_X23_Y16_N1
\contador_10s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[16]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(16));

-- Location: LCCOMB_X23_Y16_N2
\contador_10s[17]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[17]~67_combout\ = (contador_10s(17) & (!\contador_10s[16]~66\)) # (!contador_10s(17) & ((\contador_10s[16]~66\) # (GND)))
-- \contador_10s[17]~68\ = CARRY((!\contador_10s[16]~66\) # (!contador_10s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(17),
	datad => VCC,
	cin => \contador_10s[16]~66\,
	combout => \contador_10s[17]~67_combout\,
	cout => \contador_10s[17]~68\);

-- Location: FF_X23_Y16_N3
\contador_10s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[17]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(17));

-- Location: LCCOMB_X23_Y16_N4
\contador_10s[18]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[18]~69_combout\ = (contador_10s(18) & (\contador_10s[17]~68\ $ (GND))) # (!contador_10s(18) & (!\contador_10s[17]~68\ & VCC))
-- \contador_10s[18]~70\ = CARRY((contador_10s(18) & !\contador_10s[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(18),
	datad => VCC,
	cin => \contador_10s[17]~68\,
	combout => \contador_10s[18]~69_combout\,
	cout => \contador_10s[18]~70\);

-- Location: FF_X23_Y16_N5
\contador_10s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[18]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(18));

-- Location: LCCOMB_X23_Y16_N6
\contador_10s[19]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[19]~71_combout\ = (contador_10s(19) & (!\contador_10s[18]~70\)) # (!contador_10s(19) & ((\contador_10s[18]~70\) # (GND)))
-- \contador_10s[19]~72\ = CARRY((!\contador_10s[18]~70\) # (!contador_10s(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(19),
	datad => VCC,
	cin => \contador_10s[18]~70\,
	combout => \contador_10s[19]~71_combout\,
	cout => \contador_10s[19]~72\);

-- Location: FF_X23_Y16_N7
\contador_10s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[19]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(19));

-- Location: LCCOMB_X23_Y16_N8
\contador_10s[20]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[20]~73_combout\ = (contador_10s(20) & (\contador_10s[19]~72\ $ (GND))) # (!contador_10s(20) & (!\contador_10s[19]~72\ & VCC))
-- \contador_10s[20]~74\ = CARRY((contador_10s(20) & !\contador_10s[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(20),
	datad => VCC,
	cin => \contador_10s[19]~72\,
	combout => \contador_10s[20]~73_combout\,
	cout => \contador_10s[20]~74\);

-- Location: FF_X23_Y16_N9
\contador_10s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[20]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(20));

-- Location: LCCOMB_X23_Y16_N10
\contador_10s[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[21]~75_combout\ = (contador_10s(21) & (!\contador_10s[20]~74\)) # (!contador_10s(21) & ((\contador_10s[20]~74\) # (GND)))
-- \contador_10s[21]~76\ = CARRY((!\contador_10s[20]~74\) # (!contador_10s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(21),
	datad => VCC,
	cin => \contador_10s[20]~74\,
	combout => \contador_10s[21]~75_combout\,
	cout => \contador_10s[21]~76\);

-- Location: FF_X23_Y16_N11
\contador_10s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[21]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(21));

-- Location: LCCOMB_X23_Y16_N12
\contador_10s[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[22]~77_combout\ = (contador_10s(22) & (\contador_10s[21]~76\ $ (GND))) # (!contador_10s(22) & (!\contador_10s[21]~76\ & VCC))
-- \contador_10s[22]~78\ = CARRY((contador_10s(22) & !\contador_10s[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(22),
	datad => VCC,
	cin => \contador_10s[21]~76\,
	combout => \contador_10s[22]~77_combout\,
	cout => \contador_10s[22]~78\);

-- Location: FF_X23_Y16_N13
\contador_10s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[22]~77_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(22));

-- Location: LCCOMB_X23_Y16_N14
\contador_10s[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[23]~79_combout\ = (contador_10s(23) & (!\contador_10s[22]~78\)) # (!contador_10s(23) & ((\contador_10s[22]~78\) # (GND)))
-- \contador_10s[23]~80\ = CARRY((!\contador_10s[22]~78\) # (!contador_10s(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(23),
	datad => VCC,
	cin => \contador_10s[22]~78\,
	combout => \contador_10s[23]~79_combout\,
	cout => \contador_10s[23]~80\);

-- Location: FF_X22_Y16_N31
\contador_10s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_10s[23]~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	sload => VCC,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(23));

-- Location: LCCOMB_X23_Y16_N16
\contador_10s[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[24]~81_combout\ = (contador_10s(24) & (\contador_10s[23]~80\ $ (GND))) # (!contador_10s(24) & (!\contador_10s[23]~80\ & VCC))
-- \contador_10s[24]~82\ = CARRY((contador_10s(24) & !\contador_10s[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(24),
	datad => VCC,
	cin => \contador_10s[23]~80\,
	combout => \contador_10s[24]~81_combout\,
	cout => \contador_10s[24]~82\);

-- Location: FF_X23_Y16_N17
\contador_10s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[24]~81_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(24));

-- Location: LCCOMB_X23_Y16_N18
\contador_10s[25]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[25]~85_combout\ = (contador_10s(25) & (!\contador_10s[24]~82\)) # (!contador_10s(25) & ((\contador_10s[24]~82\) # (GND)))
-- \contador_10s[25]~86\ = CARRY((!\contador_10s[24]~82\) # (!contador_10s(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(25),
	datad => VCC,
	cin => \contador_10s[24]~82\,
	combout => \contador_10s[25]~85_combout\,
	cout => \contador_10s[25]~86\);

-- Location: FF_X23_Y16_N19
\contador_10s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[25]~85_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(25));

-- Location: LCCOMB_X23_Y16_N20
\contador_10s[26]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[26]~87_combout\ = (contador_10s(26) & (\contador_10s[25]~86\ $ (GND))) # (!contador_10s(26) & (!\contador_10s[25]~86\ & VCC))
-- \contador_10s[26]~88\ = CARRY((contador_10s(26) & !\contador_10s[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(26),
	datad => VCC,
	cin => \contador_10s[25]~86\,
	combout => \contador_10s[26]~87_combout\,
	cout => \contador_10s[26]~88\);

-- Location: FF_X23_Y16_N21
\contador_10s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[26]~87_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(26));

-- Location: LCCOMB_X23_Y16_N22
\contador_10s[27]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[27]~89_combout\ = (contador_10s(27) & (!\contador_10s[26]~88\)) # (!contador_10s(27) & ((\contador_10s[26]~88\) # (GND)))
-- \contador_10s[27]~90\ = CARRY((!\contador_10s[26]~88\) # (!contador_10s(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(27),
	datad => VCC,
	cin => \contador_10s[26]~88\,
	combout => \contador_10s[27]~89_combout\,
	cout => \contador_10s[27]~90\);

-- Location: FF_X23_Y16_N23
\contador_10s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[27]~89_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(27));

-- Location: LCCOMB_X23_Y16_N24
\contador_10s[28]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[28]~91_combout\ = (contador_10s(28) & (\contador_10s[27]~90\ $ (GND))) # (!contador_10s(28) & (!\contador_10s[27]~90\ & VCC))
-- \contador_10s[28]~92\ = CARRY((contador_10s(28) & !\contador_10s[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(28),
	datad => VCC,
	cin => \contador_10s[27]~90\,
	combout => \contador_10s[28]~91_combout\,
	cout => \contador_10s[28]~92\);

-- Location: FF_X23_Y16_N25
\contador_10s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[28]~91_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(28));

-- Location: LCCOMB_X23_Y16_N26
\contador_10s[29]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[29]~93_combout\ = (contador_10s(29) & (!\contador_10s[28]~92\)) # (!contador_10s(29) & ((\contador_10s[28]~92\) # (GND)))
-- \contador_10s[29]~94\ = CARRY((!\contador_10s[28]~92\) # (!contador_10s(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(29),
	datad => VCC,
	cin => \contador_10s[28]~92\,
	combout => \contador_10s[29]~93_combout\,
	cout => \contador_10s[29]~94\);

-- Location: FF_X23_Y16_N27
\contador_10s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[29]~93_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(29));

-- Location: LCCOMB_X23_Y16_N28
\contador_10s[30]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[30]~95_combout\ = (contador_10s(30) & (\contador_10s[29]~94\ $ (GND))) # (!contador_10s(30) & (!\contador_10s[29]~94\ & VCC))
-- \contador_10s[30]~96\ = CARRY((contador_10s(30) & !\contador_10s[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(30),
	datad => VCC,
	cin => \contador_10s[29]~94\,
	combout => \contador_10s[30]~95_combout\,
	cout => \contador_10s[30]~96\);

-- Location: FF_X23_Y16_N29
\contador_10s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[30]~95_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(30));

-- Location: LCCOMB_X23_Y16_N30
\contador_10s[31]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_10s[31]~97_combout\ = contador_10s(31) $ (\contador_10s[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(31),
	cin => \contador_10s[30]~96\,
	combout => \contador_10s[31]~97_combout\);

-- Location: FF_X23_Y16_N31
\contador_10s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_10s[31]~97_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_10s[17]~83_combout\,
	ena => \contador_10s[17]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_10s(31));

-- Location: LCCOMB_X22_Y16_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!contador_10s(28) & (!contador_10s(29) & (!contador_10s(24) & !contador_10s(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(28),
	datab => contador_10s(29),
	datac => contador_10s(24),
	datad => contador_10s(30),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y16_N20
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~0_combout\ & (((!contador_10s(21)) # (!contador_10s(23))) # (!contador_10s(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(22),
	datab => contador_10s(23),
	datac => contador_10s(21),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X22_Y16_N8
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((!contador_10s(27)) # (!contador_10s(26))) # (!contador_10s(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_10s(25),
	datac => contador_10s(26),
	datad => contador_10s(27),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y16_N14
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!contador_10s(28) & (!contador_10s(30) & (\LessThan0~7_combout\ & !contador_10s(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(28),
	datab => contador_10s(30),
	datac => \LessThan0~7_combout\,
	datad => contador_10s(29),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X22_Y16_N26
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!contador_10s(16) & (!contador_10s(14) & ((!contador_10s(13)) # (!contador_10s(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(12),
	datab => contador_10s(16),
	datac => contador_10s(14),
	datad => contador_10s(13),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y16_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!contador_10s(16) & !contador_10s(15))) # (!contador_10s(17))) # (!contador_10s(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(18),
	datab => contador_10s(16),
	datac => contador_10s(15),
	datad => contador_10s(17),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y16_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!contador_10s(19) & (!contador_10s(20) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(19),
	datab => contador_10s(20),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y17_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!contador_10s(10) & (((!contador_10s(8) & !contador_10s(7))) # (!contador_10s(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(8),
	datab => contador_10s(7),
	datac => contador_10s(9),
	datad => contador_10s(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y16_N12
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!contador_10s(11) & (!contador_10s(16) & (!contador_10s(14) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(11),
	datab => contador_10s(16),
	datac => contador_10s(14),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y16_N10
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~1_combout\ & ((\LessThan0~4_combout\) # ((\LessThan0~5_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y16_N18
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (contador_10s(31)) # ((\LessThan0~9_combout\) # ((\LessThan0~8_combout\) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_10s(31),
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X21_Y16_N14
\Selector34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (\estado.CONTANDO_ABRIR~q\ & (!\sensor_in~input_o\ & !\LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CONTANDO_ABRIR~q\,
	datac => \sensor_in~input_o\,
	datad => \LessThan0~10_combout\,
	combout => \Selector34~2_combout\);

-- Location: LCCOMB_X22_Y16_N24
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\LessThan0~10_combout\ & ((\sensor_in~input_o\ & (\estado.CONTANDO_ABRIR~q\)) # (!\sensor_in~input_o\ & ((\estado.CONTANDO_CERRAR~q\))))) # (!\LessThan0~10_combout\ & (\estado.CONTANDO_ABRIR~q\ $ 
-- (((\estado.CONTANDO_CERRAR~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CONTANDO_ABRIR~q\,
	datab => \sensor_in~input_o\,
	datac => \estado.CONTANDO_CERRAR~q\,
	datad => \LessThan0~10_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\Selector34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\estado.ABIERTO~q\ & (((\Selector34~0_combout\) # (!\sensor_in~input_o\)))) # (!\estado.ABIERTO~q\ & (!\sensor_in~input_o\ & (\estado.CERRADO~q\ $ (!\Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.ABIERTO~q\,
	datab => \estado.CERRADO~q\,
	datac => \sensor_in~input_o\,
	datad => \Selector34~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X22_Y16_N2
\Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = \Selector34~0_combout\ $ (((\estado.ABIERTO~q\) # ((!\sensor_in~input_o\ & \estado.CERRADO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_in~input_o\,
	datab => \estado.CERRADO~q\,
	datac => \estado.ABIERTO~q\,
	datad => \Selector34~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Selector32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\sensor_in~input_o\ & (((!\LessThan0~10_combout\ & \estado.CONTANDO_CERRAR~q\)) # (!\Selector32~1_combout\))) # (!\sensor_in~input_o\ & (((\estado.CONTANDO_CERRAR~q\) # (\Selector32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_in~input_o\,
	datab => \LessThan0~10_combout\,
	datac => \estado.CONTANDO_CERRAR~q\,
	datad => \Selector32~1_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X22_Y16_N4
\Selector34~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~3_combout\ = (\Selector32~2_combout\ & ((\Selector34~1_combout\))) # (!\Selector32~2_combout\ & (\Selector34~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~2_combout\,
	datac => \Selector34~1_combout\,
	datad => \Selector32~2_combout\,
	combout => \Selector34~3_combout\);

-- Location: FF_X22_Y16_N5
\estado.ABIERTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ABIERTO~q\);

-- Location: LCCOMB_X22_Y15_N22
\Selector33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\sensor_in~input_o\ & ((!\estado.ABIERTO~q\))) # (!\sensor_in~input_o\ & (\estado.CERRADO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CERRADO~q\,
	datac => \estado.ABIERTO~q\,
	datad => \sensor_in~input_o\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Selector33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\Selector33~0_combout\ & ((\contador_10s[17]~32_combout\) # ((!\estado.CONTANDO_ABRIR~q\ & !\estado.CONTANDO_CERRAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \estado.CONTANDO_ABRIR~q\,
	datac => \estado.CONTANDO_CERRAR~q\,
	datad => \contador_10s[17]~32_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Selector33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Selector33~1_combout\ & (((\estado.CONTANDO_ABRIR~q\)))) # (!\Selector33~1_combout\ & (!\estado.CERRADO~q\ & (!\sensor_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CERRADO~q\,
	datab => \sensor_in~input_o\,
	datac => \estado.CONTANDO_ABRIR~q\,
	datad => \Selector33~1_combout\,
	combout => \Selector33~2_combout\);

-- Location: FF_X22_Y15_N1
\estado.CONTANDO_ABRIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CONTANDO_ABRIR~q\);

-- Location: LCCOMB_X21_Y16_N22
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\estado.CERRADO~q\ & (\sensor_in~input_o\ & (\estado.ABIERTO~q\ $ (\Selector34~0_combout\)))) # (!\estado.CERRADO~q\ & ((\sensor_in~input_o\) # (\estado.ABIERTO~q\ $ (\Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.ABIERTO~q\,
	datab => \estado.CERRADO~q\,
	datac => \sensor_in~input_o\,
	datad => \Selector34~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X21_Y16_N24
\Selector32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\Selector32~2_combout\ & (((!\Selector32~0_combout\)))) # (!\Selector32~2_combout\ & (((!\sensor_in~input_o\)) # (!\estado.CONTANDO_ABRIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.CONTANDO_ABRIR~q\,
	datab => \sensor_in~input_o\,
	datac => \Selector32~0_combout\,
	datad => \Selector32~2_combout\,
	combout => \Selector32~3_combout\);

-- Location: FF_X21_Y16_N25
\estado.CERRADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CERRADO~q\);

-- Location: LCCOMB_X21_Y16_N10
\control_puerta_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puerta_int~0_combout\ = (\estado.CERRADO~q\ & !\estado.CONTANDO_ABRIR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.CERRADO~q\,
	datad => \estado.CONTANDO_ABRIR~q\,
	combout => \control_puerta_int~0_combout\);

-- Location: FF_X21_Y16_N11
\control_puerta_int~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puerta_int~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puerta_int~reg0_q\);

ww_control_puerta_int <= \control_puerta_int~output_o\;
END structure;


