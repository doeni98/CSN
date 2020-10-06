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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/06/2020 17:17:13"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	min_max_top IS
    PORT (
	com_i : IN std_logic_vector(1 DOWNTO 0);
	max_i : IN std_logic_vector(3 DOWNTO 0);
	min_i : IN std_logic_vector(3 DOWNTO 0);
	osc_i : IN std_logic;
	val_i : IN std_logic_vector(3 DOWNTO 0);
	leds_o : OUT std_logic_vector(15 DOWNTO 0)
	);
END min_max_top;

-- Design Ports Information
-- com_i[0]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- min_i[3]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- min_i[0]	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- min_i[1]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- min_i[2]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- com_i[1]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- val_i[3]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- val_i[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- val_i[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- val_i[2]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_i[3]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_i[0]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_i[1]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- max_i[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- osc_i	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- leds_o[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[2]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[3]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[6]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[8]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[9]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[10]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[11]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[12]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[13]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds_o[15]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF min_max_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_com_i : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_max_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_osc_i : std_logic;
SIGNAL ww_val_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds_o : std_logic_vector(15 DOWNTO 0);
SIGNAL \marche_normale_comp|LessThan0~5\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~5\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~10\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~10\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~15\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~15\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~20\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~20\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~25\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~25\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~30\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~30\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~35\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~35\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~40\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~40\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~45\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~45\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~50\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~50\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~55\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~55\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~60\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~60\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~65\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~65\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~70\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~70\ : std_logic;
SIGNAL \leds_o~0_combout\ : std_logic;
SIGNAL \bin_lin_max|Equal0~2_combout\ : std_logic;
SIGNAL \bin_lin_val|Equal0~2_combout\ : std_logic;
SIGNAL \bin_lin_val|Equal0~0_combout\ : std_logic;
SIGNAL \bin_lin_max|Equal0~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan6~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan6~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan1~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan1~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan0~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan0~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~72_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~72COUT1_88\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~67_cout\ : std_logic;
SIGNAL \bin_lin_max|LessThan5~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan5~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan4~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan4~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan2~1_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan2~1_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan2~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan2~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~62_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~62COUT1_90\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~57_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~57COUT1_92\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~52_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~52COUT1_94\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~47_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~47COUT1_96\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~42_cout\ : std_logic;
SIGNAL \bin_lin_val|LessThan10~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan10~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan9~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan9~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan8~0_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan8~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~37_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~37COUT1_98\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~32_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~32COUT1_100\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~27_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~27COUT1_102\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~22_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~22COUT1_104\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~17_cout\ : std_logic;
SIGNAL \bin_lin_max|Equal0~1_combout\ : std_logic;
SIGNAL \bin_lin_val|Equal0~1_combout\ : std_logic;
SIGNAL \bin_lin_max|LessThan12~0_combout\ : std_logic;
SIGNAL \bin_lin_val|LessThan12~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~12_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~12COUT1_106\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~7_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~7COUT1_108\ : std_logic;
SIGNAL \marche_normale_comp|LessThan1~0_combout\ : std_logic;
SIGNAL \bin_lin_min|Equal0~2_combout\ : std_logic;
SIGNAL \bin_lin_min|Equal0~0_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan6~0_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan1~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~72_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~72COUT1_88\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~67_cout\ : std_logic;
SIGNAL \bin_lin_min|LessThan5~0_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan4~0_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan2~1_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan2~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~62_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~62COUT1_90\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~57_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~57COUT1_92\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~52_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~52COUT1_94\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~47_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~47COUT1_96\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~42_cout\ : std_logic;
SIGNAL \bin_lin_min|LessThan10~0_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan9~0_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan8~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~37_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~37COUT1_98\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~32_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~32COUT1_100\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~27_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~27COUT1_102\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~22_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~22COUT1_104\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~17_cout\ : std_logic;
SIGNAL \bin_lin_min|Equal0~1_combout\ : std_logic;
SIGNAL \bin_lin_min|LessThan12~0_combout\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~12_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~12COUT1_106\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~7_cout0\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~7COUT1_108\ : std_logic;
SIGNAL \marche_normale_comp|LessThan0~0_combout\ : std_logic;
SIGNAL \leds_o~1_combout\ : std_logic;
SIGNAL \leds_o~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \osc_i~combout\ : std_logic;
SIGNAL \leds_o~3_combout\ : std_logic;
SIGNAL \leds_o~4_combout\ : std_logic;
SIGNAL \leds_o~5_combout\ : std_logic;
SIGNAL \leds_o~6_combout\ : std_logic;
SIGNAL \leds_o~7_combout\ : std_logic;
SIGNAL \leds_o~8_combout\ : std_logic;
SIGNAL \leds_o~9_combout\ : std_logic;
SIGNAL \leds_o~10_combout\ : std_logic;
SIGNAL \leds_o~11_combout\ : std_logic;
SIGNAL \leds_o~12_combout\ : std_logic;
SIGNAL \leds_o~13_combout\ : std_logic;
SIGNAL \leds_o~14_combout\ : std_logic;
SIGNAL \leds_o~15_combout\ : std_logic;
SIGNAL \leds_o~16_combout\ : std_logic;
SIGNAL \leds_o~17_combout\ : std_logic;
SIGNAL \leds_o~18_combout\ : std_logic;
SIGNAL \leds_o~19_combout\ : std_logic;
SIGNAL \leds_o~20_combout\ : std_logic;
SIGNAL \leds_o~21_combout\ : std_logic;
SIGNAL \leds_o~22_combout\ : std_logic;
SIGNAL \leds_o~23_combout\ : std_logic;
SIGNAL \leds_o~24_combout\ : std_logic;
SIGNAL \leds_o~25_combout\ : std_logic;
SIGNAL \leds_o~26_combout\ : std_logic;
SIGNAL \leds_o~27_combout\ : std_logic;
SIGNAL \leds_o~28_combout\ : std_logic;
SIGNAL \leds_o~29_combout\ : std_logic;
SIGNAL \leds_o~30_combout\ : std_logic;
SIGNAL \leds_o~31_combout\ : std_logic;
SIGNAL \leds_o~32_combout\ : std_logic;
SIGNAL \leds_o~33_combout\ : std_logic;
SIGNAL \leds_o~34_combout\ : std_logic;
SIGNAL \leds_o~35_combout\ : std_logic;
SIGNAL \leds_o~36_combout\ : std_logic;
SIGNAL \leds_o~37_combout\ : std_logic;
SIGNAL \leds_o~38_combout\ : std_logic;
SIGNAL \leds_o~39_combout\ : std_logic;
SIGNAL \leds_o~40_combout\ : std_logic;
SIGNAL \leds_o~41_combout\ : std_logic;
SIGNAL \leds_o~42_combout\ : std_logic;
SIGNAL \leds_o~43_combout\ : std_logic;
SIGNAL \leds_o~44_combout\ : std_logic;
SIGNAL \leds_o~45_combout\ : std_logic;
SIGNAL \leds_o~46_combout\ : std_logic;
SIGNAL \leds_o~47_combout\ : std_logic;
SIGNAL \max_i~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \min_i~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \com_i~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \val_i~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_com_i <= com_i;
ww_max_i <= max_i;
ww_min_i <= min_i;
ww_osc_i <= osc_i;
ww_val_i <= val_i;
leds_o <= ww_leds_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\com_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_com_i(1),
	combout => \com_i~combout\(1));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\min_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_min_i(2),
	combout => \min_i~combout\(2));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\min_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_min_i(1),
	combout => \min_i~combout\(1));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\min_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_min_i(3),
	combout => \min_i~combout\(3));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\min_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_min_i(0),
	combout => \min_i~combout\(0));

-- Location: LC_X8_Y4_N4
\leds_o~0\ : maxv_lcell
-- Equation(s):
-- \leds_o~0_combout\ = (!\min_i~combout\(2) & (!\min_i~combout\(1) & (!\min_i~combout\(3) & !\min_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~0_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\com_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_com_i(0),
	combout => \com_i~combout\(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_i(3),
	combout => \max_i~combout\(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_i(2),
	combout => \max_i~combout\(2));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_i(1),
	combout => \max_i~combout\(1));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\max_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_max_i(0),
	combout => \max_i~combout\(0));

-- Location: LC_X1_Y5_N4
\bin_lin_max|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|Equal0~2_combout\ = (\max_i~combout\(3) & (\max_i~combout\(2) & (\max_i~combout\(1) & \max_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|Equal0~2_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\val_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_val_i(1),
	combout => \val_i~combout\(1));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\val_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_val_i(3),
	combout => \val_i~combout\(3));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\val_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_val_i(2),
	combout => \val_i~combout\(2));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\val_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_val_i(0),
	combout => \val_i~combout\(0));

-- Location: LC_X6_Y5_N6
\bin_lin_val|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|Equal0~2_combout\ = (\val_i~combout\(1) & (\val_i~combout\(3) & (\val_i~combout\(2) & \val_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|Equal0~2_combout\);

-- Location: LC_X3_Y6_N8
\bin_lin_val|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|Equal0~0_combout\ = ((\val_i~combout\(2) & ((\val_i~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \val_i~combout\(2),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|Equal0~0_combout\);

-- Location: LC_X5_Y5_N8
\bin_lin_max|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|Equal0~0_combout\ = (((\max_i~combout\(2) & \max_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \max_i~combout\(2),
	datad => \max_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|Equal0~0_combout\);

-- Location: LC_X1_Y5_N1
\bin_lin_max|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan6~0_combout\ = (!\max_i~combout\(3) & (((!\max_i~combout\(0)) # (!\max_i~combout\(1))) # (!\max_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan6~0_combout\);

-- Location: LC_X6_Y5_N7
\bin_lin_val|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan6~0_combout\ = (!\val_i~combout\(3) & (((!\val_i~combout\(0)) # (!\val_i~combout\(2))) # (!\val_i~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan6~0_combout\);

-- Location: LC_X6_Y5_N4
\bin_lin_val|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan1~0_combout\ = (\val_i~combout\(1)) # (((\val_i~combout\(2)) # (\val_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan1~0_combout\);

-- Location: LC_X5_Y5_N2
\bin_lin_max|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan1~0_combout\ = ((\max_i~combout\(3)) # ((\max_i~combout\(2)) # (\max_i~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \max_i~combout\(3),
	datac => \max_i~combout\(2),
	datad => \max_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan1~0_combout\);

-- Location: LC_X1_Y5_N9
\bin_lin_max|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan0~0_combout\ = (\max_i~combout\(3)) # ((\max_i~combout\(2)) # ((\max_i~combout\(1)) # (\max_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan0~0_combout\);

-- Location: LC_X6_Y5_N5
\bin_lin_val|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan0~0_combout\ = (\val_i~combout\(1)) # ((\val_i~combout\(3)) # ((\val_i~combout\(2)) # (\val_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan0~0_combout\);

-- Location: LC_X3_Y5_N3
\marche_normale_comp|LessThan1~72\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~72_cout0\ = CARRY((!\bin_lin_max|LessThan0~0_combout\ & (\bin_lin_val|LessThan0~0_combout\)))
-- \marche_normale_comp|LessThan1~72COUT1_88\ = CARRY((!\bin_lin_max|LessThan0~0_combout\ & (\bin_lin_val|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan0~0_combout\,
	datab => \bin_lin_val|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~70\,
	cout0 => \marche_normale_comp|LessThan1~72_cout0\,
	cout1 => \marche_normale_comp|LessThan1~72COUT1_88\);

-- Location: LC_X3_Y5_N4
\marche_normale_comp|LessThan1~67\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~67_cout\ = CARRY((\bin_lin_val|LessThan1~0_combout\ & (\bin_lin_max|LessThan1~0_combout\ & !\marche_normale_comp|LessThan1~72COUT1_88\)) # (!\bin_lin_val|LessThan1~0_combout\ & ((\bin_lin_max|LessThan1~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~72COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan1~0_combout\,
	datab => \bin_lin_max|LessThan1~0_combout\,
	cin0 => \marche_normale_comp|LessThan1~72_cout0\,
	cin1 => \marche_normale_comp|LessThan1~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~65\,
	cout => \marche_normale_comp|LessThan1~67_cout\);

-- Location: LC_X5_Y5_N6
\bin_lin_max|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan5~0_combout\ = ((!\max_i~combout\(3) & ((!\max_i~combout\(1)) # (!\max_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \max_i~combout\(3),
	datac => \max_i~combout\(2),
	datad => \max_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan5~0_combout\);

-- Location: LC_X6_Y5_N8
\bin_lin_val|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan5~0_combout\ = ((!\val_i~combout\(3) & ((!\val_i~combout\(2)) # (!\val_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan5~0_combout\);

-- Location: LC_X1_Y5_N5
\bin_lin_max|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan4~0_combout\ = (!\max_i~combout\(3) & (((!\max_i~combout\(1) & !\max_i~combout\(0))) # (!\max_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1115",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan4~0_combout\);

-- Location: LC_X6_Y5_N9
\bin_lin_val|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan4~0_combout\ = (!\val_i~combout\(3) & (((!\val_i~combout\(1) & !\val_i~combout\(0))) # (!\val_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0313",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan4~0_combout\);

-- Location: LC_X5_Y5_N4
\bin_lin_max|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan2~1_combout\ = (((!\max_i~combout\(2) & !\max_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \max_i~combout\(2),
	datad => \max_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan2~1_combout\);

-- Location: LC_X3_Y6_N6
\bin_lin_val|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan2~1_combout\ = ((!\val_i~combout\(2) & ((!\val_i~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \val_i~combout\(2),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan2~1_combout\);

-- Location: LC_X1_Y5_N0
\bin_lin_max|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan2~0_combout\ = (!\max_i~combout\(3) & (!\max_i~combout\(2) & ((!\max_i~combout\(0)) # (!\max_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan2~0_combout\);

-- Location: LC_X6_Y5_N1
\bin_lin_val|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan2~0_combout\ = (!\val_i~combout\(3) & (!\val_i~combout\(2) & ((!\val_i~combout\(0)) # (!\val_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan2~0_combout\);

-- Location: LC_X3_Y5_N5
\marche_normale_comp|LessThan1~62\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~62_cout0\ = CARRY((\bin_lin_max|LessThan2~0_combout\ & ((!\marche_normale_comp|LessThan1~67_cout\) # (!\bin_lin_val|LessThan2~0_combout\))) # (!\bin_lin_max|LessThan2~0_combout\ & (!\bin_lin_val|LessThan2~0_combout\ & 
-- !\marche_normale_comp|LessThan1~67_cout\)))
-- \marche_normale_comp|LessThan1~62COUT1_90\ = CARRY((\bin_lin_max|LessThan2~0_combout\ & ((!\marche_normale_comp|LessThan1~67_cout\) # (!\bin_lin_val|LessThan2~0_combout\))) # (!\bin_lin_max|LessThan2~0_combout\ & (!\bin_lin_val|LessThan2~0_combout\ & 
-- !\marche_normale_comp|LessThan1~67_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan2~0_combout\,
	datab => \bin_lin_val|LessThan2~0_combout\,
	cin => \marche_normale_comp|LessThan1~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~60\,
	cout0 => \marche_normale_comp|LessThan1~62_cout0\,
	cout1 => \marche_normale_comp|LessThan1~62COUT1_90\);

-- Location: LC_X3_Y5_N6
\marche_normale_comp|LessThan1~57\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~57_cout0\ = CARRY((\bin_lin_max|LessThan2~1_combout\ & (\bin_lin_val|LessThan2~1_combout\ & !\marche_normale_comp|LessThan1~62_cout0\)) # (!\bin_lin_max|LessThan2~1_combout\ & ((\bin_lin_val|LessThan2~1_combout\) # 
-- (!\marche_normale_comp|LessThan1~62_cout0\))))
-- \marche_normale_comp|LessThan1~57COUT1_92\ = CARRY((\bin_lin_max|LessThan2~1_combout\ & (\bin_lin_val|LessThan2~1_combout\ & !\marche_normale_comp|LessThan1~62COUT1_90\)) # (!\bin_lin_max|LessThan2~1_combout\ & ((\bin_lin_val|LessThan2~1_combout\) # 
-- (!\marche_normale_comp|LessThan1~62COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan2~1_combout\,
	datab => \bin_lin_val|LessThan2~1_combout\,
	cin => \marche_normale_comp|LessThan1~67_cout\,
	cin0 => \marche_normale_comp|LessThan1~62_cout0\,
	cin1 => \marche_normale_comp|LessThan1~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~55\,
	cout0 => \marche_normale_comp|LessThan1~57_cout0\,
	cout1 => \marche_normale_comp|LessThan1~57COUT1_92\);

-- Location: LC_X3_Y5_N7
\marche_normale_comp|LessThan1~52\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~52_cout0\ = CARRY((\bin_lin_max|LessThan4~0_combout\ & ((!\marche_normale_comp|LessThan1~57_cout0\) # (!\bin_lin_val|LessThan4~0_combout\))) # (!\bin_lin_max|LessThan4~0_combout\ & (!\bin_lin_val|LessThan4~0_combout\ & 
-- !\marche_normale_comp|LessThan1~57_cout0\)))
-- \marche_normale_comp|LessThan1~52COUT1_94\ = CARRY((\bin_lin_max|LessThan4~0_combout\ & ((!\marche_normale_comp|LessThan1~57COUT1_92\) # (!\bin_lin_val|LessThan4~0_combout\))) # (!\bin_lin_max|LessThan4~0_combout\ & (!\bin_lin_val|LessThan4~0_combout\ & 
-- !\marche_normale_comp|LessThan1~57COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan4~0_combout\,
	datab => \bin_lin_val|LessThan4~0_combout\,
	cin => \marche_normale_comp|LessThan1~67_cout\,
	cin0 => \marche_normale_comp|LessThan1~57_cout0\,
	cin1 => \marche_normale_comp|LessThan1~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~50\,
	cout0 => \marche_normale_comp|LessThan1~52_cout0\,
	cout1 => \marche_normale_comp|LessThan1~52COUT1_94\);

-- Location: LC_X3_Y5_N8
\marche_normale_comp|LessThan1~47\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~47_cout0\ = CARRY((\bin_lin_max|LessThan5~0_combout\ & (\bin_lin_val|LessThan5~0_combout\ & !\marche_normale_comp|LessThan1~52_cout0\)) # (!\bin_lin_max|LessThan5~0_combout\ & ((\bin_lin_val|LessThan5~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~52_cout0\))))
-- \marche_normale_comp|LessThan1~47COUT1_96\ = CARRY((\bin_lin_max|LessThan5~0_combout\ & (\bin_lin_val|LessThan5~0_combout\ & !\marche_normale_comp|LessThan1~52COUT1_94\)) # (!\bin_lin_max|LessThan5~0_combout\ & ((\bin_lin_val|LessThan5~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~52COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan5~0_combout\,
	datab => \bin_lin_val|LessThan5~0_combout\,
	cin => \marche_normale_comp|LessThan1~67_cout\,
	cin0 => \marche_normale_comp|LessThan1~52_cout0\,
	cin1 => \marche_normale_comp|LessThan1~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~45\,
	cout0 => \marche_normale_comp|LessThan1~47_cout0\,
	cout1 => \marche_normale_comp|LessThan1~47COUT1_96\);

-- Location: LC_X3_Y5_N9
\marche_normale_comp|LessThan1~42\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~42_cout\ = CARRY((\bin_lin_max|LessThan6~0_combout\ & ((!\marche_normale_comp|LessThan1~47COUT1_96\) # (!\bin_lin_val|LessThan6~0_combout\))) # (!\bin_lin_max|LessThan6~0_combout\ & (!\bin_lin_val|LessThan6~0_combout\ & 
-- !\marche_normale_comp|LessThan1~47COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan6~0_combout\,
	datab => \bin_lin_val|LessThan6~0_combout\,
	cin => \marche_normale_comp|LessThan1~67_cout\,
	cin0 => \marche_normale_comp|LessThan1~47_cout0\,
	cin1 => \marche_normale_comp|LessThan1~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~40\,
	cout => \marche_normale_comp|LessThan1~42_cout\);

-- Location: LC_X6_Y5_N0
\bin_lin_val|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan10~0_combout\ = ((!\val_i~combout\(2) & ((!\val_i~combout\(0)) # (!\val_i~combout\(1))))) # (!\val_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "373f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan10~0_combout\);

-- Location: LC_X1_Y5_N3
\bin_lin_max|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan10~0_combout\ = ((!\max_i~combout\(2) & ((!\max_i~combout\(0)) # (!\max_i~combout\(1))))) # (!\max_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan10~0_combout\);

-- Location: LC_X3_Y6_N7
\bin_lin_val|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan9~0_combout\ = (((!\val_i~combout\(2) & !\val_i~combout\(1))) # (!\val_i~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \val_i~combout\(2),
	datac => \val_i~combout\(1),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan9~0_combout\);

-- Location: LC_X1_Y5_N6
\bin_lin_max|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan9~0_combout\ = ((!\max_i~combout\(1) & (!\max_i~combout\(2)))) # (!\max_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(1),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan9~0_combout\);

-- Location: LC_X6_Y5_N3
\bin_lin_val|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan8~0_combout\ = ((!\val_i~combout\(1) & (!\val_i~combout\(2) & !\val_i~combout\(0)))) # (!\val_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3337",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan8~0_combout\);

-- Location: LC_X1_Y5_N7
\bin_lin_max|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan8~0_combout\ = ((!\max_i~combout\(2) & (!\max_i~combout\(1) & !\max_i~combout\(0)))) # (!\max_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan8~0_combout\);

-- Location: LC_X4_Y5_N0
\marche_normale_comp|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~37_cout0\ = CARRY((\val_i~combout\(3) & (\max_i~combout\(3) & !\marche_normale_comp|LessThan1~42_cout\)) # (!\val_i~combout\(3) & ((\max_i~combout\(3)) # (!\marche_normale_comp|LessThan1~42_cout\))))
-- \marche_normale_comp|LessThan1~37COUT1_98\ = CARRY((\val_i~combout\(3) & (\max_i~combout\(3) & !\marche_normale_comp|LessThan1~42_cout\)) # (!\val_i~combout\(3) & ((\max_i~combout\(3)) # (!\marche_normale_comp|LessThan1~42_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(3),
	datab => \max_i~combout\(3),
	cin => \marche_normale_comp|LessThan1~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~35\,
	cout0 => \marche_normale_comp|LessThan1~37_cout0\,
	cout1 => \marche_normale_comp|LessThan1~37COUT1_98\);

-- Location: LC_X4_Y5_N1
\marche_normale_comp|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~32_cout0\ = CARRY((\bin_lin_val|LessThan8~0_combout\ & (\bin_lin_max|LessThan8~0_combout\ & !\marche_normale_comp|LessThan1~37_cout0\)) # (!\bin_lin_val|LessThan8~0_combout\ & ((\bin_lin_max|LessThan8~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~37_cout0\))))
-- \marche_normale_comp|LessThan1~32COUT1_100\ = CARRY((\bin_lin_val|LessThan8~0_combout\ & (\bin_lin_max|LessThan8~0_combout\ & !\marche_normale_comp|LessThan1~37COUT1_98\)) # (!\bin_lin_val|LessThan8~0_combout\ & ((\bin_lin_max|LessThan8~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~37COUT1_98\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan8~0_combout\,
	datab => \bin_lin_max|LessThan8~0_combout\,
	cin => \marche_normale_comp|LessThan1~42_cout\,
	cin0 => \marche_normale_comp|LessThan1~37_cout0\,
	cin1 => \marche_normale_comp|LessThan1~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~30\,
	cout0 => \marche_normale_comp|LessThan1~32_cout0\,
	cout1 => \marche_normale_comp|LessThan1~32COUT1_100\);

-- Location: LC_X4_Y5_N2
\marche_normale_comp|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~27_cout0\ = CARRY((\bin_lin_val|LessThan9~0_combout\ & ((!\marche_normale_comp|LessThan1~32_cout0\) # (!\bin_lin_max|LessThan9~0_combout\))) # (!\bin_lin_val|LessThan9~0_combout\ & (!\bin_lin_max|LessThan9~0_combout\ & 
-- !\marche_normale_comp|LessThan1~32_cout0\)))
-- \marche_normale_comp|LessThan1~27COUT1_102\ = CARRY((\bin_lin_val|LessThan9~0_combout\ & ((!\marche_normale_comp|LessThan1~32COUT1_100\) # (!\bin_lin_max|LessThan9~0_combout\))) # (!\bin_lin_val|LessThan9~0_combout\ & (!\bin_lin_max|LessThan9~0_combout\ & 
-- !\marche_normale_comp|LessThan1~32COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan9~0_combout\,
	datab => \bin_lin_max|LessThan9~0_combout\,
	cin => \marche_normale_comp|LessThan1~42_cout\,
	cin0 => \marche_normale_comp|LessThan1~32_cout0\,
	cin1 => \marche_normale_comp|LessThan1~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~25\,
	cout0 => \marche_normale_comp|LessThan1~27_cout0\,
	cout1 => \marche_normale_comp|LessThan1~27COUT1_102\);

-- Location: LC_X4_Y5_N3
\marche_normale_comp|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~22_cout0\ = CARRY((\bin_lin_val|LessThan10~0_combout\ & (\bin_lin_max|LessThan10~0_combout\ & !\marche_normale_comp|LessThan1~27_cout0\)) # (!\bin_lin_val|LessThan10~0_combout\ & ((\bin_lin_max|LessThan10~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~27_cout0\))))
-- \marche_normale_comp|LessThan1~22COUT1_104\ = CARRY((\bin_lin_val|LessThan10~0_combout\ & (\bin_lin_max|LessThan10~0_combout\ & !\marche_normale_comp|LessThan1~27COUT1_102\)) # (!\bin_lin_val|LessThan10~0_combout\ & ((\bin_lin_max|LessThan10~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~27COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan10~0_combout\,
	datab => \bin_lin_max|LessThan10~0_combout\,
	cin => \marche_normale_comp|LessThan1~42_cout\,
	cin0 => \marche_normale_comp|LessThan1~27_cout0\,
	cin1 => \marche_normale_comp|LessThan1~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~20\,
	cout0 => \marche_normale_comp|LessThan1~22_cout0\,
	cout1 => \marche_normale_comp|LessThan1~22COUT1_104\);

-- Location: LC_X4_Y5_N4
\marche_normale_comp|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~17_cout\ = CARRY((\bin_lin_val|Equal0~0_combout\ & (\bin_lin_max|Equal0~0_combout\ & !\marche_normale_comp|LessThan1~22COUT1_104\)) # (!\bin_lin_val|Equal0~0_combout\ & ((\bin_lin_max|Equal0~0_combout\) # 
-- (!\marche_normale_comp|LessThan1~22COUT1_104\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|Equal0~0_combout\,
	datab => \bin_lin_max|Equal0~0_combout\,
	cin => \marche_normale_comp|LessThan1~42_cout\,
	cin0 => \marche_normale_comp|LessThan1~22_cout0\,
	cin1 => \marche_normale_comp|LessThan1~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~15\,
	cout => \marche_normale_comp|LessThan1~17_cout\);

-- Location: LC_X1_Y5_N8
\bin_lin_max|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|Equal0~1_combout\ = (\max_i~combout\(1) & (\max_i~combout\(2) & (\max_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(1),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|Equal0~1_combout\);

-- Location: LC_X3_Y6_N5
\bin_lin_val|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|Equal0~1_combout\ = ((\val_i~combout\(2) & (\val_i~combout\(1) & \val_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \val_i~combout\(2),
	datac => \val_i~combout\(1),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|Equal0~1_combout\);

-- Location: LC_X1_Y5_N2
\bin_lin_max|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_max|LessThan12~0_combout\ = (((!\max_i~combout\(1) & !\max_i~combout\(0))) # (!\max_i~combout\(2))) # (!\max_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "777f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \max_i~combout\(3),
	datab => \max_i~combout\(2),
	datac => \max_i~combout\(1),
	datad => \max_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_max|LessThan12~0_combout\);

-- Location: LC_X6_Y5_N2
\bin_lin_val|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_val|LessThan12~0_combout\ = (((!\val_i~combout\(1) & !\val_i~combout\(0))) # (!\val_i~combout\(2))) # (!\val_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \val_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \val_i~combout\(2),
	datad => \val_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_val|LessThan12~0_combout\);

-- Location: LC_X4_Y5_N5
\marche_normale_comp|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~12_cout0\ = CARRY((\bin_lin_max|LessThan12~0_combout\ & ((!\marche_normale_comp|LessThan1~17_cout\) # (!\bin_lin_val|LessThan12~0_combout\))) # (!\bin_lin_max|LessThan12~0_combout\ & (!\bin_lin_val|LessThan12~0_combout\ & 
-- !\marche_normale_comp|LessThan1~17_cout\)))
-- \marche_normale_comp|LessThan1~12COUT1_106\ = CARRY((\bin_lin_max|LessThan12~0_combout\ & ((!\marche_normale_comp|LessThan1~17_cout\) # (!\bin_lin_val|LessThan12~0_combout\))) # (!\bin_lin_max|LessThan12~0_combout\ & (!\bin_lin_val|LessThan12~0_combout\ & 
-- !\marche_normale_comp|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan12~0_combout\,
	datab => \bin_lin_val|LessThan12~0_combout\,
	cin => \marche_normale_comp|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~10\,
	cout0 => \marche_normale_comp|LessThan1~12_cout0\,
	cout1 => \marche_normale_comp|LessThan1~12COUT1_106\);

-- Location: LC_X4_Y5_N6
\marche_normale_comp|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~7_cout0\ = CARRY((\bin_lin_max|Equal0~1_combout\ & ((!\marche_normale_comp|LessThan1~12_cout0\) # (!\bin_lin_val|Equal0~1_combout\))) # (!\bin_lin_max|Equal0~1_combout\ & (!\bin_lin_val|Equal0~1_combout\ & 
-- !\marche_normale_comp|LessThan1~12_cout0\)))
-- \marche_normale_comp|LessThan1~7COUT1_108\ = CARRY((\bin_lin_max|Equal0~1_combout\ & ((!\marche_normale_comp|LessThan1~12COUT1_106\) # (!\bin_lin_val|Equal0~1_combout\))) # (!\bin_lin_max|Equal0~1_combout\ & (!\bin_lin_val|Equal0~1_combout\ & 
-- !\marche_normale_comp|LessThan1~12COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|Equal0~1_combout\,
	datab => \bin_lin_val|Equal0~1_combout\,
	cin => \marche_normale_comp|LessThan1~17_cout\,
	cin0 => \marche_normale_comp|LessThan1~12_cout0\,
	cin1 => \marche_normale_comp|LessThan1~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~5\,
	cout0 => \marche_normale_comp|LessThan1~7_cout0\,
	cout1 => \marche_normale_comp|LessThan1~7COUT1_108\);

-- Location: LC_X4_Y5_N7
\marche_normale_comp|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan1~0_combout\ = ((\bin_lin_max|Equal0~2_combout\ & (!(!\marche_normale_comp|LessThan1~17_cout\ & \marche_normale_comp|LessThan1~7_cout0\) # (\marche_normale_comp|LessThan1~17_cout\ & \marche_normale_comp|LessThan1~7COUT1_108\) 
-- & \bin_lin_val|Equal0~2_combout\)) # (!\bin_lin_max|Equal0~2_combout\ & ((\bin_lin_val|Equal0~2_combout\) # (!(!\marche_normale_comp|LessThan1~17_cout\ & \marche_normale_comp|LessThan1~7_cout0\) # (\marche_normale_comp|LessThan1~17_cout\ & 
-- \marche_normale_comp|LessThan1~7COUT1_108\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bin_lin_max|Equal0~2_combout\,
	datad => \bin_lin_val|Equal0~2_combout\,
	cin => \marche_normale_comp|LessThan1~17_cout\,
	cin0 => \marche_normale_comp|LessThan1~7_cout0\,
	cin1 => \marche_normale_comp|LessThan1~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan1~0_combout\);

-- Location: LC_X8_Y4_N2
\bin_lin_min|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|Equal0~2_combout\ = (\min_i~combout\(2) & (\min_i~combout\(1) & (\min_i~combout\(3) & \min_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|Equal0~2_combout\);

-- Location: LC_X8_Y5_N9
\bin_lin_min|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|Equal0~0_combout\ = (\min_i~combout\(2) & (((\min_i~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datac => \min_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|Equal0~0_combout\);

-- Location: LC_X8_Y4_N0
\bin_lin_min|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan6~0_combout\ = (!\min_i~combout\(3) & (((!\min_i~combout\(0)) # (!\min_i~combout\(1))) # (!\min_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "070f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan6~0_combout\);

-- Location: LC_X8_Y4_N8
\bin_lin_min|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan1~0_combout\ = (\min_i~combout\(2)) # ((\min_i~combout\(1)) # ((\min_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan1~0_combout\);

-- Location: LC_X7_Y5_N3
\marche_normale_comp|LessThan0~72\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~72_cout0\ = CARRY((!\bin_lin_val|LessThan0~0_combout\ & (!\leds_o~0_combout\)))
-- \marche_normale_comp|LessThan0~72COUT1_88\ = CARRY((!\bin_lin_val|LessThan0~0_combout\ & (!\leds_o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff11",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan0~0_combout\,
	datab => \leds_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~70\,
	cout0 => \marche_normale_comp|LessThan0~72_cout0\,
	cout1 => \marche_normale_comp|LessThan0~72COUT1_88\);

-- Location: LC_X7_Y5_N4
\marche_normale_comp|LessThan0~67\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~67_cout\ = CARRY((\bin_lin_min|LessThan1~0_combout\ & (\bin_lin_val|LessThan1~0_combout\ & !\marche_normale_comp|LessThan0~72COUT1_88\)) # (!\bin_lin_min|LessThan1~0_combout\ & ((\bin_lin_val|LessThan1~0_combout\) # 
-- (!\marche_normale_comp|LessThan0~72COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan1~0_combout\,
	datab => \bin_lin_val|LessThan1~0_combout\,
	cin0 => \marche_normale_comp|LessThan0~72_cout0\,
	cin1 => \marche_normale_comp|LessThan0~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~65\,
	cout => \marche_normale_comp|LessThan0~67_cout\);

-- Location: LC_X1_Y7_N3
\bin_lin_min|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan5~0_combout\ = ((!\min_i~combout\(3) & ((!\min_i~combout\(2)) # (!\min_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan5~0_combout\);

-- Location: LC_X8_Y4_N3
\bin_lin_min|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan4~0_combout\ = (!\min_i~combout\(3) & (((!\min_i~combout\(1) & !\min_i~combout\(0))) # (!\min_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0507",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan4~0_combout\);

-- Location: LC_X8_Y5_N8
\bin_lin_min|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan2~1_combout\ = (!\min_i~combout\(2) & (((!\min_i~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datac => \min_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan2~1_combout\);

-- Location: LC_X8_Y4_N5
\bin_lin_min|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan2~0_combout\ = (!\min_i~combout\(2) & (!\min_i~combout\(3) & ((!\min_i~combout\(0)) # (!\min_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0105",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan2~0_combout\);

-- Location: LC_X7_Y5_N5
\marche_normale_comp|LessThan0~62\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~62_cout0\ = CARRY((\bin_lin_min|LessThan2~0_combout\ & (\bin_lin_val|LessThan2~0_combout\ & !\marche_normale_comp|LessThan0~67_cout\)) # (!\bin_lin_min|LessThan2~0_combout\ & ((\bin_lin_val|LessThan2~0_combout\) # 
-- (!\marche_normale_comp|LessThan0~67_cout\))))
-- \marche_normale_comp|LessThan0~62COUT1_90\ = CARRY((\bin_lin_min|LessThan2~0_combout\ & (\bin_lin_val|LessThan2~0_combout\ & !\marche_normale_comp|LessThan0~67_cout\)) # (!\bin_lin_min|LessThan2~0_combout\ & ((\bin_lin_val|LessThan2~0_combout\) # 
-- (!\marche_normale_comp|LessThan0~67_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan2~0_combout\,
	datab => \bin_lin_val|LessThan2~0_combout\,
	cin => \marche_normale_comp|LessThan0~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~60\,
	cout0 => \marche_normale_comp|LessThan0~62_cout0\,
	cout1 => \marche_normale_comp|LessThan0~62COUT1_90\);

-- Location: LC_X7_Y5_N6
\marche_normale_comp|LessThan0~57\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~57_cout0\ = CARRY((\bin_lin_val|LessThan2~1_combout\ & (\bin_lin_min|LessThan2~1_combout\ & !\marche_normale_comp|LessThan0~62_cout0\)) # (!\bin_lin_val|LessThan2~1_combout\ & ((\bin_lin_min|LessThan2~1_combout\) # 
-- (!\marche_normale_comp|LessThan0~62_cout0\))))
-- \marche_normale_comp|LessThan0~57COUT1_92\ = CARRY((\bin_lin_val|LessThan2~1_combout\ & (\bin_lin_min|LessThan2~1_combout\ & !\marche_normale_comp|LessThan0~62COUT1_90\)) # (!\bin_lin_val|LessThan2~1_combout\ & ((\bin_lin_min|LessThan2~1_combout\) # 
-- (!\marche_normale_comp|LessThan0~62COUT1_90\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan2~1_combout\,
	datab => \bin_lin_min|LessThan2~1_combout\,
	cin => \marche_normale_comp|LessThan0~67_cout\,
	cin0 => \marche_normale_comp|LessThan0~62_cout0\,
	cin1 => \marche_normale_comp|LessThan0~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~55\,
	cout0 => \marche_normale_comp|LessThan0~57_cout0\,
	cout1 => \marche_normale_comp|LessThan0~57COUT1_92\);

-- Location: LC_X7_Y5_N7
\marche_normale_comp|LessThan0~52\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~52_cout0\ = CARRY((\bin_lin_val|LessThan4~0_combout\ & ((!\marche_normale_comp|LessThan0~57_cout0\) # (!\bin_lin_min|LessThan4~0_combout\))) # (!\bin_lin_val|LessThan4~0_combout\ & (!\bin_lin_min|LessThan4~0_combout\ & 
-- !\marche_normale_comp|LessThan0~57_cout0\)))
-- \marche_normale_comp|LessThan0~52COUT1_94\ = CARRY((\bin_lin_val|LessThan4~0_combout\ & ((!\marche_normale_comp|LessThan0~57COUT1_92\) # (!\bin_lin_min|LessThan4~0_combout\))) # (!\bin_lin_val|LessThan4~0_combout\ & (!\bin_lin_min|LessThan4~0_combout\ & 
-- !\marche_normale_comp|LessThan0~57COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan4~0_combout\,
	datab => \bin_lin_min|LessThan4~0_combout\,
	cin => \marche_normale_comp|LessThan0~67_cout\,
	cin0 => \marche_normale_comp|LessThan0~57_cout0\,
	cin1 => \marche_normale_comp|LessThan0~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~50\,
	cout0 => \marche_normale_comp|LessThan0~52_cout0\,
	cout1 => \marche_normale_comp|LessThan0~52COUT1_94\);

-- Location: LC_X7_Y5_N8
\marche_normale_comp|LessThan0~47\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~47_cout0\ = CARRY((\bin_lin_min|LessThan5~0_combout\ & ((!\marche_normale_comp|LessThan0~52_cout0\) # (!\bin_lin_val|LessThan5~0_combout\))) # (!\bin_lin_min|LessThan5~0_combout\ & (!\bin_lin_val|LessThan5~0_combout\ & 
-- !\marche_normale_comp|LessThan0~52_cout0\)))
-- \marche_normale_comp|LessThan0~47COUT1_96\ = CARRY((\bin_lin_min|LessThan5~0_combout\ & ((!\marche_normale_comp|LessThan0~52COUT1_94\) # (!\bin_lin_val|LessThan5~0_combout\))) # (!\bin_lin_min|LessThan5~0_combout\ & (!\bin_lin_val|LessThan5~0_combout\ & 
-- !\marche_normale_comp|LessThan0~52COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan5~0_combout\,
	datab => \bin_lin_val|LessThan5~0_combout\,
	cin => \marche_normale_comp|LessThan0~67_cout\,
	cin0 => \marche_normale_comp|LessThan0~52_cout0\,
	cin1 => \marche_normale_comp|LessThan0~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~45\,
	cout0 => \marche_normale_comp|LessThan0~47_cout0\,
	cout1 => \marche_normale_comp|LessThan0~47COUT1_96\);

-- Location: LC_X7_Y5_N9
\marche_normale_comp|LessThan0~42\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~42_cout\ = CARRY((\bin_lin_min|LessThan6~0_combout\ & (\bin_lin_val|LessThan6~0_combout\ & !\marche_normale_comp|LessThan0~47COUT1_96\)) # (!\bin_lin_min|LessThan6~0_combout\ & ((\bin_lin_val|LessThan6~0_combout\) # 
-- (!\marche_normale_comp|LessThan0~47COUT1_96\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan6~0_combout\,
	datab => \bin_lin_val|LessThan6~0_combout\,
	cin => \marche_normale_comp|LessThan0~67_cout\,
	cin0 => \marche_normale_comp|LessThan0~47_cout0\,
	cin1 => \marche_normale_comp|LessThan0~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~40\,
	cout => \marche_normale_comp|LessThan0~42_cout\);

-- Location: LC_X8_Y4_N7
\bin_lin_min|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan10~0_combout\ = ((!\min_i~combout\(2) & ((!\min_i~combout\(0)) # (!\min_i~combout\(1))))) # (!\min_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan10~0_combout\);

-- Location: LC_X8_Y4_N9
\bin_lin_min|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan9~0_combout\ = ((!\min_i~combout\(2) & (!\min_i~combout\(1)))) # (!\min_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan9~0_combout\);

-- Location: LC_X8_Y4_N6
\bin_lin_min|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan8~0_combout\ = ((!\min_i~combout\(2) & (!\min_i~combout\(1) & !\min_i~combout\(0)))) # (!\min_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan8~0_combout\);

-- Location: LC_X8_Y5_N0
\marche_normale_comp|LessThan0~37\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~37_cout0\ = CARRY((\min_i~combout\(3) & (\val_i~combout\(3) & !\marche_normale_comp|LessThan0~42_cout\)) # (!\min_i~combout\(3) & ((\val_i~combout\(3)) # (!\marche_normale_comp|LessThan0~42_cout\))))
-- \marche_normale_comp|LessThan0~37COUT1_98\ = CARRY((\min_i~combout\(3) & (\val_i~combout\(3) & !\marche_normale_comp|LessThan0~42_cout\)) # (!\min_i~combout\(3) & ((\val_i~combout\(3)) # (!\marche_normale_comp|LessThan0~42_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(3),
	datab => \val_i~combout\(3),
	cin => \marche_normale_comp|LessThan0~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~35\,
	cout0 => \marche_normale_comp|LessThan0~37_cout0\,
	cout1 => \marche_normale_comp|LessThan0~37COUT1_98\);

-- Location: LC_X8_Y5_N1
\marche_normale_comp|LessThan0~32\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~32_cout0\ = CARRY((\bin_lin_val|LessThan8~0_combout\ & ((!\marche_normale_comp|LessThan0~37_cout0\) # (!\bin_lin_min|LessThan8~0_combout\))) # (!\bin_lin_val|LessThan8~0_combout\ & (!\bin_lin_min|LessThan8~0_combout\ & 
-- !\marche_normale_comp|LessThan0~37_cout0\)))
-- \marche_normale_comp|LessThan0~32COUT1_100\ = CARRY((\bin_lin_val|LessThan8~0_combout\ & ((!\marche_normale_comp|LessThan0~37COUT1_98\) # (!\bin_lin_min|LessThan8~0_combout\))) # (!\bin_lin_val|LessThan8~0_combout\ & (!\bin_lin_min|LessThan8~0_combout\ & 
-- !\marche_normale_comp|LessThan0~37COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan8~0_combout\,
	datab => \bin_lin_min|LessThan8~0_combout\,
	cin => \marche_normale_comp|LessThan0~42_cout\,
	cin0 => \marche_normale_comp|LessThan0~37_cout0\,
	cin1 => \marche_normale_comp|LessThan0~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~30\,
	cout0 => \marche_normale_comp|LessThan0~32_cout0\,
	cout1 => \marche_normale_comp|LessThan0~32COUT1_100\);

-- Location: LC_X8_Y5_N2
\marche_normale_comp|LessThan0~27\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~27_cout0\ = CARRY((\bin_lin_min|LessThan9~0_combout\ & ((!\marche_normale_comp|LessThan0~32_cout0\) # (!\bin_lin_val|LessThan9~0_combout\))) # (!\bin_lin_min|LessThan9~0_combout\ & (!\bin_lin_val|LessThan9~0_combout\ & 
-- !\marche_normale_comp|LessThan0~32_cout0\)))
-- \marche_normale_comp|LessThan0~27COUT1_102\ = CARRY((\bin_lin_min|LessThan9~0_combout\ & ((!\marche_normale_comp|LessThan0~32COUT1_100\) # (!\bin_lin_val|LessThan9~0_combout\))) # (!\bin_lin_min|LessThan9~0_combout\ & (!\bin_lin_val|LessThan9~0_combout\ & 
-- !\marche_normale_comp|LessThan0~32COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan9~0_combout\,
	datab => \bin_lin_val|LessThan9~0_combout\,
	cin => \marche_normale_comp|LessThan0~42_cout\,
	cin0 => \marche_normale_comp|LessThan0~32_cout0\,
	cin1 => \marche_normale_comp|LessThan0~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~25\,
	cout0 => \marche_normale_comp|LessThan0~27_cout0\,
	cout1 => \marche_normale_comp|LessThan0~27COUT1_102\);

-- Location: LC_X8_Y5_N3
\marche_normale_comp|LessThan0~22\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~22_cout0\ = CARRY((\bin_lin_min|LessThan10~0_combout\ & (\bin_lin_val|LessThan10~0_combout\ & !\marche_normale_comp|LessThan0~27_cout0\)) # (!\bin_lin_min|LessThan10~0_combout\ & ((\bin_lin_val|LessThan10~0_combout\) # 
-- (!\marche_normale_comp|LessThan0~27_cout0\))))
-- \marche_normale_comp|LessThan0~22COUT1_104\ = CARRY((\bin_lin_min|LessThan10~0_combout\ & (\bin_lin_val|LessThan10~0_combout\ & !\marche_normale_comp|LessThan0~27COUT1_102\)) # (!\bin_lin_min|LessThan10~0_combout\ & ((\bin_lin_val|LessThan10~0_combout\) # 
-- (!\marche_normale_comp|LessThan0~27COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan10~0_combout\,
	datab => \bin_lin_val|LessThan10~0_combout\,
	cin => \marche_normale_comp|LessThan0~42_cout\,
	cin0 => \marche_normale_comp|LessThan0~27_cout0\,
	cin1 => \marche_normale_comp|LessThan0~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~20\,
	cout0 => \marche_normale_comp|LessThan0~22_cout0\,
	cout1 => \marche_normale_comp|LessThan0~22COUT1_104\);

-- Location: LC_X8_Y5_N4
\marche_normale_comp|LessThan0~17\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~17_cout\ = CARRY((\bin_lin_val|Equal0~0_combout\ & ((!\marche_normale_comp|LessThan0~22COUT1_104\) # (!\bin_lin_min|Equal0~0_combout\))) # (!\bin_lin_val|Equal0~0_combout\ & (!\bin_lin_min|Equal0~0_combout\ & 
-- !\marche_normale_comp|LessThan0~22COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|Equal0~0_combout\,
	datab => \bin_lin_min|Equal0~0_combout\,
	cin => \marche_normale_comp|LessThan0~42_cout\,
	cin0 => \marche_normale_comp|LessThan0~22_cout0\,
	cin1 => \marche_normale_comp|LessThan0~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~15\,
	cout => \marche_normale_comp|LessThan0~17_cout\);

-- Location: LC_X1_Y7_N6
\bin_lin_min|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|Equal0~1_combout\ = ((\min_i~combout\(1) & (\min_i~combout\(3) & \min_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|Equal0~1_combout\);

-- Location: LC_X8_Y4_N1
\bin_lin_min|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \bin_lin_min|LessThan12~0_combout\ = (((!\min_i~combout\(1) & !\min_i~combout\(0))) # (!\min_i~combout\(3))) # (!\min_i~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \min_i~combout\(1),
	datac => \min_i~combout\(3),
	datad => \min_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \bin_lin_min|LessThan12~0_combout\);

-- Location: LC_X8_Y5_N5
\marche_normale_comp|LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~12_cout0\ = CARRY((\bin_lin_val|LessThan12~0_combout\ & ((!\marche_normale_comp|LessThan0~17_cout\) # (!\bin_lin_min|LessThan12~0_combout\))) # (!\bin_lin_val|LessThan12~0_combout\ & (!\bin_lin_min|LessThan12~0_combout\ & 
-- !\marche_normale_comp|LessThan0~17_cout\)))
-- \marche_normale_comp|LessThan0~12COUT1_106\ = CARRY((\bin_lin_val|LessThan12~0_combout\ & ((!\marche_normale_comp|LessThan0~17_cout\) # (!\bin_lin_min|LessThan12~0_combout\))) # (!\bin_lin_val|LessThan12~0_combout\ & (!\bin_lin_min|LessThan12~0_combout\ & 
-- !\marche_normale_comp|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan12~0_combout\,
	datab => \bin_lin_min|LessThan12~0_combout\,
	cin => \marche_normale_comp|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~10\,
	cout0 => \marche_normale_comp|LessThan0~12_cout0\,
	cout1 => \marche_normale_comp|LessThan0~12COUT1_106\);

-- Location: LC_X8_Y5_N6
\marche_normale_comp|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~7_cout0\ = CARRY((\bin_lin_val|Equal0~1_combout\ & ((!\marche_normale_comp|LessThan0~12_cout0\) # (!\bin_lin_min|Equal0~1_combout\))) # (!\bin_lin_val|Equal0~1_combout\ & (!\bin_lin_min|Equal0~1_combout\ & 
-- !\marche_normale_comp|LessThan0~12_cout0\)))
-- \marche_normale_comp|LessThan0~7COUT1_108\ = CARRY((\bin_lin_val|Equal0~1_combout\ & ((!\marche_normale_comp|LessThan0~12COUT1_106\) # (!\bin_lin_min|Equal0~1_combout\))) # (!\bin_lin_val|Equal0~1_combout\ & (!\bin_lin_min|Equal0~1_combout\ & 
-- !\marche_normale_comp|LessThan0~12COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|Equal0~1_combout\,
	datab => \bin_lin_min|Equal0~1_combout\,
	cin => \marche_normale_comp|LessThan0~17_cout\,
	cin0 => \marche_normale_comp|LessThan0~12_cout0\,
	cin1 => \marche_normale_comp|LessThan0~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~5\,
	cout0 => \marche_normale_comp|LessThan0~7_cout0\,
	cout1 => \marche_normale_comp|LessThan0~7COUT1_108\);

-- Location: LC_X8_Y5_N7
\marche_normale_comp|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \marche_normale_comp|LessThan0~0_combout\ = ((\bin_lin_val|Equal0~2_combout\ & (!(!\marche_normale_comp|LessThan0~17_cout\ & \marche_normale_comp|LessThan0~7_cout0\) # (\marche_normale_comp|LessThan0~17_cout\ & \marche_normale_comp|LessThan0~7COUT1_108\) 
-- & \bin_lin_min|Equal0~2_combout\)) # (!\bin_lin_val|Equal0~2_combout\ & ((\bin_lin_min|Equal0~2_combout\) # (!(!\marche_normale_comp|LessThan0~17_cout\ & \marche_normale_comp|LessThan0~7_cout0\) # (\marche_normale_comp|LessThan0~17_cout\ & 
-- \marche_normale_comp|LessThan0~7COUT1_108\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \bin_lin_val|Equal0~2_combout\,
	datad => \bin_lin_min|Equal0~2_combout\,
	cin => \marche_normale_comp|LessThan0~17_cout\,
	cin0 => \marche_normale_comp|LessThan0~7_cout0\,
	cin1 => \marche_normale_comp|LessThan0~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \marche_normale_comp|LessThan0~0_combout\);

-- Location: LC_X9_Y5_N1
\leds_o~1\ : maxv_lcell
-- Equation(s):
-- \leds_o~1_combout\ = (((!\marche_normale_comp|LessThan1~0_combout\ & !\marche_normale_comp|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \marche_normale_comp|LessThan1~0_combout\,
	datad => \marche_normale_comp|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~1_combout\);

-- Location: LC_X7_Y5_N0
\leds_o~2\ : maxv_lcell
-- Equation(s):
-- \leds_o~2_combout\ = (\com_i~combout\(0)) # ((!\com_i~combout\(1) & (\leds_o~0_combout\ & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \leds_o~0_combout\,
	datac => \com_i~combout\(0),
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~2_combout\);

-- Location: LC_X1_Y7_N9
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = ((!\com_i~combout\(1) & (\com_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \com_i~combout\(1),
	datac => \com_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\osc_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_osc_i,
	combout => \osc_i~combout\);

-- Location: LC_X3_Y5_N0
\leds_o~3\ : maxv_lcell
-- Equation(s):
-- \leds_o~3_combout\ = (\bin_lin_val|LessThan0~0_combout\) # ((\bin_lin_max|LessThan0~0_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan0~0_combout\,
	datab => \bin_lin_val|LessThan0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~3_combout\);

-- Location: LC_X7_Y6_N6
\leds_o~4\ : maxv_lcell
-- Equation(s):
-- \leds_o~4_combout\ = (\leds_o~3_combout\ & (!\com_i~combout\(1) & (\leds_o~1_combout\ & !\bin_lin_min|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \leds_o~3_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~1_combout\,
	datad => \bin_lin_min|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~4_combout\);

-- Location: LC_X7_Y6_N1
\leds_o~5\ : maxv_lcell
-- Equation(s):
-- \leds_o~5_combout\ = (\leds_o~4_combout\) # ((\com_i~combout\(0) & ((\bin_lin_val|LessThan0~0_combout\) # (\com_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan0~0_combout\,
	datab => \com_i~combout\(0),
	datac => \leds_o~4_combout\,
	datad => \com_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~5_combout\);

-- Location: LC_X1_Y7_N5
\leds_o~6\ : maxv_lcell
-- Equation(s):
-- \leds_o~6_combout\ = (\bin_lin_val|LessThan1~0_combout\) # ((\bin_lin_max|LessThan1~0_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan1~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \osc_i~combout\,
	datad => \bin_lin_val|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~6_combout\);

-- Location: LC_X7_Y6_N8
\leds_o~7\ : maxv_lcell
-- Equation(s):
-- \leds_o~7_combout\ = (\leds_o~6_combout\ & (!\com_i~combout\(1) & (\leds_o~1_combout\ & \bin_lin_min|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \leds_o~6_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~1_combout\,
	datad => \bin_lin_min|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~7_combout\);

-- Location: LC_X7_Y6_N7
\leds_o~8\ : maxv_lcell
-- Equation(s):
-- \leds_o~8_combout\ = (\leds_o~7_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (\bin_lin_val|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(0),
	datab => \com_i~combout\(1),
	datac => \bin_lin_val|LessThan1~0_combout\,
	datad => \leds_o~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~8_combout\);

-- Location: LC_X3_Y5_N1
\leds_o~9\ : maxv_lcell
-- Equation(s):
-- \leds_o~9_combout\ = ((!\bin_lin_max|LessThan2~0_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\))) # (!\bin_lin_val|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3733",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan2~0_combout\,
	datab => \bin_lin_val|LessThan2~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~9_combout\);

-- Location: LC_X7_Y5_N1
\leds_o~10\ : maxv_lcell
-- Equation(s):
-- \leds_o~10_combout\ = (!\com_i~combout\(1) & (\bin_lin_min|LessThan2~1_combout\ & (\leds_o~9_combout\ & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_min|LessThan2~1_combout\,
	datac => \leds_o~9_combout\,
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~10_combout\);

-- Location: LC_X7_Y5_N2
\leds_o~11\ : maxv_lcell
-- Equation(s):
-- \leds_o~11_combout\ = (\leds_o~10_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_val|LessThan2~0_combout\,
	datac => \com_i~combout\(0),
	datad => \leds_o~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~11_combout\);

-- Location: LC_X5_Y5_N5
\leds_o~12\ : maxv_lcell
-- Equation(s):
-- \leds_o~12_combout\ = ((!\bin_lin_max|LessThan2~1_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\))) # (!\bin_lin_val|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \bin_lin_val|LessThan2~1_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~12_combout\);

-- Location: LC_X5_Y5_N1
\leds_o~13\ : maxv_lcell
-- Equation(s):
-- \leds_o~13_combout\ = (!\com_i~combout\(1) & (\bin_lin_min|LessThan4~0_combout\ & (\leds_o~12_combout\ & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_min|LessThan4~0_combout\,
	datac => \leds_o~12_combout\,
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~13_combout\);

-- Location: LC_X5_Y5_N7
\leds_o~14\ : maxv_lcell
-- Equation(s):
-- \leds_o~14_combout\ = (\leds_o~13_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \com_i~combout\(0),
	datac => \bin_lin_val|LessThan2~1_combout\,
	datad => \leds_o~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~14_combout\);

-- Location: LC_X1_Y7_N4
\leds_o~15\ : maxv_lcell
-- Equation(s):
-- \leds_o~15_combout\ = ((!\bin_lin_max|LessThan4~0_combout\ & (\osc_i~combout\ & !\Equal2~0_combout\))) # (!\bin_lin_val|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5575",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan4~0_combout\,
	datab => \bin_lin_max|LessThan4~0_combout\,
	datac => \osc_i~combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~15_combout\);

-- Location: LC_X1_Y7_N2
\leds_o~16\ : maxv_lcell
-- Equation(s):
-- \leds_o~16_combout\ = (\leds_o~1_combout\ & (!\com_i~combout\(1) & (\leds_o~15_combout\ & \bin_lin_min|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \leds_o~1_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~15_combout\,
	datad => \bin_lin_min|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~16_combout\);

-- Location: LC_X1_Y7_N0
\leds_o~17\ : maxv_lcell
-- Equation(s):
-- \leds_o~17_combout\ = (\leds_o~16_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan4~0_combout\,
	datab => \com_i~combout\(1),
	datac => \com_i~combout\(0),
	datad => \leds_o~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~17_combout\);

-- Location: LC_X3_Y5_N2
\leds_o~18\ : maxv_lcell
-- Equation(s):
-- \leds_o~18_combout\ = ((!\bin_lin_max|LessThan5~0_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\))) # (!\bin_lin_val|LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3733",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan5~0_combout\,
	datab => \bin_lin_val|LessThan5~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~18_combout\);

-- Location: LC_X7_Y6_N3
\leds_o~19\ : maxv_lcell
-- Equation(s):
-- \leds_o~19_combout\ = (\bin_lin_min|LessThan6~0_combout\ & (!\com_i~combout\(1) & (\leds_o~1_combout\ & \leds_o~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan6~0_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~1_combout\,
	datad => \leds_o~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~19_combout\);

-- Location: LC_X7_Y6_N0
\leds_o~20\ : maxv_lcell
-- Equation(s):
-- \leds_o~20_combout\ = (\leds_o~19_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan5~0_combout\,
	datab => \com_i~combout\(1),
	datac => \com_i~combout\(0),
	datad => \leds_o~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~20_combout\);

-- Location: LC_X9_Y5_N3
\leds_o~21\ : maxv_lcell
-- Equation(s):
-- \leds_o~21_combout\ = ((!\marche_normale_comp|LessThan1~0_combout\ & (!\min_i~combout\(3) & !\marche_normale_comp|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \marche_normale_comp|LessThan1~0_combout\,
	datac => \min_i~combout\(3),
	datad => \marche_normale_comp|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~21_combout\);

-- Location: LC_X9_Y5_N4
\leds_o~22\ : maxv_lcell
-- Equation(s):
-- \leds_o~22_combout\ = (\com_i~combout\(1) & (((\com_i~combout\(0))))) # (!\com_i~combout\(1) & (!\bin_lin_val|LessThan6~0_combout\ & ((\com_i~combout\(0)) # (\leds_o~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_val|LessThan6~0_combout\,
	datac => \com_i~combout\(0),
	datad => \leds_o~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~22_combout\);

-- Location: LC_X9_Y5_N8
\leds_o~23\ : maxv_lcell
-- Equation(s):
-- \leds_o~23_combout\ = (!\com_i~combout\(1) & (\osc_i~combout\ & (!\com_i~combout\(0) & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \osc_i~combout\,
	datac => \com_i~combout\(0),
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~23_combout\);

-- Location: LC_X9_Y5_N5
\leds_o~24\ : maxv_lcell
-- Equation(s):
-- \leds_o~24_combout\ = (\leds_o~22_combout\) # ((!\min_i~combout\(3) & (!\bin_lin_max|LessThan6~0_combout\ & \leds_o~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(3),
	datab => \bin_lin_max|LessThan6~0_combout\,
	datac => \leds_o~22_combout\,
	datad => \leds_o~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~24_combout\);

-- Location: LC_X3_Y6_N4
\leds_o~25\ : maxv_lcell
-- Equation(s):
-- \leds_o~25_combout\ = (\val_i~combout\(3)) # ((\osc_i~combout\ & (!\Equal2~0_combout\ & \max_i~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \osc_i~combout\,
	datab => \Equal2~0_combout\,
	datac => \max_i~combout\(3),
	datad => \val_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~25_combout\);

-- Location: LC_X3_Y6_N2
\leds_o~26\ : maxv_lcell
-- Equation(s):
-- \leds_o~26_combout\ = (!\com_i~combout\(1) & (\bin_lin_min|LessThan8~0_combout\ & (\leds_o~25_combout\ & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_min|LessThan8~0_combout\,
	datac => \leds_o~25_combout\,
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~26_combout\);

-- Location: LC_X3_Y6_N0
\leds_o~27\ : maxv_lcell
-- Equation(s):
-- \leds_o~27_combout\ = (\leds_o~26_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (\val_i~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \val_i~combout\(3),
	datac => \com_i~combout\(0),
	datad => \leds_o~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~27_combout\);

-- Location: LC_X4_Y5_N8
\leds_o~28\ : maxv_lcell
-- Equation(s):
-- \leds_o~28_combout\ = ((!\Equal2~0_combout\ & (!\bin_lin_max|LessThan8~0_combout\ & \osc_i~combout\))) # (!\bin_lin_val|LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5755",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|LessThan8~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \bin_lin_max|LessThan8~0_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~28_combout\);

-- Location: LC_X7_Y6_N9
\leds_o~29\ : maxv_lcell
-- Equation(s):
-- \leds_o~29_combout\ = (\bin_lin_min|LessThan9~0_combout\ & (!\com_i~combout\(1) & (\leds_o~1_combout\ & \leds_o~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan9~0_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~1_combout\,
	datad => \leds_o~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~29_combout\);

-- Location: LC_X7_Y6_N4
\leds_o~30\ : maxv_lcell
-- Equation(s):
-- \leds_o~30_combout\ = (\leds_o~29_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(0),
	datab => \com_i~combout\(1),
	datac => \bin_lin_val|LessThan8~0_combout\,
	datad => \leds_o~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~30_combout\);

-- Location: LC_X4_Y5_N9
\leds_o~31\ : maxv_lcell
-- Equation(s):
-- \leds_o~31_combout\ = ((!\bin_lin_max|LessThan9~0_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\))) # (!\bin_lin_val|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|LessThan9~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \bin_lin_val|LessThan9~0_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~31_combout\);

-- Location: LC_X7_Y6_N2
\leds_o~32\ : maxv_lcell
-- Equation(s):
-- \leds_o~32_combout\ = (\bin_lin_min|LessThan10~0_combout\ & (!\com_i~combout\(1) & (\leds_o~1_combout\ & \leds_o~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan10~0_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~1_combout\,
	datad => \leds_o~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~32_combout\);

-- Location: LC_X7_Y6_N5
\leds_o~33\ : maxv_lcell
-- Equation(s):
-- \leds_o~33_combout\ = (\leds_o~32_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(0),
	datab => \com_i~combout\(1),
	datac => \bin_lin_val|LessThan9~0_combout\,
	datad => \leds_o~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~33_combout\);

-- Location: LC_X9_Y5_N2
\leds_o~34\ : maxv_lcell
-- Equation(s):
-- \leds_o~34_combout\ = (!\marche_normale_comp|LessThan1~0_combout\ & (!\marche_normale_comp|LessThan0~0_combout\ & ((!\min_i~combout\(3)) # (!\min_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \min_i~combout\(2),
	datab => \marche_normale_comp|LessThan1~0_combout\,
	datac => \min_i~combout\(3),
	datad => \marche_normale_comp|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~34_combout\);

-- Location: LC_X9_Y5_N7
\leds_o~35\ : maxv_lcell
-- Equation(s):
-- \leds_o~35_combout\ = (\com_i~combout\(1) & (((\com_i~combout\(0))))) # (!\com_i~combout\(1) & (!\bin_lin_val|LessThan10~0_combout\ & ((\com_i~combout\(0)) # (\leds_o~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_val|LessThan10~0_combout\,
	datac => \com_i~combout\(0),
	datad => \leds_o~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~35_combout\);

-- Location: LC_X9_Y5_N9
\leds_o~36\ : maxv_lcell
-- Equation(s):
-- \leds_o~36_combout\ = (\leds_o~35_combout\) # ((!\bin_lin_min|Equal0~0_combout\ & (!\bin_lin_max|LessThan10~0_combout\ & \leds_o~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|Equal0~0_combout\,
	datab => \leds_o~35_combout\,
	datac => \bin_lin_max|LessThan10~0_combout\,
	datad => \leds_o~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~36_combout\);

-- Location: LC_X5_Y5_N9
\leds_o~37\ : maxv_lcell
-- Equation(s):
-- \leds_o~37_combout\ = (\bin_lin_val|Equal0~0_combout\) # ((\bin_lin_max|Equal0~0_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|Equal0~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \bin_lin_val|Equal0~0_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~37_combout\);

-- Location: LC_X5_Y5_N3
\leds_o~38\ : maxv_lcell
-- Equation(s):
-- \leds_o~38_combout\ = (\bin_lin_min|LessThan12~0_combout\ & (\leds_o~37_combout\ & (!\com_i~combout\(1) & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|LessThan12~0_combout\,
	datab => \leds_o~37_combout\,
	datac => \com_i~combout\(1),
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~38_combout\);

-- Location: LC_X5_Y5_N0
\leds_o~39\ : maxv_lcell
-- Equation(s):
-- \leds_o~39_combout\ = (\leds_o~38_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (\bin_lin_val|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \com_i~combout\(0),
	datac => \bin_lin_val|Equal0~0_combout\,
	datad => \leds_o~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~39_combout\);

-- Location: LC_X1_Y7_N7
\leds_o~40\ : maxv_lcell
-- Equation(s):
-- \leds_o~40_combout\ = ((\osc_i~combout\ & (!\bin_lin_max|LessThan12~0_combout\ & !\Equal2~0_combout\))) # (!\bin_lin_val|LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \osc_i~combout\,
	datab => \bin_lin_val|LessThan12~0_combout\,
	datac => \bin_lin_max|LessThan12~0_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~40_combout\);

-- Location: LC_X1_Y7_N8
\leds_o~41\ : maxv_lcell
-- Equation(s):
-- \leds_o~41_combout\ = (!\bin_lin_min|Equal0~1_combout\ & (!\com_i~combout\(1) & (\leds_o~40_combout\ & \leds_o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_min|Equal0~1_combout\,
	datab => \com_i~combout\(1),
	datac => \leds_o~40_combout\,
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~41_combout\);

-- Location: LC_X1_Y7_N1
\leds_o~42\ : maxv_lcell
-- Equation(s):
-- \leds_o~42_combout\ = (\leds_o~41_combout\) # ((\com_i~combout\(0) & ((\com_i~combout\(1)) # (!\bin_lin_val|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(0),
	datab => \bin_lin_val|LessThan12~0_combout\,
	datac => \com_i~combout\(1),
	datad => \leds_o~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~42_combout\);

-- Location: LC_X3_Y6_N1
\leds_o~43\ : maxv_lcell
-- Equation(s):
-- \leds_o~43_combout\ = (\bin_lin_val|Equal0~1_combout\) # ((\bin_lin_max|Equal0~1_combout\ & (!\Equal2~0_combout\ & \osc_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_max|Equal0~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \bin_lin_val|Equal0~1_combout\,
	datad => \osc_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~43_combout\);

-- Location: LC_X3_Y6_N3
\leds_o~44\ : maxv_lcell
-- Equation(s):
-- \leds_o~44_combout\ = (!\com_i~combout\(1) & (\leds_o~1_combout\ & (!\bin_lin_min|Equal0~2_combout\ & \leds_o~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \leds_o~1_combout\,
	datac => \bin_lin_min|Equal0~2_combout\,
	datad => \leds_o~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~44_combout\);

-- Location: LC_X3_Y6_N9
\leds_o~45\ : maxv_lcell
-- Equation(s):
-- \leds_o~45_combout\ = (\leds_o~44_combout\) # ((\com_i~combout\(0) & ((\bin_lin_val|Equal0~1_combout\) # (\com_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bin_lin_val|Equal0~1_combout\,
	datab => \com_i~combout\(0),
	datac => \com_i~combout\(1),
	datad => \leds_o~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~45_combout\);

-- Location: LC_X9_Y5_N0
\leds_o~46\ : maxv_lcell
-- Equation(s):
-- \leds_o~46_combout\ = (\com_i~combout\(1) & (((\com_i~combout\(0))))) # (!\com_i~combout\(1) & (\bin_lin_val|Equal0~2_combout\ & ((\com_i~combout\(0)) # (\leds_o~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \com_i~combout\(1),
	datab => \bin_lin_val|Equal0~2_combout\,
	datac => \com_i~combout\(0),
	datad => \leds_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~46_combout\);

-- Location: LC_X9_Y5_N6
\leds_o~47\ : maxv_lcell
-- Equation(s):
-- \leds_o~47_combout\ = ((\leds_o~46_combout\) # ((\bin_lin_max|Equal0~2_combout\ & \leds_o~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \leds_o~46_combout\,
	datac => \bin_lin_max|Equal0~2_combout\,
	datad => \leds_o~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \leds_o~47_combout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~2_combout\,
	oe => VCC,
	padio => ww_leds_o(0));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~5_combout\,
	oe => VCC,
	padio => ww_leds_o(1));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~8_combout\,
	oe => VCC,
	padio => ww_leds_o(2));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~11_combout\,
	oe => VCC,
	padio => ww_leds_o(3));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~14_combout\,
	oe => VCC,
	padio => ww_leds_o(4));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~17_combout\,
	oe => VCC,
	padio => ww_leds_o(5));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~20_combout\,
	oe => VCC,
	padio => ww_leds_o(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~24_combout\,
	oe => VCC,
	padio => ww_leds_o(7));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~27_combout\,
	oe => VCC,
	padio => ww_leds_o(8));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~30_combout\,
	oe => VCC,
	padio => ww_leds_o(9));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~33_combout\,
	oe => VCC,
	padio => ww_leds_o(10));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~36_combout\,
	oe => VCC,
	padio => ww_leds_o(11));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~39_combout\,
	oe => VCC,
	padio => ww_leds_o(12));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~42_combout\,
	oe => VCC,
	padio => ww_leds_o(13));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~45_combout\,
	oe => VCC,
	padio => ww_leds_o(14));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds_o[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \leds_o~47_combout\,
	oe => VCC,
	padio => ww_leds_o(15));
END structure;


