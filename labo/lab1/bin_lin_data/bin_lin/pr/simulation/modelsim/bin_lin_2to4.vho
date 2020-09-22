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

-- DATE "09/22/2020 17:30:40"

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

ENTITY 	bin_lin_2to4 IS
    PORT (
	bin_i : IN std_logic_vector(1 DOWNTO 0);
	lin_o : OUT std_logic_vector(3 DOWNTO 0)
	);
END bin_lin_2to4;

-- Design Ports Information
-- bin_i[0]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- bin_i[1]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lin_o[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lin_o[1]	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lin_o[2]	=>  Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lin_o[3]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF bin_lin_2to4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin_i : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_lin_o : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \bin_i~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_bin_i <= bin_i;
lin_o <= ww_lin_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bin_i(1),
	combout => \bin_i~combout\(1));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\bin_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_bin_i(0),
	combout => \bin_i~combout\(0));

-- Location: LC_X10_Y3_N2
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (((\bin_i~combout\(1)) # (\bin_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \bin_i~combout\(1),
	datad => \bin_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X10_Y3_N4
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (((\bin_i~combout\(1) & \bin_i~combout\(0))))

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
	datac => \bin_i~combout\(1),
	datad => \bin_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lin_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_lin_o(0));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lin_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_lin_o(1));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lin_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \bin_i~combout\(1),
	oe => VCC,
	padio => ww_lin_o(2));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lin_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~1_combout\,
	oe => VCC,
	padio => ww_lin_o(3));
END structure;


