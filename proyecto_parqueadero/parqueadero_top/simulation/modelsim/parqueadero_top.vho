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

-- DATE "10/24/2025 13:45:13"

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

ENTITY 	contador_monedas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	pir_sensor : IN std_logic;
	sensor_500 : IN std_logic;
	sensor_1000 : IN std_logic;
	seg_unidades : OUT std_logic_vector(6 DOWNTO 0);
	seg_decenas : OUT std_logic_vector(6 DOWNTO 0);
	valor_bits : OUT std_logic_vector(7 DOWNTO 0)
	);
END contador_monedas;

-- Design Ports Information
-- seg_unidades[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_unidades[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_unidades[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_unidades[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_unidades[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_unidades[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_unidades[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_decenas[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_bits[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pir_sensor	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_1000	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_500	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_monedas IS
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
SIGNAL ww_pir_sensor : std_logic;
SIGNAL ww_sensor_500 : std_logic;
SIGNAL ww_sensor_1000 : std_logic;
SIGNAL ww_seg_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_valor_bits : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_unidades[0]~output_o\ : std_logic;
SIGNAL \seg_unidades[1]~output_o\ : std_logic;
SIGNAL \seg_unidades[2]~output_o\ : std_logic;
SIGNAL \seg_unidades[3]~output_o\ : std_logic;
SIGNAL \seg_unidades[4]~output_o\ : std_logic;
SIGNAL \seg_unidades[5]~output_o\ : std_logic;
SIGNAL \seg_unidades[6]~output_o\ : std_logic;
SIGNAL \seg_decenas[0]~output_o\ : std_logic;
SIGNAL \seg_decenas[1]~output_o\ : std_logic;
SIGNAL \seg_decenas[2]~output_o\ : std_logic;
SIGNAL \seg_decenas[3]~output_o\ : std_logic;
SIGNAL \seg_decenas[4]~output_o\ : std_logic;
SIGNAL \seg_decenas[5]~output_o\ : std_logic;
SIGNAL \seg_decenas[6]~output_o\ : std_logic;
SIGNAL \valor_bits[0]~output_o\ : std_logic;
SIGNAL \valor_bits[1]~output_o\ : std_logic;
SIGNAL \valor_bits[2]~output_o\ : std_logic;
SIGNAL \valor_bits[3]~output_o\ : std_logic;
SIGNAL \valor_bits[4]~output_o\ : std_logic;
SIGNAL \valor_bits[5]~output_o\ : std_logic;
SIGNAL \valor_bits[6]~output_o\ : std_logic;
SIGNAL \valor_bits[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador_total[1]~12_combout\ : std_logic;
SIGNAL \pir_sensor~input_o\ : std_logic;
SIGNAL \contador_total[4]~19\ : std_logic;
SIGNAL \contador_total[5]~20_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \contador_total[1]~8_combout\ : std_logic;
SIGNAL \sensor_1000~input_o\ : std_logic;
SIGNAL \debounce_counter_1000[0]~21_combout\ : std_logic;
SIGNAL \debounce_counter_1000[8]~47_combout\ : std_logic;
SIGNAL \debounce_counter_1000[0]~22\ : std_logic;
SIGNAL \debounce_counter_1000[1]~23_combout\ : std_logic;
SIGNAL \debounce_counter_1000[1]~24\ : std_logic;
SIGNAL \debounce_counter_1000[2]~25_combout\ : std_logic;
SIGNAL \debounce_counter_1000[2]~26\ : std_logic;
SIGNAL \debounce_counter_1000[3]~27_combout\ : std_logic;
SIGNAL \debounce_counter_1000[3]~28\ : std_logic;
SIGNAL \debounce_counter_1000[4]~29_combout\ : std_logic;
SIGNAL \debounce_counter_1000[4]~30\ : std_logic;
SIGNAL \debounce_counter_1000[5]~31_combout\ : std_logic;
SIGNAL \debounce_counter_1000[5]~32\ : std_logic;
SIGNAL \debounce_counter_1000[6]~33_combout\ : std_logic;
SIGNAL \debounce_counter_1000[6]~34\ : std_logic;
SIGNAL \debounce_counter_1000[7]~35_combout\ : std_logic;
SIGNAL \debounce_counter_1000[7]~36\ : std_logic;
SIGNAL \debounce_counter_1000[8]~37_combout\ : std_logic;
SIGNAL \debounce_counter_1000[8]~38\ : std_logic;
SIGNAL \debounce_counter_1000[9]~39_combout\ : std_logic;
SIGNAL \debounce_counter_1000[9]~40\ : std_logic;
SIGNAL \debounce_counter_1000[10]~41_combout\ : std_logic;
SIGNAL \debounce_counter_1000[10]~42\ : std_logic;
SIGNAL \debounce_counter_1000[11]~43_combout\ : std_logic;
SIGNAL \debounce_counter_1000[11]~44\ : std_logic;
SIGNAL \debounce_counter_1000[12]~45_combout\ : std_logic;
SIGNAL \debounce_counter_1000[12]~46\ : std_logic;
SIGNAL \debounce_counter_1000[13]~48_combout\ : std_logic;
SIGNAL \debounce_counter_1000[13]~49\ : std_logic;
SIGNAL \debounce_counter_1000[14]~50_combout\ : std_logic;
SIGNAL \debounce_counter_1000[14]~51\ : std_logic;
SIGNAL \debounce_counter_1000[15]~52_combout\ : std_logic;
SIGNAL \debounce_counter_1000[15]~53\ : std_logic;
SIGNAL \debounce_counter_1000[16]~54_combout\ : std_logic;
SIGNAL \debounce_counter_1000[16]~55\ : std_logic;
SIGNAL \debounce_counter_1000[17]~56_combout\ : std_logic;
SIGNAL \debounce_counter_1000[17]~57\ : std_logic;
SIGNAL \debounce_counter_1000[18]~58_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \debounce_counter_1000[18]~59\ : std_logic;
SIGNAL \debounce_counter_1000[19]~60_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \debounce_counter_1000[19]~61\ : std_logic;
SIGNAL \debounce_counter_1000[20]~62_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \sensor_1000_filtrado~0_combout\ : std_logic;
SIGNAL \sensor_1000_filtrado~q\ : std_logic;
SIGNAL \sensor_1000_prev~q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \contador_total[1]~26_combout\ : std_logic;
SIGNAL \contador_total[1]~27_combout\ : std_logic;
SIGNAL \sensor_500~input_o\ : std_logic;
SIGNAL \debounce_counter_500[0]~21_combout\ : std_logic;
SIGNAL \debounce_counter_500[1]~24\ : std_logic;
SIGNAL \debounce_counter_500[2]~25_combout\ : std_logic;
SIGNAL \debounce_counter_500[2]~26\ : std_logic;
SIGNAL \debounce_counter_500[3]~27_combout\ : std_logic;
SIGNAL \debounce_counter_500[3]~28\ : std_logic;
SIGNAL \debounce_counter_500[4]~29_combout\ : std_logic;
SIGNAL \debounce_counter_500[4]~30\ : std_logic;
SIGNAL \debounce_counter_500[5]~31_combout\ : std_logic;
SIGNAL \debounce_counter_500[5]~32\ : std_logic;
SIGNAL \debounce_counter_500[6]~33_combout\ : std_logic;
SIGNAL \debounce_counter_500[6]~34\ : std_logic;
SIGNAL \debounce_counter_500[7]~35_combout\ : std_logic;
SIGNAL \debounce_counter_500[7]~36\ : std_logic;
SIGNAL \debounce_counter_500[8]~37_combout\ : std_logic;
SIGNAL \debounce_counter_500[8]~38\ : std_logic;
SIGNAL \debounce_counter_500[9]~41_combout\ : std_logic;
SIGNAL \debounce_counter_500[9]~42\ : std_logic;
SIGNAL \debounce_counter_500[10]~43_combout\ : std_logic;
SIGNAL \debounce_counter_500[10]~44\ : std_logic;
SIGNAL \debounce_counter_500[11]~45_combout\ : std_logic;
SIGNAL \debounce_counter_500[11]~46\ : std_logic;
SIGNAL \debounce_counter_500[12]~47_combout\ : std_logic;
SIGNAL \debounce_counter_500[12]~48\ : std_logic;
SIGNAL \debounce_counter_500[13]~49_combout\ : std_logic;
SIGNAL \debounce_counter_500[13]~50\ : std_logic;
SIGNAL \debounce_counter_500[14]~51_combout\ : std_logic;
SIGNAL \debounce_counter_500[14]~52\ : std_logic;
SIGNAL \debounce_counter_500[15]~53_combout\ : std_logic;
SIGNAL \debounce_counter_500[15]~54\ : std_logic;
SIGNAL \debounce_counter_500[16]~55_combout\ : std_logic;
SIGNAL \debounce_counter_500[16]~56\ : std_logic;
SIGNAL \debounce_counter_500[17]~57_combout\ : std_logic;
SIGNAL \debounce_counter_500[17]~58\ : std_logic;
SIGNAL \debounce_counter_500[18]~59_combout\ : std_logic;
SIGNAL \debounce_counter_500[18]~60\ : std_logic;
SIGNAL \debounce_counter_500[19]~61_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \debounce_counter_500[19]~62\ : std_logic;
SIGNAL \debounce_counter_500[20]~63_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \debounce_counter_500[15]~39_combout\ : std_logic;
SIGNAL \debounce_counter_500[15]~40_combout\ : std_logic;
SIGNAL \debounce_counter_500[0]~22\ : std_logic;
SIGNAL \debounce_counter_500[1]~23_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \sensor_500_filtrado~0_combout\ : std_logic;
SIGNAL \sensor_500_filtrado~q\ : std_logic;
SIGNAL \sensor_500_prev~feeder_combout\ : std_logic;
SIGNAL \sensor_500_prev~q\ : std_logic;
SIGNAL \contador_total[6]~28_combout\ : std_logic;
SIGNAL \contador_total[5]~21\ : std_logic;
SIGNAL \contador_total[6]~22_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \contador_total[6]~23\ : std_logic;
SIGNAL \contador_total[7]~24_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \contador_total[0]~7_combout\ : std_logic;
SIGNAL \contador_total[0]~9_combout\ : std_logic;
SIGNAL \contador_total[0]~10_combout\ : std_logic;
SIGNAL \contador_total[0]~11_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \contador_total[1]~13\ : std_logic;
SIGNAL \contador_total[2]~14_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \contador_total[2]~15\ : std_logic;
SIGNAL \contador_total[3]~16_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \contador_total[3]~17\ : std_logic;
SIGNAL \contador_total[4]~18_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \temp[6]~0_combout\ : std_logic;
SIGNAL \temp[5]~1_combout\ : std_logic;
SIGNAL \temp[4]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL contador_total : std_logic_vector(7 DOWNTO 0);
SIGNAL debounce_counter_1000 : std_logic_vector(20 DOWNTO 0);
SIGNAL debounce_counter_500 : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_pir_sensor <= pir_sensor;
ww_sensor_500 <= sensor_500;
ww_sensor_1000 <= sensor_1000;
seg_unidades <= ww_seg_unidades;
seg_decenas <= ww_seg_decenas;
valor_bits <= ww_valor_bits;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X21_Y29_N2
\seg_unidades[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\seg_unidades[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\seg_unidades[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\seg_unidades[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\seg_unidades[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\seg_unidades[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\seg_unidades[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg_unidades[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\seg_decenas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\seg_decenas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\seg_decenas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\seg_decenas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\seg_decenas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\seg_decenas[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\seg_decenas[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \seg_decenas[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\valor_bits[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(0),
	devoe => ww_devoe,
	o => \valor_bits[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\valor_bits[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(1),
	devoe => ww_devoe,
	o => \valor_bits[1]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\valor_bits[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(2),
	devoe => ww_devoe,
	o => \valor_bits[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\valor_bits[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(3),
	devoe => ww_devoe,
	o => \valor_bits[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\valor_bits[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(4),
	devoe => ww_devoe,
	o => \valor_bits[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\valor_bits[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(5),
	devoe => ww_devoe,
	o => \valor_bits[5]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\valor_bits[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(6),
	devoe => ww_devoe,
	o => \valor_bits[6]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\valor_bits[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador_total(7),
	devoe => ww_devoe,
	o => \valor_bits[7]~output_o\);

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

-- Location: LCCOMB_X16_Y26_N18
\contador_total[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[1]~12_combout\ = contador_total(1) $ (VCC)
-- \contador_total[1]~13\ = CARRY(contador_total(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(1),
	datad => VCC,
	combout => \contador_total[1]~12_combout\,
	cout => \contador_total[1]~13\);

-- Location: IOIBUF_X3_Y0_N22
\pir_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pir_sensor,
	o => \pir_sensor~input_o\);

-- Location: LCCOMB_X16_Y26_N24
\contador_total[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[4]~18_combout\ = (contador_total(4) & (!\contador_total[3]~17\)) # (!contador_total(4) & ((\contador_total[3]~17\) # (GND)))
-- \contador_total[4]~19\ = CARRY((!\contador_total[3]~17\) # (!contador_total(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(4),
	datad => VCC,
	cin => \contador_total[3]~17\,
	combout => \contador_total[4]~18_combout\,
	cout => \contador_total[4]~19\);

-- Location: LCCOMB_X16_Y26_N26
\contador_total[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[5]~20_combout\ = (contador_total(5) & (\contador_total[4]~19\ $ (GND))) # (!contador_total(5) & (!\contador_total[4]~19\ & VCC))
-- \contador_total[5]~21\ = CARRY((contador_total(5) & !\contador_total[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(5),
	datad => VCC,
	cin => \contador_total[4]~19\,
	combout => \contador_total[5]~20_combout\,
	cout => \contador_total[5]~21\);

-- Location: LCCOMB_X16_Y26_N2
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (contador_total(1) & (!\Add2~1\)) # (!contador_total(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!contador_total(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X16_Y26_N4
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (contador_total(2) & ((GND) # (!\Add2~3\))) # (!contador_total(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((contador_total(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X16_Y26_N6
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (contador_total(3) & (!\Add2~5\)) # (!contador_total(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!contador_total(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X16_Y26_N8
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (contador_total(4) & (\Add2~7\ $ (GND))) # (!contador_total(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((contador_total(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X16_Y26_N10
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (contador_total(5) & (!\Add2~9\)) # (!contador_total(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!contador_total(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

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

-- Location: LCCOMB_X15_Y26_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (contador_total(0) & (contador_total(2) & contador_total(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(0),
	datac => contador_total(2),
	datad => contador_total(1),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y26_N10
\contador_total[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[1]~8_combout\ = (contador_total(3) & (contador_total(4) & ((contador_total(2)) # (contador_total(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(3),
	datab => contador_total(2),
	datac => contador_total(4),
	datad => contador_total(1),
	combout => \contador_total[1]~8_combout\);

-- Location: IOIBUF_X0_Y25_N22
\sensor_1000~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_1000,
	o => \sensor_1000~input_o\);

-- Location: LCCOMB_X15_Y28_N12
\debounce_counter_1000[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[0]~21_combout\ = debounce_counter_1000(0) $ (VCC)
-- \debounce_counter_1000[0]~22\ = CARRY(debounce_counter_1000(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(0),
	datad => VCC,
	combout => \debounce_counter_1000[0]~21_combout\,
	cout => \debounce_counter_1000[0]~22\);

-- Location: LCCOMB_X15_Y28_N2
\debounce_counter_1000[8]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[8]~47_combout\ = (\sensor_1000~input_o\ $ (\sensor_1000_filtrado~q\)) # (!\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sensor_1000~input_o\,
	datac => \sensor_1000_filtrado~q\,
	datad => \Equal1~6_combout\,
	combout => \debounce_counter_1000[8]~47_combout\);

-- Location: FF_X15_Y28_N13
\debounce_counter_1000[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[0]~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(0));

-- Location: LCCOMB_X15_Y28_N14
\debounce_counter_1000[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[1]~23_combout\ = (debounce_counter_1000(1) & (!\debounce_counter_1000[0]~22\)) # (!debounce_counter_1000(1) & ((\debounce_counter_1000[0]~22\) # (GND)))
-- \debounce_counter_1000[1]~24\ = CARRY((!\debounce_counter_1000[0]~22\) # (!debounce_counter_1000(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(1),
	datad => VCC,
	cin => \debounce_counter_1000[0]~22\,
	combout => \debounce_counter_1000[1]~23_combout\,
	cout => \debounce_counter_1000[1]~24\);

-- Location: FF_X15_Y28_N15
\debounce_counter_1000[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[1]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(1));

-- Location: LCCOMB_X15_Y28_N16
\debounce_counter_1000[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[2]~25_combout\ = (debounce_counter_1000(2) & (\debounce_counter_1000[1]~24\ $ (GND))) # (!debounce_counter_1000(2) & (!\debounce_counter_1000[1]~24\ & VCC))
-- \debounce_counter_1000[2]~26\ = CARRY((debounce_counter_1000(2) & !\debounce_counter_1000[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(2),
	datad => VCC,
	cin => \debounce_counter_1000[1]~24\,
	combout => \debounce_counter_1000[2]~25_combout\,
	cout => \debounce_counter_1000[2]~26\);

-- Location: FF_X15_Y28_N17
\debounce_counter_1000[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[2]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(2));

-- Location: LCCOMB_X15_Y28_N18
\debounce_counter_1000[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[3]~27_combout\ = (debounce_counter_1000(3) & (!\debounce_counter_1000[2]~26\)) # (!debounce_counter_1000(3) & ((\debounce_counter_1000[2]~26\) # (GND)))
-- \debounce_counter_1000[3]~28\ = CARRY((!\debounce_counter_1000[2]~26\) # (!debounce_counter_1000(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(3),
	datad => VCC,
	cin => \debounce_counter_1000[2]~26\,
	combout => \debounce_counter_1000[3]~27_combout\,
	cout => \debounce_counter_1000[3]~28\);

-- Location: FF_X15_Y28_N19
\debounce_counter_1000[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[3]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(3));

-- Location: LCCOMB_X15_Y28_N20
\debounce_counter_1000[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[4]~29_combout\ = (debounce_counter_1000(4) & (\debounce_counter_1000[3]~28\ $ (GND))) # (!debounce_counter_1000(4) & (!\debounce_counter_1000[3]~28\ & VCC))
-- \debounce_counter_1000[4]~30\ = CARRY((debounce_counter_1000(4) & !\debounce_counter_1000[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(4),
	datad => VCC,
	cin => \debounce_counter_1000[3]~28\,
	combout => \debounce_counter_1000[4]~29_combout\,
	cout => \debounce_counter_1000[4]~30\);

-- Location: FF_X15_Y28_N21
\debounce_counter_1000[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[4]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(4));

-- Location: LCCOMB_X15_Y28_N22
\debounce_counter_1000[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[5]~31_combout\ = (debounce_counter_1000(5) & (!\debounce_counter_1000[4]~30\)) # (!debounce_counter_1000(5) & ((\debounce_counter_1000[4]~30\) # (GND)))
-- \debounce_counter_1000[5]~32\ = CARRY((!\debounce_counter_1000[4]~30\) # (!debounce_counter_1000(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(5),
	datad => VCC,
	cin => \debounce_counter_1000[4]~30\,
	combout => \debounce_counter_1000[5]~31_combout\,
	cout => \debounce_counter_1000[5]~32\);

-- Location: FF_X15_Y28_N23
\debounce_counter_1000[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[5]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(5));

-- Location: LCCOMB_X15_Y28_N24
\debounce_counter_1000[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[6]~33_combout\ = (debounce_counter_1000(6) & (\debounce_counter_1000[5]~32\ $ (GND))) # (!debounce_counter_1000(6) & (!\debounce_counter_1000[5]~32\ & VCC))
-- \debounce_counter_1000[6]~34\ = CARRY((debounce_counter_1000(6) & !\debounce_counter_1000[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(6),
	datad => VCC,
	cin => \debounce_counter_1000[5]~32\,
	combout => \debounce_counter_1000[6]~33_combout\,
	cout => \debounce_counter_1000[6]~34\);

-- Location: FF_X15_Y28_N25
\debounce_counter_1000[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[6]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(6));

-- Location: LCCOMB_X15_Y28_N26
\debounce_counter_1000[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[7]~35_combout\ = (debounce_counter_1000(7) & (!\debounce_counter_1000[6]~34\)) # (!debounce_counter_1000(7) & ((\debounce_counter_1000[6]~34\) # (GND)))
-- \debounce_counter_1000[7]~36\ = CARRY((!\debounce_counter_1000[6]~34\) # (!debounce_counter_1000(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(7),
	datad => VCC,
	cin => \debounce_counter_1000[6]~34\,
	combout => \debounce_counter_1000[7]~35_combout\,
	cout => \debounce_counter_1000[7]~36\);

-- Location: FF_X15_Y28_N27
\debounce_counter_1000[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[7]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(7));

-- Location: LCCOMB_X15_Y28_N28
\debounce_counter_1000[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[8]~37_combout\ = (debounce_counter_1000(8) & (\debounce_counter_1000[7]~36\ $ (GND))) # (!debounce_counter_1000(8) & (!\debounce_counter_1000[7]~36\ & VCC))
-- \debounce_counter_1000[8]~38\ = CARRY((debounce_counter_1000(8) & !\debounce_counter_1000[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(8),
	datad => VCC,
	cin => \debounce_counter_1000[7]~36\,
	combout => \debounce_counter_1000[8]~37_combout\,
	cout => \debounce_counter_1000[8]~38\);

-- Location: FF_X15_Y28_N29
\debounce_counter_1000[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[8]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(8));

-- Location: LCCOMB_X15_Y28_N30
\debounce_counter_1000[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[9]~39_combout\ = (debounce_counter_1000(9) & (!\debounce_counter_1000[8]~38\)) # (!debounce_counter_1000(9) & ((\debounce_counter_1000[8]~38\) # (GND)))
-- \debounce_counter_1000[9]~40\ = CARRY((!\debounce_counter_1000[8]~38\) # (!debounce_counter_1000(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(9),
	datad => VCC,
	cin => \debounce_counter_1000[8]~38\,
	combout => \debounce_counter_1000[9]~39_combout\,
	cout => \debounce_counter_1000[9]~40\);

-- Location: FF_X15_Y28_N31
\debounce_counter_1000[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[9]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(9));

-- Location: LCCOMB_X15_Y27_N0
\debounce_counter_1000[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[10]~41_combout\ = (debounce_counter_1000(10) & (\debounce_counter_1000[9]~40\ $ (GND))) # (!debounce_counter_1000(10) & (!\debounce_counter_1000[9]~40\ & VCC))
-- \debounce_counter_1000[10]~42\ = CARRY((debounce_counter_1000(10) & !\debounce_counter_1000[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(10),
	datad => VCC,
	cin => \debounce_counter_1000[9]~40\,
	combout => \debounce_counter_1000[10]~41_combout\,
	cout => \debounce_counter_1000[10]~42\);

-- Location: FF_X14_Y28_N21
\debounce_counter_1000[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \debounce_counter_1000[10]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(10));

-- Location: LCCOMB_X15_Y27_N2
\debounce_counter_1000[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[11]~43_combout\ = (debounce_counter_1000(11) & (!\debounce_counter_1000[10]~42\)) # (!debounce_counter_1000(11) & ((\debounce_counter_1000[10]~42\) # (GND)))
-- \debounce_counter_1000[11]~44\ = CARRY((!\debounce_counter_1000[10]~42\) # (!debounce_counter_1000(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(11),
	datad => VCC,
	cin => \debounce_counter_1000[10]~42\,
	combout => \debounce_counter_1000[11]~43_combout\,
	cout => \debounce_counter_1000[11]~44\);

-- Location: FF_X15_Y27_N3
\debounce_counter_1000[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[11]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(11));

-- Location: LCCOMB_X15_Y27_N4
\debounce_counter_1000[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[12]~45_combout\ = (debounce_counter_1000(12) & (\debounce_counter_1000[11]~44\ $ (GND))) # (!debounce_counter_1000(12) & (!\debounce_counter_1000[11]~44\ & VCC))
-- \debounce_counter_1000[12]~46\ = CARRY((debounce_counter_1000(12) & !\debounce_counter_1000[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(12),
	datad => VCC,
	cin => \debounce_counter_1000[11]~44\,
	combout => \debounce_counter_1000[12]~45_combout\,
	cout => \debounce_counter_1000[12]~46\);

-- Location: FF_X15_Y27_N5
\debounce_counter_1000[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[12]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(12));

-- Location: LCCOMB_X15_Y27_N6
\debounce_counter_1000[13]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[13]~48_combout\ = (debounce_counter_1000(13) & (!\debounce_counter_1000[12]~46\)) # (!debounce_counter_1000(13) & ((\debounce_counter_1000[12]~46\) # (GND)))
-- \debounce_counter_1000[13]~49\ = CARRY((!\debounce_counter_1000[12]~46\) # (!debounce_counter_1000(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(13),
	datad => VCC,
	cin => \debounce_counter_1000[12]~46\,
	combout => \debounce_counter_1000[13]~48_combout\,
	cout => \debounce_counter_1000[13]~49\);

-- Location: FF_X15_Y27_N7
\debounce_counter_1000[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[13]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(13));

-- Location: LCCOMB_X15_Y27_N8
\debounce_counter_1000[14]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[14]~50_combout\ = (debounce_counter_1000(14) & (\debounce_counter_1000[13]~49\ $ (GND))) # (!debounce_counter_1000(14) & (!\debounce_counter_1000[13]~49\ & VCC))
-- \debounce_counter_1000[14]~51\ = CARRY((debounce_counter_1000(14) & !\debounce_counter_1000[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(14),
	datad => VCC,
	cin => \debounce_counter_1000[13]~49\,
	combout => \debounce_counter_1000[14]~50_combout\,
	cout => \debounce_counter_1000[14]~51\);

-- Location: FF_X15_Y27_N9
\debounce_counter_1000[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[14]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(14));

-- Location: LCCOMB_X15_Y27_N10
\debounce_counter_1000[15]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[15]~52_combout\ = (debounce_counter_1000(15) & (!\debounce_counter_1000[14]~51\)) # (!debounce_counter_1000(15) & ((\debounce_counter_1000[14]~51\) # (GND)))
-- \debounce_counter_1000[15]~53\ = CARRY((!\debounce_counter_1000[14]~51\) # (!debounce_counter_1000(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(15),
	datad => VCC,
	cin => \debounce_counter_1000[14]~51\,
	combout => \debounce_counter_1000[15]~52_combout\,
	cout => \debounce_counter_1000[15]~53\);

-- Location: FF_X15_Y27_N11
\debounce_counter_1000[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[15]~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(15));

-- Location: LCCOMB_X15_Y27_N12
\debounce_counter_1000[16]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[16]~54_combout\ = (debounce_counter_1000(16) & (\debounce_counter_1000[15]~53\ $ (GND))) # (!debounce_counter_1000(16) & (!\debounce_counter_1000[15]~53\ & VCC))
-- \debounce_counter_1000[16]~55\ = CARRY((debounce_counter_1000(16) & !\debounce_counter_1000[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(16),
	datad => VCC,
	cin => \debounce_counter_1000[15]~53\,
	combout => \debounce_counter_1000[16]~54_combout\,
	cout => \debounce_counter_1000[16]~55\);

-- Location: FF_X15_Y27_N13
\debounce_counter_1000[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[16]~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(16));

-- Location: LCCOMB_X15_Y27_N14
\debounce_counter_1000[17]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[17]~56_combout\ = (debounce_counter_1000(17) & (!\debounce_counter_1000[16]~55\)) # (!debounce_counter_1000(17) & ((\debounce_counter_1000[16]~55\) # (GND)))
-- \debounce_counter_1000[17]~57\ = CARRY((!\debounce_counter_1000[16]~55\) # (!debounce_counter_1000(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(17),
	datad => VCC,
	cin => \debounce_counter_1000[16]~55\,
	combout => \debounce_counter_1000[17]~56_combout\,
	cout => \debounce_counter_1000[17]~57\);

-- Location: FF_X15_Y27_N15
\debounce_counter_1000[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[17]~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(17));

-- Location: LCCOMB_X15_Y27_N16
\debounce_counter_1000[18]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[18]~58_combout\ = (debounce_counter_1000(18) & (\debounce_counter_1000[17]~57\ $ (GND))) # (!debounce_counter_1000(18) & (!\debounce_counter_1000[17]~57\ & VCC))
-- \debounce_counter_1000[18]~59\ = CARRY((debounce_counter_1000(18) & !\debounce_counter_1000[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(18),
	datad => VCC,
	cin => \debounce_counter_1000[17]~57\,
	combout => \debounce_counter_1000[18]~58_combout\,
	cout => \debounce_counter_1000[18]~59\);

-- Location: FF_X15_Y27_N17
\debounce_counter_1000[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[18]~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(18));

-- Location: LCCOMB_X15_Y28_N6
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ((debounce_counter_1000(2)) # ((!debounce_counter_1000(17)) # (!debounce_counter_1000(16)))) # (!debounce_counter_1000(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(18),
	datab => debounce_counter_1000(2),
	datac => debounce_counter_1000(16),
	datad => debounce_counter_1000(17),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X15_Y27_N18
\debounce_counter_1000[19]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[19]~60_combout\ = (debounce_counter_1000(19) & (!\debounce_counter_1000[18]~59\)) # (!debounce_counter_1000(19) & ((\debounce_counter_1000[18]~59\) # (GND)))
-- \debounce_counter_1000[19]~61\ = CARRY((!\debounce_counter_1000[18]~59\) # (!debounce_counter_1000(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(19),
	datad => VCC,
	cin => \debounce_counter_1000[18]~59\,
	combout => \debounce_counter_1000[19]~60_combout\,
	cout => \debounce_counter_1000[19]~61\);

-- Location: FF_X15_Y27_N19
\debounce_counter_1000[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[19]~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(19));

-- Location: LCCOMB_X15_Y28_N8
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (debounce_counter_1000(1)) # ((debounce_counter_1000(8)) # ((debounce_counter_1000(3)) # (!debounce_counter_1000(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(1),
	datab => debounce_counter_1000(8),
	datac => debounce_counter_1000(3),
	datad => debounce_counter_1000(19),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X15_Y27_N26
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (debounce_counter_1000(13)) # ((debounce_counter_1000(12)) # ((debounce_counter_1000(15)) # (!debounce_counter_1000(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(13),
	datab => debounce_counter_1000(12),
	datac => debounce_counter_1000(14),
	datad => debounce_counter_1000(15),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X15_Y27_N20
\debounce_counter_1000[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_1000[20]~62_combout\ = \debounce_counter_1000[19]~61\ $ (!debounce_counter_1000(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter_1000(20),
	cin => \debounce_counter_1000[19]~61\,
	combout => \debounce_counter_1000[20]~62_combout\);

-- Location: FF_X15_Y27_N21
\debounce_counter_1000[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_1000[20]~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_1000[8]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_1000(20));

-- Location: LCCOMB_X15_Y28_N4
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (debounce_counter_1000(0)) # ((debounce_counter_1000(10)) # ((debounce_counter_1000(11)) # (!debounce_counter_1000(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(0),
	datab => debounce_counter_1000(10),
	datac => debounce_counter_1000(9),
	datad => debounce_counter_1000(11),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X16_Y28_N4
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (debounce_counter_1000(7)) # ((debounce_counter_1000(5)) # ((debounce_counter_1000(4)) # (!debounce_counter_1000(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_1000(7),
	datab => debounce_counter_1000(5),
	datac => debounce_counter_1000(4),
	datad => debounce_counter_1000(6),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X15_Y28_N10
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (debounce_counter_1000(20)) # ((\Equal1~4_combout\) # (\Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_1000(20),
	datac => \Equal1~4_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X15_Y28_N0
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~2_combout\) # ((\Equal1~1_combout\) # ((\Equal1~0_combout\) # (\Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X15_Y26_N22
\sensor_1000_filtrado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sensor_1000_filtrado~0_combout\ = (\Equal1~6_combout\ & ((\sensor_1000_filtrado~q\))) # (!\Equal1~6_combout\ & (!\sensor_1000~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_1000~input_o\,
	datac => \sensor_1000_filtrado~q\,
	datad => \Equal1~6_combout\,
	combout => \sensor_1000_filtrado~0_combout\);

-- Location: FF_X15_Y26_N23
sensor_1000_filtrado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sensor_1000_filtrado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sensor_1000_filtrado~q\);

-- Location: FF_X15_Y26_N17
sensor_1000_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sensor_1000_filtrado~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \pir_sensor~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sensor_1000_prev~q\);

-- Location: LCCOMB_X15_Y26_N16
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\sensor_1000_filtrado~q\ & !\sensor_1000_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_1000_filtrado~q\,
	datac => \sensor_1000_prev~q\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X15_Y26_N20
\contador_total[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[1]~26_combout\ = (!contador_total(5) & (((!\LessThan0~1_combout\ & !\process_2~0_combout\)) # (!\contador_total[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => contador_total(5),
	datac => \contador_total[1]~8_combout\,
	datad => \process_2~0_combout\,
	combout => \contador_total[1]~26_combout\);

-- Location: LCCOMB_X16_Y26_N16
\contador_total[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[1]~27_combout\ = (contador_total(7)) # ((contador_total(6) & !\contador_total[1]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(6),
	datac => contador_total(7),
	datad => \contador_total[1]~26_combout\,
	combout => \contador_total[1]~27_combout\);

-- Location: IOIBUF_X0_Y27_N1
\sensor_500~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_500,
	o => \sensor_500~input_o\);

-- Location: LCCOMB_X14_Y27_N12
\debounce_counter_500[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[0]~21_combout\ = debounce_counter_500(0) $ (VCC)
-- \debounce_counter_500[0]~22\ = CARRY(debounce_counter_500(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(0),
	datad => VCC,
	combout => \debounce_counter_500[0]~21_combout\,
	cout => \debounce_counter_500[0]~22\);

-- Location: LCCOMB_X14_Y27_N14
\debounce_counter_500[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[1]~23_combout\ = (debounce_counter_500(1) & (!\debounce_counter_500[0]~22\)) # (!debounce_counter_500(1) & ((\debounce_counter_500[0]~22\) # (GND)))
-- \debounce_counter_500[1]~24\ = CARRY((!\debounce_counter_500[0]~22\) # (!debounce_counter_500(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(1),
	datad => VCC,
	cin => \debounce_counter_500[0]~22\,
	combout => \debounce_counter_500[1]~23_combout\,
	cout => \debounce_counter_500[1]~24\);

-- Location: LCCOMB_X14_Y27_N16
\debounce_counter_500[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[2]~25_combout\ = (debounce_counter_500(2) & (\debounce_counter_500[1]~24\ $ (GND))) # (!debounce_counter_500(2) & (!\debounce_counter_500[1]~24\ & VCC))
-- \debounce_counter_500[2]~26\ = CARRY((debounce_counter_500(2) & !\debounce_counter_500[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(2),
	datad => VCC,
	cin => \debounce_counter_500[1]~24\,
	combout => \debounce_counter_500[2]~25_combout\,
	cout => \debounce_counter_500[2]~26\);

-- Location: FF_X14_Y27_N17
\debounce_counter_500[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[2]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(2));

-- Location: LCCOMB_X14_Y27_N18
\debounce_counter_500[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[3]~27_combout\ = (debounce_counter_500(3) & (!\debounce_counter_500[2]~26\)) # (!debounce_counter_500(3) & ((\debounce_counter_500[2]~26\) # (GND)))
-- \debounce_counter_500[3]~28\ = CARRY((!\debounce_counter_500[2]~26\) # (!debounce_counter_500(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(3),
	datad => VCC,
	cin => \debounce_counter_500[2]~26\,
	combout => \debounce_counter_500[3]~27_combout\,
	cout => \debounce_counter_500[3]~28\);

-- Location: FF_X14_Y27_N19
\debounce_counter_500[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[3]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(3));

-- Location: LCCOMB_X14_Y27_N20
\debounce_counter_500[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[4]~29_combout\ = (debounce_counter_500(4) & (\debounce_counter_500[3]~28\ $ (GND))) # (!debounce_counter_500(4) & (!\debounce_counter_500[3]~28\ & VCC))
-- \debounce_counter_500[4]~30\ = CARRY((debounce_counter_500(4) & !\debounce_counter_500[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(4),
	datad => VCC,
	cin => \debounce_counter_500[3]~28\,
	combout => \debounce_counter_500[4]~29_combout\,
	cout => \debounce_counter_500[4]~30\);

-- Location: FF_X14_Y27_N21
\debounce_counter_500[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[4]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(4));

-- Location: LCCOMB_X14_Y27_N22
\debounce_counter_500[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[5]~31_combout\ = (debounce_counter_500(5) & (!\debounce_counter_500[4]~30\)) # (!debounce_counter_500(5) & ((\debounce_counter_500[4]~30\) # (GND)))
-- \debounce_counter_500[5]~32\ = CARRY((!\debounce_counter_500[4]~30\) # (!debounce_counter_500(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(5),
	datad => VCC,
	cin => \debounce_counter_500[4]~30\,
	combout => \debounce_counter_500[5]~31_combout\,
	cout => \debounce_counter_500[5]~32\);

-- Location: FF_X14_Y27_N23
\debounce_counter_500[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[5]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(5));

-- Location: LCCOMB_X14_Y27_N24
\debounce_counter_500[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[6]~33_combout\ = (debounce_counter_500(6) & (\debounce_counter_500[5]~32\ $ (GND))) # (!debounce_counter_500(6) & (!\debounce_counter_500[5]~32\ & VCC))
-- \debounce_counter_500[6]~34\ = CARRY((debounce_counter_500(6) & !\debounce_counter_500[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(6),
	datad => VCC,
	cin => \debounce_counter_500[5]~32\,
	combout => \debounce_counter_500[6]~33_combout\,
	cout => \debounce_counter_500[6]~34\);

-- Location: FF_X14_Y27_N25
\debounce_counter_500[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[6]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(6));

-- Location: LCCOMB_X14_Y27_N26
\debounce_counter_500[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[7]~35_combout\ = (debounce_counter_500(7) & (!\debounce_counter_500[6]~34\)) # (!debounce_counter_500(7) & ((\debounce_counter_500[6]~34\) # (GND)))
-- \debounce_counter_500[7]~36\ = CARRY((!\debounce_counter_500[6]~34\) # (!debounce_counter_500(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(7),
	datad => VCC,
	cin => \debounce_counter_500[6]~34\,
	combout => \debounce_counter_500[7]~35_combout\,
	cout => \debounce_counter_500[7]~36\);

-- Location: FF_X14_Y27_N27
\debounce_counter_500[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[7]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(7));

-- Location: LCCOMB_X14_Y27_N28
\debounce_counter_500[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[8]~37_combout\ = (debounce_counter_500(8) & (\debounce_counter_500[7]~36\ $ (GND))) # (!debounce_counter_500(8) & (!\debounce_counter_500[7]~36\ & VCC))
-- \debounce_counter_500[8]~38\ = CARRY((debounce_counter_500(8) & !\debounce_counter_500[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(8),
	datad => VCC,
	cin => \debounce_counter_500[7]~36\,
	combout => \debounce_counter_500[8]~37_combout\,
	cout => \debounce_counter_500[8]~38\);

-- Location: FF_X14_Y27_N29
\debounce_counter_500[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[8]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(8));

-- Location: LCCOMB_X14_Y27_N30
\debounce_counter_500[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[9]~41_combout\ = (debounce_counter_500(9) & (!\debounce_counter_500[8]~38\)) # (!debounce_counter_500(9) & ((\debounce_counter_500[8]~38\) # (GND)))
-- \debounce_counter_500[9]~42\ = CARRY((!\debounce_counter_500[8]~38\) # (!debounce_counter_500(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(9),
	datad => VCC,
	cin => \debounce_counter_500[8]~38\,
	combout => \debounce_counter_500[9]~41_combout\,
	cout => \debounce_counter_500[9]~42\);

-- Location: FF_X14_Y27_N31
\debounce_counter_500[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[9]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(9));

-- Location: LCCOMB_X14_Y26_N0
\debounce_counter_500[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[10]~43_combout\ = (debounce_counter_500(10) & (\debounce_counter_500[9]~42\ $ (GND))) # (!debounce_counter_500(10) & (!\debounce_counter_500[9]~42\ & VCC))
-- \debounce_counter_500[10]~44\ = CARRY((debounce_counter_500(10) & !\debounce_counter_500[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(10),
	datad => VCC,
	cin => \debounce_counter_500[9]~42\,
	combout => \debounce_counter_500[10]~43_combout\,
	cout => \debounce_counter_500[10]~44\);

-- Location: FF_X14_Y26_N1
\debounce_counter_500[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[10]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(10));

-- Location: LCCOMB_X14_Y26_N2
\debounce_counter_500[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[11]~45_combout\ = (debounce_counter_500(11) & (!\debounce_counter_500[10]~44\)) # (!debounce_counter_500(11) & ((\debounce_counter_500[10]~44\) # (GND)))
-- \debounce_counter_500[11]~46\ = CARRY((!\debounce_counter_500[10]~44\) # (!debounce_counter_500(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(11),
	datad => VCC,
	cin => \debounce_counter_500[10]~44\,
	combout => \debounce_counter_500[11]~45_combout\,
	cout => \debounce_counter_500[11]~46\);

-- Location: FF_X14_Y26_N3
\debounce_counter_500[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[11]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(11));

-- Location: LCCOMB_X14_Y26_N4
\debounce_counter_500[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[12]~47_combout\ = (debounce_counter_500(12) & (\debounce_counter_500[11]~46\ $ (GND))) # (!debounce_counter_500(12) & (!\debounce_counter_500[11]~46\ & VCC))
-- \debounce_counter_500[12]~48\ = CARRY((debounce_counter_500(12) & !\debounce_counter_500[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(12),
	datad => VCC,
	cin => \debounce_counter_500[11]~46\,
	combout => \debounce_counter_500[12]~47_combout\,
	cout => \debounce_counter_500[12]~48\);

-- Location: FF_X14_Y26_N5
\debounce_counter_500[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[12]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(12));

-- Location: LCCOMB_X14_Y26_N6
\debounce_counter_500[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[13]~49_combout\ = (debounce_counter_500(13) & (!\debounce_counter_500[12]~48\)) # (!debounce_counter_500(13) & ((\debounce_counter_500[12]~48\) # (GND)))
-- \debounce_counter_500[13]~50\ = CARRY((!\debounce_counter_500[12]~48\) # (!debounce_counter_500(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(13),
	datad => VCC,
	cin => \debounce_counter_500[12]~48\,
	combout => \debounce_counter_500[13]~49_combout\,
	cout => \debounce_counter_500[13]~50\);

-- Location: FF_X14_Y26_N7
\debounce_counter_500[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[13]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(13));

-- Location: LCCOMB_X14_Y26_N8
\debounce_counter_500[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[14]~51_combout\ = (debounce_counter_500(14) & (\debounce_counter_500[13]~50\ $ (GND))) # (!debounce_counter_500(14) & (!\debounce_counter_500[13]~50\ & VCC))
-- \debounce_counter_500[14]~52\ = CARRY((debounce_counter_500(14) & !\debounce_counter_500[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(14),
	datad => VCC,
	cin => \debounce_counter_500[13]~50\,
	combout => \debounce_counter_500[14]~51_combout\,
	cout => \debounce_counter_500[14]~52\);

-- Location: FF_X14_Y26_N9
\debounce_counter_500[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[14]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(14));

-- Location: LCCOMB_X14_Y26_N10
\debounce_counter_500[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[15]~53_combout\ = (debounce_counter_500(15) & (!\debounce_counter_500[14]~52\)) # (!debounce_counter_500(15) & ((\debounce_counter_500[14]~52\) # (GND)))
-- \debounce_counter_500[15]~54\ = CARRY((!\debounce_counter_500[14]~52\) # (!debounce_counter_500(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(15),
	datad => VCC,
	cin => \debounce_counter_500[14]~52\,
	combout => \debounce_counter_500[15]~53_combout\,
	cout => \debounce_counter_500[15]~54\);

-- Location: FF_X14_Y26_N11
\debounce_counter_500[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[15]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(15));

-- Location: LCCOMB_X14_Y26_N12
\debounce_counter_500[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[16]~55_combout\ = (debounce_counter_500(16) & (\debounce_counter_500[15]~54\ $ (GND))) # (!debounce_counter_500(16) & (!\debounce_counter_500[15]~54\ & VCC))
-- \debounce_counter_500[16]~56\ = CARRY((debounce_counter_500(16) & !\debounce_counter_500[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(16),
	datad => VCC,
	cin => \debounce_counter_500[15]~54\,
	combout => \debounce_counter_500[16]~55_combout\,
	cout => \debounce_counter_500[16]~56\);

-- Location: FF_X14_Y26_N13
\debounce_counter_500[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[16]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(16));

-- Location: LCCOMB_X14_Y26_N14
\debounce_counter_500[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[17]~57_combout\ = (debounce_counter_500(17) & (!\debounce_counter_500[16]~56\)) # (!debounce_counter_500(17) & ((\debounce_counter_500[16]~56\) # (GND)))
-- \debounce_counter_500[17]~58\ = CARRY((!\debounce_counter_500[16]~56\) # (!debounce_counter_500(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(17),
	datad => VCC,
	cin => \debounce_counter_500[16]~56\,
	combout => \debounce_counter_500[17]~57_combout\,
	cout => \debounce_counter_500[17]~58\);

-- Location: FF_X14_Y26_N15
\debounce_counter_500[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[17]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(17));

-- Location: LCCOMB_X14_Y26_N16
\debounce_counter_500[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[18]~59_combout\ = (debounce_counter_500(18) & (\debounce_counter_500[17]~58\ $ (GND))) # (!debounce_counter_500(18) & (!\debounce_counter_500[17]~58\ & VCC))
-- \debounce_counter_500[18]~60\ = CARRY((debounce_counter_500(18) & !\debounce_counter_500[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(18),
	datad => VCC,
	cin => \debounce_counter_500[17]~58\,
	combout => \debounce_counter_500[18]~59_combout\,
	cout => \debounce_counter_500[18]~60\);

-- Location: FF_X14_Y26_N17
\debounce_counter_500[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[18]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(18));

-- Location: LCCOMB_X14_Y26_N18
\debounce_counter_500[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[19]~61_combout\ = (debounce_counter_500(19) & (!\debounce_counter_500[18]~60\)) # (!debounce_counter_500(19) & ((\debounce_counter_500[18]~60\) # (GND)))
-- \debounce_counter_500[19]~62\ = CARRY((!\debounce_counter_500[18]~60\) # (!debounce_counter_500(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_500(19),
	datad => VCC,
	cin => \debounce_counter_500[18]~60\,
	combout => \debounce_counter_500[19]~61_combout\,
	cout => \debounce_counter_500[19]~62\);

-- Location: FF_X14_Y26_N19
\debounce_counter_500[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[19]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(19));

-- Location: LCCOMB_X14_Y26_N30
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((!debounce_counter_500(18)) # (!debounce_counter_500(17))) # (!debounce_counter_500(19))) # (!debounce_counter_500(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(16),
	datab => debounce_counter_500(19),
	datac => debounce_counter_500(17),
	datad => debounce_counter_500(18),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X14_Y26_N20
\debounce_counter_500[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[20]~63_combout\ = \debounce_counter_500[19]~62\ $ (!debounce_counter_500(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter_500(20),
	cin => \debounce_counter_500[19]~62\,
	combout => \debounce_counter_500[20]~63_combout\);

-- Location: FF_X14_Y26_N21
\debounce_counter_500[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[20]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(20));

-- Location: LCCOMB_X14_Y27_N10
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (debounce_counter_500(7)) # (((debounce_counter_500(5)) # (debounce_counter_500(4))) # (!debounce_counter_500(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(7),
	datab => debounce_counter_500(6),
	datac => debounce_counter_500(5),
	datad => debounce_counter_500(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X14_Y27_N4
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (debounce_counter_500(0)) # ((debounce_counter_500(2)) # ((debounce_counter_500(1)) # (debounce_counter_500(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(0),
	datab => debounce_counter_500(2),
	datac => debounce_counter_500(1),
	datad => debounce_counter_500(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X14_Y26_N22
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (debounce_counter_500(13)) # ((debounce_counter_500(12)) # ((debounce_counter_500(15)) # (!debounce_counter_500(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(13),
	datab => debounce_counter_500(12),
	datac => debounce_counter_500(14),
	datad => debounce_counter_500(15),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X14_Y27_N0
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (debounce_counter_500(10)) # ((debounce_counter_500(8)) # ((debounce_counter_500(11)) # (!debounce_counter_500(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(10),
	datab => debounce_counter_500(8),
	datac => debounce_counter_500(9),
	datad => debounce_counter_500(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y27_N8
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\) # ((\Equal0~7_combout\) # ((\Equal0~9_combout\) # (\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X15_Y26_N14
\debounce_counter_500[15]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[15]~39_combout\ = \sensor_500~input_o\ $ (!\sensor_500_filtrado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor_500~input_o\,
	datad => \sensor_500_filtrado~q\,
	combout => \debounce_counter_500[15]~39_combout\);

-- Location: LCCOMB_X14_Y27_N6
\debounce_counter_500[15]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_counter_500[15]~40_combout\ = ((!\Equal0~3_combout\ & (!debounce_counter_500(20) & !\Equal0~10_combout\))) # (!\debounce_counter_500[15]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => debounce_counter_500(20),
	datac => \Equal0~10_combout\,
	datad => \debounce_counter_500[15]~39_combout\,
	combout => \debounce_counter_500[15]~40_combout\);

-- Location: FF_X14_Y27_N13
\debounce_counter_500[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[0]~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(0));

-- Location: FF_X14_Y27_N15
\debounce_counter_500[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_counter_500[1]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \debounce_counter_500[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_500(1));

-- Location: LCCOMB_X14_Y26_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (debounce_counter_500(1)) # (((debounce_counter_500(4)) # (debounce_counter_500(20))) # (!debounce_counter_500(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(1),
	datab => debounce_counter_500(14),
	datac => debounce_counter_500(4),
	datad => debounce_counter_500(20),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X14_Y26_N28
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (debounce_counter_500(15)) # ((debounce_counter_500(12)) # ((debounce_counter_500(5)) # (!debounce_counter_500(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(15),
	datab => debounce_counter_500(12),
	datac => debounce_counter_500(6),
	datad => debounce_counter_500(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X14_Y27_N2
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (debounce_counter_500(0)) # ((debounce_counter_500(2)) # ((debounce_counter_500(7)) # (debounce_counter_500(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(0),
	datab => debounce_counter_500(2),
	datac => debounce_counter_500(7),
	datad => debounce_counter_500(3),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X14_Y26_N24
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (debounce_counter_500(13)) # ((\Equal0~3_combout\) # (\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_500(13),
	datac => \Equal0~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X15_Y26_N12
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~1_combout\) # ((\Equal0~2_combout\) # ((\Equal0~0_combout\) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X15_Y26_N6
\sensor_500_filtrado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sensor_500_filtrado~0_combout\ = (\Equal0~6_combout\ & ((\sensor_500_filtrado~q\))) # (!\Equal0~6_combout\ & (!\sensor_500~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_500~input_o\,
	datac => \sensor_500_filtrado~q\,
	datad => \Equal0~6_combout\,
	combout => \sensor_500_filtrado~0_combout\);

-- Location: FF_X15_Y26_N7
sensor_500_filtrado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sensor_500_filtrado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sensor_500_filtrado~q\);

-- Location: LCCOMB_X15_Y26_N24
\sensor_500_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sensor_500_prev~feeder_combout\ = \sensor_500_filtrado~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensor_500_filtrado~q\,
	combout => \sensor_500_prev~feeder_combout\);

-- Location: FF_X15_Y26_N25
sensor_500_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sensor_500_prev~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \pir_sensor~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sensor_500_prev~q\);

-- Location: LCCOMB_X15_Y26_N26
\contador_total[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[6]~28_combout\ = (\pir_sensor~input_o\ & ((\process_2~0_combout\) # ((!\sensor_500_prev~q\ & \sensor_500_filtrado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_sensor~input_o\,
	datab => \sensor_500_prev~q\,
	datac => \sensor_500_filtrado~q\,
	datad => \process_2~0_combout\,
	combout => \contador_total[6]~28_combout\);

-- Location: FF_X16_Y26_N27
\contador_total[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[5]~20_combout\,
	asdata => \Add2~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(5));

-- Location: LCCOMB_X16_Y26_N28
\contador_total[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[6]~22_combout\ = (contador_total(6) & (!\contador_total[5]~21\)) # (!contador_total(6) & ((\contador_total[5]~21\) # (GND)))
-- \contador_total[6]~23\ = CARRY((!\contador_total[5]~21\) # (!contador_total(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(6),
	datad => VCC,
	cin => \contador_total[5]~21\,
	combout => \contador_total[6]~22_combout\,
	cout => \contador_total[6]~23\);

-- Location: LCCOMB_X16_Y26_N12
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (contador_total(6) & (\Add2~11\ $ (GND))) # (!contador_total(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((contador_total(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X16_Y26_N29
\contador_total[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[6]~22_combout\,
	asdata => \Add2~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(6));

-- Location: LCCOMB_X16_Y26_N30
\contador_total[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[7]~24_combout\ = \contador_total[6]~23\ $ (!contador_total(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador_total(7),
	cin => \contador_total[6]~23\,
	combout => \contador_total[7]~24_combout\);

-- Location: LCCOMB_X16_Y26_N14
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (contador_total(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador_total(7),
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: FF_X16_Y26_N31
\contador_total[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[7]~24_combout\,
	asdata => \Add2~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(7));

-- Location: LCCOMB_X16_Y26_N0
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = contador_total(0) $ (VCC)
-- \Add2~1\ = CARRY(contador_total(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X17_Y26_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (contador_total(3) & contador_total(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(3),
	datac => contador_total(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y26_N28
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!contador_total(5) & ((!\LessThan0~0_combout\) # (!\LessThan0~1_combout\)))) # (!contador_total(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => contador_total(5),
	datac => \LessThan0~0_combout\,
	datad => contador_total(6),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X15_Y26_N18
\contador_total[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[0]~7_combout\ = (!contador_total(7) & (!\process_2~0_combout\ & (\Add2~0_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(7),
	datab => \process_2~0_combout\,
	datac => \Add2~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \contador_total[0]~7_combout\);

-- Location: LCCOMB_X15_Y26_N8
\contador_total[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[0]~9_combout\ = (contador_total(7)) # ((contador_total(6) & ((contador_total(5)) # (\contador_total[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(7),
	datab => contador_total(5),
	datac => \contador_total[1]~8_combout\,
	datad => contador_total(6),
	combout => \contador_total[0]~9_combout\);

-- Location: LCCOMB_X15_Y26_N10
\contador_total[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[0]~10_combout\ = (\process_2~0_combout\ & (((\contador_total[0]~9_combout\)))) # (!\process_2~0_combout\ & (\sensor_500_filtrado~q\ & (!\sensor_500_prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor_500_filtrado~q\,
	datab => \sensor_500_prev~q\,
	datac => \contador_total[0]~9_combout\,
	datad => \process_2~0_combout\,
	combout => \contador_total[0]~10_combout\);

-- Location: LCCOMB_X15_Y26_N0
\contador_total[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[0]~11_combout\ = (\pir_sensor~input_o\ & ((\contador_total[0]~10_combout\ & (\contador_total[0]~7_combout\)) # (!\contador_total[0]~10_combout\ & ((contador_total(0)))))) # (!\pir_sensor~input_o\ & (((contador_total(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_sensor~input_o\,
	datab => \contador_total[0]~7_combout\,
	datac => contador_total(0),
	datad => \contador_total[0]~10_combout\,
	combout => \contador_total[0]~11_combout\);

-- Location: FF_X15_Y26_N1
\contador_total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[0]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(0));

-- Location: FF_X16_Y26_N19
\contador_total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[1]~12_combout\,
	asdata => \Add2~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(1));

-- Location: LCCOMB_X16_Y26_N20
\contador_total[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[2]~14_combout\ = (contador_total(2) & (!\contador_total[1]~13\)) # (!contador_total(2) & ((\contador_total[1]~13\) # (GND)))
-- \contador_total[2]~15\ = CARRY((!\contador_total[1]~13\) # (!contador_total(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_total(2),
	datad => VCC,
	cin => \contador_total[1]~13\,
	combout => \contador_total[2]~14_combout\,
	cout => \contador_total[2]~15\);

-- Location: FF_X16_Y26_N21
\contador_total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[2]~14_combout\,
	asdata => \Add2~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(2));

-- Location: LCCOMB_X16_Y26_N22
\contador_total[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_total[3]~16_combout\ = (contador_total(3) & ((GND) # (!\contador_total[2]~15\))) # (!contador_total(3) & (\contador_total[2]~15\ $ (GND)))
-- \contador_total[3]~17\ = CARRY((contador_total(3)) # (!\contador_total[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(3),
	datad => VCC,
	cin => \contador_total[2]~15\,
	combout => \contador_total[3]~16_combout\,
	cout => \contador_total[3]~17\);

-- Location: FF_X16_Y26_N23
\contador_total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[3]~16_combout\,
	asdata => \Add2~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(3));

-- Location: FF_X16_Y26_N25
\contador_total[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_total[4]~18_combout\,
	asdata => \Add2~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \contador_total[1]~27_combout\,
	sload => \ALT_INV_process_2~0_combout\,
	ena => \contador_total[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_total(4));

-- Location: LCCOMB_X17_Y26_N26
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (contador_total(5) & ((contador_total(4)) # ((contador_total(3)) # (contador_total(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(4),
	datab => contador_total(3),
	datac => contador_total(5),
	datad => contador_total(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y26_N0
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (contador_total(7)) # ((\LessThan2~0_combout\ & contador_total(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => contador_total(6),
	datad => contador_total(7),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y27_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (!\LessThan2~1_combout\ & contador_total(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datac => contador_total(0),
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

-- Location: LCCOMB_X17_Y26_N18
\temp[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[6]~0_combout\ = (!\LessThan2~0_combout\ & (contador_total(6) & !contador_total(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => contador_total(6),
	datad => contador_total(7),
	combout => \temp[6]~0_combout\);

-- Location: LCCOMB_X17_Y26_N16
\temp[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[5]~1_combout\ = (contador_total(5) & (!contador_total(7) & ((!\LessThan2~0_combout\) # (!contador_total(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(5),
	datab => contador_total(6),
	datac => \LessThan2~0_combout\,
	datad => contador_total(7),
	combout => \temp[5]~1_combout\);

-- Location: LCCOMB_X17_Y26_N14
\temp[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[4]~2_combout\ = (!contador_total(7) & (contador_total(4) & ((!contador_total(6)) # (!\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => contador_total(7),
	datac => contador_total(4),
	datad => contador_total(6),
	combout => \temp[4]~2_combout\);

-- Location: LCCOMB_X21_Y26_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \temp[4]~2_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\temp[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp[4]~2_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X21_Y26_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\temp[5]~1_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\temp[5]~1_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\temp[5]~1_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp[5]~1_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X21_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\temp[6]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\temp[6]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\temp[6]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp[6]~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X21_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X21_Y26_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y26_N10
\Mod0|auto_generated|divider|divider|StageOut[36]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\);

-- Location: LCCOMB_X17_Y26_N20
\Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\LessThan2~0_combout\ & (contador_total(6) & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !contador_total(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => contador_total(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => contador_total(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X21_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[35]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\);

-- Location: LCCOMB_X20_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[34]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\);

-- Location: LCCOMB_X23_Y26_N20
\Mod0|auto_generated|divider|divider|StageOut[34]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\ = (\temp[5]~1_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[5]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\);

-- Location: LCCOMB_X21_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X20_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[33]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\ = (\temp[4]~2_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\);

-- Location: LCCOMB_X21_Y26_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (!\LessThan2~1_combout\ & contador_total(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => contador_total(3),
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[32]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\);

-- Location: LCCOMB_X21_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[32]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\ = (contador_total(3) & (!\LessThan2~1_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(3),
	datab => \LessThan2~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\);

-- Location: LCCOMB_X20_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X20_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~40_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X20_Y26_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[34]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[34]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X20_Y26_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~37_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X20_Y26_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X20_Y26_N28
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X19_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[45]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\);

-- Location: LCCOMB_X20_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[45]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\);

-- Location: LCCOMB_X17_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[44]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\);

-- Location: LCCOMB_X19_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[44]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\);

-- Location: LCCOMB_X19_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[43]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\);

-- Location: LCCOMB_X20_Y26_N8
\Mod0|auto_generated|divider|divider|StageOut[43]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\temp[5]~1_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \temp[5]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\);

-- Location: LCCOMB_X20_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[42]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\temp[4]~2_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \temp[4]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\);

-- Location: LCCOMB_X19_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[42]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\);

-- Location: LCCOMB_X20_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[41]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[32]~42_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\);

-- Location: LCCOMB_X19_Y26_N22
\Mod0|auto_generated|divider|divider|StageOut[41]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\);

-- Location: LCCOMB_X21_Y26_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (!\LessThan2~1_combout\ & contador_total(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => contador_total(2),
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X20_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[40]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~50_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~50_combout\);

-- Location: LCCOMB_X17_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[40]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\ = (contador_total(2) & (!\LessThan2~1_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(2),
	datac => \LessThan2~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\);

-- Location: LCCOMB_X19_Y26_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[40]~50_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[40]~50_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X19_Y26_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X19_Y26_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X19_Y26_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X19_Y26_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~45_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X19_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X19_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X19_Y27_N12
\Mod0|auto_generated|divider|divider|StageOut[54]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~51_combout\);

-- Location: LCCOMB_X19_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[54]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~67_combout\);

-- Location: LCCOMB_X20_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[53]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~68_combout\);

-- Location: LCCOMB_X20_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[53]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~52_combout\);

-- Location: LCCOMB_X19_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[52]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~73_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~69_combout\);

-- Location: LCCOMB_X19_Y27_N18
\Mod0|auto_generated|divider|divider|StageOut[52]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\);

-- Location: LCCOMB_X19_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[51]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~74_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~70_combout\);

-- Location: LCCOMB_X19_Y27_N20
\Mod0|auto_generated|divider|divider|StageOut[51]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\);

-- Location: LCCOMB_X19_Y27_N14
\Mod0|auto_generated|divider|divider|StageOut[50]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\);

-- Location: LCCOMB_X19_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[50]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\);

-- Location: LCCOMB_X20_Y26_N10
\Mod0|auto_generated|divider|divider|StageOut[49]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[40]~49_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\);

-- Location: LCCOMB_X19_Y27_N16
\Mod0|auto_generated|divider|divider|StageOut[49]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\);

-- Location: LCCOMB_X20_Y27_N26
\Mod0|auto_generated|divider|divider|StageOut[48]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\ = (!\LessThan2~1_combout\ & (contador_total(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => contador_total(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\);

-- Location: LCCOMB_X20_Y27_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (contador_total(1) & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador_total(1),
	datad => \LessThan2~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X20_Y27_N24
\Mod0|auto_generated|divider|divider|StageOut[48]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\);

-- Location: LCCOMB_X20_Y27_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X20_Y27_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X20_Y27_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X20_Y27_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[51]~70_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X20_Y27_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[52]~69_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X20_Y27_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[53]~68_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~52_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~52_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X20_Y27_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[54]~51_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[54]~67_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~51_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~67_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X20_Y27_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X21_Y27_N12
\Mod0|auto_generated|divider|divider|StageOut[56]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (!\LessThan2~1_combout\ & ((contador_total(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => contador_total(0),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\);

-- Location: LCCOMB_X20_Y27_N30
\Mod0|auto_generated|divider|divider|StageOut[59]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[50]~55_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\);

-- Location: LCCOMB_X20_Y27_N16
\Mod0|auto_generated|divider|divider|StageOut[58]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[49]~72_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\);

-- Location: LCCOMB_X20_Y27_N22
\Mod0|auto_generated|divider|divider|StageOut[57]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\);

-- Location: LCCOMB_X21_Y27_N2
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ $ (((\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y27_N20
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ $ 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X21_Y27_N26
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y27_N24
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ $ 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X21_Y27_N18
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X21_Y27_N28
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ $ 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y27_N10
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\ $ 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y26_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \temp[4]~2_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\temp[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[4]~2_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y26_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\temp[5]~1_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\temp[5]~1_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\temp[5]~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp[5]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\temp[6]~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\temp[6]~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\temp[6]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp[6]~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y26_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[23]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (contador_total(6) & (!\LessThan2~0_combout\ & !contador_total(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => contador_total(6),
	datac => \LessThan2~0_combout\,
	datad => contador_total(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~43_combout\);

-- Location: LCCOMB_X23_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X23_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[22]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~27_combout\ = (\temp[5]~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[5]~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~27_combout\);

-- Location: LCCOMB_X23_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[22]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~28_combout\);

-- Location: LCCOMB_X23_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[21]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~29_combout\ = (\temp[4]~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[4]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~29_combout\);

-- Location: LCCOMB_X23_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[21]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~30_combout\);

-- Location: LCCOMB_X17_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[20]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~31_combout\ = (contador_total(3) & (!\LessThan2~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(3),
	datac => \LessThan2~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~31_combout\);

-- Location: LCCOMB_X17_Y26_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (contador_total(3) & !\LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_total(3),
	datac => \LessThan2~1_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X24_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[20]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~32_combout\);

-- Location: LCCOMB_X24_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~31_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~32_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~31_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~32_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~30_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~29_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~30_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~29_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~30_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~28_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~28_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y26_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~43_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y26_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[28]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~33_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~33_combout\);

-- Location: LCCOMB_X23_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[28]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\temp[5]~1_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[5]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~48_combout\);

-- Location: LCCOMB_X23_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\temp[4]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[4]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[27]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\);

-- Location: LCCOMB_X24_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[26]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[26]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[20]~31_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[20]~31_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X21_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[25]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~36_combout\ = (!\LessThan2~1_combout\ & (contador_total(2) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => contador_total(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~36_combout\);

-- Location: LCCOMB_X21_Y26_N0
\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (!\LessThan2~1_combout\ & contador_total(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~1_combout\,
	datac => contador_total(2),
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X23_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X24_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~36_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X24_Y26_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~44_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~44_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~34_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~34_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X24_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~33_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~48_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~48_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[33]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~38_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~38_combout\);

-- Location: LCCOMB_X23_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[33]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~45_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~45_combout\);

-- Location: LCCOMB_X26_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[32]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~39_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~39_combout\);

-- Location: LCCOMB_X24_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X23_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~36_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[25]~36_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[31]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~40_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X22_Y27_N4
\Div0|auto_generated|divider|divider|StageOut[30]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~41_combout\ = (contador_total(1) & (!\LessThan2~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_total(1),
	datac => \LessThan2~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~41_combout\);

-- Location: LCCOMB_X21_Y27_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (!\LessThan2~1_combout\ & contador_total(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datac => contador_total(1),
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X21_Y27_N0
\Div0|auto_generated|divider|divider|StageOut[30]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~42_combout\);

-- Location: LCCOMB_X26_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~41_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~42_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X26_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X26_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X26_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~38_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~45_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~38_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y26_N26
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X26_Y26_N4
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X26_Y26_N14
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X26_Y26_N30
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X26_Y26_N2
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mux7~0_combout\);

ww_seg_unidades(0) <= \seg_unidades[0]~output_o\;

ww_seg_unidades(1) <= \seg_unidades[1]~output_o\;

ww_seg_unidades(2) <= \seg_unidades[2]~output_o\;

ww_seg_unidades(3) <= \seg_unidades[3]~output_o\;

ww_seg_unidades(4) <= \seg_unidades[4]~output_o\;

ww_seg_unidades(5) <= \seg_unidades[5]~output_o\;

ww_seg_unidades(6) <= \seg_unidades[6]~output_o\;

ww_seg_decenas(0) <= \seg_decenas[0]~output_o\;

ww_seg_decenas(1) <= \seg_decenas[1]~output_o\;

ww_seg_decenas(2) <= \seg_decenas[2]~output_o\;

ww_seg_decenas(3) <= \seg_decenas[3]~output_o\;

ww_seg_decenas(4) <= \seg_decenas[4]~output_o\;

ww_seg_decenas(5) <= \seg_decenas[5]~output_o\;

ww_seg_decenas(6) <= \seg_decenas[6]~output_o\;

ww_valor_bits(0) <= \valor_bits[0]~output_o\;

ww_valor_bits(1) <= \valor_bits[1]~output_o\;

ww_valor_bits(2) <= \valor_bits[2]~output_o\;

ww_valor_bits(3) <= \valor_bits[3]~output_o\;

ww_valor_bits(4) <= \valor_bits[4]~output_o\;

ww_valor_bits(5) <= \valor_bits[5]~output_o\;

ww_valor_bits(6) <= \valor_bits[6]~output_o\;

ww_valor_bits(7) <= \valor_bits[7]~output_o\;
END structure;


