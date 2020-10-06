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

-- DATE "10/06/2020 18:04:40"

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

ENTITY 	maxv_top IS
    PORT (
	Clk_Gen_i : IN std_logic;
	Clk_Main_i : IN std_logic;
	Con_25p_io : INOUT std_logic_vector(25 DOWNTO 1);
	Con_80p_io : INOUT std_logic_vector(79 DOWNTO 2);
	Mezzanine_io : INOUT std_logic_vector(20 DOWNTO 5);
	Encoder_A_i : IN std_logic;
	Encoder_B_i : IN std_logic;
	nButton_i : IN std_logic_vector(8 DOWNTO 1);
	nReset_i : IN std_logic;
	Switch_i : IN std_logic_vector(7 DOWNTO 0);
	nLed_o : OUT std_logic_vector(7 DOWNTO 0);
	Led_RGB_o : OUT std_logic_vector(2 DOWNTO 0);
	nSeven_Seg_o : OUT std_logic_vector(7 DOWNTO 0)
	);
END maxv_top;

-- Design Ports Information
-- Clk_Gen_i	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encoder_A_i	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encoder_B_i	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[2]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[5]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[6]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[8]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk_Main_i	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nReset_i	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[7]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[5]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nLed_o[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[1]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[5]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[6]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[7]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[2]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[3]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[5]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[6]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[7]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[5]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[6]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[7]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[8]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[9]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[10]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[11]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[12]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[13]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[14]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[15]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[16]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[17]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[18]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[19]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[20]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[1]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[2]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[3]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[4]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[5]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[6]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[7]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[8]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[9]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[10]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[11]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[12]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[13]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[14]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[15]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[16]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[17]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[18]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[19]	=>  Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[20]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[21]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[22]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[23]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[24]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[25]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[2]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[4]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[5]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[6]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[7]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[8]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[10]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[11]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[12]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[13]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[14]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[15]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[16]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[17]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[18]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[19]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[20]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[21]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[22]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[23]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[24]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[25]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[26]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[27]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[28]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[29]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[30]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[31]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[32]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[33]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[34]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[35]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[36]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[37]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[38]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[39]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[40]	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[41]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[42]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[43]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[44]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[45]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[46]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[47]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[48]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[49]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[50]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[51]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[52]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[53]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[54]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[55]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[56]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[57]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[58]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[59]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[60]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[61]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[62]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[63]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[64]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[65]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[66]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[67]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[68]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[69]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[70]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[71]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[72]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[73]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[74]	=>  Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[75]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[76]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[77]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[78]	=>  Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[79]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF maxv_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_Gen_i : std_logic;
SIGNAL ww_Clk_Main_i : std_logic;
SIGNAL ww_Encoder_A_i : std_logic;
SIGNAL ww_Encoder_B_i : std_logic;
SIGNAL ww_nButton_i : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_nReset_i : std_logic;
SIGNAL ww_Switch_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nLed_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_RGB_o : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nSeven_Seg_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|marche_normale_comp|LessThan0~5\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~5\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~10\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~10\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~15\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~15\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~20\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~20\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~25\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~25\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~30\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~30\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~35\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~35\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~40\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~40\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~45\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~45\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~50\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~50\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~55\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~55\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~60\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~60\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~65\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~65\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~70\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~70\ : std_logic;
SIGNAL \Con_25p_io[9]~32\ : std_logic;
SIGNAL \Con_25p_io[10]~33\ : std_logic;
SIGNAL \Con_25p_io[11]~34\ : std_logic;
SIGNAL \Con_25p_io[12]~35\ : std_logic;
SIGNAL \Con_25p_io[15]~38\ : std_logic;
SIGNAL \Con_25p_io[16]~39\ : std_logic;
SIGNAL \Con_80p_io[72]~70\ : std_logic;
SIGNAL \Con_80p_io[73]~71\ : std_logic;
SIGNAL \Clk_Main_i~combout\ : std_logic;
SIGNAL \nReset_i~combout\ : std_logic;
SIGNAL \cpt_s[1]~35\ : std_logic;
SIGNAL \cpt_s[1]~35COUT1_56\ : std_logic;
SIGNAL \cpt_s[2]~31\ : std_logic;
SIGNAL \cpt_s[2]~31COUT1_58\ : std_logic;
SIGNAL \cpt_s[3]~27\ : std_logic;
SIGNAL \cpt_s[3]~27COUT1_60\ : std_logic;
SIGNAL \cpt_s[4]~23\ : std_logic;
SIGNAL \cpt_s[5]~19\ : std_logic;
SIGNAL \cpt_s[5]~19COUT1_62\ : std_logic;
SIGNAL \cpt_s[6]~15\ : std_logic;
SIGNAL \cpt_s[6]~15COUT1_64\ : std_logic;
SIGNAL \cpt_s[7]~9\ : std_logic;
SIGNAL \cpt_s[7]~9COUT1_66\ : std_logic;
SIGNAL \cpt_s[8]~11\ : std_logic;
SIGNAL \cpt_s[8]~11COUT1_68\ : std_logic;
SIGNAL \cpt_s[9]~7\ : std_logic;
SIGNAL \cpt_s[10]~37\ : std_logic;
SIGNAL \cpt_s[10]~37COUT1_70\ : std_logic;
SIGNAL \cpt_s[11]~33\ : std_logic;
SIGNAL \cpt_s[11]~33COUT1_72\ : std_logic;
SIGNAL \cpt_s[12]~29\ : std_logic;
SIGNAL \cpt_s[12]~29COUT1_74\ : std_logic;
SIGNAL \cpt_s[13]~25\ : std_logic;
SIGNAL \cpt_s[13]~25COUT1_76\ : std_logic;
SIGNAL \cpt_s[14]~21\ : std_logic;
SIGNAL \cpt_s[15]~17\ : std_logic;
SIGNAL \cpt_s[15]~17COUT1_78\ : std_logic;
SIGNAL \cpt_s[16]~13\ : std_logic;
SIGNAL \cpt_s[16]~13COUT1_80\ : std_logic;
SIGNAL \cpt_s[17]~5\ : std_logic;
SIGNAL \cpt_s[17]~5COUT1_82\ : std_logic;
SIGNAL \cpt_s[18]~3\ : std_logic;
SIGNAL \cpt_s[18]~3COUT1_84\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \U1|leds_o[0]~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|Equal0~2_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|Equal0~2_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|Equal0~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|Equal0~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~72_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~72COUT1_88\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~67_cout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~62_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~62COUT1_90\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~57_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~57COUT1_92\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~52_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~52COUT1_94\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~47_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~47COUT1_96\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~42_cout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan10~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan10~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan9~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan9~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan8~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan8~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~37_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~37COUT1_98\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~32_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~32COUT1_100\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~27_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~27COUT1_102\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~22_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~22COUT1_104\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~17_cout\ : std_logic;
SIGNAL \U1|bin_lin_min|Equal0~1_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|Equal0~1_combout\ : std_logic;
SIGNAL \U1|bin_lin_val|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_min|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~12_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~12COUT1_106\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~7_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~7COUT1_108\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|Equal0~2_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|Equal0~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~72_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~72COUT1_88\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~67_cout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~62_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~62COUT1_90\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~57_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~57COUT1_92\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~52_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~52COUT1_94\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~47_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~47COUT1_96\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~42_cout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan10~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan9~0_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan8~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~37_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~37COUT1_98\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~32_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~32COUT1_100\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~27_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~27COUT1_102\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~22_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~22COUT1_104\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~17_cout\ : std_logic;
SIGNAL \U1|bin_lin_max|Equal0~1_combout\ : std_logic;
SIGNAL \U1|bin_lin_max|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~12_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~12COUT1_106\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~7_cout0\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~7COUT1_108\ : std_logic;
SIGNAL \U1|marche_normale_comp|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|leds_o[0]~1_combout\ : std_logic;
SIGNAL \U1|leds_o[0]~2_combout\ : std_logic;
SIGNAL \U1|leds_o[4]~5_combout\ : std_logic;
SIGNAL \U1|leds_o[1]~6_combout\ : std_logic;
SIGNAL \U1|leds_o[1]~3_combout\ : std_logic;
SIGNAL \U1|leds_o[1]~4_combout\ : std_logic;
SIGNAL \U1|leds_o[1]~7_combout\ : std_logic;
SIGNAL \U1|leds_o[2]~8_combout\ : std_logic;
SIGNAL \U1|leds_o[2]~9_combout\ : std_logic;
SIGNAL \U1|leds_o[2]~10_combout\ : std_logic;
SIGNAL \U1|leds_o[3]~11_combout\ : std_logic;
SIGNAL \U1|leds_o[3]~12_combout\ : std_logic;
SIGNAL \U1|leds_o[3]~13_combout\ : std_logic;
SIGNAL \U1|leds_o[4]~14_combout\ : std_logic;
SIGNAL \U1|leds_o[4]~15_combout\ : std_logic;
SIGNAL \U1|leds_o[4]~16_combout\ : std_logic;
SIGNAL \U1|leds_o[5]~17_combout\ : std_logic;
SIGNAL \U1|leds_o[5]~18_combout\ : std_logic;
SIGNAL \U1|leds_o[5]~19_combout\ : std_logic;
SIGNAL \U1|leds_o[6]~20_combout\ : std_logic;
SIGNAL \U1|leds_o[6]~21_combout\ : std_logic;
SIGNAL \U1|leds_o[6]~22_combout\ : std_logic;
SIGNAL \U1|leds_o[7]~23_combout\ : std_logic;
SIGNAL \U1|leds_o[7]~24_combout\ : std_logic;
SIGNAL \U1|leds_o[7]~25_combout\ : std_logic;
SIGNAL \U1|leds_o[8]~26_combout\ : std_logic;
SIGNAL \U1|leds_o[8]~27_combout\ : std_logic;
SIGNAL \U1|leds_o[8]~28_combout\ : std_logic;
SIGNAL \U1|leds_o[9]~29_combout\ : std_logic;
SIGNAL \U1|leds_o[9]~30_combout\ : std_logic;
SIGNAL \U1|leds_o[9]~31_combout\ : std_logic;
SIGNAL \U1|leds_o[10]~32_combout\ : std_logic;
SIGNAL \U1|leds_o[10]~33_combout\ : std_logic;
SIGNAL \U1|leds_o[10]~34_combout\ : std_logic;
SIGNAL \U1|leds_o[11]~35_combout\ : std_logic;
SIGNAL \U1|leds_o[11]~36_combout\ : std_logic;
SIGNAL \U1|leds_o[11]~37_combout\ : std_logic;
SIGNAL \U1|leds_o[12]~38_combout\ : std_logic;
SIGNAL \U1|leds_o[12]~39_combout\ : std_logic;
SIGNAL \U1|leds_o[12]~40_combout\ : std_logic;
SIGNAL \U1|leds_o[13]~41_combout\ : std_logic;
SIGNAL \U1|leds_o[13]~42_combout\ : std_logic;
SIGNAL \U1|leds_o[13]~43_combout\ : std_logic;
SIGNAL \U1|leds_o[14]~44_combout\ : std_logic;
SIGNAL \U1|leds_o[14]~45_combout\ : std_logic;
SIGNAL \U1|leds_o[14]~46_combout\ : std_logic;
SIGNAL \U1|leds_o[15]~47_combout\ : std_logic;
SIGNAL \U1|leds_o[15]~48_combout\ : std_logic;
SIGNAL \Switch_i~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL cpt_s : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_nReset_i~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_cpt_s : std_logic_vector(19 DOWNTO 19);

BEGIN

ww_Clk_Gen_i <= Clk_Gen_i;
ww_Clk_Main_i <= Clk_Main_i;
ww_Encoder_A_i <= Encoder_A_i;
ww_Encoder_B_i <= Encoder_B_i;
ww_nButton_i <= nButton_i;
ww_nReset_i <= nReset_i;
ww_Switch_i <= Switch_i;
nLed_o <= ww_nLed_o;
Led_RGB_o <= ww_Led_RGB_o;
nSeven_Seg_o <= ww_nSeven_Seg_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nReset_i~combout\ <= NOT \nReset_i~combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_cpt_s(19) <= NOT cpt_s(19);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(9),
	combout => \Con_25p_io[9]~32\);

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(10),
	combout => \Con_25p_io[10]~33\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(11),
	combout => \Con_25p_io[11]~34\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(12),
	combout => \Con_25p_io[12]~35\);

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(15),
	combout => \Con_25p_io[15]~38\);

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(16),
	combout => \Con_25p_io[16]~39\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[72]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(72),
	combout => \Con_80p_io[72]~70\);

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[73]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(73),
	combout => \Con_80p_io[73]~71\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Main_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Main_i,
	combout => \Clk_Main_i~combout\);

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nReset_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nReset_i,
	combout => \nReset_i~combout\);

-- Location: LC_X3_Y4_N0
\cpt_s[0]\ : maxv_lcell
-- Equation(s):
-- cpt_s(0) = DFFEAS((((!cpt_s(0)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(0));

-- Location: LC_X3_Y4_N1
\cpt_s[1]\ : maxv_lcell
-- Equation(s):
-- cpt_s(1) = DFFEAS(cpt_s(0) $ ((cpt_s(1))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[1]~35\ = CARRY((cpt_s(0) & (cpt_s(1))))
-- \cpt_s[1]~35COUT1_56\ = CARRY((cpt_s(0) & (cpt_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(0),
	datab => cpt_s(1),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(1),
	cout0 => \cpt_s[1]~35\,
	cout1 => \cpt_s[1]~35COUT1_56\);

-- Location: LC_X3_Y4_N2
\cpt_s[2]\ : maxv_lcell
-- Equation(s):
-- cpt_s(2) = DFFEAS((cpt_s(2) $ ((\cpt_s[1]~35\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[2]~31\ = CARRY(((!\cpt_s[1]~35\) # (!cpt_s(2))))
-- \cpt_s[2]~31COUT1_58\ = CARRY(((!\cpt_s[1]~35COUT1_56\) # (!cpt_s(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(2),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \cpt_s[1]~35\,
	cin1 => \cpt_s[1]~35COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(2),
	cout0 => \cpt_s[2]~31\,
	cout1 => \cpt_s[2]~31COUT1_58\);

-- Location: LC_X3_Y4_N3
\cpt_s[3]\ : maxv_lcell
-- Equation(s):
-- cpt_s(3) = DFFEAS(cpt_s(3) $ ((((!\cpt_s[2]~31\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[3]~27\ = CARRY((cpt_s(3) & ((!\cpt_s[2]~31\))))
-- \cpt_s[3]~27COUT1_60\ = CARRY((cpt_s(3) & ((!\cpt_s[2]~31COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(3),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \cpt_s[2]~31\,
	cin1 => \cpt_s[2]~31COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(3),
	cout0 => \cpt_s[3]~27\,
	cout1 => \cpt_s[3]~27COUT1_60\);

-- Location: LC_X3_Y4_N4
\cpt_s[4]\ : maxv_lcell
-- Equation(s):
-- cpt_s(4) = DFFEAS((cpt_s(4) $ ((\cpt_s[3]~27\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[4]~23\ = CARRY(((!\cpt_s[3]~27COUT1_60\) # (!cpt_s(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(4),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \cpt_s[3]~27\,
	cin1 => \cpt_s[3]~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(4),
	cout => \cpt_s[4]~23\);

-- Location: LC_X3_Y4_N5
\cpt_s[5]\ : maxv_lcell
-- Equation(s):
-- cpt_s(5) = DFFEAS(cpt_s(5) $ ((((!\cpt_s[4]~23\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[5]~19\ = CARRY((cpt_s(5) & ((!\cpt_s[4]~23\))))
-- \cpt_s[5]~19COUT1_62\ = CARRY((cpt_s(5) & ((!\cpt_s[4]~23\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(5),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(5),
	cout0 => \cpt_s[5]~19\,
	cout1 => \cpt_s[5]~19COUT1_62\);

-- Location: LC_X3_Y4_N6
\cpt_s[6]\ : maxv_lcell
-- Equation(s):
-- cpt_s(6) = DFFEAS((cpt_s(6) $ (((!\cpt_s[4]~23\ & \cpt_s[5]~19\) # (\cpt_s[4]~23\ & \cpt_s[5]~19COUT1_62\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[6]~15\ = CARRY(((!\cpt_s[5]~19\) # (!cpt_s(6))))
-- \cpt_s[6]~15COUT1_64\ = CARRY(((!\cpt_s[5]~19COUT1_62\) # (!cpt_s(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(6),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~23\,
	cin0 => \cpt_s[5]~19\,
	cin1 => \cpt_s[5]~19COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(6),
	cout0 => \cpt_s[6]~15\,
	cout1 => \cpt_s[6]~15COUT1_64\);

-- Location: LC_X3_Y4_N7
\cpt_s[7]\ : maxv_lcell
-- Equation(s):
-- cpt_s(7) = DFFEAS((cpt_s(7) $ ((!(!\cpt_s[4]~23\ & \cpt_s[6]~15\) # (\cpt_s[4]~23\ & \cpt_s[6]~15COUT1_64\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[7]~9\ = CARRY(((cpt_s(7) & !\cpt_s[6]~15\)))
-- \cpt_s[7]~9COUT1_66\ = CARRY(((cpt_s(7) & !\cpt_s[6]~15COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(7),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~23\,
	cin0 => \cpt_s[6]~15\,
	cin1 => \cpt_s[6]~15COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(7),
	cout0 => \cpt_s[7]~9\,
	cout1 => \cpt_s[7]~9COUT1_66\);

-- Location: LC_X3_Y4_N8
\cpt_s[8]\ : maxv_lcell
-- Equation(s):
-- cpt_s(8) = DFFEAS((cpt_s(8) $ (((!\cpt_s[4]~23\ & \cpt_s[7]~9\) # (\cpt_s[4]~23\ & \cpt_s[7]~9COUT1_66\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[8]~11\ = CARRY(((!\cpt_s[7]~9\) # (!cpt_s(8))))
-- \cpt_s[8]~11COUT1_68\ = CARRY(((!\cpt_s[7]~9COUT1_66\) # (!cpt_s(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(8),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~23\,
	cin0 => \cpt_s[7]~9\,
	cin1 => \cpt_s[7]~9COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(8),
	cout0 => \cpt_s[8]~11\,
	cout1 => \cpt_s[8]~11COUT1_68\);

-- Location: LC_X3_Y4_N9
\cpt_s[9]\ : maxv_lcell
-- Equation(s):
-- cpt_s(9) = DFFEAS((cpt_s(9) $ ((!(!\cpt_s[4]~23\ & \cpt_s[8]~11\) # (\cpt_s[4]~23\ & \cpt_s[8]~11COUT1_68\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[9]~7\ = CARRY(((cpt_s(9) & !\cpt_s[8]~11COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(9),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~23\,
	cin0 => \cpt_s[8]~11\,
	cin1 => \cpt_s[8]~11COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(9),
	cout => \cpt_s[9]~7\);

-- Location: LC_X4_Y4_N0
\cpt_s[10]\ : maxv_lcell
-- Equation(s):
-- cpt_s(10) = DFFEAS((cpt_s(10) $ ((\cpt_s[9]~7\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[10]~37\ = CARRY(((!\cpt_s[9]~7\) # (!cpt_s(10))))
-- \cpt_s[10]~37COUT1_70\ = CARRY(((!\cpt_s[9]~7\) # (!cpt_s(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(10),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(10),
	cout0 => \cpt_s[10]~37\,
	cout1 => \cpt_s[10]~37COUT1_70\);

-- Location: LC_X4_Y4_N1
\cpt_s[11]\ : maxv_lcell
-- Equation(s):
-- cpt_s(11) = DFFEAS((cpt_s(11) $ ((!(!\cpt_s[9]~7\ & \cpt_s[10]~37\) # (\cpt_s[9]~7\ & \cpt_s[10]~37COUT1_70\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[11]~33\ = CARRY(((cpt_s(11) & !\cpt_s[10]~37\)))
-- \cpt_s[11]~33COUT1_72\ = CARRY(((cpt_s(11) & !\cpt_s[10]~37COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(11),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~7\,
	cin0 => \cpt_s[10]~37\,
	cin1 => \cpt_s[10]~37COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(11),
	cout0 => \cpt_s[11]~33\,
	cout1 => \cpt_s[11]~33COUT1_72\);

-- Location: LC_X4_Y4_N2
\cpt_s[12]\ : maxv_lcell
-- Equation(s):
-- cpt_s(12) = DFFEAS((cpt_s(12) $ (((!\cpt_s[9]~7\ & \cpt_s[11]~33\) # (\cpt_s[9]~7\ & \cpt_s[11]~33COUT1_72\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[12]~29\ = CARRY(((!\cpt_s[11]~33\) # (!cpt_s(12))))
-- \cpt_s[12]~29COUT1_74\ = CARRY(((!\cpt_s[11]~33COUT1_72\) # (!cpt_s(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(12),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~7\,
	cin0 => \cpt_s[11]~33\,
	cin1 => \cpt_s[11]~33COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(12),
	cout0 => \cpt_s[12]~29\,
	cout1 => \cpt_s[12]~29COUT1_74\);

-- Location: LC_X4_Y4_N3
\cpt_s[13]\ : maxv_lcell
-- Equation(s):
-- cpt_s(13) = DFFEAS(cpt_s(13) $ ((((!(!\cpt_s[9]~7\ & \cpt_s[12]~29\) # (\cpt_s[9]~7\ & \cpt_s[12]~29COUT1_74\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[13]~25\ = CARRY((cpt_s(13) & ((!\cpt_s[12]~29\))))
-- \cpt_s[13]~25COUT1_76\ = CARRY((cpt_s(13) & ((!\cpt_s[12]~29COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(13),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~7\,
	cin0 => \cpt_s[12]~29\,
	cin1 => \cpt_s[12]~29COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(13),
	cout0 => \cpt_s[13]~25\,
	cout1 => \cpt_s[13]~25COUT1_76\);

-- Location: LC_X4_Y4_N4
\cpt_s[14]\ : maxv_lcell
-- Equation(s):
-- cpt_s(14) = DFFEAS(cpt_s(14) $ (((((!\cpt_s[9]~7\ & \cpt_s[13]~25\) # (\cpt_s[9]~7\ & \cpt_s[13]~25COUT1_76\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[14]~21\ = CARRY(((!\cpt_s[13]~25COUT1_76\)) # (!cpt_s(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(14),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~7\,
	cin0 => \cpt_s[13]~25\,
	cin1 => \cpt_s[13]~25COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(14),
	cout => \cpt_s[14]~21\);

-- Location: LC_X4_Y4_N5
\cpt_s[15]\ : maxv_lcell
-- Equation(s):
-- cpt_s(15) = DFFEAS(cpt_s(15) $ ((((!\cpt_s[14]~21\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[15]~17\ = CARRY((cpt_s(15) & ((!\cpt_s[14]~21\))))
-- \cpt_s[15]~17COUT1_78\ = CARRY((cpt_s(15) & ((!\cpt_s[14]~21\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(15),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(15),
	cout0 => \cpt_s[15]~17\,
	cout1 => \cpt_s[15]~17COUT1_78\);

-- Location: LC_X4_Y4_N6
\cpt_s[16]\ : maxv_lcell
-- Equation(s):
-- cpt_s(16) = DFFEAS(cpt_s(16) $ (((((!\cpt_s[14]~21\ & \cpt_s[15]~17\) # (\cpt_s[14]~21\ & \cpt_s[15]~17COUT1_78\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[16]~13\ = CARRY(((!\cpt_s[15]~17\)) # (!cpt_s(16)))
-- \cpt_s[16]~13COUT1_80\ = CARRY(((!\cpt_s[15]~17COUT1_78\)) # (!cpt_s(16)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(16),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~21\,
	cin0 => \cpt_s[15]~17\,
	cin1 => \cpt_s[15]~17COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(16),
	cout0 => \cpt_s[16]~13\,
	cout1 => \cpt_s[16]~13COUT1_80\);

-- Location: LC_X4_Y4_N7
\cpt_s[17]\ : maxv_lcell
-- Equation(s):
-- cpt_s(17) = DFFEAS((cpt_s(17) $ ((!(!\cpt_s[14]~21\ & \cpt_s[16]~13\) # (\cpt_s[14]~21\ & \cpt_s[16]~13COUT1_80\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[17]~5\ = CARRY(((cpt_s(17) & !\cpt_s[16]~13\)))
-- \cpt_s[17]~5COUT1_82\ = CARRY(((cpt_s(17) & !\cpt_s[16]~13COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(17),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~21\,
	cin0 => \cpt_s[16]~13\,
	cin1 => \cpt_s[16]~13COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(17),
	cout0 => \cpt_s[17]~5\,
	cout1 => \cpt_s[17]~5COUT1_82\);

-- Location: LC_X4_Y4_N8
\cpt_s[18]\ : maxv_lcell
-- Equation(s):
-- cpt_s(18) = DFFEAS(cpt_s(18) $ (((((!\cpt_s[14]~21\ & \cpt_s[17]~5\) # (\cpt_s[14]~21\ & \cpt_s[17]~5COUT1_82\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[18]~3\ = CARRY(((!\cpt_s[17]~5\)) # (!cpt_s(18)))
-- \cpt_s[18]~3COUT1_84\ = CARRY(((!\cpt_s[17]~5COUT1_82\)) # (!cpt_s(18)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(18),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~21\,
	cin0 => \cpt_s[17]~5\,
	cin1 => \cpt_s[17]~5COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(18),
	cout0 => \cpt_s[18]~3\,
	cout1 => \cpt_s[18]~3COUT1_84\);

-- Location: LC_X4_Y4_N9
\cpt_s[19]\ : maxv_lcell
-- Equation(s):
-- cpt_s(19) = DFFEAS((((!\cpt_s[14]~21\ & \cpt_s[18]~3\) # (\cpt_s[14]~21\ & \cpt_s[18]~3COUT1_84\) $ (!cpt_s(19)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => cpt_s(19),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~21\,
	cin0 => \cpt_s[18]~3\,
	cin1 => \cpt_s[18]~3COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(19));

-- Location: LC_X12_Y3_N2
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = ((\Con_80p_io[73]~71\) # ((!\Con_80p_io[72]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[73]~71\,
	datad => \Con_80p_io[72]~70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(0),
	combout => \Switch_i~combout\(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(1),
	combout => \Switch_i~combout\(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(2),
	combout => \Switch_i~combout\(2));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(3),
	combout => \Switch_i~combout\(3));

-- Location: LC_X3_Y5_N0
\U1|leds_o[0]~0\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[0]~0_combout\ = (!\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & (!\Switch_i~combout\(2) & !\Switch_i~combout\(3))))

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
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[0]~0_combout\);

-- Location: LC_X3_Y5_N5
\U1|bin_lin_min|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|Equal0~2_combout\ = (\Switch_i~combout\(0) & (\Switch_i~combout\(1) & (\Switch_i~combout\(2) & \Switch_i~combout\(3))))

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
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|Equal0~2_combout\);

-- Location: LC_X5_Y4_N0
\U1|bin_lin_val|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|Equal0~2_combout\ = (\Con_25p_io[12]~35\ & (\Con_25p_io[11]~34\ & (\Con_25p_io[9]~32\ & \Con_25p_io[10]~33\)))

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|Equal0~2_combout\);

-- Location: LC_X5_Y7_N6
\U1|bin_lin_min|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|Equal0~0_combout\ = (\Switch_i~combout\(3) & (((\Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(3),
	datad => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|Equal0~0_combout\);

-- Location: LC_X5_Y5_N9
\U1|bin_lin_val|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|Equal0~0_combout\ = (((\Con_25p_io[11]~34\ & \Con_25p_io[12]~35\)))

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
	datac => \Con_25p_io[11]~34\,
	datad => \Con_25p_io[12]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|Equal0~0_combout\);

-- Location: LC_X3_Y5_N9
\U1|bin_lin_min|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan6~0_combout\ = (!\Switch_i~combout\(3) & (((!\Switch_i~combout\(2)) # (!\Switch_i~combout\(1))) # (!\Switch_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan6~0_combout\);

-- Location: LC_X5_Y4_N5
\U1|bin_lin_val|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan6~0_combout\ = (!\Con_25p_io[12]~35\ & (((!\Con_25p_io[10]~33\) # (!\Con_25p_io[9]~32\)) # (!\Con_25p_io[11]~34\)))

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan6~0_combout\);

-- Location: LC_X4_Y7_N2
\U1|bin_lin_min|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan1~0_combout\ = ((\Switch_i~combout\(1)) # ((\Switch_i~combout\(2)) # (\Switch_i~combout\(3))))

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
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan1~0_combout\);

-- Location: LC_X5_Y4_N3
\U1|bin_lin_val|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan1~0_combout\ = (\Con_25p_io[12]~35\) # (((\Con_25p_io[11]~34\) # (\Con_25p_io[10]~33\)))

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
	dataa => \Con_25p_io[12]~35\,
	datac => \Con_25p_io[11]~34\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan1~0_combout\);

-- Location: LC_X5_Y4_N4
\U1|bin_lin_val|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan0~0_combout\ = (\Con_25p_io[12]~35\) # ((\Con_25p_io[11]~34\) # ((\Con_25p_io[9]~32\) # (\Con_25p_io[10]~33\)))

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan0~0_combout\);

-- Location: LC_X4_Y5_N3
\U1|marche_normale_comp|LessThan0~72\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~72_cout0\ = CARRY((!\U1|leds_o[0]~0_combout\ & (!\U1|bin_lin_val|LessThan0~0_combout\)))
-- \U1|marche_normale_comp|LessThan0~72COUT1_88\ = CARRY((!\U1|leds_o[0]~0_combout\ & (!\U1|bin_lin_val|LessThan0~0_combout\)))

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
	dataa => \U1|leds_o[0]~0_combout\,
	datab => \U1|bin_lin_val|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~70\,
	cout0 => \U1|marche_normale_comp|LessThan0~72_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~72COUT1_88\);

-- Location: LC_X4_Y5_N4
\U1|marche_normale_comp|LessThan0~67\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~67_cout\ = CARRY((\U1|bin_lin_min|LessThan1~0_combout\ & (\U1|bin_lin_val|LessThan1~0_combout\ & !\U1|marche_normale_comp|LessThan0~72COUT1_88\)) # (!\U1|bin_lin_min|LessThan1~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan1~0_combout\) # (!\U1|marche_normale_comp|LessThan0~72COUT1_88\))))

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
	dataa => \U1|bin_lin_min|LessThan1~0_combout\,
	datab => \U1|bin_lin_val|LessThan1~0_combout\,
	cin0 => \U1|marche_normale_comp|LessThan0~72_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~65\,
	cout => \U1|marche_normale_comp|LessThan0~67_cout\);

-- Location: LC_X6_Y4_N4
\U1|bin_lin_val|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan5~0_combout\ = ((!\Con_25p_io[12]~35\ & ((!\Con_25p_io[10]~33\) # (!\Con_25p_io[11]~34\))))

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
	datab => \Con_25p_io[12]~35\,
	datac => \Con_25p_io[11]~34\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan5~0_combout\);

-- Location: LC_X3_Y5_N6
\U1|bin_lin_min|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan5~0_combout\ = ((!\Switch_i~combout\(3) & ((!\Switch_i~combout\(2)) # (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan5~0_combout\);

-- Location: LC_X5_Y4_N6
\U1|bin_lin_val|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan4~0_combout\ = (!\Con_25p_io[12]~35\ & (((!\Con_25p_io[9]~32\ & !\Con_25p_io[10]~33\)) # (!\Con_25p_io[11]~34\)))

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan4~0_combout\);

-- Location: LC_X3_Y5_N4
\U1|bin_lin_min|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan4~0_combout\ = (!\Switch_i~combout\(3) & (((!\Switch_i~combout\(0) & !\Switch_i~combout\(1))) # (!\Switch_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan4~0_combout\);

-- Location: LC_X4_Y7_N3
\U1|bin_lin_min|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan2~0_combout\ = (((!\Switch_i~combout\(2) & !\Switch_i~combout\(3))))

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
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan2~0_combout\);

-- Location: LC_X5_Y5_N8
\U1|bin_lin_val|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan2~1_combout\ = (((!\Con_25p_io[11]~34\ & !\Con_25p_io[12]~35\)))

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
	datac => \Con_25p_io[11]~34\,
	datad => \Con_25p_io[12]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan2~1_combout\);

-- Location: LC_X3_Y5_N2
\U1|bin_lin_min|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan2~1_combout\ = (!\Switch_i~combout\(2) & (!\Switch_i~combout\(3) & ((!\Switch_i~combout\(1)) # (!\Switch_i~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0007",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan2~1_combout\);

-- Location: LC_X5_Y4_N9
\U1|bin_lin_val|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan2~0_combout\ = (!\Con_25p_io[12]~35\ & (!\Con_25p_io[11]~34\ & ((!\Con_25p_io[10]~33\) # (!\Con_25p_io[9]~32\))))

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan2~0_combout\);

-- Location: LC_X4_Y5_N5
\U1|marche_normale_comp|LessThan0~62\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~62_cout0\ = CARRY((\U1|bin_lin_min|LessThan2~1_combout\ & (\U1|bin_lin_val|LessThan2~0_combout\ & !\U1|marche_normale_comp|LessThan0~67_cout\)) # (!\U1|bin_lin_min|LessThan2~1_combout\ & 
-- ((\U1|bin_lin_val|LessThan2~0_combout\) # (!\U1|marche_normale_comp|LessThan0~67_cout\))))
-- \U1|marche_normale_comp|LessThan0~62COUT1_90\ = CARRY((\U1|bin_lin_min|LessThan2~1_combout\ & (\U1|bin_lin_val|LessThan2~0_combout\ & !\U1|marche_normale_comp|LessThan0~67_cout\)) # (!\U1|bin_lin_min|LessThan2~1_combout\ & 
-- ((\U1|bin_lin_val|LessThan2~0_combout\) # (!\U1|marche_normale_comp|LessThan0~67_cout\))))

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
	dataa => \U1|bin_lin_min|LessThan2~1_combout\,
	datab => \U1|bin_lin_val|LessThan2~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~60\,
	cout0 => \U1|marche_normale_comp|LessThan0~62_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~62COUT1_90\);

-- Location: LC_X4_Y5_N6
\U1|marche_normale_comp|LessThan0~57\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~57_cout0\ = CARRY((\U1|bin_lin_min|LessThan2~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~62_cout0\) # (!\U1|bin_lin_val|LessThan2~1_combout\))) # (!\U1|bin_lin_min|LessThan2~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan2~1_combout\ & !\U1|marche_normale_comp|LessThan0~62_cout0\)))
-- \U1|marche_normale_comp|LessThan0~57COUT1_92\ = CARRY((\U1|bin_lin_min|LessThan2~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~62COUT1_90\) # (!\U1|bin_lin_val|LessThan2~1_combout\))) # (!\U1|bin_lin_min|LessThan2~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan2~1_combout\ & !\U1|marche_normale_comp|LessThan0~62COUT1_90\)))

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
	dataa => \U1|bin_lin_min|LessThan2~0_combout\,
	datab => \U1|bin_lin_val|LessThan2~1_combout\,
	cin => \U1|marche_normale_comp|LessThan0~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~62_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~55\,
	cout0 => \U1|marche_normale_comp|LessThan0~57_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~57COUT1_92\);

-- Location: LC_X4_Y5_N7
\U1|marche_normale_comp|LessThan0~52\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~52_cout0\ = CARRY((\U1|bin_lin_val|LessThan4~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~57_cout0\) # (!\U1|bin_lin_min|LessThan4~0_combout\))) # (!\U1|bin_lin_val|LessThan4~0_combout\ & 
-- (!\U1|bin_lin_min|LessThan4~0_combout\ & !\U1|marche_normale_comp|LessThan0~57_cout0\)))
-- \U1|marche_normale_comp|LessThan0~52COUT1_94\ = CARRY((\U1|bin_lin_val|LessThan4~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~57COUT1_92\) # (!\U1|bin_lin_min|LessThan4~0_combout\))) # (!\U1|bin_lin_val|LessThan4~0_combout\ & 
-- (!\U1|bin_lin_min|LessThan4~0_combout\ & !\U1|marche_normale_comp|LessThan0~57COUT1_92\)))

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
	dataa => \U1|bin_lin_val|LessThan4~0_combout\,
	datab => \U1|bin_lin_min|LessThan4~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~57_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~50\,
	cout0 => \U1|marche_normale_comp|LessThan0~52_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~52COUT1_94\);

-- Location: LC_X4_Y5_N8
\U1|marche_normale_comp|LessThan0~47\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~47_cout0\ = CARRY((\U1|bin_lin_val|LessThan5~0_combout\ & (\U1|bin_lin_min|LessThan5~0_combout\ & !\U1|marche_normale_comp|LessThan0~52_cout0\)) # (!\U1|bin_lin_val|LessThan5~0_combout\ & 
-- ((\U1|bin_lin_min|LessThan5~0_combout\) # (!\U1|marche_normale_comp|LessThan0~52_cout0\))))
-- \U1|marche_normale_comp|LessThan0~47COUT1_96\ = CARRY((\U1|bin_lin_val|LessThan5~0_combout\ & (\U1|bin_lin_min|LessThan5~0_combout\ & !\U1|marche_normale_comp|LessThan0~52COUT1_94\)) # (!\U1|bin_lin_val|LessThan5~0_combout\ & 
-- ((\U1|bin_lin_min|LessThan5~0_combout\) # (!\U1|marche_normale_comp|LessThan0~52COUT1_94\))))

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
	dataa => \U1|bin_lin_val|LessThan5~0_combout\,
	datab => \U1|bin_lin_min|LessThan5~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~52_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~45\,
	cout0 => \U1|marche_normale_comp|LessThan0~47_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~47COUT1_96\);

-- Location: LC_X4_Y5_N9
\U1|marche_normale_comp|LessThan0~42\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~42_cout\ = CARRY((\U1|bin_lin_min|LessThan6~0_combout\ & (\U1|bin_lin_val|LessThan6~0_combout\ & !\U1|marche_normale_comp|LessThan0~47COUT1_96\)) # (!\U1|bin_lin_min|LessThan6~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan6~0_combout\) # (!\U1|marche_normale_comp|LessThan0~47COUT1_96\))))

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
	dataa => \U1|bin_lin_min|LessThan6~0_combout\,
	datab => \U1|bin_lin_val|LessThan6~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~47_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~40\,
	cout => \U1|marche_normale_comp|LessThan0~42_cout\);

-- Location: LC_X3_Y5_N7
\U1|bin_lin_min|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan10~0_combout\ = ((!\Switch_i~combout\(2) & ((!\Switch_i~combout\(1)) # (!\Switch_i~combout\(0))))) # (!\Switch_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan10~0_combout\);

-- Location: LC_X5_Y4_N1
\U1|bin_lin_val|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan10~0_combout\ = ((!\Con_25p_io[11]~34\ & ((!\Con_25p_io[10]~33\) # (!\Con_25p_io[9]~32\)))) # (!\Con_25p_io[12]~35\)

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan10~0_combout\);

-- Location: LC_X3_Y5_N3
\U1|bin_lin_min|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan9~0_combout\ = (((!\Switch_i~combout\(1) & !\Switch_i~combout\(2))) # (!\Switch_i~combout\(3)))

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
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan9~0_combout\);

-- Location: LC_X5_Y4_N8
\U1|bin_lin_val|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan9~0_combout\ = (((!\Con_25p_io[11]~34\ & !\Con_25p_io[10]~33\))) # (!\Con_25p_io[12]~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[12]~35\,
	datac => \Con_25p_io[11]~34\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan9~0_combout\);

-- Location: LC_X3_Y5_N8
\U1|bin_lin_min|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan8~0_combout\ = ((!\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & !\Switch_i~combout\(2)))) # (!\Switch_i~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan8~0_combout\);

-- Location: LC_X5_Y4_N2
\U1|bin_lin_val|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan8~0_combout\ = ((!\Con_25p_io[11]~34\ & (!\Con_25p_io[9]~32\ & !\Con_25p_io[10]~33\))) # (!\Con_25p_io[12]~35\)

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan8~0_combout\);

-- Location: LC_X5_Y5_N0
\U1|marche_normale_comp|LessThan0~37\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~37_cout0\ = CARRY((\Switch_i~combout\(3) & (\Con_25p_io[12]~35\ & !\U1|marche_normale_comp|LessThan0~42_cout\)) # (!\Switch_i~combout\(3) & ((\Con_25p_io[12]~35\) # (!\U1|marche_normale_comp|LessThan0~42_cout\))))
-- \U1|marche_normale_comp|LessThan0~37COUT1_98\ = CARRY((\Switch_i~combout\(3) & (\Con_25p_io[12]~35\ & !\U1|marche_normale_comp|LessThan0~42_cout\)) # (!\Switch_i~combout\(3) & ((\Con_25p_io[12]~35\) # (!\U1|marche_normale_comp|LessThan0~42_cout\))))

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
	dataa => \Switch_i~combout\(3),
	datab => \Con_25p_io[12]~35\,
	cin => \U1|marche_normale_comp|LessThan0~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~35\,
	cout0 => \U1|marche_normale_comp|LessThan0~37_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~37COUT1_98\);

-- Location: LC_X5_Y5_N1
\U1|marche_normale_comp|LessThan0~32\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~32_cout0\ = CARRY((\U1|bin_lin_min|LessThan8~0_combout\ & (\U1|bin_lin_val|LessThan8~0_combout\ & !\U1|marche_normale_comp|LessThan0~37_cout0\)) # (!\U1|bin_lin_min|LessThan8~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan8~0_combout\) # (!\U1|marche_normale_comp|LessThan0~37_cout0\))))
-- \U1|marche_normale_comp|LessThan0~32COUT1_100\ = CARRY((\U1|bin_lin_min|LessThan8~0_combout\ & (\U1|bin_lin_val|LessThan8~0_combout\ & !\U1|marche_normale_comp|LessThan0~37COUT1_98\)) # (!\U1|bin_lin_min|LessThan8~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan8~0_combout\) # (!\U1|marche_normale_comp|LessThan0~37COUT1_98\))))

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
	dataa => \U1|bin_lin_min|LessThan8~0_combout\,
	datab => \U1|bin_lin_val|LessThan8~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~37_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~30\,
	cout0 => \U1|marche_normale_comp|LessThan0~32_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~32COUT1_100\);

-- Location: LC_X5_Y5_N2
\U1|marche_normale_comp|LessThan0~27\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~27_cout0\ = CARRY((\U1|bin_lin_min|LessThan9~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~32_cout0\) # (!\U1|bin_lin_val|LessThan9~0_combout\))) # (!\U1|bin_lin_min|LessThan9~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan9~0_combout\ & !\U1|marche_normale_comp|LessThan0~32_cout0\)))
-- \U1|marche_normale_comp|LessThan0~27COUT1_102\ = CARRY((\U1|bin_lin_min|LessThan9~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~32COUT1_100\) # (!\U1|bin_lin_val|LessThan9~0_combout\))) # (!\U1|bin_lin_min|LessThan9~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan9~0_combout\ & !\U1|marche_normale_comp|LessThan0~32COUT1_100\)))

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
	dataa => \U1|bin_lin_min|LessThan9~0_combout\,
	datab => \U1|bin_lin_val|LessThan9~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~32_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~25\,
	cout0 => \U1|marche_normale_comp|LessThan0~27_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~27COUT1_102\);

-- Location: LC_X5_Y5_N3
\U1|marche_normale_comp|LessThan0~22\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~22_cout0\ = CARRY((\U1|bin_lin_min|LessThan10~0_combout\ & (\U1|bin_lin_val|LessThan10~0_combout\ & !\U1|marche_normale_comp|LessThan0~27_cout0\)) # (!\U1|bin_lin_min|LessThan10~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan10~0_combout\) # (!\U1|marche_normale_comp|LessThan0~27_cout0\))))
-- \U1|marche_normale_comp|LessThan0~22COUT1_104\ = CARRY((\U1|bin_lin_min|LessThan10~0_combout\ & (\U1|bin_lin_val|LessThan10~0_combout\ & !\U1|marche_normale_comp|LessThan0~27COUT1_102\)) # (!\U1|bin_lin_min|LessThan10~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan10~0_combout\) # (!\U1|marche_normale_comp|LessThan0~27COUT1_102\))))

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
	dataa => \U1|bin_lin_min|LessThan10~0_combout\,
	datab => \U1|bin_lin_val|LessThan10~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~27_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~20\,
	cout0 => \U1|marche_normale_comp|LessThan0~22_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~22COUT1_104\);

-- Location: LC_X5_Y5_N4
\U1|marche_normale_comp|LessThan0~17\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~17_cout\ = CARRY((\U1|bin_lin_min|Equal0~0_combout\ & (\U1|bin_lin_val|Equal0~0_combout\ & !\U1|marche_normale_comp|LessThan0~22COUT1_104\)) # (!\U1|bin_lin_min|Equal0~0_combout\ & ((\U1|bin_lin_val|Equal0~0_combout\) # 
-- (!\U1|marche_normale_comp|LessThan0~22COUT1_104\))))

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
	dataa => \U1|bin_lin_min|Equal0~0_combout\,
	datab => \U1|bin_lin_val|Equal0~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~22_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~15\,
	cout => \U1|marche_normale_comp|LessThan0~17_cout\);

-- Location: LC_X5_Y7_N3
\U1|bin_lin_min|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|Equal0~1_combout\ = (\Switch_i~combout\(1) & (((\Switch_i~combout\(3) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(3),
	datad => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|Equal0~1_combout\);

-- Location: LC_X6_Y4_N6
\U1|bin_lin_val|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|Equal0~1_combout\ = ((\Con_25p_io[12]~35\ & (\Con_25p_io[11]~34\ & \Con_25p_io[10]~33\)))

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
	datab => \Con_25p_io[12]~35\,
	datac => \Con_25p_io[11]~34\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|Equal0~1_combout\);

-- Location: LC_X5_Y4_N7
\U1|bin_lin_val|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_val|LessThan12~0_combout\ = (((!\Con_25p_io[9]~32\ & !\Con_25p_io[10]~33\)) # (!\Con_25p_io[11]~34\)) # (!\Con_25p_io[12]~35\)

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Con_25p_io[11]~34\,
	datac => \Con_25p_io[9]~32\,
	datad => \Con_25p_io[10]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_val|LessThan12~0_combout\);

-- Location: LC_X3_Y5_N1
\U1|bin_lin_min|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_min|LessThan12~0_combout\ = (((!\Switch_i~combout\(0) & !\Switch_i~combout\(1))) # (!\Switch_i~combout\(3))) # (!\Switch_i~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \Switch_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_min|LessThan12~0_combout\);

-- Location: LC_X5_Y5_N5
\U1|marche_normale_comp|LessThan0~12\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~12_cout0\ = CARRY((\U1|bin_lin_val|LessThan12~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~17_cout\) # (!\U1|bin_lin_min|LessThan12~0_combout\))) # (!\U1|bin_lin_val|LessThan12~0_combout\ & 
-- (!\U1|bin_lin_min|LessThan12~0_combout\ & !\U1|marche_normale_comp|LessThan0~17_cout\)))
-- \U1|marche_normale_comp|LessThan0~12COUT1_106\ = CARRY((\U1|bin_lin_val|LessThan12~0_combout\ & ((!\U1|marche_normale_comp|LessThan0~17_cout\) # (!\U1|bin_lin_min|LessThan12~0_combout\))) # (!\U1|bin_lin_val|LessThan12~0_combout\ & 
-- (!\U1|bin_lin_min|LessThan12~0_combout\ & !\U1|marche_normale_comp|LessThan0~17_cout\)))

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
	dataa => \U1|bin_lin_val|LessThan12~0_combout\,
	datab => \U1|bin_lin_min|LessThan12~0_combout\,
	cin => \U1|marche_normale_comp|LessThan0~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~10\,
	cout0 => \U1|marche_normale_comp|LessThan0~12_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~12COUT1_106\);

-- Location: LC_X5_Y5_N6
\U1|marche_normale_comp|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~7_cout0\ = CARRY((\U1|bin_lin_min|Equal0~1_combout\ & (\U1|bin_lin_val|Equal0~1_combout\ & !\U1|marche_normale_comp|LessThan0~12_cout0\)) # (!\U1|bin_lin_min|Equal0~1_combout\ & ((\U1|bin_lin_val|Equal0~1_combout\) # 
-- (!\U1|marche_normale_comp|LessThan0~12_cout0\))))
-- \U1|marche_normale_comp|LessThan0~7COUT1_108\ = CARRY((\U1|bin_lin_min|Equal0~1_combout\ & (\U1|bin_lin_val|Equal0~1_combout\ & !\U1|marche_normale_comp|LessThan0~12COUT1_106\)) # (!\U1|bin_lin_min|Equal0~1_combout\ & ((\U1|bin_lin_val|Equal0~1_combout\) 
-- # (!\U1|marche_normale_comp|LessThan0~12COUT1_106\))))

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
	dataa => \U1|bin_lin_min|Equal0~1_combout\,
	datab => \U1|bin_lin_val|Equal0~1_combout\,
	cin => \U1|marche_normale_comp|LessThan0~17_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~12_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~5\,
	cout0 => \U1|marche_normale_comp|LessThan0~7_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan0~7COUT1_108\);

-- Location: LC_X5_Y5_N7
\U1|marche_normale_comp|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan0~0_combout\ = ((\U1|bin_lin_min|Equal0~2_combout\ & ((!\U1|bin_lin_val|Equal0~2_combout\) # (!(!\U1|marche_normale_comp|LessThan0~17_cout\ & \U1|marche_normale_comp|LessThan0~7_cout0\) # 
-- (\U1|marche_normale_comp|LessThan0~17_cout\ & \U1|marche_normale_comp|LessThan0~7COUT1_108\)))) # (!\U1|bin_lin_min|Equal0~2_combout\ & (!(!\U1|marche_normale_comp|LessThan0~17_cout\ & \U1|marche_normale_comp|LessThan0~7_cout0\) # 
-- (\U1|marche_normale_comp|LessThan0~17_cout\ & \U1|marche_normale_comp|LessThan0~7COUT1_108\) & !\U1|bin_lin_val|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|bin_lin_min|Equal0~2_combout\,
	datad => \U1|bin_lin_val|Equal0~2_combout\,
	cin => \U1|marche_normale_comp|LessThan0~17_cout\,
	cin0 => \U1|marche_normale_comp|LessThan0~7_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan0~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan0~0_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(6),
	combout => \Switch_i~combout\(6));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(5),
	combout => \Switch_i~combout\(5));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(4),
	combout => \Switch_i~combout\(4));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(7),
	combout => \Switch_i~combout\(7));

-- Location: LC_X6_Y7_N8
\U1|bin_lin_max|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|Equal0~2_combout\ = (\Switch_i~combout\(6) & (\Switch_i~combout\(5) & (\Switch_i~combout\(4) & \Switch_i~combout\(7))))

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
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|Equal0~2_combout\);

-- Location: LC_X6_Y7_N7
\U1|bin_lin_max|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|Equal0~0_combout\ = (((\Switch_i~combout\(6) & \Switch_i~combout\(7))))

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
	datac => \Switch_i~combout\(6),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|Equal0~0_combout\);

-- Location: LC_X6_Y7_N9
\U1|bin_lin_max|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan6~0_combout\ = (!\Switch_i~combout\(7) & (((!\Switch_i~combout\(4)) # (!\Switch_i~combout\(5))) # (!\Switch_i~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan6~0_combout\);

-- Location: LC_X4_Y6_N6
\U1|bin_lin_max|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan1~0_combout\ = ((\Switch_i~combout\(6)) # ((\Switch_i~combout\(5)) # (\Switch_i~combout\(7))))

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
	datab => \Switch_i~combout\(6),
	datac => \Switch_i~combout\(5),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan1~0_combout\);

-- Location: LC_X6_Y7_N3
\U1|bin_lin_max|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan0~0_combout\ = (\Switch_i~combout\(6)) # ((\Switch_i~combout\(5)) # ((\Switch_i~combout\(4)) # (\Switch_i~combout\(7))))

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
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan0~0_combout\);

-- Location: LC_X5_Y6_N3
\U1|marche_normale_comp|LessThan1~72\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~72_cout0\ = CARRY((\U1|bin_lin_val|LessThan0~0_combout\ & (!\U1|bin_lin_max|LessThan0~0_combout\)))
-- \U1|marche_normale_comp|LessThan1~72COUT1_88\ = CARRY((\U1|bin_lin_val|LessThan0~0_combout\ & (!\U1|bin_lin_max|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_val|LessThan0~0_combout\,
	datab => \U1|bin_lin_max|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~70\,
	cout0 => \U1|marche_normale_comp|LessThan1~72_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~72COUT1_88\);

-- Location: LC_X5_Y6_N4
\U1|marche_normale_comp|LessThan1~67\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~67_cout\ = CARRY((\U1|bin_lin_val|LessThan1~0_combout\ & (\U1|bin_lin_max|LessThan1~0_combout\ & !\U1|marche_normale_comp|LessThan1~72COUT1_88\)) # (!\U1|bin_lin_val|LessThan1~0_combout\ & 
-- ((\U1|bin_lin_max|LessThan1~0_combout\) # (!\U1|marche_normale_comp|LessThan1~72COUT1_88\))))

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
	dataa => \U1|bin_lin_val|LessThan1~0_combout\,
	datab => \U1|bin_lin_max|LessThan1~0_combout\,
	cin0 => \U1|marche_normale_comp|LessThan1~72_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~72COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~65\,
	cout => \U1|marche_normale_comp|LessThan1~67_cout\);

-- Location: LC_X4_Y6_N8
\U1|bin_lin_max|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan5~0_combout\ = ((!\Switch_i~combout\(7) & ((!\Switch_i~combout\(5)) # (!\Switch_i~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(6),
	datac => \Switch_i~combout\(5),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan5~0_combout\);

-- Location: LC_X6_Y7_N6
\U1|bin_lin_max|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan4~0_combout\ = (!\Switch_i~combout\(7) & (((!\Switch_i~combout\(5) & !\Switch_i~combout\(4))) # (!\Switch_i~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0057",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan4~0_combout\);

-- Location: LC_X4_Y6_N0
\U1|bin_lin_max|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan2~1_combout\ = (((!\Switch_i~combout\(6) & !\Switch_i~combout\(7))))

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
	datac => \Switch_i~combout\(6),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan2~1_combout\);

-- Location: LC_X6_Y7_N4
\U1|bin_lin_max|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan2~0_combout\ = (!\Switch_i~combout\(6) & (!\Switch_i~combout\(7) & ((!\Switch_i~combout\(4)) # (!\Switch_i~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0015",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan2~0_combout\);

-- Location: LC_X5_Y6_N5
\U1|marche_normale_comp|LessThan1~62\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~62_cout0\ = CARRY((\U1|bin_lin_max|LessThan2~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~67_cout\) # (!\U1|bin_lin_val|LessThan2~0_combout\))) # (!\U1|bin_lin_max|LessThan2~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan2~0_combout\ & !\U1|marche_normale_comp|LessThan1~67_cout\)))
-- \U1|marche_normale_comp|LessThan1~62COUT1_90\ = CARRY((\U1|bin_lin_max|LessThan2~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~67_cout\) # (!\U1|bin_lin_val|LessThan2~0_combout\))) # (!\U1|bin_lin_max|LessThan2~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan2~0_combout\ & !\U1|marche_normale_comp|LessThan1~67_cout\)))

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
	dataa => \U1|bin_lin_max|LessThan2~0_combout\,
	datab => \U1|bin_lin_val|LessThan2~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~60\,
	cout0 => \U1|marche_normale_comp|LessThan1~62_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~62COUT1_90\);

-- Location: LC_X5_Y6_N6
\U1|marche_normale_comp|LessThan1~57\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~57_cout0\ = CARRY((\U1|bin_lin_max|LessThan2~1_combout\ & (\U1|bin_lin_val|LessThan2~1_combout\ & !\U1|marche_normale_comp|LessThan1~62_cout0\)) # (!\U1|bin_lin_max|LessThan2~1_combout\ & 
-- ((\U1|bin_lin_val|LessThan2~1_combout\) # (!\U1|marche_normale_comp|LessThan1~62_cout0\))))
-- \U1|marche_normale_comp|LessThan1~57COUT1_92\ = CARRY((\U1|bin_lin_max|LessThan2~1_combout\ & (\U1|bin_lin_val|LessThan2~1_combout\ & !\U1|marche_normale_comp|LessThan1~62COUT1_90\)) # (!\U1|bin_lin_max|LessThan2~1_combout\ & 
-- ((\U1|bin_lin_val|LessThan2~1_combout\) # (!\U1|marche_normale_comp|LessThan1~62COUT1_90\))))

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
	dataa => \U1|bin_lin_max|LessThan2~1_combout\,
	datab => \U1|bin_lin_val|LessThan2~1_combout\,
	cin => \U1|marche_normale_comp|LessThan1~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~62_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~62COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~55\,
	cout0 => \U1|marche_normale_comp|LessThan1~57_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~57COUT1_92\);

-- Location: LC_X5_Y6_N7
\U1|marche_normale_comp|LessThan1~52\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~52_cout0\ = CARRY((\U1|bin_lin_val|LessThan4~0_combout\ & (\U1|bin_lin_max|LessThan4~0_combout\ & !\U1|marche_normale_comp|LessThan1~57_cout0\)) # (!\U1|bin_lin_val|LessThan4~0_combout\ & 
-- ((\U1|bin_lin_max|LessThan4~0_combout\) # (!\U1|marche_normale_comp|LessThan1~57_cout0\))))
-- \U1|marche_normale_comp|LessThan1~52COUT1_94\ = CARRY((\U1|bin_lin_val|LessThan4~0_combout\ & (\U1|bin_lin_max|LessThan4~0_combout\ & !\U1|marche_normale_comp|LessThan1~57COUT1_92\)) # (!\U1|bin_lin_val|LessThan4~0_combout\ & 
-- ((\U1|bin_lin_max|LessThan4~0_combout\) # (!\U1|marche_normale_comp|LessThan1~57COUT1_92\))))

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
	dataa => \U1|bin_lin_val|LessThan4~0_combout\,
	datab => \U1|bin_lin_max|LessThan4~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~57_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~50\,
	cout0 => \U1|marche_normale_comp|LessThan1~52_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~52COUT1_94\);

-- Location: LC_X5_Y6_N8
\U1|marche_normale_comp|LessThan1~47\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~47_cout0\ = CARRY((\U1|bin_lin_val|LessThan5~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~52_cout0\) # (!\U1|bin_lin_max|LessThan5~0_combout\))) # (!\U1|bin_lin_val|LessThan5~0_combout\ & 
-- (!\U1|bin_lin_max|LessThan5~0_combout\ & !\U1|marche_normale_comp|LessThan1~52_cout0\)))
-- \U1|marche_normale_comp|LessThan1~47COUT1_96\ = CARRY((\U1|bin_lin_val|LessThan5~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~52COUT1_94\) # (!\U1|bin_lin_max|LessThan5~0_combout\))) # (!\U1|bin_lin_val|LessThan5~0_combout\ & 
-- (!\U1|bin_lin_max|LessThan5~0_combout\ & !\U1|marche_normale_comp|LessThan1~52COUT1_94\)))

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
	dataa => \U1|bin_lin_val|LessThan5~0_combout\,
	datab => \U1|bin_lin_max|LessThan5~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~52_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~45\,
	cout0 => \U1|marche_normale_comp|LessThan1~47_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~47COUT1_96\);

-- Location: LC_X5_Y6_N9
\U1|marche_normale_comp|LessThan1~42\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~42_cout\ = CARRY((\U1|bin_lin_val|LessThan6~0_combout\ & (\U1|bin_lin_max|LessThan6~0_combout\ & !\U1|marche_normale_comp|LessThan1~47COUT1_96\)) # (!\U1|bin_lin_val|LessThan6~0_combout\ & 
-- ((\U1|bin_lin_max|LessThan6~0_combout\) # (!\U1|marche_normale_comp|LessThan1~47COUT1_96\))))

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
	dataa => \U1|bin_lin_val|LessThan6~0_combout\,
	datab => \U1|bin_lin_max|LessThan6~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~67_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~47_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~40\,
	cout => \U1|marche_normale_comp|LessThan1~42_cout\);

-- Location: LC_X6_Y7_N1
\U1|bin_lin_max|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan10~0_combout\ = ((!\Switch_i~combout\(6) & ((!\Switch_i~combout\(4)) # (!\Switch_i~combout\(5))))) # (!\Switch_i~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "15ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan10~0_combout\);

-- Location: LC_X4_Y6_N9
\U1|bin_lin_max|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan9~0_combout\ = (((!\Switch_i~combout\(6) & !\Switch_i~combout\(5))) # (!\Switch_i~combout\(7)))

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
	datab => \Switch_i~combout\(6),
	datac => \Switch_i~combout\(5),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan9~0_combout\);

-- Location: LC_X6_Y7_N0
\U1|bin_lin_max|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan8~0_combout\ = ((!\Switch_i~combout\(6) & (!\Switch_i~combout\(5) & !\Switch_i~combout\(4)))) # (!\Switch_i~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan8~0_combout\);

-- Location: LC_X6_Y6_N0
\U1|marche_normale_comp|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~37_cout0\ = CARRY((\Con_25p_io[12]~35\ & (\Switch_i~combout\(7) & !\U1|marche_normale_comp|LessThan1~42_cout\)) # (!\Con_25p_io[12]~35\ & ((\Switch_i~combout\(7)) # (!\U1|marche_normale_comp|LessThan1~42_cout\))))
-- \U1|marche_normale_comp|LessThan1~37COUT1_98\ = CARRY((\Con_25p_io[12]~35\ & (\Switch_i~combout\(7) & !\U1|marche_normale_comp|LessThan1~42_cout\)) # (!\Con_25p_io[12]~35\ & ((\Switch_i~combout\(7)) # (!\U1|marche_normale_comp|LessThan1~42_cout\))))

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
	dataa => \Con_25p_io[12]~35\,
	datab => \Switch_i~combout\(7),
	cin => \U1|marche_normale_comp|LessThan1~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~35\,
	cout0 => \U1|marche_normale_comp|LessThan1~37_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~37COUT1_98\);

-- Location: LC_X6_Y6_N1
\U1|marche_normale_comp|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~32_cout0\ = CARRY((\U1|bin_lin_max|LessThan8~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~37_cout0\) # (!\U1|bin_lin_val|LessThan8~0_combout\))) # (!\U1|bin_lin_max|LessThan8~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan8~0_combout\ & !\U1|marche_normale_comp|LessThan1~37_cout0\)))
-- \U1|marche_normale_comp|LessThan1~32COUT1_100\ = CARRY((\U1|bin_lin_max|LessThan8~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~37COUT1_98\) # (!\U1|bin_lin_val|LessThan8~0_combout\))) # (!\U1|bin_lin_max|LessThan8~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan8~0_combout\ & !\U1|marche_normale_comp|LessThan1~37COUT1_98\)))

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
	dataa => \U1|bin_lin_max|LessThan8~0_combout\,
	datab => \U1|bin_lin_val|LessThan8~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~37_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~37COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~30\,
	cout0 => \U1|marche_normale_comp|LessThan1~32_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~32COUT1_100\);

-- Location: LC_X6_Y6_N2
\U1|marche_normale_comp|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~27_cout0\ = CARRY((\U1|bin_lin_max|LessThan9~0_combout\ & (\U1|bin_lin_val|LessThan9~0_combout\ & !\U1|marche_normale_comp|LessThan1~32_cout0\)) # (!\U1|bin_lin_max|LessThan9~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan9~0_combout\) # (!\U1|marche_normale_comp|LessThan1~32_cout0\))))
-- \U1|marche_normale_comp|LessThan1~27COUT1_102\ = CARRY((\U1|bin_lin_max|LessThan9~0_combout\ & (\U1|bin_lin_val|LessThan9~0_combout\ & !\U1|marche_normale_comp|LessThan1~32COUT1_100\)) # (!\U1|bin_lin_max|LessThan9~0_combout\ & 
-- ((\U1|bin_lin_val|LessThan9~0_combout\) # (!\U1|marche_normale_comp|LessThan1~32COUT1_100\))))

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
	dataa => \U1|bin_lin_max|LessThan9~0_combout\,
	datab => \U1|bin_lin_val|LessThan9~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~32_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~32COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~25\,
	cout0 => \U1|marche_normale_comp|LessThan1~27_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~27COUT1_102\);

-- Location: LC_X6_Y6_N3
\U1|marche_normale_comp|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~22_cout0\ = CARRY((\U1|bin_lin_val|LessThan10~0_combout\ & (\U1|bin_lin_max|LessThan10~0_combout\ & !\U1|marche_normale_comp|LessThan1~27_cout0\)) # (!\U1|bin_lin_val|LessThan10~0_combout\ & 
-- ((\U1|bin_lin_max|LessThan10~0_combout\) # (!\U1|marche_normale_comp|LessThan1~27_cout0\))))
-- \U1|marche_normale_comp|LessThan1~22COUT1_104\ = CARRY((\U1|bin_lin_val|LessThan10~0_combout\ & (\U1|bin_lin_max|LessThan10~0_combout\ & !\U1|marche_normale_comp|LessThan1~27COUT1_102\)) # (!\U1|bin_lin_val|LessThan10~0_combout\ & 
-- ((\U1|bin_lin_max|LessThan10~0_combout\) # (!\U1|marche_normale_comp|LessThan1~27COUT1_102\))))

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
	dataa => \U1|bin_lin_val|LessThan10~0_combout\,
	datab => \U1|bin_lin_max|LessThan10~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~27_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~20\,
	cout0 => \U1|marche_normale_comp|LessThan1~22_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~22COUT1_104\);

-- Location: LC_X6_Y6_N4
\U1|marche_normale_comp|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~17_cout\ = CARRY((\U1|bin_lin_max|Equal0~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~22COUT1_104\) # (!\U1|bin_lin_val|Equal0~0_combout\))) # (!\U1|bin_lin_max|Equal0~0_combout\ & (!\U1|bin_lin_val|Equal0~0_combout\ 
-- & !\U1|marche_normale_comp|LessThan1~22COUT1_104\)))

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
	dataa => \U1|bin_lin_max|Equal0~0_combout\,
	datab => \U1|bin_lin_val|Equal0~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~42_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~22_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~15\,
	cout => \U1|marche_normale_comp|LessThan1~17_cout\);

-- Location: LC_X6_Y7_N5
\U1|bin_lin_max|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|Equal0~1_combout\ = (\Switch_i~combout\(6) & (((\Switch_i~combout\(5) & \Switch_i~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datac => \Switch_i~combout\(5),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|Equal0~1_combout\);

-- Location: LC_X6_Y7_N2
\U1|bin_lin_max|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \U1|bin_lin_max|LessThan12~0_combout\ = (((!\Switch_i~combout\(5) & !\Switch_i~combout\(4))) # (!\Switch_i~combout\(7))) # (!\Switch_i~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "57ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(6),
	datab => \Switch_i~combout\(5),
	datac => \Switch_i~combout\(4),
	datad => \Switch_i~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|bin_lin_max|LessThan12~0_combout\);

-- Location: LC_X6_Y6_N5
\U1|marche_normale_comp|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~12_cout0\ = CARRY((\U1|bin_lin_max|LessThan12~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~17_cout\) # (!\U1|bin_lin_val|LessThan12~0_combout\))) # (!\U1|bin_lin_max|LessThan12~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan12~0_combout\ & !\U1|marche_normale_comp|LessThan1~17_cout\)))
-- \U1|marche_normale_comp|LessThan1~12COUT1_106\ = CARRY((\U1|bin_lin_max|LessThan12~0_combout\ & ((!\U1|marche_normale_comp|LessThan1~17_cout\) # (!\U1|bin_lin_val|LessThan12~0_combout\))) # (!\U1|bin_lin_max|LessThan12~0_combout\ & 
-- (!\U1|bin_lin_val|LessThan12~0_combout\ & !\U1|marche_normale_comp|LessThan1~17_cout\)))

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
	dataa => \U1|bin_lin_max|LessThan12~0_combout\,
	datab => \U1|bin_lin_val|LessThan12~0_combout\,
	cin => \U1|marche_normale_comp|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~10\,
	cout0 => \U1|marche_normale_comp|LessThan1~12_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~12COUT1_106\);

-- Location: LC_X6_Y6_N6
\U1|marche_normale_comp|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~7_cout0\ = CARRY((\U1|bin_lin_max|Equal0~1_combout\ & ((!\U1|marche_normale_comp|LessThan1~12_cout0\) # (!\U1|bin_lin_val|Equal0~1_combout\))) # (!\U1|bin_lin_max|Equal0~1_combout\ & (!\U1|bin_lin_val|Equal0~1_combout\ & 
-- !\U1|marche_normale_comp|LessThan1~12_cout0\)))
-- \U1|marche_normale_comp|LessThan1~7COUT1_108\ = CARRY((\U1|bin_lin_max|Equal0~1_combout\ & ((!\U1|marche_normale_comp|LessThan1~12COUT1_106\) # (!\U1|bin_lin_val|Equal0~1_combout\))) # (!\U1|bin_lin_max|Equal0~1_combout\ & 
-- (!\U1|bin_lin_val|Equal0~1_combout\ & !\U1|marche_normale_comp|LessThan1~12COUT1_106\)))

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
	dataa => \U1|bin_lin_max|Equal0~1_combout\,
	datab => \U1|bin_lin_val|Equal0~1_combout\,
	cin => \U1|marche_normale_comp|LessThan1~17_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~12_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~12COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~5\,
	cout0 => \U1|marche_normale_comp|LessThan1~7_cout0\,
	cout1 => \U1|marche_normale_comp|LessThan1~7COUT1_108\);

-- Location: LC_X6_Y6_N7
\U1|marche_normale_comp|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|marche_normale_comp|LessThan1~0_combout\ = ((\U1|bin_lin_val|Equal0~2_combout\ & ((!\U1|bin_lin_max|Equal0~2_combout\) # (!(!\U1|marche_normale_comp|LessThan1~17_cout\ & \U1|marche_normale_comp|LessThan1~7_cout0\) # 
-- (\U1|marche_normale_comp|LessThan1~17_cout\ & \U1|marche_normale_comp|LessThan1~7COUT1_108\)))) # (!\U1|bin_lin_val|Equal0~2_combout\ & (!(!\U1|marche_normale_comp|LessThan1~17_cout\ & \U1|marche_normale_comp|LessThan1~7_cout0\) # 
-- (\U1|marche_normale_comp|LessThan1~17_cout\ & \U1|marche_normale_comp|LessThan1~7COUT1_108\) & !\U1|bin_lin_max|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|bin_lin_val|Equal0~2_combout\,
	datad => \U1|bin_lin_max|Equal0~2_combout\,
	cin => \U1|marche_normale_comp|LessThan1~17_cout\,
	cin0 => \U1|marche_normale_comp|LessThan1~7_cout0\,
	cin1 => \U1|marche_normale_comp|LessThan1~7COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|marche_normale_comp|LessThan1~0_combout\);

-- Location: LC_X4_Y7_N9
\U1|leds_o[0]~1\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[0]~1_combout\ = (((!\U1|marche_normale_comp|LessThan0~0_combout\ & !\U1|marche_normale_comp|LessThan1~0_combout\)))

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
	datac => \U1|marche_normale_comp|LessThan0~0_combout\,
	datad => \U1|marche_normale_comp|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[0]~1_combout\);

-- Location: LC_X6_Y5_N5
\U1|leds_o[0]~2\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[0]~2_combout\ = (\Con_25p_io[15]~38\) # ((\U1|leds_o[0]~0_combout\ & (\U1|leds_o[0]~1_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[15]~38\,
	datab => \U1|leds_o[0]~0_combout\,
	datac => \U1|leds_o[0]~1_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[0]~2_combout\);

-- Location: LC_X6_Y5_N8
\U1|leds_o[4]~5\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[4]~5_combout\ = (cpt_s(7) & (cpt_s(8) & ((\Con_25p_io[16]~39\) # (!\Con_25p_io[15]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[15]~38\,
	datab => cpt_s(7),
	datac => cpt_s(8),
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[4]~5_combout\);

-- Location: LC_X6_Y5_N7
\U1|leds_o[1]~6\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[1]~6_combout\ = (\U1|leds_o[4]~5_combout\ & (cpt_s(9) & (\U1|leds_o[0]~1_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[4]~5_combout\,
	datab => cpt_s(9),
	datac => \U1|leds_o[0]~1_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[1]~6_combout\);

-- Location: LC_X4_Y7_N1
\U1|leds_o[1]~3\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[1]~3_combout\ = (!\Con_25p_io[16]~39\ & (!\Switch_i~combout\(1) & (\U1|leds_o[0]~1_combout\ & \U1|bin_lin_min|LessThan2~0_combout\)))

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
	dataa => \Con_25p_io[16]~39\,
	datab => \Switch_i~combout\(1),
	datac => \U1|leds_o[0]~1_combout\,
	datad => \U1|bin_lin_min|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[1]~3_combout\);

-- Location: LC_X4_Y7_N8
\U1|leds_o[1]~4\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[1]~4_combout\ = (\Con_25p_io[15]~38\ & (((\U1|bin_lin_val|LessThan0~0_combout\) # (\Con_25p_io[16]~39\)))) # (!\Con_25p_io[15]~38\ & (\U1|leds_o[1]~3_combout\ & (\U1|bin_lin_val|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eae0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[15]~38\,
	datab => \U1|leds_o[1]~3_combout\,
	datac => \U1|bin_lin_val|LessThan0~0_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[1]~4_combout\);

-- Location: LC_X4_Y7_N6
\U1|leds_o[1]~7\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[1]~7_combout\ = (\U1|leds_o[1]~4_combout\) # ((\U1|bin_lin_max|LessThan0~0_combout\ & (\U1|leds_o[1]~6_combout\ & !\U1|bin_lin_min|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_max|LessThan0~0_combout\,
	datab => \U1|leds_o[1]~6_combout\,
	datac => \U1|bin_lin_min|LessThan1~0_combout\,
	datad => \U1|leds_o[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[1]~7_combout\);

-- Location: LC_X4_Y6_N2
\U1|leds_o[2]~8\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[2]~8_combout\ = (\U1|bin_lin_min|LessThan2~1_combout\ & (\U1|leds_o[0]~1_combout\ & (\U1|bin_lin_val|LessThan1~0_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_min|LessThan2~1_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \U1|bin_lin_val|LessThan1~0_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[2]~8_combout\);

-- Location: LC_X4_Y6_N3
\U1|leds_o[2]~9\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[2]~9_combout\ = (\U1|leds_o[2]~8_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (\U1|bin_lin_val|LessThan1~0_combout\))))

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
	dataa => \Con_25p_io[16]~39\,
	datab => \Con_25p_io[15]~38\,
	datac => \U1|bin_lin_val|LessThan1~0_combout\,
	datad => \U1|leds_o[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[2]~9_combout\);

-- Location: LC_X4_Y6_N1
\U1|leds_o[2]~10\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[2]~10_combout\ = (\U1|leds_o[2]~9_combout\) # ((\U1|leds_o[1]~6_combout\ & (\U1|bin_lin_min|LessThan2~1_combout\ & \U1|bin_lin_max|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[1]~6_combout\,
	datab => \U1|bin_lin_min|LessThan2~1_combout\,
	datac => \U1|bin_lin_max|LessThan1~0_combout\,
	datad => \U1|leds_o[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[2]~10_combout\);

-- Location: LC_X4_Y7_N0
\U1|leds_o[3]~11\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[3]~11_combout\ = (!\U1|marche_normale_comp|LessThan0~0_combout\ & (!\Switch_i~combout\(3) & (!\Switch_i~combout\(2) & !\U1|marche_normale_comp|LessThan1~0_combout\)))

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
	dataa => \U1|marche_normale_comp|LessThan0~0_combout\,
	datab => \Switch_i~combout\(3),
	datac => \Switch_i~combout\(2),
	datad => \U1|marche_normale_comp|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[3]~11_combout\);

-- Location: LC_X4_Y7_N7
\U1|leds_o[3]~12\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[3]~12_combout\ = (\Con_25p_io[16]~39\ & (\Con_25p_io[15]~38\)) # (!\Con_25p_io[16]~39\ & (!\U1|bin_lin_val|LessThan2~0_combout\ & ((\Con_25p_io[15]~38\) # (\U1|leds_o[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[15]~38\,
	datab => \U1|bin_lin_val|LessThan2~0_combout\,
	datac => \U1|leds_o[3]~11_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[3]~12_combout\);

-- Location: LC_X4_Y7_N4
\U1|leds_o[3]~13\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[3]~13_combout\ = (\U1|leds_o[3]~12_combout\) # ((!\U1|bin_lin_max|LessThan2~0_combout\ & (\U1|leds_o[1]~6_combout\ & \U1|bin_lin_min|LessThan2~0_combout\)))

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
	dataa => \U1|bin_lin_max|LessThan2~0_combout\,
	datab => \U1|leds_o[1]~6_combout\,
	datac => \U1|leds_o[3]~12_combout\,
	datad => \U1|bin_lin_min|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[3]~13_combout\);

-- Location: LC_X5_Y6_N2
\U1|leds_o[4]~14\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[4]~14_combout\ = ((\U1|leds_o[4]~5_combout\ & (cpt_s(9) & !\U1|bin_lin_max|LessThan2~1_combout\))) # (!\U1|bin_lin_val|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33b3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[4]~5_combout\,
	datab => \U1|bin_lin_val|LessThan2~1_combout\,
	datac => cpt_s(9),
	datad => \U1|bin_lin_max|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[4]~14_combout\);

-- Location: LC_X4_Y5_N0
\U1|leds_o[4]~15\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[4]~15_combout\ = (\U1|leds_o[4]~14_combout\ & (\U1|bin_lin_min|LessThan4~0_combout\ & (\U1|leds_o[0]~1_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[4]~14_combout\,
	datab => \U1|bin_lin_min|LessThan4~0_combout\,
	datac => \U1|leds_o[0]~1_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[4]~15_combout\);

-- Location: LC_X4_Y5_N1
\U1|leds_o[4]~16\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[4]~16_combout\ = (\U1|leds_o[4]~15_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[16]~39\,
	datab => \Con_25p_io[15]~38\,
	datac => \U1|leds_o[4]~15_combout\,
	datad => \U1|bin_lin_val|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[4]~16_combout\);

-- Location: LC_X5_Y6_N1
\U1|leds_o[5]~17\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[5]~17_combout\ = ((cpt_s(9) & (!\U1|bin_lin_max|LessThan4~0_combout\ & \U1|leds_o[4]~5_combout\))) # (!\U1|bin_lin_val|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cpt_s(9),
	datab => \U1|bin_lin_max|LessThan4~0_combout\,
	datac => \U1|bin_lin_val|LessThan4~0_combout\,
	datad => \U1|leds_o[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[5]~17_combout\);

-- Location: LC_X4_Y5_N2
\U1|leds_o[5]~18\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[5]~18_combout\ = (\U1|leds_o[5]~17_combout\ & (\U1|leds_o[0]~1_combout\ & (\U1|bin_lin_min|LessThan5~0_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[5]~17_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \U1|bin_lin_min|LessThan5~0_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[5]~18_combout\);

-- Location: LC_X4_Y7_N5
\U1|leds_o[5]~19\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[5]~19_combout\ = (\U1|leds_o[5]~18_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[15]~38\,
	datab => \Con_25p_io[16]~39\,
	datac => \U1|leds_o[5]~18_combout\,
	datad => \U1|bin_lin_val|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[5]~19_combout\);

-- Location: LC_X6_Y4_N2
\U1|leds_o[6]~20\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[6]~20_combout\ = (\U1|bin_lin_min|LessThan6~0_combout\ & (\U1|leds_o[0]~1_combout\ & (!\U1|bin_lin_val|LessThan5~0_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_min|LessThan6~0_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \U1|bin_lin_val|LessThan5~0_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[6]~20_combout\);

-- Location: LC_X6_Y4_N3
\U1|leds_o[6]~21\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[6]~21_combout\ = (\U1|leds_o[6]~20_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan5~0_combout\))))

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
	dataa => \U1|bin_lin_val|LessThan5~0_combout\,
	datab => \Con_25p_io[16]~39\,
	datac => \Con_25p_io[15]~38\,
	datad => \U1|leds_o[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[6]~21_combout\);

-- Location: LC_X6_Y4_N5
\U1|leds_o[6]~22\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[6]~22_combout\ = (\U1|leds_o[6]~21_combout\) # ((\U1|leds_o[1]~6_combout\ & (!\U1|bin_lin_max|LessThan5~0_combout\ & \U1|bin_lin_min|LessThan6~0_combout\)))

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
	dataa => \U1|leds_o[1]~6_combout\,
	datab => \U1|bin_lin_max|LessThan5~0_combout\,
	datac => \U1|bin_lin_min|LessThan6~0_combout\,
	datad => \U1|leds_o[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[6]~22_combout\);

-- Location: LC_X5_Y6_N0
\U1|leds_o[7]~23\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[7]~23_combout\ = ((!\U1|bin_lin_max|LessThan6~0_combout\ & (cpt_s(9) & \U1|leds_o[4]~5_combout\))) # (!\U1|bin_lin_val|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_val|LessThan6~0_combout\,
	datab => \U1|bin_lin_max|LessThan6~0_combout\,
	datac => cpt_s(9),
	datad => \U1|leds_o[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[7]~23_combout\);

-- Location: LC_X5_Y7_N4
\U1|leds_o[7]~24\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[7]~24_combout\ = (!\Con_25p_io[16]~39\ & (\U1|leds_o[0]~1_combout\ & (!\Switch_i~combout\(3) & \U1|leds_o[7]~23_combout\)))

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
	dataa => \Con_25p_io[16]~39\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \Switch_i~combout\(3),
	datad => \U1|leds_o[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[7]~24_combout\);

-- Location: LC_X5_Y7_N5
\U1|leds_o[7]~25\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[7]~25_combout\ = (\U1|leds_o[7]~24_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan6~0_combout\))))

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
	dataa => \Con_25p_io[16]~39\,
	datab => \U1|bin_lin_val|LessThan6~0_combout\,
	datac => \Con_25p_io[15]~38\,
	datad => \U1|leds_o[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[7]~25_combout\);

-- Location: LC_X6_Y5_N4
\U1|leds_o[8]~26\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[8]~26_combout\ = (\Con_25p_io[12]~35\) # ((\U1|leds_o[4]~5_combout\ & (\Switch_i~combout\(7) & cpt_s(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[4]~5_combout\,
	datab => \Switch_i~combout\(7),
	datac => \Con_25p_io[12]~35\,
	datad => cpt_s(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[8]~26_combout\);

-- Location: LC_X6_Y5_N2
\U1|leds_o[8]~27\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[8]~27_combout\ = (\U1|leds_o[0]~1_combout\ & (!\Con_25p_io[16]~39\ & (\U1|leds_o[8]~26_combout\ & \U1|bin_lin_min|LessThan8~0_combout\)))

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
	dataa => \U1|leds_o[0]~1_combout\,
	datab => \Con_25p_io[16]~39\,
	datac => \U1|leds_o[8]~26_combout\,
	datad => \U1|bin_lin_min|LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[8]~27_combout\);

-- Location: LC_X6_Y5_N3
\U1|leds_o[8]~28\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[8]~28_combout\ = (\U1|leds_o[8]~27_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (\Con_25p_io[12]~35\))))

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
	dataa => \Con_25p_io[15]~38\,
	datab => \Con_25p_io[16]~39\,
	datac => \Con_25p_io[12]~35\,
	datad => \U1|leds_o[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[8]~28_combout\);

-- Location: LC_X6_Y6_N9
\U1|leds_o[9]~29\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[9]~29_combout\ = ((!\U1|bin_lin_max|LessThan8~0_combout\ & (cpt_s(9) & \U1|leds_o[4]~5_combout\))) # (!\U1|bin_lin_val|LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_max|LessThan8~0_combout\,
	datab => \U1|bin_lin_val|LessThan8~0_combout\,
	datac => cpt_s(9),
	datad => \U1|leds_o[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[9]~29_combout\);

-- Location: LC_X6_Y5_N9
\U1|leds_o[9]~30\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[9]~30_combout\ = (\U1|leds_o[9]~29_combout\ & (\U1|bin_lin_min|LessThan9~0_combout\ & (\U1|leds_o[0]~1_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[9]~29_combout\,
	datab => \U1|bin_lin_min|LessThan9~0_combout\,
	datac => \U1|leds_o[0]~1_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[9]~30_combout\);

-- Location: LC_X6_Y5_N0
\U1|leds_o[9]~31\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[9]~31_combout\ = (\U1|leds_o[9]~30_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan8~0_combout\))))

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
	dataa => \Con_25p_io[15]~38\,
	datab => \Con_25p_io[16]~39\,
	datac => \U1|bin_lin_val|LessThan8~0_combout\,
	datad => \U1|leds_o[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[9]~31_combout\);

-- Location: LC_X4_Y6_N7
\U1|leds_o[10]~32\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[10]~32_combout\ = (!\U1|bin_lin_val|LessThan9~0_combout\ & (\U1|leds_o[0]~1_combout\ & (\U1|bin_lin_min|LessThan10~0_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_val|LessThan9~0_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \U1|bin_lin_min|LessThan10~0_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[10]~32_combout\);

-- Location: LC_X4_Y6_N4
\U1|leds_o[10]~33\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[10]~33_combout\ = (\U1|leds_o[10]~32_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_val|LessThan9~0_combout\,
	datab => \Con_25p_io[15]~38\,
	datac => \U1|leds_o[10]~32_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[10]~33_combout\);

-- Location: LC_X4_Y6_N5
\U1|leds_o[10]~34\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[10]~34_combout\ = (\U1|leds_o[10]~33_combout\) # ((\U1|leds_o[1]~6_combout\ & (!\U1|bin_lin_max|LessThan9~0_combout\ & \U1|bin_lin_min|LessThan10~0_combout\)))

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
	dataa => \U1|leds_o[1]~6_combout\,
	datab => \U1|bin_lin_max|LessThan9~0_combout\,
	datac => \U1|bin_lin_min|LessThan10~0_combout\,
	datad => \U1|leds_o[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[10]~34_combout\);

-- Location: LC_X5_Y7_N1
\U1|leds_o[11]~35\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[11]~35_combout\ = ((!\U1|bin_lin_max|LessThan10~0_combout\ & (cpt_s(9) & \U1|leds_o[4]~5_combout\))) # (!\U1|bin_lin_val|LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_max|LessThan10~0_combout\,
	datab => \U1|bin_lin_val|LessThan10~0_combout\,
	datac => cpt_s(9),
	datad => \U1|leds_o[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[11]~35_combout\);

-- Location: LC_X5_Y7_N2
\U1|leds_o[11]~36\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[11]~36_combout\ = (!\Con_25p_io[16]~39\ & (\U1|leds_o[0]~1_combout\ & (!\U1|bin_lin_min|Equal0~0_combout\ & \U1|leds_o[11]~35_combout\)))

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
	dataa => \Con_25p_io[16]~39\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \U1|bin_lin_min|Equal0~0_combout\,
	datad => \U1|leds_o[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[11]~36_combout\);

-- Location: LC_X5_Y7_N0
\U1|leds_o[11]~37\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[11]~37_combout\ = (\U1|leds_o[11]~36_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan10~0_combout\))))

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
	dataa => \Con_25p_io[16]~39\,
	datab => \U1|bin_lin_val|LessThan10~0_combout\,
	datac => \Con_25p_io[15]~38\,
	datad => \U1|leds_o[11]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[11]~37_combout\);

-- Location: LC_X6_Y6_N8
\U1|leds_o[12]~38\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[12]~38_combout\ = (\U1|bin_lin_val|Equal0~0_combout\) # ((\U1|leds_o[4]~5_combout\ & (cpt_s(9) & \U1|bin_lin_max|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_val|Equal0~0_combout\,
	datab => \U1|leds_o[4]~5_combout\,
	datac => cpt_s(9),
	datad => \U1|bin_lin_max|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[12]~38_combout\);

-- Location: LC_X6_Y5_N1
\U1|leds_o[12]~39\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[12]~39_combout\ = (\U1|bin_lin_min|LessThan12~0_combout\ & (\U1|leds_o[12]~38_combout\ & (\U1|leds_o[0]~1_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_min|LessThan12~0_combout\,
	datab => \U1|leds_o[12]~38_combout\,
	datac => \U1|leds_o[0]~1_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[12]~39_combout\);

-- Location: LC_X6_Y5_N6
\U1|leds_o[12]~40\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[12]~40_combout\ = (\U1|leds_o[12]~39_combout\) # ((\Con_25p_io[15]~38\ & ((\Con_25p_io[16]~39\) # (\U1|bin_lin_val|Equal0~0_combout\))))

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
	dataa => \Con_25p_io[15]~38\,
	datab => \Con_25p_io[16]~39\,
	datac => \U1|bin_lin_val|Equal0~0_combout\,
	datad => \U1|leds_o[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[12]~40_combout\);

-- Location: LC_X5_Y7_N7
\U1|leds_o[13]~41\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[13]~41_combout\ = (\U1|leds_o[0]~1_combout\ & (!\Con_25p_io[16]~39\ & ((!\Switch_i~combout\(1)) # (!\U1|bin_lin_min|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_min|Equal0~0_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \Switch_i~combout\(1),
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[13]~41_combout\);

-- Location: LC_X5_Y7_N8
\U1|leds_o[13]~42\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[13]~42_combout\ = (\Con_25p_io[15]~38\ & (((\Con_25p_io[16]~39\) # (!\U1|bin_lin_val|LessThan12~0_combout\)))) # (!\Con_25p_io[15]~38\ & (\U1|leds_o[13]~41_combout\ & (!\U1|bin_lin_val|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_25p_io[15]~38\,
	datab => \U1|leds_o[13]~41_combout\,
	datac => \U1|bin_lin_val|LessThan12~0_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[13]~42_combout\);

-- Location: LC_X5_Y7_N9
\U1|leds_o[13]~43\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[13]~43_combout\ = (\U1|leds_o[13]~42_combout\) # ((!\U1|bin_lin_min|Equal0~1_combout\ & (!\U1|bin_lin_max|LessThan12~0_combout\ & \U1|leds_o[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_min|Equal0~1_combout\,
	datab => \U1|bin_lin_max|LessThan12~0_combout\,
	datac => \U1|leds_o[1]~6_combout\,
	datad => \U1|leds_o[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[13]~43_combout\);

-- Location: LC_X6_Y4_N9
\U1|leds_o[14]~44\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[14]~44_combout\ = (!\U1|bin_lin_min|Equal0~2_combout\ & (\U1|leds_o[0]~1_combout\ & (\U1|bin_lin_val|Equal0~1_combout\ & !\Con_25p_io[16]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_min|Equal0~2_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \U1|bin_lin_val|Equal0~1_combout\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[14]~44_combout\);

-- Location: LC_X6_Y4_N8
\U1|leds_o[14]~45\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[14]~45_combout\ = (\U1|leds_o[14]~44_combout\) # ((\Con_25p_io[15]~38\ & ((\U1|bin_lin_val|Equal0~1_combout\) # (\Con_25p_io[16]~39\))))

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
	dataa => \U1|bin_lin_val|Equal0~1_combout\,
	datab => \Con_25p_io[16]~39\,
	datac => \Con_25p_io[15]~38\,
	datad => \U1|leds_o[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[14]~45_combout\);

-- Location: LC_X6_Y4_N7
\U1|leds_o[14]~46\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[14]~46_combout\ = (\U1|leds_o[14]~45_combout\) # ((\U1|leds_o[1]~6_combout\ & (\U1|bin_lin_max|Equal0~1_combout\ & !\U1|bin_lin_min|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[1]~6_combout\,
	datab => \U1|bin_lin_max|Equal0~1_combout\,
	datac => \U1|bin_lin_min|Equal0~2_combout\,
	datad => \U1|leds_o[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[14]~46_combout\);

-- Location: LC_X6_Y4_N1
\U1|leds_o[15]~47\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[15]~47_combout\ = (\Con_25p_io[16]~39\ & (((\Con_25p_io[15]~38\)))) # (!\Con_25p_io[16]~39\ & (\U1|bin_lin_val|Equal0~2_combout\ & ((\U1|leds_o[0]~1_combout\) # (\Con_25p_io[15]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|bin_lin_val|Equal0~2_combout\,
	datab => \U1|leds_o[0]~1_combout\,
	datac => \Con_25p_io[15]~38\,
	datad => \Con_25p_io[16]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[15]~47_combout\);

-- Location: LC_X6_Y4_N0
\U1|leds_o[15]~48\ : maxv_lcell
-- Equation(s):
-- \U1|leds_o[15]~48_combout\ = (\U1|leds_o[15]~47_combout\) # ((\U1|leds_o[1]~6_combout\ & (\U1|bin_lin_max|Equal0~1_combout\ & \Switch_i~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|leds_o[1]~6_combout\,
	datab => \U1|bin_lin_max|Equal0~1_combout\,
	datac => \Switch_i~combout\(4),
	datad => \U1|leds_o[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|leds_o[15]~48_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Gen_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Gen_i);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_A_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_A_i);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_B_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_B_i);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(1));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(4));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(5));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(7));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(8));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(4));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(5));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(7));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(2));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(4));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(6));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_cpt_s(19),
	oe => VCC,
	padio => ww_nSeven_Seg_o(7));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(5));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(6));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(7));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(8));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(9));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(11));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(12));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(14));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(15));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(16));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(17));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(18));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(19));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(20));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(1));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(2));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(5));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(6));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(7));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(8));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(13));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(14));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(17));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(18));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(19));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(20));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(21));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(22));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(23));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(24));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(25));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(5));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(6));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(7));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[0]~2_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(9));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[1]~7_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(10));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[2]~10_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(11));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[3]~13_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(12));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(13));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(15));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(16));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(17));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(18));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(19));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(20));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(21));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(22));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(23));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(24));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(25));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(26));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(27));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(28));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(29));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(30));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(31));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(32));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(33));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(34));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(35));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(36));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(37));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(38));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(39));

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(40));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(41));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(42));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(43));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[4]~16_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(44));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[5]~19_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(45));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[6]~22_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(46));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[7]~25_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(47));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[8]~28_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(48));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[9]~31_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(49));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[10]~34_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(50));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[11]~37_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(51));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[12]~40_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(52));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[13]~43_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(53));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[14]~46_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(54));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|leds_o[15]~48_combout\,
	oe => \ALT_INV_Equal0~0_combout\,
	padio => Con_80p_io(55));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(56));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(57));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(58));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(59));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(60));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(61));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(62));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(63));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[64]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(64));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[65]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(65));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[66]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(66));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[67]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(67));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[68]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(68));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[69]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(69));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[70]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(70));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[71]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => Con_80p_io(71));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[74]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(74));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[75]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(75));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[76]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(76));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[77]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(77));

-- Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[78]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(78));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[79]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(79));
END structure;


