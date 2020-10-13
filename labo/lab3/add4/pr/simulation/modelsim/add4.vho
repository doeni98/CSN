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

-- DATE "10/13/2020 17:53:31"

-- 
-- Device: Altera 5M40ZE64C4 Package EQFP64
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	add4full IS
    PORT (
	nbr_a_i : IN std_logic_vector(4 DOWNTO 0);
	nbr_b_i : IN std_logic_vector(4 DOWNTO 0);
	cin_i : IN std_logic;
	somme_o : OUT std_logic_vector(4 DOWNTO 0);
	cout_o : OUT std_logic;
	ovr_o : OUT std_logic
	);
END add4full;

-- Design Ports Information
-- nbr_a_i[4]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_b_i[4]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_b_i[0]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_a_i[0]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_b_i[1]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_a_i[1]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_b_i[2]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_a_i[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_b_i[3]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nbr_a_i[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cin_i	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- somme_o[0]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- somme_o[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- somme_o[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- somme_o[3]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- somme_o[4]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- cout_o	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ovr_o	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF add4full IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nbr_a_i : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_nbr_b_i : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_cin_i : std_logic;
SIGNAL ww_somme_o : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_cout_o : std_logic;
SIGNAL ww_ovr_o : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \cin_i~combout\ : std_logic;
SIGNAL \Add0~27_cout0\ : std_logic;
SIGNAL \Add0~27COUT1_36\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_38\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_40\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_42\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \ovr_o~0_combout\ : std_logic;
SIGNAL \nbr_a_i~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \nbr_b_i~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_nbr_a_i <= nbr_a_i;
ww_nbr_b_i <= nbr_b_i;
ww_cin_i <= cin_i;
somme_o <= ww_somme_o;
cout_o <= ww_cout_o;
ovr_o <= ww_ovr_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_a_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_a_i(0),
	combout => \nbr_a_i~combout\(0));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_b_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_b_i(0),
	combout => \nbr_b_i~combout\(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin_i,
	combout => \cin_i~combout\);

-- Location: LC_X2_Y1_N1
\Add0~27\ : maxv_lcell
-- Equation(s):
-- \Add0~27_cout0\ = CARRY(((\cin_i~combout\)))
-- \Add0~27COUT1_36\ = CARRY(((\cin_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25\,
	cout0 => \Add0~27_cout0\,
	cout1 => \Add0~27COUT1_36\);

-- Location: LC_X2_Y1_N2
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \nbr_a_i~combout\(0) $ (\nbr_b_i~combout\(0) $ ((\Add0~27_cout0\)))
-- \Add0~2\ = CARRY((\nbr_a_i~combout\(0) & (!\nbr_b_i~combout\(0) & !\Add0~27_cout0\)) # (!\nbr_a_i~combout\(0) & ((!\Add0~27_cout0\) # (!\nbr_b_i~combout\(0)))))
-- \Add0~2COUT1_38\ = CARRY((\nbr_a_i~combout\(0) & (!\nbr_b_i~combout\(0) & !\Add0~27COUT1_36\)) # (!\nbr_a_i~combout\(0) & ((!\Add0~27COUT1_36\) # (!\nbr_b_i~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_a_i~combout\(0),
	datab => \nbr_b_i~combout\(0),
	cin0 => \Add0~27_cout0\,
	cin1 => \Add0~27COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_38\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_a_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_a_i(1),
	combout => \nbr_a_i~combout\(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_b_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_b_i(1),
	combout => \nbr_b_i~combout\(1));

-- Location: LC_X2_Y1_N3
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = \nbr_a_i~combout\(1) $ (\nbr_b_i~combout\(1) $ ((!\Add0~2\)))
-- \Add0~7\ = CARRY((\nbr_a_i~combout\(1) & ((\nbr_b_i~combout\(1)) # (!\Add0~2\))) # (!\nbr_a_i~combout\(1) & (\nbr_b_i~combout\(1) & !\Add0~2\)))
-- \Add0~7COUT1_40\ = CARRY((\nbr_a_i~combout\(1) & ((\nbr_b_i~combout\(1)) # (!\Add0~2COUT1_38\))) # (!\nbr_a_i~combout\(1) & (\nbr_b_i~combout\(1) & !\Add0~2COUT1_38\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_a_i~combout\(1),
	datab => \nbr_b_i~combout\(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_40\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_a_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_a_i(2),
	combout => \nbr_a_i~combout\(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_b_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_b_i(2),
	combout => \nbr_b_i~combout\(2));

-- Location: LC_X2_Y1_N4
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = \nbr_a_i~combout\(2) $ (\nbr_b_i~combout\(2) $ ((\Add0~7\)))
-- \Add0~12\ = CARRY((\nbr_a_i~combout\(2) & (!\nbr_b_i~combout\(2) & !\Add0~7COUT1_40\)) # (!\nbr_a_i~combout\(2) & ((!\Add0~7COUT1_40\) # (!\nbr_b_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_a_i~combout\(2),
	datab => \nbr_b_i~combout\(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout => \Add0~12\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_b_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_b_i(3),
	combout => \nbr_b_i~combout\(3));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_a_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_a_i(3),
	combout => \nbr_a_i~combout\(3));

-- Location: LC_X2_Y1_N5
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = \nbr_b_i~combout\(3) $ (\nbr_a_i~combout\(3) $ ((!\Add0~12\)))
-- \Add0~17\ = CARRY((\nbr_b_i~combout\(3) & ((\nbr_a_i~combout\(3)) # (!\Add0~12\))) # (!\nbr_b_i~combout\(3) & (\nbr_a_i~combout\(3) & !\Add0~12\)))
-- \Add0~17COUT1_42\ = CARRY((\nbr_b_i~combout\(3) & ((\nbr_a_i~combout\(3)) # (!\Add0~12\))) # (!\nbr_b_i~combout\(3) & (\nbr_a_i~combout\(3) & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_b_i~combout\(3),
	datab => \nbr_a_i~combout\(3),
	cin => \Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_42\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_a_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_a_i(4),
	combout => \nbr_a_i~combout\(4));

-- Location: LC_X2_Y1_N6
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = ((((!\Add0~12\ & \Add0~17\) # (\Add0~12\ & \Add0~17COUT1_42\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~12\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nbr_b_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nbr_b_i(4),
	combout => \nbr_b_i~combout\(4));

-- Location: LC_X2_Y1_N8
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = \nbr_a_i~combout\(4) $ (((\Add0~20_combout\ $ (\nbr_b_i~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_a_i~combout\(4),
	datac => \Add0~20_combout\,
	datad => \nbr_b_i~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\);

-- Location: LC_X2_Y1_N9
\Add3~1\ : maxv_lcell
-- Equation(s):
-- \Add3~1_combout\ = (\nbr_a_i~combout\(4) & (((\Add0~20_combout\) # (\nbr_b_i~combout\(4))))) # (!\nbr_a_i~combout\(4) & (((\Add0~20_combout\ & \nbr_b_i~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_a_i~combout\(4),
	datac => \Add0~20_combout\,
	datad => \nbr_b_i~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~1_combout\);

-- Location: LC_X2_Y1_N7
\ovr_o~0\ : maxv_lcell
-- Equation(s):
-- \ovr_o~0_combout\ = (\nbr_a_i~combout\(4) & (\nbr_b_i~combout\(4) & ((!\Add0~20_combout\)))) # (!\nbr_a_i~combout\(4) & (!\nbr_b_i~combout\(4) & ((\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1188",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nbr_a_i~combout\(4),
	datab => \nbr_b_i~combout\(4),
	datad => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ovr_o~0_combout\);

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\somme_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add0~0_combout\,
	oe => VCC,
	padio => ww_somme_o(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\somme_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add0~5_combout\,
	oe => VCC,
	padio => ww_somme_o(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\somme_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add0~10_combout\,
	oe => VCC,
	padio => ww_somme_o(2));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\somme_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add0~15_combout\,
	oe => VCC,
	padio => ww_somme_o(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\somme_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~0_combout\,
	oe => VCC,
	padio => ww_somme_o(4));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cout_o~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~1_combout\,
	oe => VCC,
	padio => ww_cout_o);

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ovr_o~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ovr_o~0_combout\,
	oe => VCC,
	padio => ww_ovr_o);
END structure;


