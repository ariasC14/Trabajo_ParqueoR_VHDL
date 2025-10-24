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

-- DATE "10/21/2025 11:52:47"

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

ENTITY 	servomotor IS
    PORT (
	clk : IN std_logic;
	control : IN std_logic;
	servo : BUFFER std_logic
	);
END servomotor;

-- Design Ports Information
-- servo	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF servomotor IS
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
SIGNAL ww_control : std_logic;
SIGNAL ww_servo : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \servo~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pwm_cnt[0]~32_combout\ : std_logic;
SIGNAL \pwm_cnt[18]~69\ : std_logic;
SIGNAL \pwm_cnt[19]~70_combout\ : std_logic;
SIGNAL \pwm_cnt[19]~71\ : std_logic;
SIGNAL \pwm_cnt[20]~72_combout\ : std_logic;
SIGNAL \pwm_cnt[20]~73\ : std_logic;
SIGNAL \pwm_cnt[21]~74_combout\ : std_logic;
SIGNAL \pwm_cnt[21]~75\ : std_logic;
SIGNAL \pwm_cnt[22]~76_combout\ : std_logic;
SIGNAL \pwm_cnt[22]~77\ : std_logic;
SIGNAL \pwm_cnt[23]~78_combout\ : std_logic;
SIGNAL \pwm_cnt[23]~79\ : std_logic;
SIGNAL \pwm_cnt[24]~80_combout\ : std_logic;
SIGNAL \pwm_cnt[24]~81\ : std_logic;
SIGNAL \pwm_cnt[25]~82_combout\ : std_logic;
SIGNAL \pwm_cnt[25]~83\ : std_logic;
SIGNAL \pwm_cnt[26]~84_combout\ : std_logic;
SIGNAL \pwm_cnt[26]~85\ : std_logic;
SIGNAL \pwm_cnt[27]~86_combout\ : std_logic;
SIGNAL \pwm_cnt[27]~87\ : std_logic;
SIGNAL \pwm_cnt[28]~88_combout\ : std_logic;
SIGNAL \pwm_cnt[28]~89\ : std_logic;
SIGNAL \pwm_cnt[29]~90_combout\ : std_logic;
SIGNAL \pwm_cnt[29]~91\ : std_logic;
SIGNAL \pwm_cnt[30]~92_combout\ : std_logic;
SIGNAL \pwm_cnt[30]~93\ : std_logic;
SIGNAL \pwm_cnt[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \pwm_cnt[0]~33\ : std_logic;
SIGNAL \pwm_cnt[1]~34_combout\ : std_logic;
SIGNAL \pwm_cnt[1]~35\ : std_logic;
SIGNAL \pwm_cnt[2]~36_combout\ : std_logic;
SIGNAL \pwm_cnt[2]~37\ : std_logic;
SIGNAL \pwm_cnt[3]~38_combout\ : std_logic;
SIGNAL \pwm_cnt[3]~39\ : std_logic;
SIGNAL \pwm_cnt[4]~40_combout\ : std_logic;
SIGNAL \pwm_cnt[4]~41\ : std_logic;
SIGNAL \pwm_cnt[5]~42_combout\ : std_logic;
SIGNAL \pwm_cnt[5]~43\ : std_logic;
SIGNAL \pwm_cnt[6]~44_combout\ : std_logic;
SIGNAL \pwm_cnt[6]~45\ : std_logic;
SIGNAL \pwm_cnt[7]~46_combout\ : std_logic;
SIGNAL \pwm_cnt[7]~47\ : std_logic;
SIGNAL \pwm_cnt[8]~48_combout\ : std_logic;
SIGNAL \pwm_cnt[8]~49\ : std_logic;
SIGNAL \pwm_cnt[9]~50_combout\ : std_logic;
SIGNAL \pwm_cnt[9]~51\ : std_logic;
SIGNAL \pwm_cnt[10]~52_combout\ : std_logic;
SIGNAL \pwm_cnt[10]~53\ : std_logic;
SIGNAL \pwm_cnt[11]~54_combout\ : std_logic;
SIGNAL \pwm_cnt[11]~55\ : std_logic;
SIGNAL \pwm_cnt[12]~56_combout\ : std_logic;
SIGNAL \pwm_cnt[12]~57\ : std_logic;
SIGNAL \pwm_cnt[13]~58_combout\ : std_logic;
SIGNAL \pwm_cnt[13]~59\ : std_logic;
SIGNAL \pwm_cnt[14]~60_combout\ : std_logic;
SIGNAL \pwm_cnt[14]~61\ : std_logic;
SIGNAL \pwm_cnt[15]~62_combout\ : std_logic;
SIGNAL \pwm_cnt[15]~63\ : std_logic;
SIGNAL \pwm_cnt[16]~64_combout\ : std_logic;
SIGNAL \pwm_cnt[16]~65\ : std_logic;
SIGNAL \pwm_cnt[17]~66_combout\ : std_logic;
SIGNAL \pwm_cnt[17]~67\ : std_logic;
SIGNAL \pwm_cnt[18]~68_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \pulse_width[12]~feeder_combout\ : std_logic;
SIGNAL \control~input_o\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \pulse_width[14]~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \servo~reg0_q\ : std_logic;
SIGNAL pwm_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL pulse_width : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_control <= control;
servo <= ww_servo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X9_Y0_N23
\servo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \servo~reg0_q\,
	devoe => ww_devoe,
	o => \servo~output_o\);

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

-- Location: LCCOMB_X31_Y16_N0
\pwm_cnt[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[0]~32_combout\ = pwm_cnt(0) $ (VCC)
-- \pwm_cnt[0]~33\ = CARRY(pwm_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(0),
	datad => VCC,
	combout => \pwm_cnt[0]~32_combout\,
	cout => \pwm_cnt[0]~33\);

-- Location: LCCOMB_X31_Y15_N4
\pwm_cnt[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[18]~68_combout\ = (pwm_cnt(18) & (\pwm_cnt[17]~67\ $ (GND))) # (!pwm_cnt(18) & (!\pwm_cnt[17]~67\ & VCC))
-- \pwm_cnt[18]~69\ = CARRY((pwm_cnt(18) & !\pwm_cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(18),
	datad => VCC,
	cin => \pwm_cnt[17]~67\,
	combout => \pwm_cnt[18]~68_combout\,
	cout => \pwm_cnt[18]~69\);

-- Location: LCCOMB_X31_Y15_N6
\pwm_cnt[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[19]~70_combout\ = (pwm_cnt(19) & (!\pwm_cnt[18]~69\)) # (!pwm_cnt(19) & ((\pwm_cnt[18]~69\) # (GND)))
-- \pwm_cnt[19]~71\ = CARRY((!\pwm_cnt[18]~69\) # (!pwm_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(19),
	datad => VCC,
	cin => \pwm_cnt[18]~69\,
	combout => \pwm_cnt[19]~70_combout\,
	cout => \pwm_cnt[19]~71\);

-- Location: FF_X31_Y15_N7
\pwm_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[19]~70_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(19));

-- Location: LCCOMB_X31_Y15_N8
\pwm_cnt[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[20]~72_combout\ = (pwm_cnt(20) & (\pwm_cnt[19]~71\ $ (GND))) # (!pwm_cnt(20) & (!\pwm_cnt[19]~71\ & VCC))
-- \pwm_cnt[20]~73\ = CARRY((pwm_cnt(20) & !\pwm_cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(20),
	datad => VCC,
	cin => \pwm_cnt[19]~71\,
	combout => \pwm_cnt[20]~72_combout\,
	cout => \pwm_cnt[20]~73\);

-- Location: FF_X31_Y15_N9
\pwm_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[20]~72_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(20));

-- Location: LCCOMB_X31_Y15_N10
\pwm_cnt[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[21]~74_combout\ = (pwm_cnt(21) & (!\pwm_cnt[20]~73\)) # (!pwm_cnt(21) & ((\pwm_cnt[20]~73\) # (GND)))
-- \pwm_cnt[21]~75\ = CARRY((!\pwm_cnt[20]~73\) # (!pwm_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(21),
	datad => VCC,
	cin => \pwm_cnt[20]~73\,
	combout => \pwm_cnt[21]~74_combout\,
	cout => \pwm_cnt[21]~75\);

-- Location: FF_X31_Y15_N11
\pwm_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[21]~74_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(21));

-- Location: LCCOMB_X31_Y15_N12
\pwm_cnt[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[22]~76_combout\ = (pwm_cnt(22) & (\pwm_cnt[21]~75\ $ (GND))) # (!pwm_cnt(22) & (!\pwm_cnt[21]~75\ & VCC))
-- \pwm_cnt[22]~77\ = CARRY((pwm_cnt(22) & !\pwm_cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(22),
	datad => VCC,
	cin => \pwm_cnt[21]~75\,
	combout => \pwm_cnt[22]~76_combout\,
	cout => \pwm_cnt[22]~77\);

-- Location: FF_X31_Y15_N13
\pwm_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[22]~76_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(22));

-- Location: LCCOMB_X31_Y15_N14
\pwm_cnt[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[23]~78_combout\ = (pwm_cnt(23) & (!\pwm_cnt[22]~77\)) # (!pwm_cnt(23) & ((\pwm_cnt[22]~77\) # (GND)))
-- \pwm_cnt[23]~79\ = CARRY((!\pwm_cnt[22]~77\) # (!pwm_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(23),
	datad => VCC,
	cin => \pwm_cnt[22]~77\,
	combout => \pwm_cnt[23]~78_combout\,
	cout => \pwm_cnt[23]~79\);

-- Location: FF_X31_Y15_N15
\pwm_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[23]~78_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(23));

-- Location: LCCOMB_X31_Y15_N16
\pwm_cnt[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[24]~80_combout\ = (pwm_cnt(24) & (\pwm_cnt[23]~79\ $ (GND))) # (!pwm_cnt(24) & (!\pwm_cnt[23]~79\ & VCC))
-- \pwm_cnt[24]~81\ = CARRY((pwm_cnt(24) & !\pwm_cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(24),
	datad => VCC,
	cin => \pwm_cnt[23]~79\,
	combout => \pwm_cnt[24]~80_combout\,
	cout => \pwm_cnt[24]~81\);

-- Location: FF_X31_Y15_N17
\pwm_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[24]~80_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(24));

-- Location: LCCOMB_X31_Y15_N18
\pwm_cnt[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[25]~82_combout\ = (pwm_cnt(25) & (!\pwm_cnt[24]~81\)) # (!pwm_cnt(25) & ((\pwm_cnt[24]~81\) # (GND)))
-- \pwm_cnt[25]~83\ = CARRY((!\pwm_cnt[24]~81\) # (!pwm_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(25),
	datad => VCC,
	cin => \pwm_cnt[24]~81\,
	combout => \pwm_cnt[25]~82_combout\,
	cout => \pwm_cnt[25]~83\);

-- Location: FF_X31_Y15_N19
\pwm_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[25]~82_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(25));

-- Location: LCCOMB_X31_Y15_N20
\pwm_cnt[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[26]~84_combout\ = (pwm_cnt(26) & (\pwm_cnt[25]~83\ $ (GND))) # (!pwm_cnt(26) & (!\pwm_cnt[25]~83\ & VCC))
-- \pwm_cnt[26]~85\ = CARRY((pwm_cnt(26) & !\pwm_cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(26),
	datad => VCC,
	cin => \pwm_cnt[25]~83\,
	combout => \pwm_cnt[26]~84_combout\,
	cout => \pwm_cnt[26]~85\);

-- Location: FF_X31_Y15_N21
\pwm_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[26]~84_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(26));

-- Location: LCCOMB_X31_Y15_N22
\pwm_cnt[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[27]~86_combout\ = (pwm_cnt(27) & (!\pwm_cnt[26]~85\)) # (!pwm_cnt(27) & ((\pwm_cnt[26]~85\) # (GND)))
-- \pwm_cnt[27]~87\ = CARRY((!\pwm_cnt[26]~85\) # (!pwm_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(27),
	datad => VCC,
	cin => \pwm_cnt[26]~85\,
	combout => \pwm_cnt[27]~86_combout\,
	cout => \pwm_cnt[27]~87\);

-- Location: FF_X31_Y15_N23
\pwm_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[27]~86_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(27));

-- Location: LCCOMB_X31_Y15_N24
\pwm_cnt[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[28]~88_combout\ = (pwm_cnt(28) & (\pwm_cnt[27]~87\ $ (GND))) # (!pwm_cnt(28) & (!\pwm_cnt[27]~87\ & VCC))
-- \pwm_cnt[28]~89\ = CARRY((pwm_cnt(28) & !\pwm_cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(28),
	datad => VCC,
	cin => \pwm_cnt[27]~87\,
	combout => \pwm_cnt[28]~88_combout\,
	cout => \pwm_cnt[28]~89\);

-- Location: FF_X31_Y15_N25
\pwm_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[28]~88_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(28));

-- Location: LCCOMB_X31_Y15_N26
\pwm_cnt[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[29]~90_combout\ = (pwm_cnt(29) & (!\pwm_cnt[28]~89\)) # (!pwm_cnt(29) & ((\pwm_cnt[28]~89\) # (GND)))
-- \pwm_cnt[29]~91\ = CARRY((!\pwm_cnt[28]~89\) # (!pwm_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(29),
	datad => VCC,
	cin => \pwm_cnt[28]~89\,
	combout => \pwm_cnt[29]~90_combout\,
	cout => \pwm_cnt[29]~91\);

-- Location: FF_X31_Y15_N27
\pwm_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[29]~90_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(29));

-- Location: LCCOMB_X31_Y15_N28
\pwm_cnt[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[30]~92_combout\ = (pwm_cnt(30) & (\pwm_cnt[29]~91\ $ (GND))) # (!pwm_cnt(30) & (!\pwm_cnt[29]~91\ & VCC))
-- \pwm_cnt[30]~93\ = CARRY((pwm_cnt(30) & !\pwm_cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(30),
	datad => VCC,
	cin => \pwm_cnt[29]~91\,
	combout => \pwm_cnt[30]~92_combout\,
	cout => \pwm_cnt[30]~93\);

-- Location: FF_X31_Y15_N29
\pwm_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[30]~92_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(30));

-- Location: LCCOMB_X31_Y15_N30
\pwm_cnt[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[31]~94_combout\ = pwm_cnt(31) $ (\pwm_cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(31),
	cin => \pwm_cnt[30]~93\,
	combout => \pwm_cnt[31]~94_combout\);

-- Location: FF_X31_Y15_N31
\pwm_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[31]~94_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(31));

-- Location: LCCOMB_X30_Y16_N14
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!pwm_cnt(10) & (!pwm_cnt(11) & (!pwm_cnt(12) & !pwm_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(10),
	datab => pwm_cnt(11),
	datac => pwm_cnt(12),
	datad => pwm_cnt(13),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y16_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!pwm_cnt(15) & (((!pwm_cnt(9) & \LessThan0~4_combout\)) # (!pwm_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(15),
	datab => pwm_cnt(9),
	datac => \LessThan0~4_combout\,
	datad => pwm_cnt(14),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X30_Y16_N12
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!pwm_cnt(6) & (!pwm_cnt(8) & (!pwm_cnt(15) & !pwm_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(6),
	datab => pwm_cnt(8),
	datac => pwm_cnt(15),
	datad => pwm_cnt(7),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X30_Y16_N22
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (((!pwm_cnt(19)) # (!pwm_cnt(17))) # (!pwm_cnt(16))) # (!pwm_cnt(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(18),
	datab => pwm_cnt(16),
	datac => pwm_cnt(17),
	datad => pwm_cnt(19),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y16_N20
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (((!pwm_cnt(5)) # (!pwm_cnt(4))) # (!pwm_cnt(1))) # (!pwm_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(2),
	datab => pwm_cnt(1),
	datac => pwm_cnt(4),
	datad => pwm_cnt(5),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y16_N2
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((\LessThan0~7_combout\) # (!pwm_cnt(0))) # (!pwm_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(3),
	datac => pwm_cnt(0),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y16_N26
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~6_combout\) # ((\LessThan0~9_combout\ & (\LessThan0~4_combout\ & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X30_Y16_N8
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!pwm_cnt(23) & (!pwm_cnt(20) & (!pwm_cnt(22) & !pwm_cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(23),
	datab => pwm_cnt(20),
	datac => pwm_cnt(22),
	datad => pwm_cnt(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y16_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!pwm_cnt(24) & (!pwm_cnt(27) & (!pwm_cnt(26) & !pwm_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(24),
	datab => pwm_cnt(27),
	datac => pwm_cnt(26),
	datad => pwm_cnt(25),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y16_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!pwm_cnt(28) & (!pwm_cnt(29) & !pwm_cnt(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(28),
	datac => pwm_cnt(29),
	datad => pwm_cnt(30),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y16_N10
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y16_N28
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = (!pwm_cnt(31) & (((!\LessThan0~5_combout\ & !\LessThan0~10_combout\)) # (!\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(31),
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~10_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~11_combout\);

-- Location: FF_X31_Y16_N1
\pwm_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[0]~32_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(0));

-- Location: LCCOMB_X31_Y16_N2
\pwm_cnt[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[1]~34_combout\ = (pwm_cnt(1) & (!\pwm_cnt[0]~33\)) # (!pwm_cnt(1) & ((\pwm_cnt[0]~33\) # (GND)))
-- \pwm_cnt[1]~35\ = CARRY((!\pwm_cnt[0]~33\) # (!pwm_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(1),
	datad => VCC,
	cin => \pwm_cnt[0]~33\,
	combout => \pwm_cnt[1]~34_combout\,
	cout => \pwm_cnt[1]~35\);

-- Location: FF_X31_Y16_N3
\pwm_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[1]~34_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(1));

-- Location: LCCOMB_X31_Y16_N4
\pwm_cnt[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[2]~36_combout\ = (pwm_cnt(2) & (\pwm_cnt[1]~35\ $ (GND))) # (!pwm_cnt(2) & (!\pwm_cnt[1]~35\ & VCC))
-- \pwm_cnt[2]~37\ = CARRY((pwm_cnt(2) & !\pwm_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(2),
	datad => VCC,
	cin => \pwm_cnt[1]~35\,
	combout => \pwm_cnt[2]~36_combout\,
	cout => \pwm_cnt[2]~37\);

-- Location: FF_X31_Y16_N5
\pwm_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[2]~36_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(2));

-- Location: LCCOMB_X31_Y16_N6
\pwm_cnt[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[3]~38_combout\ = (pwm_cnt(3) & (!\pwm_cnt[2]~37\)) # (!pwm_cnt(3) & ((\pwm_cnt[2]~37\) # (GND)))
-- \pwm_cnt[3]~39\ = CARRY((!\pwm_cnt[2]~37\) # (!pwm_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(3),
	datad => VCC,
	cin => \pwm_cnt[2]~37\,
	combout => \pwm_cnt[3]~38_combout\,
	cout => \pwm_cnt[3]~39\);

-- Location: FF_X31_Y16_N7
\pwm_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[3]~38_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(3));

-- Location: LCCOMB_X31_Y16_N8
\pwm_cnt[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[4]~40_combout\ = (pwm_cnt(4) & (\pwm_cnt[3]~39\ $ (GND))) # (!pwm_cnt(4) & (!\pwm_cnt[3]~39\ & VCC))
-- \pwm_cnt[4]~41\ = CARRY((pwm_cnt(4) & !\pwm_cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(4),
	datad => VCC,
	cin => \pwm_cnt[3]~39\,
	combout => \pwm_cnt[4]~40_combout\,
	cout => \pwm_cnt[4]~41\);

-- Location: FF_X31_Y16_N9
\pwm_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[4]~40_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(4));

-- Location: LCCOMB_X31_Y16_N10
\pwm_cnt[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[5]~42_combout\ = (pwm_cnt(5) & (!\pwm_cnt[4]~41\)) # (!pwm_cnt(5) & ((\pwm_cnt[4]~41\) # (GND)))
-- \pwm_cnt[5]~43\ = CARRY((!\pwm_cnt[4]~41\) # (!pwm_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(5),
	datad => VCC,
	cin => \pwm_cnt[4]~41\,
	combout => \pwm_cnt[5]~42_combout\,
	cout => \pwm_cnt[5]~43\);

-- Location: FF_X31_Y16_N11
\pwm_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[5]~42_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(5));

-- Location: LCCOMB_X31_Y16_N12
\pwm_cnt[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[6]~44_combout\ = (pwm_cnt(6) & (\pwm_cnt[5]~43\ $ (GND))) # (!pwm_cnt(6) & (!\pwm_cnt[5]~43\ & VCC))
-- \pwm_cnt[6]~45\ = CARRY((pwm_cnt(6) & !\pwm_cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(6),
	datad => VCC,
	cin => \pwm_cnt[5]~43\,
	combout => \pwm_cnt[6]~44_combout\,
	cout => \pwm_cnt[6]~45\);

-- Location: FF_X31_Y16_N13
\pwm_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[6]~44_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(6));

-- Location: LCCOMB_X31_Y16_N14
\pwm_cnt[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[7]~46_combout\ = (pwm_cnt(7) & (!\pwm_cnt[6]~45\)) # (!pwm_cnt(7) & ((\pwm_cnt[6]~45\) # (GND)))
-- \pwm_cnt[7]~47\ = CARRY((!\pwm_cnt[6]~45\) # (!pwm_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(7),
	datad => VCC,
	cin => \pwm_cnt[6]~45\,
	combout => \pwm_cnt[7]~46_combout\,
	cout => \pwm_cnt[7]~47\);

-- Location: FF_X31_Y16_N15
\pwm_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[7]~46_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(7));

-- Location: LCCOMB_X31_Y16_N16
\pwm_cnt[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[8]~48_combout\ = (pwm_cnt(8) & (\pwm_cnt[7]~47\ $ (GND))) # (!pwm_cnt(8) & (!\pwm_cnt[7]~47\ & VCC))
-- \pwm_cnt[8]~49\ = CARRY((pwm_cnt(8) & !\pwm_cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(8),
	datad => VCC,
	cin => \pwm_cnt[7]~47\,
	combout => \pwm_cnt[8]~48_combout\,
	cout => \pwm_cnt[8]~49\);

-- Location: FF_X31_Y16_N17
\pwm_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[8]~48_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(8));

-- Location: LCCOMB_X31_Y16_N18
\pwm_cnt[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[9]~50_combout\ = (pwm_cnt(9) & (!\pwm_cnt[8]~49\)) # (!pwm_cnt(9) & ((\pwm_cnt[8]~49\) # (GND)))
-- \pwm_cnt[9]~51\ = CARRY((!\pwm_cnt[8]~49\) # (!pwm_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(9),
	datad => VCC,
	cin => \pwm_cnt[8]~49\,
	combout => \pwm_cnt[9]~50_combout\,
	cout => \pwm_cnt[9]~51\);

-- Location: FF_X31_Y16_N19
\pwm_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[9]~50_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(9));

-- Location: LCCOMB_X31_Y16_N20
\pwm_cnt[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[10]~52_combout\ = (pwm_cnt(10) & (\pwm_cnt[9]~51\ $ (GND))) # (!pwm_cnt(10) & (!\pwm_cnt[9]~51\ & VCC))
-- \pwm_cnt[10]~53\ = CARRY((pwm_cnt(10) & !\pwm_cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(10),
	datad => VCC,
	cin => \pwm_cnt[9]~51\,
	combout => \pwm_cnt[10]~52_combout\,
	cout => \pwm_cnt[10]~53\);

-- Location: FF_X31_Y16_N21
\pwm_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[10]~52_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(10));

-- Location: LCCOMB_X31_Y16_N22
\pwm_cnt[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[11]~54_combout\ = (pwm_cnt(11) & (!\pwm_cnt[10]~53\)) # (!pwm_cnt(11) & ((\pwm_cnt[10]~53\) # (GND)))
-- \pwm_cnt[11]~55\ = CARRY((!\pwm_cnt[10]~53\) # (!pwm_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(11),
	datad => VCC,
	cin => \pwm_cnt[10]~53\,
	combout => \pwm_cnt[11]~54_combout\,
	cout => \pwm_cnt[11]~55\);

-- Location: FF_X31_Y16_N23
\pwm_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[11]~54_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(11));

-- Location: LCCOMB_X31_Y16_N24
\pwm_cnt[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[12]~56_combout\ = (pwm_cnt(12) & (\pwm_cnt[11]~55\ $ (GND))) # (!pwm_cnt(12) & (!\pwm_cnt[11]~55\ & VCC))
-- \pwm_cnt[12]~57\ = CARRY((pwm_cnt(12) & !\pwm_cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(12),
	datad => VCC,
	cin => \pwm_cnt[11]~55\,
	combout => \pwm_cnt[12]~56_combout\,
	cout => \pwm_cnt[12]~57\);

-- Location: FF_X31_Y16_N25
\pwm_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[12]~56_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(12));

-- Location: LCCOMB_X31_Y16_N26
\pwm_cnt[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[13]~58_combout\ = (pwm_cnt(13) & (!\pwm_cnt[12]~57\)) # (!pwm_cnt(13) & ((\pwm_cnt[12]~57\) # (GND)))
-- \pwm_cnt[13]~59\ = CARRY((!\pwm_cnt[12]~57\) # (!pwm_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(13),
	datad => VCC,
	cin => \pwm_cnt[12]~57\,
	combout => \pwm_cnt[13]~58_combout\,
	cout => \pwm_cnt[13]~59\);

-- Location: FF_X31_Y16_N27
\pwm_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[13]~58_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(13));

-- Location: LCCOMB_X31_Y16_N28
\pwm_cnt[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[14]~60_combout\ = (pwm_cnt(14) & (\pwm_cnt[13]~59\ $ (GND))) # (!pwm_cnt(14) & (!\pwm_cnt[13]~59\ & VCC))
-- \pwm_cnt[14]~61\ = CARRY((pwm_cnt(14) & !\pwm_cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(14),
	datad => VCC,
	cin => \pwm_cnt[13]~59\,
	combout => \pwm_cnt[14]~60_combout\,
	cout => \pwm_cnt[14]~61\);

-- Location: FF_X31_Y16_N29
\pwm_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[14]~60_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(14));

-- Location: LCCOMB_X31_Y16_N30
\pwm_cnt[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[15]~62_combout\ = (pwm_cnt(15) & (!\pwm_cnt[14]~61\)) # (!pwm_cnt(15) & ((\pwm_cnt[14]~61\) # (GND)))
-- \pwm_cnt[15]~63\ = CARRY((!\pwm_cnt[14]~61\) # (!pwm_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(15),
	datad => VCC,
	cin => \pwm_cnt[14]~61\,
	combout => \pwm_cnt[15]~62_combout\,
	cout => \pwm_cnt[15]~63\);

-- Location: FF_X31_Y16_N31
\pwm_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[15]~62_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(15));

-- Location: LCCOMB_X31_Y15_N0
\pwm_cnt[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[16]~64_combout\ = (pwm_cnt(16) & (\pwm_cnt[15]~63\ $ (GND))) # (!pwm_cnt(16) & (!\pwm_cnt[15]~63\ & VCC))
-- \pwm_cnt[16]~65\ = CARRY((pwm_cnt(16) & !\pwm_cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(16),
	datad => VCC,
	cin => \pwm_cnt[15]~63\,
	combout => \pwm_cnt[16]~64_combout\,
	cout => \pwm_cnt[16]~65\);

-- Location: FF_X31_Y15_N1
\pwm_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[16]~64_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(16));

-- Location: LCCOMB_X31_Y15_N2
\pwm_cnt[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_cnt[17]~66_combout\ = (pwm_cnt(17) & (!\pwm_cnt[16]~65\)) # (!pwm_cnt(17) & ((\pwm_cnt[16]~65\) # (GND)))
-- \pwm_cnt[17]~67\ = CARRY((!\pwm_cnt[16]~65\) # (!pwm_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(17),
	datad => VCC,
	cin => \pwm_cnt[16]~65\,
	combout => \pwm_cnt[17]~66_combout\,
	cout => \pwm_cnt[17]~67\);

-- Location: FF_X31_Y15_N3
\pwm_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[17]~66_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(17));

-- Location: FF_X31_Y15_N5
\pwm_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_cnt[18]~68_combout\,
	sclr => \LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_cnt(18));

-- Location: LCCOMB_X30_Y16_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!pwm_cnt(18) & (!pwm_cnt(19) & (!pwm_cnt(17) & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(18),
	datab => pwm_cnt(19),
	datac => pwm_cnt(17),
	datad => \LessThan0~3_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\pulse_width[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pulse_width[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \pulse_width[12]~feeder_combout\);

-- Location: FF_X30_Y17_N21
\pulse_width[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_width[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_width(12));

-- Location: IOIBUF_X0_Y24_N1
\control~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control,
	o => \control~input_o\);

-- Location: FF_X31_Y17_N11
\pulse_width[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \control~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_width(10));

-- Location: LCCOMB_X30_Y17_N26
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (pulse_width(12) & (pulse_width(10) $ (!pwm_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pulse_width(12),
	datac => pulse_width(10),
	datad => pwm_cnt(16),
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X31_Y17_N6
\pulse_width[14]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pulse_width[14]~0_combout\ = !\control~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~input_o\,
	combout => \pulse_width[14]~0_combout\);

-- Location: FF_X31_Y17_N7
\pulse_width[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_width[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_width(14));

-- Location: LCCOMB_X31_Y17_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (pulse_width(14) & (pwm_cnt(14) & (pulse_width(12) $ (!pwm_cnt(15))))) # (!pulse_width(14) & (!pwm_cnt(14) & (pulse_width(12) $ (!pwm_cnt(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(14),
	datab => pwm_cnt(14),
	datac => pulse_width(12),
	datad => pwm_cnt(15),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y17_N8
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = ((!pwm_cnt(12) & (!pwm_cnt(13) & \LessThan1~1_combout\))) # (!pwm_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(12),
	datab => pwm_cnt(15),
	datac => pwm_cnt(13),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~13_combout\);

-- Location: LCCOMB_X31_Y17_N28
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = (pulse_width(10) & (pwm_cnt(16) & (pwm_cnt(15) $ (!pulse_width(12))))) # (!pulse_width(10) & (!pwm_cnt(16) & (pwm_cnt(15) $ (!pulse_width(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(10),
	datab => pwm_cnt(15),
	datac => pwm_cnt(16),
	datad => pulse_width(12),
	combout => \LessThan1~11_combout\);

-- Location: LCCOMB_X31_Y17_N26
\LessThan1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = (pulse_width(14) & (!pwm_cnt(14) & \LessThan1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(14),
	datab => pwm_cnt(14),
	datad => \LessThan1~11_combout\,
	combout => \LessThan1~12_combout\);

-- Location: LCCOMB_X31_Y17_N10
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (pwm_cnt(16) & (pulse_width(10) & (pulse_width(12) $ (!pwm_cnt(12))))) # (!pwm_cnt(16) & (!pulse_width(10) & (pulse_width(12) $ (!pwm_cnt(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(16),
	datab => pulse_width(12),
	datac => pulse_width(10),
	datad => pwm_cnt(12),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y17_N16
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!pwm_cnt(13) & (!pwm_cnt(11) & (\LessThan1~2_combout\ & \LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(13),
	datab => pwm_cnt(11),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y17_N2
\LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (pulse_width(10) & (((!pwm_cnt(10) & \LessThan1~3_combout\)) # (!pwm_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(10),
	datab => pwm_cnt(10),
	datac => pwm_cnt(16),
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X31_Y17_N30
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = (\LessThan1~12_combout\) # ((\LessThan1~10_combout\) # ((\LessThan1~14_combout\ & \LessThan1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \LessThan1~13_combout\,
	datac => \LessThan1~12_combout\,
	datad => \LessThan1~10_combout\,
	combout => \LessThan1~15_combout\);

-- Location: LCCOMB_X31_Y17_N14
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!pwm_cnt(6) & pulse_width(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pwm_cnt(6),
	datad => pulse_width(12),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y17_N4
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (pulse_width(14) & (((\LessThan1~4_combout\) # (!pwm_cnt(7))) # (!pwm_cnt(8)))) # (!pulse_width(14) & (!pwm_cnt(8) & (\LessThan1~4_combout\ & !pwm_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(14),
	datab => pwm_cnt(8),
	datac => \LessThan1~4_combout\,
	datad => pwm_cnt(7),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y17_N22
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (pulse_width(14) & (pwm_cnt(7) & (pulse_width(12) $ (!pwm_cnt(6))))) # (!pulse_width(14) & (!pwm_cnt(7) & (pulse_width(12) $ (!pwm_cnt(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(14),
	datab => pulse_width(12),
	datac => pwm_cnt(6),
	datad => pwm_cnt(7),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X32_Y16_N0
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!pwm_cnt(3) & ((!pwm_cnt(1)) # (!pwm_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_cnt(3),
	datac => pwm_cnt(2),
	datad => pwm_cnt(1),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X32_Y16_N18
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = ((\LessThan1~6_combout\) # (!pwm_cnt(4))) # (!pwm_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_cnt(5),
	datac => pwm_cnt(4),
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X31_Y17_N12
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = (pulse_width(14) & (pwm_cnt(8) & (\LessThan1~8_combout\ & \LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(14),
	datab => pwm_cnt(8),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~17_combout\);

-- Location: LCCOMB_X31_Y17_N18
\LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (pulse_width(10) & (((\LessThan1~5_combout\) # (\LessThan1~17_combout\)) # (!pwm_cnt(9)))) # (!pulse_width(10) & (!pwm_cnt(9) & ((\LessThan1~5_combout\) # (\LessThan1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(10),
	datab => pwm_cnt(9),
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~17_combout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X31_Y17_N24
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~3_combout\ & (\LessThan1~18_combout\ & (pulse_width(10) $ (!pwm_cnt(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_width(10),
	datab => \LessThan1~3_combout\,
	datac => pwm_cnt(10),
	datad => \LessThan1~18_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X31_Y17_N20
\LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (pwm_cnt(31)) # ((\LessThan1~0_combout\ & ((\LessThan1~15_combout\) # (\LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => pwm_cnt(31),
	datac => \LessThan1~15_combout\,
	datad => \LessThan1~9_combout\,
	combout => \LessThan1~16_combout\);

-- Location: FF_X31_Y17_N21
\servo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \servo~reg0_q\);

ww_servo <= \servo~output_o\;
END structure;


