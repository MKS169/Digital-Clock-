-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/26/2017 15:59:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Clock IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(6 DOWNTO 0)
	);
END Clock;

-- Design Ports Information
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \workClock|hour[7]~162clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \workClock|hour[7]~162_combout\ : std_logic;
SIGNAL \workClock|Add2~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDiv|Add0~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~1\ : std_logic;
SIGNAL \freqDiv|Add0~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~3\ : std_logic;
SIGNAL \freqDiv|Add0~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~5\ : std_logic;
SIGNAL \freqDiv|Add0~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~7\ : std_logic;
SIGNAL \freqDiv|Add0~8_combout\ : std_logic;
SIGNAL \freqDiv|Add0~9\ : std_logic;
SIGNAL \freqDiv|Add0~10_combout\ : std_logic;
SIGNAL \freqDiv|Add0~11\ : std_logic;
SIGNAL \freqDiv|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv|Add0~13\ : std_logic;
SIGNAL \freqDiv|Add0~14_combout\ : std_logic;
SIGNAL \freqDiv|s_count~7_combout\ : std_logic;
SIGNAL \freqDiv|Add0~15\ : std_logic;
SIGNAL \freqDiv|Add0~16_combout\ : std_logic;
SIGNAL \freqDiv|Add0~17\ : std_logic;
SIGNAL \freqDiv|Add0~18_combout\ : std_logic;
SIGNAL \freqDiv|Add0~19\ : std_logic;
SIGNAL \freqDiv|Add0~20_combout\ : std_logic;
SIGNAL \freqDiv|Add0~21\ : std_logic;
SIGNAL \freqDiv|Add0~22_combout\ : std_logic;
SIGNAL \freqDiv|Add0~23\ : std_logic;
SIGNAL \freqDiv|Add0~24_combout\ : std_logic;
SIGNAL \freqDiv|s_count~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~25\ : std_logic;
SIGNAL \freqDiv|Add0~26_combout\ : std_logic;
SIGNAL \freqDiv|s_count~5_combout\ : std_logic;
SIGNAL \freqDiv|Add0~27\ : std_logic;
SIGNAL \freqDiv|Add0~28_combout\ : std_logic;
SIGNAL \freqDiv|s_count~4_combout\ : std_logic;
SIGNAL \freqDiv|Add0~29\ : std_logic;
SIGNAL \freqDiv|Add0~30_combout\ : std_logic;
SIGNAL \freqDiv|s_count~11_combout\ : std_logic;
SIGNAL \freqDiv|Add0~31\ : std_logic;
SIGNAL \freqDiv|Add0~32_combout\ : std_logic;
SIGNAL \freqDiv|Add0~33\ : std_logic;
SIGNAL \freqDiv|Add0~34_combout\ : std_logic;
SIGNAL \freqDiv|s_count~10_combout\ : std_logic;
SIGNAL \freqDiv|Add0~35\ : std_logic;
SIGNAL \freqDiv|Add0~36_combout\ : std_logic;
SIGNAL \freqDiv|Add0~37\ : std_logic;
SIGNAL \freqDiv|Add0~38_combout\ : std_logic;
SIGNAL \freqDiv|s_count~3_combout\ : std_logic;
SIGNAL \freqDiv|Add0~39\ : std_logic;
SIGNAL \freqDiv|Add0~40_combout\ : std_logic;
SIGNAL \freqDiv|s_count~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~41\ : std_logic;
SIGNAL \freqDiv|Add0~42_combout\ : std_logic;
SIGNAL \freqDiv|s_count~1_combout\ : std_logic;
SIGNAL \freqDiv|Add0~43\ : std_logic;
SIGNAL \freqDiv|Add0~44_combout\ : std_logic;
SIGNAL \freqDiv|s_count~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~45\ : std_logic;
SIGNAL \freqDiv|Add0~47\ : std_logic;
SIGNAL \freqDiv|Add0~48_combout\ : std_logic;
SIGNAL \freqDiv|Add0~49\ : std_logic;
SIGNAL \freqDiv|Add0~50_combout\ : std_logic;
SIGNAL \freqDiv|s_count~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv|Add0~51\ : std_logic;
SIGNAL \freqDiv|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv|Add0~53\ : std_logic;
SIGNAL \freqDiv|Add0~54_combout\ : std_logic;
SIGNAL \freqDiv|Add0~55\ : std_logic;
SIGNAL \freqDiv|Add0~56_combout\ : std_logic;
SIGNAL \freqDiv|Add0~57\ : std_logic;
SIGNAL \freqDiv|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv|Add0~59\ : std_logic;
SIGNAL \freqDiv|Add0~60_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv|Add0~46_combout\ : std_logic;
SIGNAL \freqDiv|s_count~9_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \workClock|Add2~16_combout\ : std_logic;
SIGNAL \workClock|hour[7]~162clkctrl_outclk\ : std_logic;
SIGNAL \workClock|hour[0]~29_combout\ : std_logic;
SIGNAL \workClock|hour[0]~31_combout\ : std_logic;
SIGNAL \db2|Add0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \db2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \db2|s_dirtyIn~q\ : std_logic;
SIGNAL \db2|s_previousIn~q\ : std_logic;
SIGNAL \db2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \db2|Add0~23\ : std_logic;
SIGNAL \db2|Add0~24_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \db2|Add0~25\ : std_logic;
SIGNAL \db2|Add0~26_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \db2|Add0~27\ : std_logic;
SIGNAL \db2|Add0~28_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \db2|Add0~29\ : std_logic;
SIGNAL \db2|Add0~30_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \db2|Add0~31\ : std_logic;
SIGNAL \db2|Add0~32_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \db2|Add0~33\ : std_logic;
SIGNAL \db2|Add0~34_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \db2|Add0~35\ : std_logic;
SIGNAL \db2|Add0~36_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \db2|LessThan0~4_combout\ : std_logic;
SIGNAL \db2|Add0~11\ : std_logic;
SIGNAL \db2|Add0~12_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \db2|Add0~13\ : std_logic;
SIGNAL \db2|Add0~14_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \db2|Add0~15\ : std_logic;
SIGNAL \db2|Add0~16_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \db2|LessThan0~0_combout\ : std_logic;
SIGNAL \db2|LessThan0~1_combout\ : std_logic;
SIGNAL \db2|LessThan0~2_combout\ : std_logic;
SIGNAL \db2|LessThan0~3_combout\ : std_logic;
SIGNAL \db2|LessThan0~5_combout\ : std_logic;
SIGNAL \db2|LessThan0~6_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \db2|Add0~17\ : std_logic;
SIGNAL \db2|Add0~18_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \db2|Add0~19\ : std_logic;
SIGNAL \db2|Add0~20_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \db2|Add0~21\ : std_logic;
SIGNAL \db2|Add0~22_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \db2|Add0~37\ : std_logic;
SIGNAL \db2|Add0~38_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \db2|Add0~39\ : std_logic;
SIGNAL \db2|Add0~40_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \db2|Add0~41\ : std_logic;
SIGNAL \db2|Add0~42_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \db2|Add0~43\ : std_logic;
SIGNAL \db2|Add0~44_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \db2|Add0~1\ : std_logic;
SIGNAL \db2|Add0~2_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \db2|Add0~3\ : std_logic;
SIGNAL \db2|Add0~4_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \db2|Add0~5\ : std_logic;
SIGNAL \db2|Add0~6_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \db2|Add0~7\ : std_logic;
SIGNAL \db2|Add0~8_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \db2|Add0~9\ : std_logic;
SIGNAL \db2|Add0~10_combout\ : std_logic;
SIGNAL \db2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \db2|s_pulsedOut~q\ : std_logic;
SIGNAL \workClock|Add0~0_combout\ : std_logic;
SIGNAL \workClock|Add0~1\ : std_logic;
SIGNAL \workClock|Add0~2_combout\ : std_logic;
SIGNAL \workClock|Add0~3\ : std_logic;
SIGNAL \workClock|Add0~4_combout\ : std_logic;
SIGNAL \workClock|sec~3_combout\ : std_logic;
SIGNAL \workClock|Add0~5\ : std_logic;
SIGNAL \workClock|Add0~6_combout\ : std_logic;
SIGNAL \workClock|sec~2_combout\ : std_logic;
SIGNAL \workClock|Add0~7\ : std_logic;
SIGNAL \workClock|Add0~8_combout\ : std_logic;
SIGNAL \workClock|sec~1_combout\ : std_logic;
SIGNAL \workClock|Add0~9\ : std_logic;
SIGNAL \workClock|Add0~10_combout\ : std_logic;
SIGNAL \workClock|sec~0_combout\ : std_logic;
SIGNAL \workClock|Add0~11\ : std_logic;
SIGNAL \workClock|Add0~12_combout\ : std_logic;
SIGNAL \workClock|Add0~13\ : std_logic;
SIGNAL \workClock|Add0~14_combout\ : std_logic;
SIGNAL \workClock|Add0~15\ : std_logic;
SIGNAL \workClock|Add0~16_combout\ : std_logic;
SIGNAL \workClock|Add0~17\ : std_logic;
SIGNAL \workClock|Add0~18_combout\ : std_logic;
SIGNAL \workClock|Add0~19\ : std_logic;
SIGNAL \workClock|Add0~20_combout\ : std_logic;
SIGNAL \workClock|Add0~21\ : std_logic;
SIGNAL \workClock|Add0~22_combout\ : std_logic;
SIGNAL \workClock|Add0~23\ : std_logic;
SIGNAL \workClock|Add0~24_combout\ : std_logic;
SIGNAL \workClock|Add0~25\ : std_logic;
SIGNAL \workClock|Add0~26_combout\ : std_logic;
SIGNAL \workClock|Add0~27\ : std_logic;
SIGNAL \workClock|Add0~28_combout\ : std_logic;
SIGNAL \workClock|Add0~29\ : std_logic;
SIGNAL \workClock|Add0~30_combout\ : std_logic;
SIGNAL \workClock|Equal0~3_combout\ : std_logic;
SIGNAL \workClock|Equal0~2_combout\ : std_logic;
SIGNAL \workClock|Add0~31\ : std_logic;
SIGNAL \workClock|Add0~32_combout\ : std_logic;
SIGNAL \workClock|Add0~33\ : std_logic;
SIGNAL \workClock|Add0~34_combout\ : std_logic;
SIGNAL \workClock|Add0~35\ : std_logic;
SIGNAL \workClock|Add0~36_combout\ : std_logic;
SIGNAL \workClock|Add0~37\ : std_logic;
SIGNAL \workClock|Add0~38_combout\ : std_logic;
SIGNAL \workClock|Equal0~4_combout\ : std_logic;
SIGNAL \workClock|Add0~39\ : std_logic;
SIGNAL \workClock|Add0~40_combout\ : std_logic;
SIGNAL \workClock|Add0~41\ : std_logic;
SIGNAL \workClock|Add0~42_combout\ : std_logic;
SIGNAL \workClock|Add0~43\ : std_logic;
SIGNAL \workClock|Add0~44_combout\ : std_logic;
SIGNAL \workClock|Add0~45\ : std_logic;
SIGNAL \workClock|Add0~46_combout\ : std_logic;
SIGNAL \workClock|Equal0~5_combout\ : std_logic;
SIGNAL \workClock|Add0~47\ : std_logic;
SIGNAL \workClock|Add0~48_combout\ : std_logic;
SIGNAL \workClock|Add0~49\ : std_logic;
SIGNAL \workClock|Add0~50_combout\ : std_logic;
SIGNAL \workClock|Add0~51\ : std_logic;
SIGNAL \workClock|Add0~52_combout\ : std_logic;
SIGNAL \workClock|Add0~53\ : std_logic;
SIGNAL \workClock|Add0~54_combout\ : std_logic;
SIGNAL \workClock|Add0~55\ : std_logic;
SIGNAL \workClock|Add0~56_combout\ : std_logic;
SIGNAL \workClock|Add0~57\ : std_logic;
SIGNAL \workClock|Add0~58_combout\ : std_logic;
SIGNAL \workClock|Add0~59\ : std_logic;
SIGNAL \workClock|Add0~60_combout\ : std_logic;
SIGNAL \workClock|Add0~61\ : std_logic;
SIGNAL \workClock|Add0~62_combout\ : std_logic;
SIGNAL \workClock|Equal0~7_combout\ : std_logic;
SIGNAL \workClock|Equal0~6_combout\ : std_logic;
SIGNAL \workClock|Equal0~8_combout\ : std_logic;
SIGNAL \workClock|Equal0~0_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~27_combout\ : std_logic;
SIGNAL \workClock|Equal0~1_combout\ : std_logic;
SIGNAL \workClock|Equal0~9_combout\ : std_logic;
SIGNAL \workClock|min[7]~0_combout\ : std_logic;
SIGNAL \workClock|Add1~0_combout\ : std_logic;
SIGNAL \workClock|Add1~1\ : std_logic;
SIGNAL \workClock|Add1~2_combout\ : std_logic;
SIGNAL \workClock|Add1~3\ : std_logic;
SIGNAL \workClock|Add1~4_combout\ : std_logic;
SIGNAL \workClock|min[2]~4_combout\ : std_logic;
SIGNAL \workClock|Add1~5\ : std_logic;
SIGNAL \workClock|Add1~6_combout\ : std_logic;
SIGNAL \workClock|min[3]~3_combout\ : std_logic;
SIGNAL \workClock|Add1~7\ : std_logic;
SIGNAL \workClock|Add1~8_combout\ : std_logic;
SIGNAL \workClock|min[4]~2_combout\ : std_logic;
SIGNAL \workClock|Add1~9\ : std_logic;
SIGNAL \workClock|Add1~10_combout\ : std_logic;
SIGNAL \workClock|min[5]~1_combout\ : std_logic;
SIGNAL \workClock|Add1~11\ : std_logic;
SIGNAL \workClock|Add1~12_combout\ : std_logic;
SIGNAL \workClock|Equal1~0_combout\ : std_logic;
SIGNAL \workClock|Add1~13\ : std_logic;
SIGNAL \workClock|Add1~14_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~27_combout\ : std_logic;
SIGNAL \workClock|Equal1~1_combout\ : std_logic;
SIGNAL \workClock|Add1~15\ : std_logic;
SIGNAL \workClock|Add1~16_combout\ : std_logic;
SIGNAL \workClock|Add1~17\ : std_logic;
SIGNAL \workClock|Add1~18_combout\ : std_logic;
SIGNAL \workClock|Add1~19\ : std_logic;
SIGNAL \workClock|Add1~20_combout\ : std_logic;
SIGNAL \workClock|Add1~21\ : std_logic;
SIGNAL \workClock|Add1~22_combout\ : std_logic;
SIGNAL \workClock|Add1~23\ : std_logic;
SIGNAL \workClock|Add1~24_combout\ : std_logic;
SIGNAL \workClock|Add1~25\ : std_logic;
SIGNAL \workClock|Add1~26_combout\ : std_logic;
SIGNAL \workClock|Add1~27\ : std_logic;
SIGNAL \workClock|Add1~28_combout\ : std_logic;
SIGNAL \workClock|Add1~29\ : std_logic;
SIGNAL \workClock|Add1~30_combout\ : std_logic;
SIGNAL \workClock|Add1~31\ : std_logic;
SIGNAL \workClock|Add1~32_combout\ : std_logic;
SIGNAL \workClock|Add1~33\ : std_logic;
SIGNAL \workClock|Add1~34_combout\ : std_logic;
SIGNAL \workClock|Add1~35\ : std_logic;
SIGNAL \workClock|Add1~36_combout\ : std_logic;
SIGNAL \workClock|Add1~37\ : std_logic;
SIGNAL \workClock|Add1~38_combout\ : std_logic;
SIGNAL \workClock|Add1~39\ : std_logic;
SIGNAL \workClock|Add1~40_combout\ : std_logic;
SIGNAL \workClock|Add1~41\ : std_logic;
SIGNAL \workClock|Add1~42_combout\ : std_logic;
SIGNAL \workClock|Add1~43\ : std_logic;
SIGNAL \workClock|Add1~44_combout\ : std_logic;
SIGNAL \workClock|Add1~45\ : std_logic;
SIGNAL \workClock|Add1~46_combout\ : std_logic;
SIGNAL \workClock|Add1~47\ : std_logic;
SIGNAL \workClock|Add1~48_combout\ : std_logic;
SIGNAL \workClock|Add1~49\ : std_logic;
SIGNAL \workClock|Add1~50_combout\ : std_logic;
SIGNAL \workClock|Add1~51\ : std_logic;
SIGNAL \workClock|Add1~52_combout\ : std_logic;
SIGNAL \workClock|Add1~53\ : std_logic;
SIGNAL \workClock|Add1~54_combout\ : std_logic;
SIGNAL \workClock|Equal1~6_combout\ : std_logic;
SIGNAL \workClock|Equal1~5_combout\ : std_logic;
SIGNAL \workClock|Equal1~4_combout\ : std_logic;
SIGNAL \workClock|Add1~55\ : std_logic;
SIGNAL \workClock|Add1~56_combout\ : std_logic;
SIGNAL \workClock|Add1~57\ : std_logic;
SIGNAL \workClock|Add1~58_combout\ : std_logic;
SIGNAL \workClock|Add1~59\ : std_logic;
SIGNAL \workClock|Add1~60_combout\ : std_logic;
SIGNAL \workClock|Add1~61\ : std_logic;
SIGNAL \workClock|Add1~62_combout\ : std_logic;
SIGNAL \workClock|Equal1~7_combout\ : std_logic;
SIGNAL \workClock|Equal1~8_combout\ : std_logic;
SIGNAL \workClock|Equal1~3_combout\ : std_logic;
SIGNAL \workClock|Equal1~2_combout\ : std_logic;
SIGNAL \workClock|Equal1~9_combout\ : std_logic;
SIGNAL \workClock|Add2~11\ : std_logic;
SIGNAL \workClock|Add2~12_combout\ : std_logic;
SIGNAL \workClock|hour[6]~5_combout\ : std_logic;
SIGNAL \workClock|Add2~17\ : std_logic;
SIGNAL \workClock|Add2~19\ : std_logic;
SIGNAL \workClock|Add2~21\ : std_logic;
SIGNAL \workClock|Add2~23\ : std_logic;
SIGNAL \workClock|Add2~25\ : std_logic;
SIGNAL \workClock|Add2~27\ : std_logic;
SIGNAL \workClock|Add2~28_combout\ : std_logic;
SIGNAL \workClock|hour[6]~7_combout\ : std_logic;
SIGNAL \workClock|hour[6]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[6]~6_combout\ : std_logic;
SIGNAL \workClock|Add2~13\ : std_logic;
SIGNAL \workClock|Add2~14_combout\ : std_logic;
SIGNAL \workClock|hour[7]~17_combout\ : std_logic;
SIGNAL \workClock|Add2~29\ : std_logic;
SIGNAL \workClock|Add2~30_combout\ : std_logic;
SIGNAL \workClock|hour[7]~19_combout\ : std_logic;
SIGNAL \workClock|hour[7]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[7]~18_combout\ : std_logic;
SIGNAL \workClock|Add2~15\ : std_logic;
SIGNAL \workClock|Add2~32_combout\ : std_logic;
SIGNAL \workClock|hour[8]~125_combout\ : std_logic;
SIGNAL \workClock|Add2~31\ : std_logic;
SIGNAL \workClock|Add2~80_combout\ : std_logic;
SIGNAL \workClock|hour[8]~127_combout\ : std_logic;
SIGNAL \workClock|hour[8]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[8]~126_combout\ : std_logic;
SIGNAL \workClock|Add2~33\ : std_logic;
SIGNAL \workClock|Add2~34_combout\ : std_logic;
SIGNAL \workClock|hour[9]~121_combout\ : std_logic;
SIGNAL \workClock|Add2~81\ : std_logic;
SIGNAL \workClock|Add2~82_combout\ : std_logic;
SIGNAL \workClock|hour[9]~123_combout\ : std_logic;
SIGNAL \workClock|hour[9]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[9]~122_combout\ : std_logic;
SIGNAL \workClock|Add2~35\ : std_logic;
SIGNAL \workClock|Add2~36_combout\ : std_logic;
SIGNAL \workClock|hour[10]~117_combout\ : std_logic;
SIGNAL \workClock|Add2~83\ : std_logic;
SIGNAL \workClock|Add2~84_combout\ : std_logic;
SIGNAL \workClock|hour[10]~119_combout\ : std_logic;
SIGNAL \workClock|hour[10]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[10]~118_combout\ : std_logic;
SIGNAL \workClock|Add2~85\ : std_logic;
SIGNAL \workClock|Add2~86_combout\ : std_logic;
SIGNAL \workClock|Add2~37\ : std_logic;
SIGNAL \workClock|Add2~38_combout\ : std_logic;
SIGNAL \workClock|hour[11]~113_combout\ : std_logic;
SIGNAL \workClock|hour[11]~115_combout\ : std_logic;
SIGNAL \workClock|hour[11]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[11]~114_combout\ : std_logic;
SIGNAL \workClock|Add2~39\ : std_logic;
SIGNAL \workClock|Add2~40_combout\ : std_logic;
SIGNAL \workClock|hour[12]~109_combout\ : std_logic;
SIGNAL \workClock|Add2~87\ : std_logic;
SIGNAL \workClock|Add2~88_combout\ : std_logic;
SIGNAL \workClock|hour[12]~111_combout\ : std_logic;
SIGNAL \workClock|hour[12]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[12]~110_combout\ : std_logic;
SIGNAL \workClock|Add2~41\ : std_logic;
SIGNAL \workClock|Add2~42_combout\ : std_logic;
SIGNAL \workClock|hour[13]~105_combout\ : std_logic;
SIGNAL \workClock|Add2~89\ : std_logic;
SIGNAL \workClock|Add2~90_combout\ : std_logic;
SIGNAL \workClock|hour[13]~107_combout\ : std_logic;
SIGNAL \workClock|hour[13]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[13]~106_combout\ : std_logic;
SIGNAL \workClock|Add2~43\ : std_logic;
SIGNAL \workClock|Add2~44_combout\ : std_logic;
SIGNAL \workClock|hour[14]~101_combout\ : std_logic;
SIGNAL \workClock|Add2~91\ : std_logic;
SIGNAL \workClock|Add2~92_combout\ : std_logic;
SIGNAL \workClock|hour[14]~103_combout\ : std_logic;
SIGNAL \workClock|hour[14]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[14]~102_combout\ : std_logic;
SIGNAL \workClock|Add2~45\ : std_logic;
SIGNAL \workClock|Add2~46_combout\ : std_logic;
SIGNAL \workClock|hour[15]~97_combout\ : std_logic;
SIGNAL \workClock|Add2~93\ : std_logic;
SIGNAL \workClock|Add2~94_combout\ : std_logic;
SIGNAL \workClock|hour[15]~99_combout\ : std_logic;
SIGNAL \workClock|hour[15]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[15]~98_combout\ : std_logic;
SIGNAL \workClock|Add2~47\ : std_logic;
SIGNAL \workClock|Add2~48_combout\ : std_logic;
SIGNAL \workClock|hour[16]~93_combout\ : std_logic;
SIGNAL \workClock|Add2~95\ : std_logic;
SIGNAL \workClock|Add2~96_combout\ : std_logic;
SIGNAL \workClock|hour[16]~95_combout\ : std_logic;
SIGNAL \workClock|hour[16]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[16]~94_combout\ : std_logic;
SIGNAL \workClock|Add2~49\ : std_logic;
SIGNAL \workClock|Add2~50_combout\ : std_logic;
SIGNAL \workClock|hour[17]~89_combout\ : std_logic;
SIGNAL \workClock|Add2~97\ : std_logic;
SIGNAL \workClock|Add2~98_combout\ : std_logic;
SIGNAL \workClock|hour[17]~91_combout\ : std_logic;
SIGNAL \workClock|hour[17]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[17]~90_combout\ : std_logic;
SIGNAL \workClock|Add2~51\ : std_logic;
SIGNAL \workClock|Add2~52_combout\ : std_logic;
SIGNAL \workClock|hour[18]~85_combout\ : std_logic;
SIGNAL \workClock|Add2~99\ : std_logic;
SIGNAL \workClock|Add2~100_combout\ : std_logic;
SIGNAL \workClock|hour[18]~87_combout\ : std_logic;
SIGNAL \workClock|hour[18]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[18]~86_combout\ : std_logic;
SIGNAL \workClock|Add2~101\ : std_logic;
SIGNAL \workClock|Add2~102_combout\ : std_logic;
SIGNAL \workClock|Add2~53\ : std_logic;
SIGNAL \workClock|Add2~54_combout\ : std_logic;
SIGNAL \workClock|hour[19]~81_combout\ : std_logic;
SIGNAL \workClock|hour[19]~83_combout\ : std_logic;
SIGNAL \workClock|hour[19]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[19]~82_combout\ : std_logic;
SIGNAL \workClock|Add2~55\ : std_logic;
SIGNAL \workClock|Add2~56_combout\ : std_logic;
SIGNAL \workClock|hour[20]~77_combout\ : std_logic;
SIGNAL \workClock|Add2~103\ : std_logic;
SIGNAL \workClock|Add2~104_combout\ : std_logic;
SIGNAL \workClock|hour[20]~79_combout\ : std_logic;
SIGNAL \workClock|hour[20]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[20]~78_combout\ : std_logic;
SIGNAL \workClock|Add2~57\ : std_logic;
SIGNAL \workClock|Add2~58_combout\ : std_logic;
SIGNAL \workClock|hour[21]~73_combout\ : std_logic;
SIGNAL \workClock|Add2~105\ : std_logic;
SIGNAL \workClock|Add2~106_combout\ : std_logic;
SIGNAL \workClock|hour[21]~75_combout\ : std_logic;
SIGNAL \workClock|hour[21]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[21]~74_combout\ : std_logic;
SIGNAL \workClock|Add2~59\ : std_logic;
SIGNAL \workClock|Add2~60_combout\ : std_logic;
SIGNAL \workClock|hour[22]~69_combout\ : std_logic;
SIGNAL \workClock|Add2~107\ : std_logic;
SIGNAL \workClock|Add2~108_combout\ : std_logic;
SIGNAL \workClock|hour[22]~71_combout\ : std_logic;
SIGNAL \workClock|hour[22]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[22]~70_combout\ : std_logic;
SIGNAL \workClock|Add2~61\ : std_logic;
SIGNAL \workClock|Add2~62_combout\ : std_logic;
SIGNAL \workClock|hour[23]~65_combout\ : std_logic;
SIGNAL \workClock|Add2~109\ : std_logic;
SIGNAL \workClock|Add2~110_combout\ : std_logic;
SIGNAL \workClock|hour[23]~67_combout\ : std_logic;
SIGNAL \workClock|hour[23]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[23]~66_combout\ : std_logic;
SIGNAL \workClock|Add2~111\ : std_logic;
SIGNAL \workClock|Add2~112_combout\ : std_logic;
SIGNAL \workClock|Add2~63\ : std_logic;
SIGNAL \workClock|Add2~64_combout\ : std_logic;
SIGNAL \workClock|hour[24]~61_combout\ : std_logic;
SIGNAL \workClock|hour[24]~63_combout\ : std_logic;
SIGNAL \workClock|hour[24]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[24]~62_combout\ : std_logic;
SIGNAL \workClock|Add2~65\ : std_logic;
SIGNAL \workClock|Add2~66_combout\ : std_logic;
SIGNAL \workClock|hour[25]~57_combout\ : std_logic;
SIGNAL \workClock|Add2~113\ : std_logic;
SIGNAL \workClock|Add2~114_combout\ : std_logic;
SIGNAL \workClock|hour[25]~59_combout\ : std_logic;
SIGNAL \workClock|hour[25]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[25]~58_combout\ : std_logic;
SIGNAL \workClock|Add2~67\ : std_logic;
SIGNAL \workClock|Add2~68_combout\ : std_logic;
SIGNAL \workClock|hour[26]~53_combout\ : std_logic;
SIGNAL \workClock|Add2~115\ : std_logic;
SIGNAL \workClock|Add2~116_combout\ : std_logic;
SIGNAL \workClock|hour[26]~55_combout\ : std_logic;
SIGNAL \workClock|hour[26]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[26]~54_combout\ : std_logic;
SIGNAL \workClock|Add2~117\ : std_logic;
SIGNAL \workClock|Add2~118_combout\ : std_logic;
SIGNAL \workClock|Add2~69\ : std_logic;
SIGNAL \workClock|Add2~70_combout\ : std_logic;
SIGNAL \workClock|hour[27]~49_combout\ : std_logic;
SIGNAL \workClock|hour[27]~51_combout\ : std_logic;
SIGNAL \workClock|hour[27]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[27]~50_combout\ : std_logic;
SIGNAL \workClock|Add2~71\ : std_logic;
SIGNAL \workClock|Add2~72_combout\ : std_logic;
SIGNAL \workClock|hour[28]~45_combout\ : std_logic;
SIGNAL \workClock|Add2~119\ : std_logic;
SIGNAL \workClock|Add2~120_combout\ : std_logic;
SIGNAL \workClock|hour[28]~47_combout\ : std_logic;
SIGNAL \workClock|hour[28]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[28]~46_combout\ : std_logic;
SIGNAL \workClock|Add2~73\ : std_logic;
SIGNAL \workClock|Add2~74_combout\ : std_logic;
SIGNAL \workClock|hour[29]~41_combout\ : std_logic;
SIGNAL \workClock|Add2~121\ : std_logic;
SIGNAL \workClock|Add2~122_combout\ : std_logic;
SIGNAL \workClock|hour[29]~43_combout\ : std_logic;
SIGNAL \workClock|hour[29]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[29]~42_combout\ : std_logic;
SIGNAL \workClock|Add2~75\ : std_logic;
SIGNAL \workClock|Add2~76_combout\ : std_logic;
SIGNAL \workClock|hour[30]~37_combout\ : std_logic;
SIGNAL \workClock|Add2~123\ : std_logic;
SIGNAL \workClock|Add2~124_combout\ : std_logic;
SIGNAL \workClock|hour[30]~39_combout\ : std_logic;
SIGNAL \workClock|hour[30]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[30]~38_combout\ : std_logic;
SIGNAL \workClock|Add2~77\ : std_logic;
SIGNAL \workClock|Add2~78_combout\ : std_logic;
SIGNAL \workClock|hour[31]~33_combout\ : std_logic;
SIGNAL \workClock|Add2~125\ : std_logic;
SIGNAL \workClock|Add2~126_combout\ : std_logic;
SIGNAL \workClock|hour[31]~35_combout\ : std_logic;
SIGNAL \workClock|hour[31]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[31]~34_combout\ : std_logic;
SIGNAL \workClock|Equal2~6_combout\ : std_logic;
SIGNAL \workClock|Equal2~0_combout\ : std_logic;
SIGNAL \workClock|Equal2~2_combout\ : std_logic;
SIGNAL \workClock|Equal2~3_combout\ : std_logic;
SIGNAL \workClock|Equal2~5_combout\ : std_logic;
SIGNAL \workClock|Equal2~4_combout\ : std_logic;
SIGNAL \workClock|Equal2~7_combout\ : std_logic;
SIGNAL \workClock|Equal2~1_combout\ : std_logic;
SIGNAL \workClock|Equal2~8_combout\ : std_logic;
SIGNAL \workClock|Equal2~9_combout\ : std_logic;
SIGNAL \workClock|Equal2~10_combout\ : std_logic;
SIGNAL \workClock|hour[7]~161_combout\ : std_logic;
SIGNAL \workClock|hour[0]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[0]~30_combout\ : std_logic;
SIGNAL \workClock|Add2~1\ : std_logic;
SIGNAL \workClock|Add2~2_combout\ : std_logic;
SIGNAL \workClock|hour[1]~21_combout\ : std_logic;
SIGNAL \workClock|Add2~18_combout\ : std_logic;
SIGNAL \workClock|hour[1]~23_combout\ : std_logic;
SIGNAL \workClock|hour[1]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[1]~22_combout\ : std_logic;
SIGNAL \workClock|Add2~3\ : std_logic;
SIGNAL \workClock|Add2~4_combout\ : std_logic;
SIGNAL \workClock|Add2~20_combout\ : std_logic;
SIGNAL \workClock|hour[2]~9_combout\ : std_logic;
SIGNAL \workClock|hour[2]~11_combout\ : std_logic;
SIGNAL \workClock|hour[2]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[2]~10_combout\ : std_logic;
SIGNAL \workClock|Add2~5\ : std_logic;
SIGNAL \workClock|Add2~6_combout\ : std_logic;
SIGNAL \workClock|hour[3]~25_combout\ : std_logic;
SIGNAL \workClock|Add2~22_combout\ : std_logic;
SIGNAL \workClock|hour[3]~164_combout\ : std_logic;
SIGNAL \workClock|hour[3]~27_combout\ : std_logic;
SIGNAL \workClock|hour[3]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[3]~26_combout\ : std_logic;
SIGNAL \workClock|Add2~7\ : std_logic;
SIGNAL \workClock|Add2~8_combout\ : std_logic;
SIGNAL \workClock|hour[4]~1_combout\ : std_logic;
SIGNAL \workClock|Add2~24_combout\ : std_logic;
SIGNAL \workClock|hour[4]~163_combout\ : std_logic;
SIGNAL \workClock|hour[4]~3_combout\ : std_logic;
SIGNAL \workClock|hour[4]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[4]~2_combout\ : std_logic;
SIGNAL \workClock|Add2~9\ : std_logic;
SIGNAL \workClock|Add2~10_combout\ : std_logic;
SIGNAL \workClock|hour[5]~13_combout\ : std_logic;
SIGNAL \workClock|Add2~26_combout\ : std_logic;
SIGNAL \workClock|hour[5]~15_combout\ : std_logic;
SIGNAL \workClock|hour[5]~_emulated_q\ : std_logic;
SIGNAL \workClock|hour[5]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \disp7|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~11_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~8_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~56_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~9_combout\ : std_logic;
SIGNAL \disp7|decOut_n~16_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~10_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~17_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~18_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~19_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~12_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~13_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~14_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~20_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~21_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~24_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~25_combout\ : std_logic;
SIGNAL \disp7|decOut_n[1]~22_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~57_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~26_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~27_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~28_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~23_combout\ : std_logic;
SIGNAL \disp7|decOut_n[2]~29_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~42_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~41_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~43_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~58_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~37_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~38_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~39_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~40_combout\ : std_logic;
SIGNAL \disp7|decOut_n[3]~44_combout\ : std_logic;
SIGNAL \disp7|decOut_n[4]~45_combout\ : std_logic;
SIGNAL \disp7|decOut_n[5]~46_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~52_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~51_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~53_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~47_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~48_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~49_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~50_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~54_combout\ : std_logic;
SIGNAL \disp7|decOut_n[6]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~81_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~82_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~83_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~84_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ : std_logic;
SIGNAL \disp6|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \disp6|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \disp6|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \disp6|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \disp6|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \disp6|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \disp6|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \disp5|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~4_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~48_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \disp5|decOut_n~10_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~6_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~11_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~9_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~12_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~13_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~8_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~14_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~18_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~23_combout\ : std_logic;
SIGNAL \disp5|decOut_n[1]~16_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~17_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~19_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~20_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~21_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~22_combout\ : std_logic;
SIGNAL \disp5|decOut_n[2]~24_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~29_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~49_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~50_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~25_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~26_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \disp5|decOut_n[3]~37_combout\ : std_logic;
SIGNAL \disp5|decOut_n[4]~38_combout\ : std_logic;
SIGNAL \disp5|decOut_n[5]~39_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~41_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~42_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~43_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~40_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~44_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~45_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~46_combout\ : std_logic;
SIGNAL \disp5|decOut_n[6]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ : std_logic;
SIGNAL \disp4|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \disp4|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \disp4|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \disp4|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \disp4|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \disp4|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \disp4|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \disp3|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~4_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~48_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~8_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~11_combout\ : std_logic;
SIGNAL \disp3|decOut_n~10_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~9_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~6_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~12_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~13_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~14_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~15_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~18_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~23_combout\ : std_logic;
SIGNAL \disp3|decOut_n[1]~16_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~20_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~21_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~19_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~22_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~17_combout\ : std_logic;
SIGNAL \disp3|decOut_n[2]~24_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~34_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~35_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~36_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~31_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~32_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~49_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~50_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~28_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~29_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~30_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~25_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~26_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \disp3|decOut_n[3]~37_combout\ : std_logic;
SIGNAL \disp3|decOut_n[4]~38_combout\ : std_logic;
SIGNAL \disp3|decOut_n[5]~39_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~40_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~44_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~45_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~42_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~41_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~43_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~46_combout\ : std_logic;
SIGNAL \disp3|decOut_n[6]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~82_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~83_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~84_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ : std_logic;
SIGNAL \disp2|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \disp2|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \disp2|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \disp2|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \disp2|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \disp2|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \disp2|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \freqDiv|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \workClock|min\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \workClock|sec\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \db2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \db2|ALT_INV_s_pulsedOut~q\ : std_logic;
SIGNAL \workClock|ALT_INV_hour[7]~162clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);

\workClock|hour[7]~162clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \workClock|hour[7]~162_combout\);
\db2|ALT_INV_s_pulsedOut~q\ <= NOT \db2|s_pulsedOut~q\;
\workClock|ALT_INV_hour[7]~162clkctrl_outclk\ <= NOT \workClock|hour[7]~162clkctrl_outclk\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[1]~21_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[2]~29_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[3]~44_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[4]~45_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[5]~46_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp7|decOut_n[6]~55_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp6|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[1]~15_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[2]~24_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[3]~37_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[4]~38_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[5]~39_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp5|decOut_n[6]~47_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp4|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[0]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[1]~15_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[2]~24_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[3]~37_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[4]~38_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[5]~39_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|decOut_n[6]~47_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|decOut_n[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_KEY[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N14
\workClock|hour[7]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[7]~162_combout\ = (!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \workClock|hour[7]~162_combout\);

-- Location: LCCOMB_X96_Y42_N0
\workClock|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~0_combout\ = \workClock|hour[0]~30_combout\ $ (VCC)
-- \workClock|Add2~1\ = CARRY(\workClock|hour[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datad => VCC,
	combout => \workClock|Add2~0_combout\,
	cout => \workClock|Add2~1\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y25_N2
\freqDiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~0_combout\ = \freqDiv|s_count\(0) $ (VCC)
-- \freqDiv|Add0~1\ = CARRY(\freqDiv|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(0),
	datad => VCC,
	combout => \freqDiv|Add0~0_combout\,
	cout => \freqDiv|Add0~1\);

-- Location: FF_X66_Y25_N3
\freqDiv|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(0));

-- Location: LCCOMB_X66_Y25_N4
\freqDiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~2_combout\ = (\freqDiv|s_count\(1) & (!\freqDiv|Add0~1\)) # (!\freqDiv|s_count\(1) & ((\freqDiv|Add0~1\) # (GND)))
-- \freqDiv|Add0~3\ = CARRY((!\freqDiv|Add0~1\) # (!\freqDiv|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(1),
	datad => VCC,
	cin => \freqDiv|Add0~1\,
	combout => \freqDiv|Add0~2_combout\,
	cout => \freqDiv|Add0~3\);

-- Location: FF_X66_Y25_N5
\freqDiv|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(1));

-- Location: LCCOMB_X66_Y25_N6
\freqDiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~4_combout\ = (\freqDiv|s_count\(2) & (\freqDiv|Add0~3\ $ (GND))) # (!\freqDiv|s_count\(2) & (!\freqDiv|Add0~3\ & VCC))
-- \freqDiv|Add0~5\ = CARRY((\freqDiv|s_count\(2) & !\freqDiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(2),
	datad => VCC,
	cin => \freqDiv|Add0~3\,
	combout => \freqDiv|Add0~4_combout\,
	cout => \freqDiv|Add0~5\);

-- Location: FF_X66_Y25_N7
\freqDiv|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(2));

-- Location: LCCOMB_X66_Y25_N8
\freqDiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~6_combout\ = (\freqDiv|s_count\(3) & (!\freqDiv|Add0~5\)) # (!\freqDiv|s_count\(3) & ((\freqDiv|Add0~5\) # (GND)))
-- \freqDiv|Add0~7\ = CARRY((!\freqDiv|Add0~5\) # (!\freqDiv|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(3),
	datad => VCC,
	cin => \freqDiv|Add0~5\,
	combout => \freqDiv|Add0~6_combout\,
	cout => \freqDiv|Add0~7\);

-- Location: FF_X66_Y25_N9
\freqDiv|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(3));

-- Location: LCCOMB_X66_Y25_N10
\freqDiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~8_combout\ = (\freqDiv|s_count\(4) & (\freqDiv|Add0~7\ $ (GND))) # (!\freqDiv|s_count\(4) & (!\freqDiv|Add0~7\ & VCC))
-- \freqDiv|Add0~9\ = CARRY((\freqDiv|s_count\(4) & !\freqDiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(4),
	datad => VCC,
	cin => \freqDiv|Add0~7\,
	combout => \freqDiv|Add0~8_combout\,
	cout => \freqDiv|Add0~9\);

-- Location: FF_X66_Y25_N11
\freqDiv|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(4));

-- Location: LCCOMB_X66_Y25_N12
\freqDiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~10_combout\ = (\freqDiv|s_count\(5) & (!\freqDiv|Add0~9\)) # (!\freqDiv|s_count\(5) & ((\freqDiv|Add0~9\) # (GND)))
-- \freqDiv|Add0~11\ = CARRY((!\freqDiv|Add0~9\) # (!\freqDiv|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(5),
	datad => VCC,
	cin => \freqDiv|Add0~9\,
	combout => \freqDiv|Add0~10_combout\,
	cout => \freqDiv|Add0~11\);

-- Location: FF_X66_Y25_N13
\freqDiv|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(5));

-- Location: LCCOMB_X66_Y25_N14
\freqDiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~12_combout\ = (\freqDiv|s_count\(6) & (\freqDiv|Add0~11\ $ (GND))) # (!\freqDiv|s_count\(6) & (!\freqDiv|Add0~11\ & VCC))
-- \freqDiv|Add0~13\ = CARRY((\freqDiv|s_count\(6) & !\freqDiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(6),
	datad => VCC,
	cin => \freqDiv|Add0~11\,
	combout => \freqDiv|Add0~12_combout\,
	cout => \freqDiv|Add0~13\);

-- Location: FF_X66_Y25_N15
\freqDiv|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(6));

-- Location: LCCOMB_X66_Y25_N16
\freqDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~14_combout\ = (\freqDiv|s_count\(7) & (!\freqDiv|Add0~13\)) # (!\freqDiv|s_count\(7) & ((\freqDiv|Add0~13\) # (GND)))
-- \freqDiv|Add0~15\ = CARRY((!\freqDiv|Add0~13\) # (!\freqDiv|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(7),
	datad => VCC,
	cin => \freqDiv|Add0~13\,
	combout => \freqDiv|Add0~14_combout\,
	cout => \freqDiv|Add0~15\);

-- Location: LCCOMB_X67_Y24_N10
\freqDiv|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~7_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~14_combout\,
	combout => \freqDiv|s_count~7_combout\);

-- Location: FF_X67_Y24_N11
\freqDiv|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(7));

-- Location: LCCOMB_X66_Y25_N18
\freqDiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~16_combout\ = (\freqDiv|s_count\(8) & (\freqDiv|Add0~15\ $ (GND))) # (!\freqDiv|s_count\(8) & (!\freqDiv|Add0~15\ & VCC))
-- \freqDiv|Add0~17\ = CARRY((\freqDiv|s_count\(8) & !\freqDiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(8),
	datad => VCC,
	cin => \freqDiv|Add0~15\,
	combout => \freqDiv|Add0~16_combout\,
	cout => \freqDiv|Add0~17\);

-- Location: FF_X66_Y25_N19
\freqDiv|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(8));

-- Location: LCCOMB_X66_Y25_N20
\freqDiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~18_combout\ = (\freqDiv|s_count\(9) & (!\freqDiv|Add0~17\)) # (!\freqDiv|s_count\(9) & ((\freqDiv|Add0~17\) # (GND)))
-- \freqDiv|Add0~19\ = CARRY((!\freqDiv|Add0~17\) # (!\freqDiv|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(9),
	datad => VCC,
	cin => \freqDiv|Add0~17\,
	combout => \freqDiv|Add0~18_combout\,
	cout => \freqDiv|Add0~19\);

-- Location: FF_X66_Y25_N21
\freqDiv|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(9));

-- Location: LCCOMB_X66_Y25_N22
\freqDiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~20_combout\ = (\freqDiv|s_count\(10) & (\freqDiv|Add0~19\ $ (GND))) # (!\freqDiv|s_count\(10) & (!\freqDiv|Add0~19\ & VCC))
-- \freqDiv|Add0~21\ = CARRY((\freqDiv|s_count\(10) & !\freqDiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(10),
	datad => VCC,
	cin => \freqDiv|Add0~19\,
	combout => \freqDiv|Add0~20_combout\,
	cout => \freqDiv|Add0~21\);

-- Location: FF_X66_Y25_N23
\freqDiv|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(10));

-- Location: LCCOMB_X66_Y25_N24
\freqDiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~22_combout\ = (\freqDiv|s_count\(11) & (!\freqDiv|Add0~21\)) # (!\freqDiv|s_count\(11) & ((\freqDiv|Add0~21\) # (GND)))
-- \freqDiv|Add0~23\ = CARRY((!\freqDiv|Add0~21\) # (!\freqDiv|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(11),
	datad => VCC,
	cin => \freqDiv|Add0~21\,
	combout => \freqDiv|Add0~22_combout\,
	cout => \freqDiv|Add0~23\);

-- Location: FF_X66_Y25_N25
\freqDiv|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(11));

-- Location: LCCOMB_X66_Y25_N26
\freqDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~24_combout\ = (\freqDiv|s_count\(12) & (\freqDiv|Add0~23\ $ (GND))) # (!\freqDiv|s_count\(12) & (!\freqDiv|Add0~23\ & VCC))
-- \freqDiv|Add0~25\ = CARRY((\freqDiv|s_count\(12) & !\freqDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(12),
	datad => VCC,
	cin => \freqDiv|Add0~23\,
	combout => \freqDiv|Add0~24_combout\,
	cout => \freqDiv|Add0~25\);

-- Location: LCCOMB_X66_Y25_N0
\freqDiv|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~6_combout\ = (\freqDiv|Add0~24_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~24_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~6_combout\);

-- Location: FF_X66_Y25_N1
\freqDiv|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(12));

-- Location: LCCOMB_X66_Y25_N28
\freqDiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~26_combout\ = (\freqDiv|s_count\(13) & (!\freqDiv|Add0~25\)) # (!\freqDiv|s_count\(13) & ((\freqDiv|Add0~25\) # (GND)))
-- \freqDiv|Add0~27\ = CARRY((!\freqDiv|Add0~25\) # (!\freqDiv|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(13),
	datad => VCC,
	cin => \freqDiv|Add0~25\,
	combout => \freqDiv|Add0~26_combout\,
	cout => \freqDiv|Add0~27\);

-- Location: LCCOMB_X67_Y24_N30
\freqDiv|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~5_combout\ = (\freqDiv|Add0~26_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add0~26_combout\,
	datac => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~5_combout\);

-- Location: FF_X67_Y24_N31
\freqDiv|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(13));

-- Location: LCCOMB_X66_Y25_N30
\freqDiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~28_combout\ = (\freqDiv|s_count\(14) & (\freqDiv|Add0~27\ $ (GND))) # (!\freqDiv|s_count\(14) & (!\freqDiv|Add0~27\ & VCC))
-- \freqDiv|Add0~29\ = CARRY((\freqDiv|s_count\(14) & !\freqDiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(14),
	datad => VCC,
	cin => \freqDiv|Add0~27\,
	combout => \freqDiv|Add0~28_combout\,
	cout => \freqDiv|Add0~29\);

-- Location: LCCOMB_X67_Y24_N16
\freqDiv|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~4_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~28_combout\,
	combout => \freqDiv|s_count~4_combout\);

-- Location: FF_X67_Y24_N17
\freqDiv|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(14));

-- Location: LCCOMB_X66_Y24_N0
\freqDiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~30_combout\ = (\freqDiv|s_count\(15) & (!\freqDiv|Add0~29\)) # (!\freqDiv|s_count\(15) & ((\freqDiv|Add0~29\) # (GND)))
-- \freqDiv|Add0~31\ = CARRY((!\freqDiv|Add0~29\) # (!\freqDiv|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(15),
	datad => VCC,
	cin => \freqDiv|Add0~29\,
	combout => \freqDiv|Add0~30_combout\,
	cout => \freqDiv|Add0~31\);

-- Location: LCCOMB_X65_Y24_N26
\freqDiv|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~11_combout\ = (\freqDiv|Add0~30_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~30_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~11_combout\);

-- Location: FF_X65_Y24_N27
\freqDiv|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(15));

-- Location: LCCOMB_X66_Y24_N2
\freqDiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~32_combout\ = (\freqDiv|s_count\(16) & (\freqDiv|Add0~31\ $ (GND))) # (!\freqDiv|s_count\(16) & (!\freqDiv|Add0~31\ & VCC))
-- \freqDiv|Add0~33\ = CARRY((\freqDiv|s_count\(16) & !\freqDiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(16),
	datad => VCC,
	cin => \freqDiv|Add0~31\,
	combout => \freqDiv|Add0~32_combout\,
	cout => \freqDiv|Add0~33\);

-- Location: FF_X66_Y24_N3
\freqDiv|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(16));

-- Location: LCCOMB_X66_Y24_N4
\freqDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~34_combout\ = (\freqDiv|s_count\(17) & (!\freqDiv|Add0~33\)) # (!\freqDiv|s_count\(17) & ((\freqDiv|Add0~33\) # (GND)))
-- \freqDiv|Add0~35\ = CARRY((!\freqDiv|Add0~33\) # (!\freqDiv|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(17),
	datad => VCC,
	cin => \freqDiv|Add0~33\,
	combout => \freqDiv|Add0~34_combout\,
	cout => \freqDiv|Add0~35\);

-- Location: LCCOMB_X65_Y24_N22
\freqDiv|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~10_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~34_combout\,
	combout => \freqDiv|s_count~10_combout\);

-- Location: FF_X65_Y24_N23
\freqDiv|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(17));

-- Location: LCCOMB_X66_Y24_N6
\freqDiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~36_combout\ = (\freqDiv|s_count\(18) & (\freqDiv|Add0~35\ $ (GND))) # (!\freqDiv|s_count\(18) & (!\freqDiv|Add0~35\ & VCC))
-- \freqDiv|Add0~37\ = CARRY((\freqDiv|s_count\(18) & !\freqDiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(18),
	datad => VCC,
	cin => \freqDiv|Add0~35\,
	combout => \freqDiv|Add0~36_combout\,
	cout => \freqDiv|Add0~37\);

-- Location: FF_X66_Y24_N7
\freqDiv|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(18));

-- Location: LCCOMB_X66_Y24_N8
\freqDiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~38_combout\ = (\freqDiv|s_count\(19) & (!\freqDiv|Add0~37\)) # (!\freqDiv|s_count\(19) & ((\freqDiv|Add0~37\) # (GND)))
-- \freqDiv|Add0~39\ = CARRY((!\freqDiv|Add0~37\) # (!\freqDiv|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(19),
	datad => VCC,
	cin => \freqDiv|Add0~37\,
	combout => \freqDiv|Add0~38_combout\,
	cout => \freqDiv|Add0~39\);

-- Location: LCCOMB_X67_Y24_N6
\freqDiv|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~3_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|Add0~38_combout\,
	combout => \freqDiv|s_count~3_combout\);

-- Location: FF_X67_Y24_N7
\freqDiv|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(19));

-- Location: LCCOMB_X66_Y24_N10
\freqDiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~40_combout\ = (\freqDiv|s_count\(20) & (\freqDiv|Add0~39\ $ (GND))) # (!\freqDiv|s_count\(20) & (!\freqDiv|Add0~39\ & VCC))
-- \freqDiv|Add0~41\ = CARRY((\freqDiv|s_count\(20) & !\freqDiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(20),
	datad => VCC,
	cin => \freqDiv|Add0~39\,
	combout => \freqDiv|Add0~40_combout\,
	cout => \freqDiv|Add0~41\);

-- Location: LCCOMB_X67_Y24_N26
\freqDiv|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~2_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~40_combout\,
	combout => \freqDiv|s_count~2_combout\);

-- Location: FF_X67_Y24_N27
\freqDiv|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(20));

-- Location: LCCOMB_X66_Y24_N12
\freqDiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~42_combout\ = (\freqDiv|s_count\(21) & (!\freqDiv|Add0~41\)) # (!\freqDiv|s_count\(21) & ((\freqDiv|Add0~41\) # (GND)))
-- \freqDiv|Add0~43\ = CARRY((!\freqDiv|Add0~41\) # (!\freqDiv|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(21),
	datad => VCC,
	cin => \freqDiv|Add0~41\,
	combout => \freqDiv|Add0~42_combout\,
	cout => \freqDiv|Add0~43\);

-- Location: LCCOMB_X67_Y24_N28
\freqDiv|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~1_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~42_combout\,
	combout => \freqDiv|s_count~1_combout\);

-- Location: FF_X67_Y24_N29
\freqDiv|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(21));

-- Location: LCCOMB_X66_Y24_N14
\freqDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~44_combout\ = (\freqDiv|s_count\(22) & (\freqDiv|Add0~43\ $ (GND))) # (!\freqDiv|s_count\(22) & (!\freqDiv|Add0~43\ & VCC))
-- \freqDiv|Add0~45\ = CARRY((\freqDiv|s_count\(22) & !\freqDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(22),
	datad => VCC,
	cin => \freqDiv|Add0~43\,
	combout => \freqDiv|Add0~44_combout\,
	cout => \freqDiv|Add0~45\);

-- Location: LCCOMB_X67_Y24_N22
\freqDiv|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~0_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~44_combout\,
	combout => \freqDiv|s_count~0_combout\);

-- Location: FF_X67_Y24_N23
\freqDiv|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(22));

-- Location: LCCOMB_X66_Y24_N16
\freqDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~46_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|Add0~45\)) # (!\freqDiv|s_count\(23) & ((\freqDiv|Add0~45\) # (GND)))
-- \freqDiv|Add0~47\ = CARRY((!\freqDiv|Add0~45\) # (!\freqDiv|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(23),
	datad => VCC,
	cin => \freqDiv|Add0~45\,
	combout => \freqDiv|Add0~46_combout\,
	cout => \freqDiv|Add0~47\);

-- Location: LCCOMB_X66_Y24_N18
\freqDiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~48_combout\ = (\freqDiv|s_count\(24) & (\freqDiv|Add0~47\ $ (GND))) # (!\freqDiv|s_count\(24) & (!\freqDiv|Add0~47\ & VCC))
-- \freqDiv|Add0~49\ = CARRY((\freqDiv|s_count\(24) & !\freqDiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(24),
	datad => VCC,
	cin => \freqDiv|Add0~47\,
	combout => \freqDiv|Add0~48_combout\,
	cout => \freqDiv|Add0~49\);

-- Location: FF_X66_Y24_N19
\freqDiv|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(24));

-- Location: LCCOMB_X66_Y24_N20
\freqDiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~50_combout\ = (\freqDiv|s_count\(25) & (!\freqDiv|Add0~49\)) # (!\freqDiv|s_count\(25) & ((\freqDiv|Add0~49\) # (GND)))
-- \freqDiv|Add0~51\ = CARRY((!\freqDiv|Add0~49\) # (!\freqDiv|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(25),
	datad => VCC,
	cin => \freqDiv|Add0~49\,
	combout => \freqDiv|Add0~50_combout\,
	cout => \freqDiv|Add0~51\);

-- Location: LCCOMB_X65_Y24_N14
\freqDiv|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~8_combout\ = (\freqDiv|Add0~50_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~50_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~8_combout\);

-- Location: FF_X65_Y24_N15
\freqDiv|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(25));

-- Location: LCCOMB_X65_Y24_N24
\freqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~7_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|s_count\(24) & (\freqDiv|s_count\(25) & !\freqDiv|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(24),
	datac => \freqDiv|s_count\(25),
	datad => \freqDiv|s_count\(18),
	combout => \freqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y24_N4
\freqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~8_combout\ = (\freqDiv|s_count\(17) & (\freqDiv|s_count\(15) & (!\freqDiv|s_count\(16) & !\freqDiv|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(17),
	datab => \freqDiv|s_count\(15),
	datac => \freqDiv|s_count\(16),
	datad => \freqDiv|s_count\(11),
	combout => \freqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X67_Y24_N20
\freqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~5_combout\ = (\freqDiv|s_count\(3) & (\freqDiv|s_count\(5) & (\freqDiv|s_count\(4) & \freqDiv|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(3),
	datab => \freqDiv|s_count\(5),
	datac => \freqDiv|s_count\(4),
	datad => \freqDiv|s_count\(2),
	combout => \freqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y24_N22
\freqDiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~52_combout\ = (\freqDiv|s_count\(26) & (\freqDiv|Add0~51\ $ (GND))) # (!\freqDiv|s_count\(26) & (!\freqDiv|Add0~51\ & VCC))
-- \freqDiv|Add0~53\ = CARRY((\freqDiv|s_count\(26) & !\freqDiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(26),
	datad => VCC,
	cin => \freqDiv|Add0~51\,
	combout => \freqDiv|Add0~52_combout\,
	cout => \freqDiv|Add0~53\);

-- Location: FF_X66_Y24_N23
\freqDiv|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(26));

-- Location: LCCOMB_X67_Y24_N12
\freqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~1_combout\ = (\freqDiv|s_count\(20) & (\freqDiv|s_count\(21) & (\freqDiv|s_count\(22) & !\freqDiv|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(20),
	datab => \freqDiv|s_count\(21),
	datac => \freqDiv|s_count\(22),
	datad => \freqDiv|s_count\(26),
	combout => \freqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y24_N24
\freqDiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~54_combout\ = (\freqDiv|s_count\(27) & (!\freqDiv|Add0~53\)) # (!\freqDiv|s_count\(27) & ((\freqDiv|Add0~53\) # (GND)))
-- \freqDiv|Add0~55\ = CARRY((!\freqDiv|Add0~53\) # (!\freqDiv|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(27),
	datad => VCC,
	cin => \freqDiv|Add0~53\,
	combout => \freqDiv|Add0~54_combout\,
	cout => \freqDiv|Add0~55\);

-- Location: FF_X66_Y24_N25
\freqDiv|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(27));

-- Location: LCCOMB_X66_Y24_N26
\freqDiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~56_combout\ = (\freqDiv|s_count\(28) & (\freqDiv|Add0~55\ $ (GND))) # (!\freqDiv|s_count\(28) & (!\freqDiv|Add0~55\ & VCC))
-- \freqDiv|Add0~57\ = CARRY((\freqDiv|s_count\(28) & !\freqDiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(28),
	datad => VCC,
	cin => \freqDiv|Add0~55\,
	combout => \freqDiv|Add0~56_combout\,
	cout => \freqDiv|Add0~57\);

-- Location: FF_X66_Y24_N27
\freqDiv|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(28));

-- Location: LCCOMB_X66_Y24_N28
\freqDiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~58_combout\ = (\freqDiv|s_count\(29) & (!\freqDiv|Add0~57\)) # (!\freqDiv|s_count\(29) & ((\freqDiv|Add0~57\) # (GND)))
-- \freqDiv|Add0~59\ = CARRY((!\freqDiv|Add0~57\) # (!\freqDiv|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(29),
	datad => VCC,
	cin => \freqDiv|Add0~57\,
	combout => \freqDiv|Add0~58_combout\,
	cout => \freqDiv|Add0~59\);

-- Location: FF_X66_Y24_N29
\freqDiv|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(29));

-- Location: LCCOMB_X66_Y24_N30
\freqDiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~60_combout\ = \freqDiv|s_count\(30) $ (!\freqDiv|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(30),
	cin => \freqDiv|Add0~59\,
	combout => \freqDiv|Add0~60_combout\);

-- Location: FF_X66_Y24_N31
\freqDiv|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(30));

-- Location: LCCOMB_X67_Y24_N4
\freqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~0_combout\ = (!\freqDiv|s_count\(29) & (!\freqDiv|s_count\(30) & (!\freqDiv|s_count\(28) & !\freqDiv|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(29),
	datab => \freqDiv|s_count\(30),
	datac => \freqDiv|s_count\(28),
	datad => \freqDiv|s_count\(27),
	combout => \freqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y24_N8
\freqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~2_combout\ = (\freqDiv|s_count\(13) & (\freqDiv|s_count\(14) & (\freqDiv|s_count\(12) & \freqDiv|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(13),
	datab => \freqDiv|s_count\(14),
	datac => \freqDiv|s_count\(12),
	datad => \freqDiv|s_count\(19),
	combout => \freqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y24_N24
\freqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~3_combout\ = (!\freqDiv|s_count\(10) & (!\freqDiv|s_count\(7) & (!\freqDiv|s_count\(8) & !\freqDiv|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(10),
	datab => \freqDiv|s_count\(7),
	datac => \freqDiv|s_count\(8),
	datad => \freqDiv|s_count\(9),
	combout => \freqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y24_N18
\freqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~4_combout\ = (\freqDiv|Equal0~1_combout\ & (\freqDiv|Equal0~0_combout\ & (\freqDiv|Equal0~2_combout\ & \freqDiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~1_combout\,
	datab => \freqDiv|Equal0~0_combout\,
	datac => \freqDiv|Equal0~2_combout\,
	datad => \freqDiv|Equal0~3_combout\,
	combout => \freqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y24_N14
\freqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~6_combout\ = (\freqDiv|s_count\(0) & (\freqDiv|Equal0~5_combout\ & (\freqDiv|s_count\(1) & \freqDiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(0),
	datab => \freqDiv|Equal0~5_combout\,
	datac => \freqDiv|s_count\(1),
	datad => \freqDiv|Equal0~4_combout\,
	combout => \freqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y24_N18
\freqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~9_combout\ = (\freqDiv|s_count\(6) & (\freqDiv|Equal0~7_combout\ & (\freqDiv|Equal0~8_combout\ & \freqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(6),
	datab => \freqDiv|Equal0~7_combout\,
	datac => \freqDiv|Equal0~8_combout\,
	datad => \freqDiv|Equal0~6_combout\,
	combout => \freqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X65_Y24_N6
\freqDiv|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~9_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~46_combout\,
	combout => \freqDiv|s_count~9_combout\);

-- Location: FF_X65_Y24_N7
\freqDiv|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_count\(23));

-- Location: LCCOMB_X65_Y24_N12
\freqDiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~0_combout\ = (!\freqDiv|s_count\(23) & (\freqDiv|s_count\(24) & (!\freqDiv|s_count\(25) & \freqDiv|s_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(24),
	datac => \freqDiv|s_count\(25),
	datad => \freqDiv|s_count\(18),
	combout => \freqDiv|Equal1~0_combout\);

-- Location: LCCOMB_X65_Y24_N10
\freqDiv|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~1_combout\ = (!\freqDiv|s_count\(17) & (!\freqDiv|s_count\(15) & (\freqDiv|s_count\(16) & \freqDiv|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(17),
	datab => \freqDiv|s_count\(15),
	datac => \freqDiv|s_count\(16),
	datad => \freqDiv|s_count\(11),
	combout => \freqDiv|Equal1~1_combout\);

-- Location: LCCOMB_X65_Y24_N28
\freqDiv|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~2_combout\ = (\freqDiv|Equal1~0_combout\ & (!\freqDiv|s_count\(6) & \freqDiv|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal1~0_combout\,
	datac => \freqDiv|s_count\(6),
	datad => \freqDiv|Equal1~1_combout\,
	combout => \freqDiv|Equal1~2_combout\);

-- Location: LCCOMB_X65_Y24_N20
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|Equal0~9_combout\) # ((\freqDiv|clkOut~q\ & ((!\freqDiv|Equal0~6_combout\) # (!\freqDiv|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~q\,
	datab => \freqDiv|Equal1~2_combout\,
	datac => \freqDiv|Equal0~6_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X65_Y24_N2
\freqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~feeder_combout\ = \freqDiv|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv|clkOut~0_combout\,
	combout => \freqDiv|clkOut~feeder_combout\);

-- Location: FF_X65_Y24_N3
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G17
\freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X92_Y42_N0
\workClock|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~16_combout\ = \workClock|hour[0]~30_combout\ $ (VCC)
-- \workClock|Add2~17\ = CARRY(\workClock|hour[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[0]~30_combout\,
	datad => VCC,
	combout => \workClock|Add2~16_combout\,
	cout => \workClock|Add2~17\);

-- Location: CLKCTRL_G9
\workClock|hour[7]~162clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \workClock|hour[7]~162clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \workClock|hour[7]~162clkctrl_outclk\);

-- Location: LCCOMB_X114_Y40_N2
\workClock|hour[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[0]~29_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~0_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[0]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~0_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[0]~29_combout\,
	combout => \workClock|hour[0]~29_combout\);

-- Location: LCCOMB_X113_Y40_N16
\workClock|hour[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[0]~31_combout\ = \workClock|Add2~16_combout\ $ (\workClock|hour[0]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|Add2~16_combout\,
	datad => \workClock|hour[0]~29_combout\,
	combout => \workClock|hour[0]~31_combout\);

-- Location: LCCOMB_X92_Y39_N10
\db2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~0_combout\ = \db2|s_debounceCnt\(0) $ (VCC)
-- \db2|Add0~1\ = CARRY(\db2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(0),
	datad => VCC,
	combout => \db2|Add0~0_combout\,
	cout => \db2|Add0~1\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X90_Y38_N26
\db2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \db2|s_dirtyIn~0_combout\);

-- Location: FF_X90_Y38_N27
\db2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_dirtyIn~q\);

-- Location: FF_X90_Y38_N29
\db2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \db2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_previousIn~q\);

-- Location: LCCOMB_X91_Y38_N12
\db2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~5_combout\ = (!\db2|s_debounceCnt\(4) & (!\db2|s_debounceCnt\(1) & (!\db2|s_debounceCnt\(3) & !\db2|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(4),
	datab => \db2|s_debounceCnt\(1),
	datac => \db2|s_debounceCnt\(3),
	datad => \db2|s_debounceCnt\(2),
	combout => \db2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X92_Y38_N0
\db2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~22_combout\ = (\db2|s_debounceCnt\(11) & (\db2|Add0~21\ & VCC)) # (!\db2|s_debounceCnt\(11) & (!\db2|Add0~21\))
-- \db2|Add0~23\ = CARRY((!\db2|s_debounceCnt\(11) & !\db2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(11),
	datad => VCC,
	cin => \db2|Add0~21\,
	combout => \db2|Add0~22_combout\,
	cout => \db2|Add0~23\);

-- Location: LCCOMB_X92_Y38_N2
\db2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~24_combout\ = (\db2|s_debounceCnt\(12) & ((GND) # (!\db2|Add0~23\))) # (!\db2|s_debounceCnt\(12) & (\db2|Add0~23\ $ (GND)))
-- \db2|Add0~25\ = CARRY((\db2|s_debounceCnt\(12)) # (!\db2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(12),
	datad => VCC,
	cin => \db2|Add0~23\,
	combout => \db2|Add0~24_combout\,
	cout => \db2|Add0~25\);

-- Location: LCCOMB_X92_Y38_N28
\db2|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~10_combout\ = (\db2|Add0~24_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~24_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~10_combout\);

-- Location: FF_X92_Y38_N29
\db2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~10_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(12));

-- Location: LCCOMB_X92_Y38_N4
\db2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~26_combout\ = (\db2|s_debounceCnt\(13) & (\db2|Add0~25\ & VCC)) # (!\db2|s_debounceCnt\(13) & (!\db2|Add0~25\))
-- \db2|Add0~27\ = CARRY((!\db2|s_debounceCnt\(13) & !\db2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(13),
	datad => VCC,
	cin => \db2|Add0~25\,
	combout => \db2|Add0~26_combout\,
	cout => \db2|Add0~27\);

-- Location: LCCOMB_X92_Y38_N30
\db2|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~11_combout\ = (\db2|Add0~26_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|Add0~26_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~11_combout\);

-- Location: FF_X92_Y38_N31
\db2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~11_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(13));

-- Location: LCCOMB_X92_Y38_N6
\db2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~28_combout\ = (\db2|s_debounceCnt\(14) & ((GND) # (!\db2|Add0~27\))) # (!\db2|s_debounceCnt\(14) & (\db2|Add0~27\ $ (GND)))
-- \db2|Add0~29\ = CARRY((\db2|s_debounceCnt\(14)) # (!\db2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(14),
	datad => VCC,
	cin => \db2|Add0~27\,
	combout => \db2|Add0~28_combout\,
	cout => \db2|Add0~29\);

-- Location: LCCOMB_X89_Y38_N24
\db2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~17_combout\ = (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~28_combout\) # (!\db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datac => \db2|Add0~28_combout\,
	datad => \db2|s_debounceCnt[0]~0_combout\,
	combout => \db2|s_debounceCnt~17_combout\);

-- Location: FF_X89_Y38_N25
\db2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~17_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(14));

-- Location: LCCOMB_X92_Y38_N8
\db2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~30_combout\ = (\db2|s_debounceCnt\(15) & (\db2|Add0~29\ & VCC)) # (!\db2|s_debounceCnt\(15) & (!\db2|Add0~29\))
-- \db2|Add0~31\ = CARRY((!\db2|s_debounceCnt\(15) & !\db2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(15),
	datad => VCC,
	cin => \db2|Add0~29\,
	combout => \db2|Add0~30_combout\,
	cout => \db2|Add0~31\);

-- Location: LCCOMB_X89_Y38_N16
\db2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~5_combout\ = (\db2|s_debounceCnt[0]~4_combout\ & \db2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|s_debounceCnt[0]~4_combout\,
	datad => \db2|Add0~30_combout\,
	combout => \db2|s_debounceCnt~5_combout\);

-- Location: FF_X89_Y38_N17
\db2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~5_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(15));

-- Location: LCCOMB_X92_Y38_N10
\db2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~32_combout\ = (\db2|s_debounceCnt\(16) & ((GND) # (!\db2|Add0~31\))) # (!\db2|s_debounceCnt\(16) & (\db2|Add0~31\ $ (GND)))
-- \db2|Add0~33\ = CARRY((\db2|s_debounceCnt\(16)) # (!\db2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(16),
	datad => VCC,
	cin => \db2|Add0~31\,
	combout => \db2|Add0~32_combout\,
	cout => \db2|Add0~33\);

-- Location: LCCOMB_X89_Y38_N18
\db2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~6_combout\ = (\db2|s_debounceCnt[0]~4_combout\ & \db2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|s_debounceCnt[0]~4_combout\,
	datad => \db2|Add0~32_combout\,
	combout => \db2|s_debounceCnt~6_combout\);

-- Location: FF_X89_Y38_N19
\db2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~6_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(16));

-- Location: LCCOMB_X92_Y38_N12
\db2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~34_combout\ = (\db2|s_debounceCnt\(17) & (\db2|Add0~33\ & VCC)) # (!\db2|s_debounceCnt\(17) & (!\db2|Add0~33\))
-- \db2|Add0~35\ = CARRY((!\db2|s_debounceCnt\(17) & !\db2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(17),
	datad => VCC,
	cin => \db2|Add0~33\,
	combout => \db2|Add0~34_combout\,
	cout => \db2|Add0~35\);

-- Location: LCCOMB_X89_Y38_N12
\db2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~7_combout\ = (\db2|s_debounceCnt[0]~4_combout\ & \db2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|s_debounceCnt[0]~4_combout\,
	datad => \db2|Add0~34_combout\,
	combout => \db2|s_debounceCnt~7_combout\);

-- Location: FF_X89_Y38_N13
\db2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~7_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(17));

-- Location: LCCOMB_X92_Y38_N14
\db2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~36_combout\ = (\db2|s_debounceCnt\(18) & ((GND) # (!\db2|Add0~35\))) # (!\db2|s_debounceCnt\(18) & (\db2|Add0~35\ $ (GND)))
-- \db2|Add0~37\ = CARRY((\db2|s_debounceCnt\(18)) # (!\db2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(18),
	datad => VCC,
	cin => \db2|Add0~35\,
	combout => \db2|Add0~36_combout\,
	cout => \db2|Add0~37\);

-- Location: LCCOMB_X89_Y38_N14
\db2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[18]~18_combout\ = (\db2|s_debounceCnt[0]~3_combout\ & (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~36_combout\) # (!\db2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datab => \db2|s_debounceCnt[0]~3_combout\,
	datac => \db2|Add0~36_combout\,
	datad => \db2|s_debounceCnt[0]~0_combout\,
	combout => \db2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X89_Y38_N15
\db2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(18));

-- Location: LCCOMB_X89_Y38_N30
\db2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~4_combout\ = (\db2|s_debounceCnt\(17)) # ((\db2|s_debounceCnt\(15)) # (\db2|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(17),
	datab => \db2|s_debounceCnt\(15),
	datad => \db2|s_debounceCnt\(16),
	combout => \db2|LessThan0~4_combout\);

-- Location: LCCOMB_X92_Y39_N20
\db2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~10_combout\ = (\db2|s_debounceCnt\(5) & (\db2|Add0~9\ & VCC)) # (!\db2|s_debounceCnt\(5) & (!\db2|Add0~9\))
-- \db2|Add0~11\ = CARRY((!\db2|s_debounceCnt\(5) & !\db2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(5),
	datad => VCC,
	cin => \db2|Add0~9\,
	combout => \db2|Add0~10_combout\,
	cout => \db2|Add0~11\);

-- Location: LCCOMB_X92_Y39_N22
\db2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~12_combout\ = (\db2|s_debounceCnt\(6) & ((GND) # (!\db2|Add0~11\))) # (!\db2|s_debounceCnt\(6) & (\db2|Add0~11\ $ (GND)))
-- \db2|Add0~13\ = CARRY((\db2|s_debounceCnt\(6)) # (!\db2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(6),
	datad => VCC,
	cin => \db2|Add0~11\,
	combout => \db2|Add0~12_combout\,
	cout => \db2|Add0~13\);

-- Location: LCCOMB_X90_Y38_N16
\db2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~1_combout\ = (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~12_combout\) # (!\db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datac => \db2|s_debounceCnt[0]~0_combout\,
	datad => \db2|Add0~12_combout\,
	combout => \db2|s_debounceCnt~1_combout\);

-- Location: FF_X90_Y38_N17
\db2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~1_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(6));

-- Location: LCCOMB_X92_Y39_N24
\db2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~14_combout\ = (\db2|s_debounceCnt\(7) & (\db2|Add0~13\ & VCC)) # (!\db2|s_debounceCnt\(7) & (!\db2|Add0~13\))
-- \db2|Add0~15\ = CARRY((!\db2|s_debounceCnt\(7) & !\db2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(7),
	datad => VCC,
	cin => \db2|Add0~13\,
	combout => \db2|Add0~14_combout\,
	cout => \db2|Add0~15\);

-- Location: LCCOMB_X91_Y38_N20
\db2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~12_combout\ = (\db2|Add0~14_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|Add0~14_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~12_combout\);

-- Location: FF_X91_Y38_N21
\db2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~12_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(7));

-- Location: LCCOMB_X92_Y39_N26
\db2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~16_combout\ = (\db2|s_debounceCnt\(8) & ((GND) # (!\db2|Add0~15\))) # (!\db2|s_debounceCnt\(8) & (\db2|Add0~15\ $ (GND)))
-- \db2|Add0~17\ = CARRY((\db2|s_debounceCnt\(8)) # (!\db2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(8),
	datad => VCC,
	cin => \db2|Add0~15\,
	combout => \db2|Add0~16_combout\,
	cout => \db2|Add0~17\);

-- Location: LCCOMB_X89_Y38_N6
\db2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~13_combout\ = (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~16_combout\) # (!\db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datac => \db2|Add0~16_combout\,
	datad => \db2|s_debounceCnt[0]~0_combout\,
	combout => \db2|s_debounceCnt~13_combout\);

-- Location: FF_X89_Y38_N7
\db2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~13_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(8));

-- Location: LCCOMB_X91_Y38_N6
\db2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~0_combout\ = (\db2|s_debounceCnt\(6) & ((\db2|s_debounceCnt\(0)) # ((\db2|s_debounceCnt\(5)) # (!\db2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(0),
	datab => \db2|s_debounceCnt\(5),
	datac => \db2|s_debounceCnt\(6),
	datad => \db2|s_pulsedOut~5_combout\,
	combout => \db2|LessThan0~0_combout\);

-- Location: LCCOMB_X91_Y38_N28
\db2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~1_combout\ = (\db2|s_debounceCnt\(9) & ((\db2|s_debounceCnt\(7)) # (\db2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(9),
	datac => \db2|s_debounceCnt\(7),
	datad => \db2|LessThan0~0_combout\,
	combout => \db2|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y38_N12
\db2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~2_combout\ = (\db2|s_debounceCnt\(11) & ((\db2|s_debounceCnt\(10)) # ((\db2|s_debounceCnt\(8) & \db2|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(11),
	datab => \db2|s_debounceCnt\(10),
	datac => \db2|s_debounceCnt\(8),
	datad => \db2|LessThan0~1_combout\,
	combout => \db2|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y38_N6
\db2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~3_combout\ = (\db2|s_debounceCnt\(14) & ((\db2|s_debounceCnt\(12)) # ((\db2|s_debounceCnt\(13)) # (\db2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(12),
	datab => \db2|s_debounceCnt\(13),
	datac => \db2|s_debounceCnt\(14),
	datad => \db2|LessThan0~2_combout\,
	combout => \db2|LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y38_N20
\db2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~5_combout\ = (\db2|s_debounceCnt\(19) & ((\db2|LessThan0~4_combout\) # (\db2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|LessThan0~4_combout\,
	datac => \db2|s_debounceCnt\(19),
	datad => \db2|LessThan0~3_combout\,
	combout => \db2|LessThan0~5_combout\);

-- Location: LCCOMB_X90_Y38_N2
\db2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|LessThan0~6_combout\ = (\db2|s_debounceCnt\(20)) # ((\db2|s_debounceCnt\(21)) # ((\db2|s_debounceCnt\(18) & \db2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(18),
	datab => \db2|s_debounceCnt\(20),
	datac => \db2|s_debounceCnt\(21),
	datad => \db2|LessThan0~5_combout\,
	combout => \db2|LessThan0~6_combout\);

-- Location: LCCOMB_X90_Y38_N4
\db2|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[0]~0_combout\ = (\db2|s_dirtyIn~q\ & ((!\db2|LessThan0~6_combout\) # (!\db2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(22),
	datac => \db2|s_dirtyIn~q\,
	datad => \db2|LessThan0~6_combout\,
	combout => \db2|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X92_Y39_N28
\db2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~18_combout\ = (\db2|s_debounceCnt\(9) & (\db2|Add0~17\ & VCC)) # (!\db2|s_debounceCnt\(9) & (!\db2|Add0~17\))
-- \db2|Add0~19\ = CARRY((!\db2|s_debounceCnt\(9) & !\db2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(9),
	datad => VCC,
	cin => \db2|Add0~17\,
	combout => \db2|Add0~18_combout\,
	cout => \db2|Add0~19\);

-- Location: LCCOMB_X90_Y38_N22
\db2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~14_combout\ = (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~18_combout\) # (!\db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datac => \db2|s_debounceCnt[0]~0_combout\,
	datad => \db2|Add0~18_combout\,
	combout => \db2|s_debounceCnt~14_combout\);

-- Location: FF_X90_Y38_N23
\db2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~14_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(9));

-- Location: LCCOMB_X92_Y39_N30
\db2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~20_combout\ = (\db2|s_debounceCnt\(10) & ((GND) # (!\db2|Add0~19\))) # (!\db2|s_debounceCnt\(10) & (\db2|Add0~19\ $ (GND)))
-- \db2|Add0~21\ = CARRY((\db2|s_debounceCnt\(10)) # (!\db2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(10),
	datad => VCC,
	cin => \db2|Add0~19\,
	combout => \db2|Add0~20_combout\,
	cout => \db2|Add0~21\);

-- Location: LCCOMB_X91_Y38_N26
\db2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~15_combout\ = (\db2|Add0~20_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|Add0~20_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~15_combout\);

-- Location: FF_X91_Y38_N27
\db2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~15_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(10));

-- Location: LCCOMB_X89_Y38_N10
\db2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~16_combout\ = (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~22_combout\) # (!\db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datac => \db2|Add0~22_combout\,
	datad => \db2|s_debounceCnt[0]~0_combout\,
	combout => \db2|s_debounceCnt~16_combout\);

-- Location: FF_X89_Y38_N11
\db2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~16_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(11));

-- Location: LCCOMB_X89_Y38_N26
\db2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~3_combout\ = (!\db2|s_debounceCnt\(11) & (!\db2|s_debounceCnt\(19) & (!\db2|s_debounceCnt\(18) & !\db2|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(11),
	datab => \db2|s_debounceCnt\(19),
	datac => \db2|s_debounceCnt\(18),
	datad => \db2|s_debounceCnt\(14),
	combout => \db2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X89_Y38_N2
\db2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~0_combout\ = (!\db2|s_debounceCnt\(16) & (!\db2|s_debounceCnt\(15) & (!\db2|s_debounceCnt\(17) & !\db2|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(16),
	datab => \db2|s_debounceCnt\(15),
	datac => \db2|s_debounceCnt\(17),
	datad => \db2|s_debounceCnt\(6),
	combout => \db2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X89_Y38_N8
\db2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~2_combout\ = (!\db2|s_debounceCnt\(8) & (!\db2|s_debounceCnt\(9) & (!\db2|s_debounceCnt\(7) & !\db2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(8),
	datab => \db2|s_debounceCnt\(9),
	datac => \db2|s_debounceCnt\(7),
	datad => \db2|s_debounceCnt\(10),
	combout => \db2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X89_Y38_N28
\db2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~1_combout\ = (!\db2|s_debounceCnt\(13) & (!\db2|s_debounceCnt\(12) & (!\db2|s_debounceCnt\(21) & !\db2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(13),
	datab => \db2|s_debounceCnt\(12),
	datac => \db2|s_debounceCnt\(21),
	datad => \db2|s_debounceCnt\(20),
	combout => \db2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X89_Y38_N20
\db2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~4_combout\ = (\db2|s_pulsedOut~3_combout\ & (\db2|s_pulsedOut~0_combout\ & (\db2|s_pulsedOut~2_combout\ & \db2|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_pulsedOut~3_combout\,
	datab => \db2|s_pulsedOut~0_combout\,
	datac => \db2|s_pulsedOut~2_combout\,
	datad => \db2|s_pulsedOut~1_combout\,
	combout => \db2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X90_Y38_N18
\db2|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[0]~2_combout\ = (\db2|s_debounceCnt\(0)) # ((\db2|s_debounceCnt\(5)) # ((!\db2|s_pulsedOut~4_combout\) # (!\db2|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(0),
	datab => \db2|s_debounceCnt\(5),
	datac => \db2|s_pulsedOut~5_combout\,
	datad => \db2|s_pulsedOut~4_combout\,
	combout => \db2|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X90_Y38_N8
\db2|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[0]~3_combout\ = ((\db2|s_debounceCnt\(22)) # ((\db2|s_debounceCnt[0]~2_combout\) # (!\db2|s_dirtyIn~q\))) # (!\db2|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datab => \db2|s_debounceCnt\(22),
	datac => \db2|s_dirtyIn~q\,
	datad => \db2|s_debounceCnt[0]~2_combout\,
	combout => \db2|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X92_Y38_N16
\db2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~38_combout\ = (\db2|s_debounceCnt\(19) & (\db2|Add0~37\ & VCC)) # (!\db2|s_debounceCnt\(19) & (!\db2|Add0~37\))
-- \db2|Add0~39\ = CARRY((!\db2|s_debounceCnt\(19) & !\db2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(19),
	datad => VCC,
	cin => \db2|Add0~37\,
	combout => \db2|Add0~38_combout\,
	cout => \db2|Add0~39\);

-- Location: LCCOMB_X89_Y38_N4
\db2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[19]~19_combout\ = (\db2|s_debounceCnt[0]~3_combout\ & (\db2|s_debounceCnt[0]~0_combout\ & ((\db2|Add0~38_combout\) # (!\db2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datab => \db2|s_debounceCnt[0]~3_combout\,
	datac => \db2|Add0~38_combout\,
	datad => \db2|s_debounceCnt[0]~0_combout\,
	combout => \db2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X89_Y38_N5
\db2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(19));

-- Location: LCCOMB_X92_Y38_N18
\db2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~40_combout\ = (\db2|s_debounceCnt\(20) & ((GND) # (!\db2|Add0~39\))) # (!\db2|s_debounceCnt\(20) & (\db2|Add0~39\ $ (GND)))
-- \db2|Add0~41\ = CARRY((\db2|s_debounceCnt\(20)) # (!\db2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(20),
	datad => VCC,
	cin => \db2|Add0~39\,
	combout => \db2|Add0~40_combout\,
	cout => \db2|Add0~41\);

-- Location: LCCOMB_X92_Y38_N24
\db2|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[20]~8_combout\ = (\db2|Add0~40_combout\ & (\db2|s_debounceCnt[0]~3_combout\ & \db2|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~40_combout\,
	datac => \db2|s_debounceCnt[0]~3_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt[20]~8_combout\);

-- Location: FF_X92_Y38_N25
\db2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(20));

-- Location: LCCOMB_X92_Y38_N20
\db2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~42_combout\ = (\db2|s_debounceCnt\(21) & (\db2|Add0~41\ & VCC)) # (!\db2|s_debounceCnt\(21) & (!\db2|Add0~41\))
-- \db2|Add0~43\ = CARRY((!\db2|s_debounceCnt\(21) & !\db2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(21),
	datad => VCC,
	cin => \db2|Add0~41\,
	combout => \db2|Add0~42_combout\,
	cout => \db2|Add0~43\);

-- Location: LCCOMB_X92_Y38_N26
\db2|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[21]~9_combout\ = (\db2|Add0~42_combout\ & (\db2|s_debounceCnt[0]~3_combout\ & \db2|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~42_combout\,
	datac => \db2|s_debounceCnt[0]~3_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt[21]~9_combout\);

-- Location: FF_X92_Y38_N27
\db2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(21));

-- Location: LCCOMB_X92_Y38_N22
\db2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~44_combout\ = \db2|Add0~43\ $ (\db2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \db2|s_debounceCnt\(22),
	cin => \db2|Add0~43\,
	combout => \db2|Add0~44_combout\);

-- Location: LCCOMB_X90_Y38_N0
\db2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[22]~25_combout\ = (\db2|s_debounceCnt\(22) & (((!\db2|LessThan0~6_combout\)))) # (!\db2|s_debounceCnt\(22) & (((\db2|s_debounceCnt[0]~2_combout\)) # (!\db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datab => \db2|s_debounceCnt\(22),
	datac => \db2|s_debounceCnt[0]~2_combout\,
	datad => \db2|LessThan0~6_combout\,
	combout => \db2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X90_Y38_N24
\db2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[22]~26_combout\ = (\db2|s_dirtyIn~q\ & (\db2|s_debounceCnt[22]~25_combout\ & ((\db2|Add0~44_combout\) # (!\db2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_dirtyIn~q\,
	datab => \db2|s_previousIn~q\,
	datac => \db2|Add0~44_combout\,
	datad => \db2|s_debounceCnt[22]~25_combout\,
	combout => \db2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X90_Y38_N25
\db2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(22));

-- Location: LCCOMB_X90_Y38_N30
\db2|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt[0]~4_combout\ = (\db2|s_previousIn~q\ & (\db2|s_dirtyIn~q\ & ((!\db2|LessThan0~6_combout\) # (!\db2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_previousIn~q\,
	datab => \db2|s_debounceCnt\(22),
	datac => \db2|s_dirtyIn~q\,
	datad => \db2|LessThan0~6_combout\,
	combout => \db2|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X91_Y38_N22
\db2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~24_combout\ = (\db2|Add0~0_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~0_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~24_combout\);

-- Location: FF_X91_Y38_N23
\db2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~24_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(0));

-- Location: LCCOMB_X92_Y39_N12
\db2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~2_combout\ = (\db2|s_debounceCnt\(1) & (\db2|Add0~1\ & VCC)) # (!\db2|s_debounceCnt\(1) & (!\db2|Add0~1\))
-- \db2|Add0~3\ = CARRY((!\db2|s_debounceCnt\(1) & !\db2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(1),
	datad => VCC,
	cin => \db2|Add0~1\,
	combout => \db2|Add0~2_combout\,
	cout => \db2|Add0~3\);

-- Location: LCCOMB_X91_Y38_N0
\db2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~20_combout\ = (\db2|Add0~2_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~2_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~20_combout\);

-- Location: FF_X91_Y38_N1
\db2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~20_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(1));

-- Location: LCCOMB_X92_Y39_N14
\db2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~4_combout\ = (\db2|s_debounceCnt\(2) & ((GND) # (!\db2|Add0~3\))) # (!\db2|s_debounceCnt\(2) & (\db2|Add0~3\ $ (GND)))
-- \db2|Add0~5\ = CARRY((\db2|s_debounceCnt\(2)) # (!\db2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_debounceCnt\(2),
	datad => VCC,
	cin => \db2|Add0~3\,
	combout => \db2|Add0~4_combout\,
	cout => \db2|Add0~5\);

-- Location: LCCOMB_X91_Y38_N18
\db2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~21_combout\ = (\db2|Add0~4_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~4_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~21_combout\);

-- Location: FF_X91_Y38_N19
\db2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~21_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(2));

-- Location: LCCOMB_X92_Y39_N16
\db2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~6_combout\ = (\db2|s_debounceCnt\(3) & (\db2|Add0~5\ & VCC)) # (!\db2|s_debounceCnt\(3) & (!\db2|Add0~5\))
-- \db2|Add0~7\ = CARRY((!\db2|s_debounceCnt\(3) & !\db2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(3),
	datad => VCC,
	cin => \db2|Add0~5\,
	combout => \db2|Add0~6_combout\,
	cout => \db2|Add0~7\);

-- Location: LCCOMB_X91_Y38_N4
\db2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~22_combout\ = (\db2|Add0~6_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|Add0~6_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~22_combout\);

-- Location: FF_X91_Y38_N5
\db2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~22_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(3));

-- Location: LCCOMB_X92_Y39_N18
\db2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|Add0~8_combout\ = (\db2|s_debounceCnt\(4) & ((GND) # (!\db2|Add0~7\))) # (!\db2|s_debounceCnt\(4) & (\db2|Add0~7\ $ (GND)))
-- \db2|Add0~9\ = CARRY((\db2|s_debounceCnt\(4)) # (!\db2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(4),
	datad => VCC,
	cin => \db2|Add0~7\,
	combout => \db2|Add0~8_combout\,
	cout => \db2|Add0~9\);

-- Location: LCCOMB_X91_Y38_N30
\db2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~23_combout\ = (\db2|Add0~8_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|Add0~8_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~23_combout\);

-- Location: FF_X91_Y38_N31
\db2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~23_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(4));

-- Location: LCCOMB_X91_Y38_N24
\db2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_debounceCnt~27_combout\ = (\db2|Add0~10_combout\ & \db2|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db2|Add0~10_combout\,
	datad => \db2|s_debounceCnt[0]~4_combout\,
	combout => \db2|s_debounceCnt~27_combout\);

-- Location: FF_X91_Y38_N25
\db2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_debounceCnt~27_combout\,
	ena => \db2|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_debounceCnt\(5));

-- Location: LCCOMB_X90_Y38_N14
\db2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~6_combout\ = (\db2|s_dirtyIn~q\ & (!\db2|s_debounceCnt\(22) & (\db2|s_debounceCnt\(0) & \db2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_dirtyIn~q\,
	datab => \db2|s_debounceCnt\(22),
	datac => \db2|s_debounceCnt\(0),
	datad => \db2|s_previousIn~q\,
	combout => \db2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y40_N0
\db2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|s_pulsedOut~7_combout\ = (!\db2|s_debounceCnt\(5) & (\db2|s_pulsedOut~6_combout\ & (\db2|s_pulsedOut~5_combout\ & \db2|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db2|s_debounceCnt\(5),
	datab => \db2|s_pulsedOut~6_combout\,
	datac => \db2|s_pulsedOut~5_combout\,
	datad => \db2|s_pulsedOut~4_combout\,
	combout => \db2|s_pulsedOut~7_combout\);

-- Location: FF_X90_Y40_N1
\db2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|s_pulsedOut~q\);

-- Location: LCCOMB_X99_Y27_N0
\workClock|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~0_combout\ = \workClock|sec\(0) $ (VCC)
-- \workClock|Add0~1\ = CARRY(\workClock|sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(0),
	datad => VCC,
	combout => \workClock|Add0~0_combout\,
	cout => \workClock|Add0~1\);

-- Location: FF_X99_Y27_N1
\workClock|sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~0_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(0));

-- Location: LCCOMB_X99_Y27_N2
\workClock|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~2_combout\ = (\workClock|sec\(1) & (!\workClock|Add0~1\)) # (!\workClock|sec\(1) & ((\workClock|Add0~1\) # (GND)))
-- \workClock|Add0~3\ = CARRY((!\workClock|Add0~1\) # (!\workClock|sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(1),
	datad => VCC,
	cin => \workClock|Add0~1\,
	combout => \workClock|Add0~2_combout\,
	cout => \workClock|Add0~3\);

-- Location: FF_X99_Y27_N3
\workClock|sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~2_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(1));

-- Location: LCCOMB_X99_Y27_N4
\workClock|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~4_combout\ = (\workClock|sec\(2) & (\workClock|Add0~3\ $ (GND))) # (!\workClock|sec\(2) & (!\workClock|Add0~3\ & VCC))
-- \workClock|Add0~5\ = CARRY((\workClock|sec\(2) & !\workClock|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datad => VCC,
	cin => \workClock|Add0~3\,
	combout => \workClock|Add0~4_combout\,
	cout => \workClock|Add0~5\);

-- Location: LCCOMB_X102_Y27_N8
\workClock|sec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|sec~3_combout\ = (\workClock|Add0~4_combout\ & \workClock|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add0~4_combout\,
	datac => \workClock|Equal0~9_combout\,
	combout => \workClock|sec~3_combout\);

-- Location: FF_X102_Y27_N9
\workClock|sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|sec~3_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(2));

-- Location: LCCOMB_X99_Y27_N6
\workClock|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~6_combout\ = (\workClock|sec\(3) & (!\workClock|Add0~5\)) # (!\workClock|sec\(3) & ((\workClock|Add0~5\) # (GND)))
-- \workClock|Add0~7\ = CARRY((!\workClock|Add0~5\) # (!\workClock|sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(3),
	datad => VCC,
	cin => \workClock|Add0~5\,
	combout => \workClock|Add0~6_combout\,
	cout => \workClock|Add0~7\);

-- Location: LCCOMB_X102_Y27_N10
\workClock|sec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|sec~2_combout\ = (\workClock|Equal0~9_combout\ & \workClock|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|Equal0~9_combout\,
	datad => \workClock|Add0~6_combout\,
	combout => \workClock|sec~2_combout\);

-- Location: FF_X102_Y27_N11
\workClock|sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|sec~2_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(3));

-- Location: LCCOMB_X99_Y27_N8
\workClock|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~8_combout\ = (\workClock|sec\(4) & (\workClock|Add0~7\ $ (GND))) # (!\workClock|sec\(4) & (!\workClock|Add0~7\ & VCC))
-- \workClock|Add0~9\ = CARRY((\workClock|sec\(4) & !\workClock|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(4),
	datad => VCC,
	cin => \workClock|Add0~7\,
	combout => \workClock|Add0~8_combout\,
	cout => \workClock|Add0~9\);

-- Location: LCCOMB_X101_Y27_N6
\workClock|sec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|sec~1_combout\ = (\workClock|Equal0~9_combout\ & \workClock|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Equal0~9_combout\,
	datad => \workClock|Add0~8_combout\,
	combout => \workClock|sec~1_combout\);

-- Location: FF_X99_Y27_N5
\workClock|sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|sec~1_combout\,
	sload => VCC,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(4));

-- Location: LCCOMB_X99_Y27_N10
\workClock|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~10_combout\ = (\workClock|sec\(5) & (!\workClock|Add0~9\)) # (!\workClock|sec\(5) & ((\workClock|Add0~9\) # (GND)))
-- \workClock|Add0~11\ = CARRY((!\workClock|Add0~9\) # (!\workClock|sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(5),
	datad => VCC,
	cin => \workClock|Add0~9\,
	combout => \workClock|Add0~10_combout\,
	cout => \workClock|Add0~11\);

-- Location: LCCOMB_X102_Y27_N16
\workClock|sec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|sec~0_combout\ = (\workClock|Equal0~9_combout\ & \workClock|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|Equal0~9_combout\,
	datad => \workClock|Add0~10_combout\,
	combout => \workClock|sec~0_combout\);

-- Location: FF_X102_Y27_N17
\workClock|sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|sec~0_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(5));

-- Location: LCCOMB_X99_Y27_N12
\workClock|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~12_combout\ = (\workClock|sec\(6) & (\workClock|Add0~11\ $ (GND))) # (!\workClock|sec\(6) & (!\workClock|Add0~11\ & VCC))
-- \workClock|Add0~13\ = CARRY((\workClock|sec\(6) & !\workClock|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datad => VCC,
	cin => \workClock|Add0~11\,
	combout => \workClock|Add0~12_combout\,
	cout => \workClock|Add0~13\);

-- Location: FF_X99_Y27_N13
\workClock|sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~12_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(6));

-- Location: LCCOMB_X99_Y27_N14
\workClock|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~14_combout\ = (\workClock|sec\(7) & (!\workClock|Add0~13\)) # (!\workClock|sec\(7) & ((\workClock|Add0~13\) # (GND)))
-- \workClock|Add0~15\ = CARRY((!\workClock|Add0~13\) # (!\workClock|sec\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(7),
	datad => VCC,
	cin => \workClock|Add0~13\,
	combout => \workClock|Add0~14_combout\,
	cout => \workClock|Add0~15\);

-- Location: FF_X99_Y27_N15
\workClock|sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~14_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(7));

-- Location: LCCOMB_X99_Y27_N16
\workClock|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~16_combout\ = (\workClock|sec\(8) & (\workClock|Add0~15\ $ (GND))) # (!\workClock|sec\(8) & (!\workClock|Add0~15\ & VCC))
-- \workClock|Add0~17\ = CARRY((\workClock|sec\(8) & !\workClock|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(8),
	datad => VCC,
	cin => \workClock|Add0~15\,
	combout => \workClock|Add0~16_combout\,
	cout => \workClock|Add0~17\);

-- Location: FF_X99_Y27_N17
\workClock|sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~16_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(8));

-- Location: LCCOMB_X99_Y27_N18
\workClock|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~18_combout\ = (\workClock|sec\(9) & (!\workClock|Add0~17\)) # (!\workClock|sec\(9) & ((\workClock|Add0~17\) # (GND)))
-- \workClock|Add0~19\ = CARRY((!\workClock|Add0~17\) # (!\workClock|sec\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(9),
	datad => VCC,
	cin => \workClock|Add0~17\,
	combout => \workClock|Add0~18_combout\,
	cout => \workClock|Add0~19\);

-- Location: FF_X99_Y27_N19
\workClock|sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~18_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(9));

-- Location: LCCOMB_X99_Y27_N20
\workClock|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~20_combout\ = (\workClock|sec\(10) & (\workClock|Add0~19\ $ (GND))) # (!\workClock|sec\(10) & (!\workClock|Add0~19\ & VCC))
-- \workClock|Add0~21\ = CARRY((\workClock|sec\(10) & !\workClock|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(10),
	datad => VCC,
	cin => \workClock|Add0~19\,
	combout => \workClock|Add0~20_combout\,
	cout => \workClock|Add0~21\);

-- Location: FF_X99_Y27_N21
\workClock|sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~20_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(10));

-- Location: LCCOMB_X99_Y27_N22
\workClock|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~22_combout\ = (\workClock|sec\(11) & (!\workClock|Add0~21\)) # (!\workClock|sec\(11) & ((\workClock|Add0~21\) # (GND)))
-- \workClock|Add0~23\ = CARRY((!\workClock|Add0~21\) # (!\workClock|sec\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(11),
	datad => VCC,
	cin => \workClock|Add0~21\,
	combout => \workClock|Add0~22_combout\,
	cout => \workClock|Add0~23\);

-- Location: FF_X99_Y27_N23
\workClock|sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~22_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(11));

-- Location: LCCOMB_X99_Y27_N24
\workClock|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~24_combout\ = (\workClock|sec\(12) & (\workClock|Add0~23\ $ (GND))) # (!\workClock|sec\(12) & (!\workClock|Add0~23\ & VCC))
-- \workClock|Add0~25\ = CARRY((\workClock|sec\(12) & !\workClock|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(12),
	datad => VCC,
	cin => \workClock|Add0~23\,
	combout => \workClock|Add0~24_combout\,
	cout => \workClock|Add0~25\);

-- Location: FF_X99_Y27_N25
\workClock|sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~24_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(12));

-- Location: LCCOMB_X99_Y27_N26
\workClock|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~26_combout\ = (\workClock|sec\(13) & (!\workClock|Add0~25\)) # (!\workClock|sec\(13) & ((\workClock|Add0~25\) # (GND)))
-- \workClock|Add0~27\ = CARRY((!\workClock|Add0~25\) # (!\workClock|sec\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(13),
	datad => VCC,
	cin => \workClock|Add0~25\,
	combout => \workClock|Add0~26_combout\,
	cout => \workClock|Add0~27\);

-- Location: FF_X99_Y27_N27
\workClock|sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~26_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(13));

-- Location: LCCOMB_X99_Y27_N28
\workClock|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~28_combout\ = (\workClock|sec\(14) & (\workClock|Add0~27\ $ (GND))) # (!\workClock|sec\(14) & (!\workClock|Add0~27\ & VCC))
-- \workClock|Add0~29\ = CARRY((\workClock|sec\(14) & !\workClock|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(14),
	datad => VCC,
	cin => \workClock|Add0~27\,
	combout => \workClock|Add0~28_combout\,
	cout => \workClock|Add0~29\);

-- Location: FF_X99_Y27_N29
\workClock|sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~28_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(14));

-- Location: LCCOMB_X99_Y27_N30
\workClock|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~30_combout\ = (\workClock|sec\(15) & (!\workClock|Add0~29\)) # (!\workClock|sec\(15) & ((\workClock|Add0~29\) # (GND)))
-- \workClock|Add0~31\ = CARRY((!\workClock|Add0~29\) # (!\workClock|sec\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(15),
	datad => VCC,
	cin => \workClock|Add0~29\,
	combout => \workClock|Add0~30_combout\,
	cout => \workClock|Add0~31\);

-- Location: FF_X99_Y27_N31
\workClock|sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~30_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(15));

-- Location: LCCOMB_X100_Y27_N14
\workClock|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~3_combout\ = (\workClock|sec\(12)) # ((\workClock|sec\(14)) # ((\workClock|sec\(13)) # (\workClock|sec\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(12),
	datab => \workClock|sec\(14),
	datac => \workClock|sec\(13),
	datad => \workClock|sec\(15),
	combout => \workClock|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y27_N24
\workClock|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~2_combout\ = (\workClock|sec\(11)) # ((\workClock|sec\(10)) # ((\workClock|sec\(8)) # (\workClock|sec\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(11),
	datab => \workClock|sec\(10),
	datac => \workClock|sec\(8),
	datad => \workClock|sec\(9),
	combout => \workClock|Equal0~2_combout\);

-- Location: LCCOMB_X99_Y26_N0
\workClock|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~32_combout\ = (\workClock|sec\(16) & (\workClock|Add0~31\ $ (GND))) # (!\workClock|sec\(16) & (!\workClock|Add0~31\ & VCC))
-- \workClock|Add0~33\ = CARRY((\workClock|sec\(16) & !\workClock|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(16),
	datad => VCC,
	cin => \workClock|Add0~31\,
	combout => \workClock|Add0~32_combout\,
	cout => \workClock|Add0~33\);

-- Location: FF_X99_Y26_N1
\workClock|sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~32_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(16));

-- Location: LCCOMB_X99_Y26_N2
\workClock|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~34_combout\ = (\workClock|sec\(17) & (!\workClock|Add0~33\)) # (!\workClock|sec\(17) & ((\workClock|Add0~33\) # (GND)))
-- \workClock|Add0~35\ = CARRY((!\workClock|Add0~33\) # (!\workClock|sec\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(17),
	datad => VCC,
	cin => \workClock|Add0~33\,
	combout => \workClock|Add0~34_combout\,
	cout => \workClock|Add0~35\);

-- Location: FF_X99_Y26_N3
\workClock|sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~34_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(17));

-- Location: LCCOMB_X99_Y26_N4
\workClock|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~36_combout\ = (\workClock|sec\(18) & (\workClock|Add0~35\ $ (GND))) # (!\workClock|sec\(18) & (!\workClock|Add0~35\ & VCC))
-- \workClock|Add0~37\ = CARRY((\workClock|sec\(18) & !\workClock|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(18),
	datad => VCC,
	cin => \workClock|Add0~35\,
	combout => \workClock|Add0~36_combout\,
	cout => \workClock|Add0~37\);

-- Location: FF_X99_Y26_N5
\workClock|sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~36_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(18));

-- Location: LCCOMB_X99_Y26_N6
\workClock|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~38_combout\ = (\workClock|sec\(19) & (!\workClock|Add0~37\)) # (!\workClock|sec\(19) & ((\workClock|Add0~37\) # (GND)))
-- \workClock|Add0~39\ = CARRY((!\workClock|Add0~37\) # (!\workClock|sec\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(19),
	datad => VCC,
	cin => \workClock|Add0~37\,
	combout => \workClock|Add0~38_combout\,
	cout => \workClock|Add0~39\);

-- Location: FF_X99_Y26_N7
\workClock|sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~38_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(19));

-- Location: LCCOMB_X100_Y26_N12
\workClock|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~4_combout\ = (\workClock|sec\(16)) # ((\workClock|sec\(19)) # ((\workClock|sec\(18)) # (\workClock|sec\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(16),
	datab => \workClock|sec\(19),
	datac => \workClock|sec\(18),
	datad => \workClock|sec\(17),
	combout => \workClock|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y26_N8
\workClock|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~40_combout\ = (\workClock|sec\(20) & (\workClock|Add0~39\ $ (GND))) # (!\workClock|sec\(20) & (!\workClock|Add0~39\ & VCC))
-- \workClock|Add0~41\ = CARRY((\workClock|sec\(20) & !\workClock|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(20),
	datad => VCC,
	cin => \workClock|Add0~39\,
	combout => \workClock|Add0~40_combout\,
	cout => \workClock|Add0~41\);

-- Location: FF_X99_Y26_N9
\workClock|sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~40_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(20));

-- Location: LCCOMB_X99_Y26_N10
\workClock|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~42_combout\ = (\workClock|sec\(21) & (!\workClock|Add0~41\)) # (!\workClock|sec\(21) & ((\workClock|Add0~41\) # (GND)))
-- \workClock|Add0~43\ = CARRY((!\workClock|Add0~41\) # (!\workClock|sec\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(21),
	datad => VCC,
	cin => \workClock|Add0~41\,
	combout => \workClock|Add0~42_combout\,
	cout => \workClock|Add0~43\);

-- Location: FF_X99_Y26_N11
\workClock|sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~42_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(21));

-- Location: LCCOMB_X99_Y26_N12
\workClock|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~44_combout\ = (\workClock|sec\(22) & (\workClock|Add0~43\ $ (GND))) # (!\workClock|sec\(22) & (!\workClock|Add0~43\ & VCC))
-- \workClock|Add0~45\ = CARRY((\workClock|sec\(22) & !\workClock|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(22),
	datad => VCC,
	cin => \workClock|Add0~43\,
	combout => \workClock|Add0~44_combout\,
	cout => \workClock|Add0~45\);

-- Location: FF_X99_Y26_N13
\workClock|sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~44_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(22));

-- Location: LCCOMB_X99_Y26_N14
\workClock|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~46_combout\ = (\workClock|sec\(23) & (!\workClock|Add0~45\)) # (!\workClock|sec\(23) & ((\workClock|Add0~45\) # (GND)))
-- \workClock|Add0~47\ = CARRY((!\workClock|Add0~45\) # (!\workClock|sec\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(23),
	datad => VCC,
	cin => \workClock|Add0~45\,
	combout => \workClock|Add0~46_combout\,
	cout => \workClock|Add0~47\);

-- Location: FF_X99_Y26_N15
\workClock|sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~46_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(23));

-- Location: LCCOMB_X100_Y26_N18
\workClock|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~5_combout\ = (\workClock|sec\(22)) # ((\workClock|sec\(21)) # ((\workClock|sec\(23)) # (\workClock|sec\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(22),
	datab => \workClock|sec\(21),
	datac => \workClock|sec\(23),
	datad => \workClock|sec\(20),
	combout => \workClock|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y26_N16
\workClock|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~48_combout\ = (\workClock|sec\(24) & (\workClock|Add0~47\ $ (GND))) # (!\workClock|sec\(24) & (!\workClock|Add0~47\ & VCC))
-- \workClock|Add0~49\ = CARRY((\workClock|sec\(24) & !\workClock|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(24),
	datad => VCC,
	cin => \workClock|Add0~47\,
	combout => \workClock|Add0~48_combout\,
	cout => \workClock|Add0~49\);

-- Location: FF_X99_Y26_N17
\workClock|sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~48_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(24));

-- Location: LCCOMB_X99_Y26_N18
\workClock|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~50_combout\ = (\workClock|sec\(25) & (!\workClock|Add0~49\)) # (!\workClock|sec\(25) & ((\workClock|Add0~49\) # (GND)))
-- \workClock|Add0~51\ = CARRY((!\workClock|Add0~49\) # (!\workClock|sec\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(25),
	datad => VCC,
	cin => \workClock|Add0~49\,
	combout => \workClock|Add0~50_combout\,
	cout => \workClock|Add0~51\);

-- Location: FF_X99_Y26_N19
\workClock|sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~50_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(25));

-- Location: LCCOMB_X99_Y26_N20
\workClock|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~52_combout\ = (\workClock|sec\(26) & (\workClock|Add0~51\ $ (GND))) # (!\workClock|sec\(26) & (!\workClock|Add0~51\ & VCC))
-- \workClock|Add0~53\ = CARRY((\workClock|sec\(26) & !\workClock|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(26),
	datad => VCC,
	cin => \workClock|Add0~51\,
	combout => \workClock|Add0~52_combout\,
	cout => \workClock|Add0~53\);

-- Location: FF_X99_Y26_N21
\workClock|sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~52_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(26));

-- Location: LCCOMB_X99_Y26_N22
\workClock|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~54_combout\ = (\workClock|sec\(27) & (!\workClock|Add0~53\)) # (!\workClock|sec\(27) & ((\workClock|Add0~53\) # (GND)))
-- \workClock|Add0~55\ = CARRY((!\workClock|Add0~53\) # (!\workClock|sec\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(27),
	datad => VCC,
	cin => \workClock|Add0~53\,
	combout => \workClock|Add0~54_combout\,
	cout => \workClock|Add0~55\);

-- Location: FF_X99_Y26_N23
\workClock|sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~54_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(27));

-- Location: LCCOMB_X99_Y26_N24
\workClock|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~56_combout\ = (\workClock|sec\(28) & (\workClock|Add0~55\ $ (GND))) # (!\workClock|sec\(28) & (!\workClock|Add0~55\ & VCC))
-- \workClock|Add0~57\ = CARRY((\workClock|sec\(28) & !\workClock|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(28),
	datad => VCC,
	cin => \workClock|Add0~55\,
	combout => \workClock|Add0~56_combout\,
	cout => \workClock|Add0~57\);

-- Location: FF_X99_Y26_N25
\workClock|sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~56_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(28));

-- Location: LCCOMB_X99_Y26_N26
\workClock|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~58_combout\ = (\workClock|sec\(29) & (!\workClock|Add0~57\)) # (!\workClock|sec\(29) & ((\workClock|Add0~57\) # (GND)))
-- \workClock|Add0~59\ = CARRY((!\workClock|Add0~57\) # (!\workClock|sec\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(29),
	datad => VCC,
	cin => \workClock|Add0~57\,
	combout => \workClock|Add0~58_combout\,
	cout => \workClock|Add0~59\);

-- Location: FF_X99_Y26_N27
\workClock|sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~58_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(29));

-- Location: LCCOMB_X99_Y26_N28
\workClock|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~60_combout\ = (\workClock|sec\(30) & (\workClock|Add0~59\ $ (GND))) # (!\workClock|sec\(30) & (!\workClock|Add0~59\ & VCC))
-- \workClock|Add0~61\ = CARRY((\workClock|sec\(30) & !\workClock|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(30),
	datad => VCC,
	cin => \workClock|Add0~59\,
	combout => \workClock|Add0~60_combout\,
	cout => \workClock|Add0~61\);

-- Location: FF_X99_Y26_N29
\workClock|sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~60_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(30));

-- Location: LCCOMB_X99_Y26_N30
\workClock|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add0~62_combout\ = \workClock|sec\(31) $ (\workClock|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(31),
	cin => \workClock|Add0~61\,
	combout => \workClock|Add0~62_combout\);

-- Location: FF_X99_Y26_N31
\workClock|sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add0~62_combout\,
	ena => \db2|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|sec\(31));

-- Location: LCCOMB_X100_Y26_N30
\workClock|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~7_combout\ = (\workClock|sec\(28)) # ((\workClock|sec\(30)) # ((\workClock|sec\(29)) # (\workClock|sec\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(28),
	datab => \workClock|sec\(30),
	datac => \workClock|sec\(29),
	datad => \workClock|sec\(31),
	combout => \workClock|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y26_N28
\workClock|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~6_combout\ = (\workClock|sec\(25)) # ((\workClock|sec\(27)) # ((\workClock|sec\(24)) # (\workClock|sec\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(25),
	datab => \workClock|sec\(27),
	datac => \workClock|sec\(24),
	datad => \workClock|sec\(26),
	combout => \workClock|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y26_N0
\workClock|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~8_combout\ = (\workClock|Equal0~4_combout\) # ((\workClock|Equal0~5_combout\) # ((\workClock|Equal0~7_combout\) # (\workClock|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal0~4_combout\,
	datab => \workClock|Equal0~5_combout\,
	datac => \workClock|Equal0~7_combout\,
	datad => \workClock|Equal0~6_combout\,
	combout => \workClock|Equal0~8_combout\);

-- Location: LCCOMB_X102_Y26_N28
\workClock|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~0_combout\ = (\workClock|sec\(6)) # (((\workClock|sec\(2)) # (!\workClock|sec\(3))) # (!\workClock|sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \workClock|sec\(1),
	datac => \workClock|sec\(2),
	datad => \workClock|sec\(3),
	combout => \workClock|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y26_N16
\disp3|decOut_n[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~27_combout\ = (!\workClock|sec\(7) & \workClock|sec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|sec\(7),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[3]~27_combout\);

-- Location: LCCOMB_X102_Y26_N14
\workClock|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~1_combout\ = ((\workClock|Equal0~0_combout\) # ((!\disp3|decOut_n[3]~27_combout\) # (!\workClock|sec\(0)))) # (!\workClock|sec\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datab => \workClock|Equal0~0_combout\,
	datac => \workClock|sec\(0),
	datad => \disp3|decOut_n[3]~27_combout\,
	combout => \workClock|Equal0~1_combout\);

-- Location: LCCOMB_X101_Y27_N0
\workClock|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal0~9_combout\ = (\workClock|Equal0~3_combout\) # ((\workClock|Equal0~2_combout\) # ((\workClock|Equal0~8_combout\) # (\workClock|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal0~3_combout\,
	datab => \workClock|Equal0~2_combout\,
	datac => \workClock|Equal0~8_combout\,
	datad => \workClock|Equal0~1_combout\,
	combout => \workClock|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y40_N26
\workClock|min[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|min[7]~0_combout\ = (!\db2|s_pulsedOut~q\ & ((!\workClock|Equal1~9_combout\) # (!\workClock|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \db2|s_pulsedOut~q\,
	datac => \workClock|Equal0~9_combout\,
	datad => \workClock|Equal1~9_combout\,
	combout => \workClock|min[7]~0_combout\);

-- Location: LCCOMB_X91_Y35_N0
\workClock|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~0_combout\ = \workClock|min\(0) $ (VCC)
-- \workClock|Add1~1\ = CARRY(\workClock|min\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(0),
	datad => VCC,
	combout => \workClock|Add1~0_combout\,
	cout => \workClock|Add1~1\);

-- Location: FF_X91_Y35_N1
\workClock|min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~0_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(0));

-- Location: LCCOMB_X91_Y35_N2
\workClock|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~2_combout\ = (\workClock|min\(1) & (!\workClock|Add1~1\)) # (!\workClock|min\(1) & ((\workClock|Add1~1\) # (GND)))
-- \workClock|Add1~3\ = CARRY((!\workClock|Add1~1\) # (!\workClock|min\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(1),
	datad => VCC,
	cin => \workClock|Add1~1\,
	combout => \workClock|Add1~2_combout\,
	cout => \workClock|Add1~3\);

-- Location: FF_X91_Y35_N3
\workClock|min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~2_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(1));

-- Location: LCCOMB_X91_Y35_N4
\workClock|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~4_combout\ = (\workClock|min\(2) & (\workClock|Add1~3\ $ (GND))) # (!\workClock|min\(2) & (!\workClock|Add1~3\ & VCC))
-- \workClock|Add1~5\ = CARRY((\workClock|min\(2) & !\workClock|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(2),
	datad => VCC,
	cin => \workClock|Add1~3\,
	combout => \workClock|Add1~4_combout\,
	cout => \workClock|Add1~5\);

-- Location: LCCOMB_X91_Y36_N8
\workClock|min[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|min[2]~4_combout\ = (\workClock|min[7]~0_combout\ & (\workClock|Add1~4_combout\ & (\workClock|Equal1~9_combout\))) # (!\workClock|min[7]~0_combout\ & (((\workClock|min\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add1~4_combout\,
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|min\(2),
	datad => \workClock|min[7]~0_combout\,
	combout => \workClock|min[2]~4_combout\);

-- Location: FF_X91_Y35_N5
\workClock|min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|min[2]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(2));

-- Location: LCCOMB_X91_Y35_N6
\workClock|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~6_combout\ = (\workClock|min\(3) & (!\workClock|Add1~5\)) # (!\workClock|min\(3) & ((\workClock|Add1~5\) # (GND)))
-- \workClock|Add1~7\ = CARRY((!\workClock|Add1~5\) # (!\workClock|min\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(3),
	datad => VCC,
	cin => \workClock|Add1~5\,
	combout => \workClock|Add1~6_combout\,
	cout => \workClock|Add1~7\);

-- Location: LCCOMB_X90_Y34_N16
\workClock|min[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|min[3]~3_combout\ = (\workClock|min[7]~0_combout\ & (\workClock|Equal1~9_combout\ & ((\workClock|Add1~6_combout\)))) # (!\workClock|min[7]~0_combout\ & (((\workClock|min\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min[7]~0_combout\,
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|min\(3),
	datad => \workClock|Add1~6_combout\,
	combout => \workClock|min[3]~3_combout\);

-- Location: FF_X90_Y34_N17
\workClock|min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(3));

-- Location: LCCOMB_X91_Y35_N8
\workClock|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~8_combout\ = (\workClock|min\(4) & (\workClock|Add1~7\ $ (GND))) # (!\workClock|min\(4) & (!\workClock|Add1~7\ & VCC))
-- \workClock|Add1~9\ = CARRY((\workClock|min\(4) & !\workClock|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(4),
	datad => VCC,
	cin => \workClock|Add1~7\,
	combout => \workClock|Add1~8_combout\,
	cout => \workClock|Add1~9\);

-- Location: LCCOMB_X90_Y34_N30
\workClock|min[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|min[4]~2_combout\ = (\workClock|min[7]~0_combout\ & (\workClock|Equal1~9_combout\ & ((\workClock|Add1~8_combout\)))) # (!\workClock|min[7]~0_combout\ & (((\workClock|min\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min[7]~0_combout\,
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|min\(4),
	datad => \workClock|Add1~8_combout\,
	combout => \workClock|min[4]~2_combout\);

-- Location: FF_X90_Y34_N31
\workClock|min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|min[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(4));

-- Location: LCCOMB_X91_Y35_N10
\workClock|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~10_combout\ = (\workClock|min\(5) & (!\workClock|Add1~9\)) # (!\workClock|min\(5) & ((\workClock|Add1~9\) # (GND)))
-- \workClock|Add1~11\ = CARRY((!\workClock|Add1~9\) # (!\workClock|min\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(5),
	datad => VCC,
	cin => \workClock|Add1~9\,
	combout => \workClock|Add1~10_combout\,
	cout => \workClock|Add1~11\);

-- Location: LCCOMB_X90_Y34_N28
\workClock|min[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|min[5]~1_combout\ = (\workClock|min[7]~0_combout\ & (\workClock|Equal1~9_combout\ & ((\workClock|Add1~10_combout\)))) # (!\workClock|min[7]~0_combout\ & (((\workClock|min\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min[7]~0_combout\,
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|min\(5),
	datad => \workClock|Add1~10_combout\,
	combout => \workClock|min[5]~1_combout\);

-- Location: FF_X90_Y34_N29
\workClock|min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(5));

-- Location: LCCOMB_X91_Y35_N12
\workClock|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~12_combout\ = (\workClock|min\(6) & (\workClock|Add1~11\ $ (GND))) # (!\workClock|min\(6) & (!\workClock|Add1~11\ & VCC))
-- \workClock|Add1~13\ = CARRY((\workClock|min\(6) & !\workClock|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(6),
	datad => VCC,
	cin => \workClock|Add1~11\,
	combout => \workClock|Add1~12_combout\,
	cout => \workClock|Add1~13\);

-- Location: FF_X91_Y35_N13
\workClock|min[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~12_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(6));

-- Location: LCCOMB_X90_Y34_N18
\workClock|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~0_combout\ = ((\workClock|min\(6)) # ((\workClock|min\(2)) # (!\workClock|min\(1)))) # (!\workClock|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(3),
	datab => \workClock|min\(6),
	datac => \workClock|min\(1),
	datad => \workClock|min\(2),
	combout => \workClock|Equal1~0_combout\);

-- Location: LCCOMB_X91_Y35_N14
\workClock|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~14_combout\ = (\workClock|min\(7) & (!\workClock|Add1~13\)) # (!\workClock|min\(7) & ((\workClock|Add1~13\) # (GND)))
-- \workClock|Add1~15\ = CARRY((!\workClock|Add1~13\) # (!\workClock|min\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(7),
	datad => VCC,
	cin => \workClock|Add1~13\,
	combout => \workClock|Add1~14_combout\,
	cout => \workClock|Add1~15\);

-- Location: FF_X91_Y35_N15
\workClock|min[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~14_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(7));

-- Location: LCCOMB_X90_Y34_N6
\disp5|decOut_n[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~27_combout\ = (\workClock|min\(5) & !\workClock|min\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(5),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[3]~27_combout\);

-- Location: LCCOMB_X90_Y34_N12
\workClock|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~1_combout\ = ((\workClock|Equal1~0_combout\) # ((!\disp5|decOut_n[3]~27_combout\) # (!\workClock|min\(0)))) # (!\workClock|min\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \workClock|Equal1~0_combout\,
	datac => \workClock|min\(0),
	datad => \disp5|decOut_n[3]~27_combout\,
	combout => \workClock|Equal1~1_combout\);

-- Location: LCCOMB_X91_Y35_N16
\workClock|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~16_combout\ = (\workClock|min\(8) & (\workClock|Add1~15\ $ (GND))) # (!\workClock|min\(8) & (!\workClock|Add1~15\ & VCC))
-- \workClock|Add1~17\ = CARRY((\workClock|min\(8) & !\workClock|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(8),
	datad => VCC,
	cin => \workClock|Add1~15\,
	combout => \workClock|Add1~16_combout\,
	cout => \workClock|Add1~17\);

-- Location: FF_X91_Y35_N17
\workClock|min[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~16_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(8));

-- Location: LCCOMB_X91_Y35_N18
\workClock|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~18_combout\ = (\workClock|min\(9) & (!\workClock|Add1~17\)) # (!\workClock|min\(9) & ((\workClock|Add1~17\) # (GND)))
-- \workClock|Add1~19\ = CARRY((!\workClock|Add1~17\) # (!\workClock|min\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(9),
	datad => VCC,
	cin => \workClock|Add1~17\,
	combout => \workClock|Add1~18_combout\,
	cout => \workClock|Add1~19\);

-- Location: FF_X91_Y35_N19
\workClock|min[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~18_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(9));

-- Location: LCCOMB_X91_Y35_N20
\workClock|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~20_combout\ = (\workClock|min\(10) & (\workClock|Add1~19\ $ (GND))) # (!\workClock|min\(10) & (!\workClock|Add1~19\ & VCC))
-- \workClock|Add1~21\ = CARRY((\workClock|min\(10) & !\workClock|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(10),
	datad => VCC,
	cin => \workClock|Add1~19\,
	combout => \workClock|Add1~20_combout\,
	cout => \workClock|Add1~21\);

-- Location: FF_X91_Y35_N21
\workClock|min[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~20_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(10));

-- Location: LCCOMB_X91_Y35_N22
\workClock|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~22_combout\ = (\workClock|min\(11) & (!\workClock|Add1~21\)) # (!\workClock|min\(11) & ((\workClock|Add1~21\) # (GND)))
-- \workClock|Add1~23\ = CARRY((!\workClock|Add1~21\) # (!\workClock|min\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(11),
	datad => VCC,
	cin => \workClock|Add1~21\,
	combout => \workClock|Add1~22_combout\,
	cout => \workClock|Add1~23\);

-- Location: FF_X91_Y35_N23
\workClock|min[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~22_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(11));

-- Location: LCCOMB_X91_Y35_N24
\workClock|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~24_combout\ = (\workClock|min\(12) & (\workClock|Add1~23\ $ (GND))) # (!\workClock|min\(12) & (!\workClock|Add1~23\ & VCC))
-- \workClock|Add1~25\ = CARRY((\workClock|min\(12) & !\workClock|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(12),
	datad => VCC,
	cin => \workClock|Add1~23\,
	combout => \workClock|Add1~24_combout\,
	cout => \workClock|Add1~25\);

-- Location: FF_X91_Y35_N25
\workClock|min[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~24_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(12));

-- Location: LCCOMB_X91_Y35_N26
\workClock|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~26_combout\ = (\workClock|min\(13) & (!\workClock|Add1~25\)) # (!\workClock|min\(13) & ((\workClock|Add1~25\) # (GND)))
-- \workClock|Add1~27\ = CARRY((!\workClock|Add1~25\) # (!\workClock|min\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(13),
	datad => VCC,
	cin => \workClock|Add1~25\,
	combout => \workClock|Add1~26_combout\,
	cout => \workClock|Add1~27\);

-- Location: FF_X91_Y35_N27
\workClock|min[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~26_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(13));

-- Location: LCCOMB_X91_Y35_N28
\workClock|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~28_combout\ = (\workClock|min\(14) & (\workClock|Add1~27\ $ (GND))) # (!\workClock|min\(14) & (!\workClock|Add1~27\ & VCC))
-- \workClock|Add1~29\ = CARRY((\workClock|min\(14) & !\workClock|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(14),
	datad => VCC,
	cin => \workClock|Add1~27\,
	combout => \workClock|Add1~28_combout\,
	cout => \workClock|Add1~29\);

-- Location: FF_X91_Y35_N29
\workClock|min[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~28_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(14));

-- Location: LCCOMB_X91_Y35_N30
\workClock|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~30_combout\ = (\workClock|min\(15) & (!\workClock|Add1~29\)) # (!\workClock|min\(15) & ((\workClock|Add1~29\) # (GND)))
-- \workClock|Add1~31\ = CARRY((!\workClock|Add1~29\) # (!\workClock|min\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(15),
	datad => VCC,
	cin => \workClock|Add1~29\,
	combout => \workClock|Add1~30_combout\,
	cout => \workClock|Add1~31\);

-- Location: FF_X91_Y35_N31
\workClock|min[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~30_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(15));

-- Location: LCCOMB_X91_Y34_N0
\workClock|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~32_combout\ = (\workClock|min\(16) & (\workClock|Add1~31\ $ (GND))) # (!\workClock|min\(16) & (!\workClock|Add1~31\ & VCC))
-- \workClock|Add1~33\ = CARRY((\workClock|min\(16) & !\workClock|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(16),
	datad => VCC,
	cin => \workClock|Add1~31\,
	combout => \workClock|Add1~32_combout\,
	cout => \workClock|Add1~33\);

-- Location: FF_X91_Y34_N1
\workClock|min[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~32_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(16));

-- Location: LCCOMB_X91_Y34_N2
\workClock|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~34_combout\ = (\workClock|min\(17) & (!\workClock|Add1~33\)) # (!\workClock|min\(17) & ((\workClock|Add1~33\) # (GND)))
-- \workClock|Add1~35\ = CARRY((!\workClock|Add1~33\) # (!\workClock|min\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(17),
	datad => VCC,
	cin => \workClock|Add1~33\,
	combout => \workClock|Add1~34_combout\,
	cout => \workClock|Add1~35\);

-- Location: FF_X91_Y34_N3
\workClock|min[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~34_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(17));

-- Location: LCCOMB_X91_Y34_N4
\workClock|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~36_combout\ = (\workClock|min\(18) & (\workClock|Add1~35\ $ (GND))) # (!\workClock|min\(18) & (!\workClock|Add1~35\ & VCC))
-- \workClock|Add1~37\ = CARRY((\workClock|min\(18) & !\workClock|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(18),
	datad => VCC,
	cin => \workClock|Add1~35\,
	combout => \workClock|Add1~36_combout\,
	cout => \workClock|Add1~37\);

-- Location: FF_X91_Y34_N5
\workClock|min[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~36_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(18));

-- Location: LCCOMB_X91_Y34_N6
\workClock|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~38_combout\ = (\workClock|min\(19) & (!\workClock|Add1~37\)) # (!\workClock|min\(19) & ((\workClock|Add1~37\) # (GND)))
-- \workClock|Add1~39\ = CARRY((!\workClock|Add1~37\) # (!\workClock|min\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(19),
	datad => VCC,
	cin => \workClock|Add1~37\,
	combout => \workClock|Add1~38_combout\,
	cout => \workClock|Add1~39\);

-- Location: FF_X91_Y34_N7
\workClock|min[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~38_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(19));

-- Location: LCCOMB_X91_Y34_N8
\workClock|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~40_combout\ = (\workClock|min\(20) & (\workClock|Add1~39\ $ (GND))) # (!\workClock|min\(20) & (!\workClock|Add1~39\ & VCC))
-- \workClock|Add1~41\ = CARRY((\workClock|min\(20) & !\workClock|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(20),
	datad => VCC,
	cin => \workClock|Add1~39\,
	combout => \workClock|Add1~40_combout\,
	cout => \workClock|Add1~41\);

-- Location: FF_X91_Y34_N9
\workClock|min[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~40_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(20));

-- Location: LCCOMB_X91_Y34_N10
\workClock|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~42_combout\ = (\workClock|min\(21) & (!\workClock|Add1~41\)) # (!\workClock|min\(21) & ((\workClock|Add1~41\) # (GND)))
-- \workClock|Add1~43\ = CARRY((!\workClock|Add1~41\) # (!\workClock|min\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(21),
	datad => VCC,
	cin => \workClock|Add1~41\,
	combout => \workClock|Add1~42_combout\,
	cout => \workClock|Add1~43\);

-- Location: FF_X91_Y34_N11
\workClock|min[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~42_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(21));

-- Location: LCCOMB_X91_Y34_N12
\workClock|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~44_combout\ = (\workClock|min\(22) & (\workClock|Add1~43\ $ (GND))) # (!\workClock|min\(22) & (!\workClock|Add1~43\ & VCC))
-- \workClock|Add1~45\ = CARRY((\workClock|min\(22) & !\workClock|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(22),
	datad => VCC,
	cin => \workClock|Add1~43\,
	combout => \workClock|Add1~44_combout\,
	cout => \workClock|Add1~45\);

-- Location: FF_X91_Y34_N13
\workClock|min[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~44_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(22));

-- Location: LCCOMB_X91_Y34_N14
\workClock|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~46_combout\ = (\workClock|min\(23) & (!\workClock|Add1~45\)) # (!\workClock|min\(23) & ((\workClock|Add1~45\) # (GND)))
-- \workClock|Add1~47\ = CARRY((!\workClock|Add1~45\) # (!\workClock|min\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(23),
	datad => VCC,
	cin => \workClock|Add1~45\,
	combout => \workClock|Add1~46_combout\,
	cout => \workClock|Add1~47\);

-- Location: FF_X91_Y34_N15
\workClock|min[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~46_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(23));

-- Location: LCCOMB_X91_Y34_N16
\workClock|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~48_combout\ = (\workClock|min\(24) & (\workClock|Add1~47\ $ (GND))) # (!\workClock|min\(24) & (!\workClock|Add1~47\ & VCC))
-- \workClock|Add1~49\ = CARRY((\workClock|min\(24) & !\workClock|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(24),
	datad => VCC,
	cin => \workClock|Add1~47\,
	combout => \workClock|Add1~48_combout\,
	cout => \workClock|Add1~49\);

-- Location: FF_X91_Y34_N17
\workClock|min[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~48_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(24));

-- Location: LCCOMB_X91_Y34_N18
\workClock|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~50_combout\ = (\workClock|min\(25) & (!\workClock|Add1~49\)) # (!\workClock|min\(25) & ((\workClock|Add1~49\) # (GND)))
-- \workClock|Add1~51\ = CARRY((!\workClock|Add1~49\) # (!\workClock|min\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(25),
	datad => VCC,
	cin => \workClock|Add1~49\,
	combout => \workClock|Add1~50_combout\,
	cout => \workClock|Add1~51\);

-- Location: FF_X91_Y34_N19
\workClock|min[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~50_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(25));

-- Location: LCCOMB_X91_Y34_N20
\workClock|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~52_combout\ = (\workClock|min\(26) & (\workClock|Add1~51\ $ (GND))) # (!\workClock|min\(26) & (!\workClock|Add1~51\ & VCC))
-- \workClock|Add1~53\ = CARRY((\workClock|min\(26) & !\workClock|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(26),
	datad => VCC,
	cin => \workClock|Add1~51\,
	combout => \workClock|Add1~52_combout\,
	cout => \workClock|Add1~53\);

-- Location: FF_X91_Y34_N21
\workClock|min[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~52_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(26));

-- Location: LCCOMB_X91_Y34_N22
\workClock|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~54_combout\ = (\workClock|min\(27) & (!\workClock|Add1~53\)) # (!\workClock|min\(27) & ((\workClock|Add1~53\) # (GND)))
-- \workClock|Add1~55\ = CARRY((!\workClock|Add1~53\) # (!\workClock|min\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(27),
	datad => VCC,
	cin => \workClock|Add1~53\,
	combout => \workClock|Add1~54_combout\,
	cout => \workClock|Add1~55\);

-- Location: FF_X91_Y34_N23
\workClock|min[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~54_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(27));

-- Location: LCCOMB_X90_Y34_N22
\workClock|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~6_combout\ = (\workClock|min\(24)) # ((\workClock|min\(25)) # ((\workClock|min\(26)) # (\workClock|min\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(24),
	datab => \workClock|min\(25),
	datac => \workClock|min\(26),
	datad => \workClock|min\(27),
	combout => \workClock|Equal1~6_combout\);

-- Location: LCCOMB_X90_Y34_N4
\workClock|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~5_combout\ = (\workClock|min\(20)) # ((\workClock|min\(22)) # ((\workClock|min\(21)) # (\workClock|min\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(20),
	datab => \workClock|min\(22),
	datac => \workClock|min\(21),
	datad => \workClock|min\(23),
	combout => \workClock|Equal1~5_combout\);

-- Location: LCCOMB_X90_Y34_N26
\workClock|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~4_combout\ = (\workClock|min\(18)) # ((\workClock|min\(19)) # ((\workClock|min\(16)) # (\workClock|min\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(18),
	datab => \workClock|min\(19),
	datac => \workClock|min\(16),
	datad => \workClock|min\(17),
	combout => \workClock|Equal1~4_combout\);

-- Location: LCCOMB_X91_Y34_N24
\workClock|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~56_combout\ = (\workClock|min\(28) & (\workClock|Add1~55\ $ (GND))) # (!\workClock|min\(28) & (!\workClock|Add1~55\ & VCC))
-- \workClock|Add1~57\ = CARRY((\workClock|min\(28) & !\workClock|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(28),
	datad => VCC,
	cin => \workClock|Add1~55\,
	combout => \workClock|Add1~56_combout\,
	cout => \workClock|Add1~57\);

-- Location: FF_X91_Y34_N25
\workClock|min[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~56_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(28));

-- Location: LCCOMB_X91_Y34_N26
\workClock|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~58_combout\ = (\workClock|min\(29) & (!\workClock|Add1~57\)) # (!\workClock|min\(29) & ((\workClock|Add1~57\) # (GND)))
-- \workClock|Add1~59\ = CARRY((!\workClock|Add1~57\) # (!\workClock|min\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(29),
	datad => VCC,
	cin => \workClock|Add1~57\,
	combout => \workClock|Add1~58_combout\,
	cout => \workClock|Add1~59\);

-- Location: FF_X91_Y34_N27
\workClock|min[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~58_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(29));

-- Location: LCCOMB_X91_Y34_N28
\workClock|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~60_combout\ = (\workClock|min\(30) & (\workClock|Add1~59\ $ (GND))) # (!\workClock|min\(30) & (!\workClock|Add1~59\ & VCC))
-- \workClock|Add1~61\ = CARRY((\workClock|min\(30) & !\workClock|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(30),
	datad => VCC,
	cin => \workClock|Add1~59\,
	combout => \workClock|Add1~60_combout\,
	cout => \workClock|Add1~61\);

-- Location: FF_X91_Y34_N29
\workClock|min[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~60_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(30));

-- Location: LCCOMB_X91_Y34_N30
\workClock|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add1~62_combout\ = \workClock|min\(31) $ (\workClock|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(31),
	cin => \workClock|Add1~61\,
	combout => \workClock|Add1~62_combout\);

-- Location: FF_X91_Y34_N31
\workClock|min[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|Add1~62_combout\,
	ena => \workClock|min[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|min\(31));

-- Location: LCCOMB_X90_Y34_N20
\workClock|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~7_combout\ = (\workClock|min\(28)) # ((\workClock|min\(30)) # ((\workClock|min\(31)) # (\workClock|min\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(28),
	datab => \workClock|min\(30),
	datac => \workClock|min\(31),
	datad => \workClock|min\(29),
	combout => \workClock|Equal1~7_combout\);

-- Location: LCCOMB_X90_Y34_N2
\workClock|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~8_combout\ = (\workClock|Equal1~6_combout\) # ((\workClock|Equal1~5_combout\) # ((\workClock|Equal1~4_combout\) # (\workClock|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal1~6_combout\,
	datab => \workClock|Equal1~5_combout\,
	datac => \workClock|Equal1~4_combout\,
	datad => \workClock|Equal1~7_combout\,
	combout => \workClock|Equal1~8_combout\);

-- Location: LCCOMB_X90_Y35_N30
\workClock|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~3_combout\ = (\workClock|min\(13)) # ((\workClock|min\(12)) # ((\workClock|min\(15)) # (\workClock|min\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(13),
	datab => \workClock|min\(12),
	datac => \workClock|min\(15),
	datad => \workClock|min\(14),
	combout => \workClock|Equal1~3_combout\);

-- Location: LCCOMB_X90_Y35_N28
\workClock|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~2_combout\ = (\workClock|min\(8)) # ((\workClock|min\(9)) # ((\workClock|min\(10)) # (\workClock|min\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(8),
	datab => \workClock|min\(9),
	datac => \workClock|min\(10),
	datad => \workClock|min\(11),
	combout => \workClock|Equal1~2_combout\);

-- Location: LCCOMB_X90_Y34_N24
\workClock|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal1~9_combout\ = (\workClock|Equal1~1_combout\) # ((\workClock|Equal1~8_combout\) # ((\workClock|Equal1~3_combout\) # (\workClock|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal1~1_combout\,
	datab => \workClock|Equal1~8_combout\,
	datac => \workClock|Equal1~3_combout\,
	datad => \workClock|Equal1~2_combout\,
	combout => \workClock|Equal1~9_combout\);

-- Location: LCCOMB_X96_Y42_N10
\workClock|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~10_combout\ = (\KEY[1]~input_o\ & ((\workClock|hour[5]~14_combout\ & (!\workClock|Add2~9\)) # (!\workClock|hour[5]~14_combout\ & ((\workClock|Add2~9\) # (GND))))) # (!\KEY[1]~input_o\ & ((\workClock|hour[5]~14_combout\ & 
-- (\workClock|Add2~9\ & VCC)) # (!\workClock|hour[5]~14_combout\ & (!\workClock|Add2~9\))))
-- \workClock|Add2~11\ = CARRY((\KEY[1]~input_o\ & ((!\workClock|Add2~9\) # (!\workClock|hour[5]~14_combout\))) # (!\KEY[1]~input_o\ & (!\workClock|hour[5]~14_combout\ & !\workClock|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[5]~14_combout\,
	datad => VCC,
	cin => \workClock|Add2~9\,
	combout => \workClock|Add2~10_combout\,
	cout => \workClock|Add2~11\);

-- Location: LCCOMB_X96_Y42_N12
\workClock|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~12_combout\ = ((\workClock|hour[6]~6_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~11\)))) # (GND)
-- \workClock|Add2~13\ = CARRY((\workClock|hour[6]~6_combout\ & ((!\workClock|Add2~11\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[6]~6_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~11\,
	combout => \workClock|Add2~12_combout\,
	cout => \workClock|Add2~13\);

-- Location: LCCOMB_X92_Y40_N26
\workClock|hour[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[6]~5_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~12_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~12_combout\,
	datac => \workClock|hour[6]~5_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[6]~5_combout\);

-- Location: LCCOMB_X92_Y42_N2
\workClock|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~18_combout\ = (\workClock|hour[1]~22_combout\ & (!\workClock|Add2~17\)) # (!\workClock|hour[1]~22_combout\ & ((\workClock|Add2~17\) # (GND)))
-- \workClock|Add2~19\ = CARRY((!\workClock|Add2~17\) # (!\workClock|hour[1]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[1]~22_combout\,
	datad => VCC,
	cin => \workClock|Add2~17\,
	combout => \workClock|Add2~18_combout\,
	cout => \workClock|Add2~19\);

-- Location: LCCOMB_X92_Y42_N4
\workClock|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~20_combout\ = (\workClock|hour[2]~10_combout\ & (\workClock|Add2~19\ $ (GND))) # (!\workClock|hour[2]~10_combout\ & (!\workClock|Add2~19\ & VCC))
-- \workClock|Add2~21\ = CARRY((\workClock|hour[2]~10_combout\ & !\workClock|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[2]~10_combout\,
	datad => VCC,
	cin => \workClock|Add2~19\,
	combout => \workClock|Add2~20_combout\,
	cout => \workClock|Add2~21\);

-- Location: LCCOMB_X92_Y42_N6
\workClock|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~22_combout\ = (\workClock|hour[3]~26_combout\ & (!\workClock|Add2~21\)) # (!\workClock|hour[3]~26_combout\ & ((\workClock|Add2~21\) # (GND)))
-- \workClock|Add2~23\ = CARRY((!\workClock|Add2~21\) # (!\workClock|hour[3]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datad => VCC,
	cin => \workClock|Add2~21\,
	combout => \workClock|Add2~22_combout\,
	cout => \workClock|Add2~23\);

-- Location: LCCOMB_X92_Y42_N8
\workClock|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~24_combout\ = (\workClock|hour[4]~2_combout\ & (\workClock|Add2~23\ $ (GND))) # (!\workClock|hour[4]~2_combout\ & (!\workClock|Add2~23\ & VCC))
-- \workClock|Add2~25\ = CARRY((\workClock|hour[4]~2_combout\ & !\workClock|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[4]~2_combout\,
	datad => VCC,
	cin => \workClock|Add2~23\,
	combout => \workClock|Add2~24_combout\,
	cout => \workClock|Add2~25\);

-- Location: LCCOMB_X92_Y42_N10
\workClock|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~26_combout\ = (\workClock|hour[5]~14_combout\ & (!\workClock|Add2~25\)) # (!\workClock|hour[5]~14_combout\ & ((\workClock|Add2~25\) # (GND)))
-- \workClock|Add2~27\ = CARRY((!\workClock|Add2~25\) # (!\workClock|hour[5]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[5]~14_combout\,
	datad => VCC,
	cin => \workClock|Add2~25\,
	combout => \workClock|Add2~26_combout\,
	cout => \workClock|Add2~27\);

-- Location: LCCOMB_X92_Y42_N12
\workClock|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~28_combout\ = (\workClock|hour[6]~6_combout\ & (\workClock|Add2~27\ $ (GND))) # (!\workClock|hour[6]~6_combout\ & (!\workClock|Add2~27\ & VCC))
-- \workClock|Add2~29\ = CARRY((\workClock|hour[6]~6_combout\ & !\workClock|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[6]~6_combout\,
	datad => VCC,
	cin => \workClock|Add2~27\,
	combout => \workClock|Add2~28_combout\,
	cout => \workClock|Add2~29\);

-- Location: LCCOMB_X92_Y40_N20
\workClock|hour[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[6]~7_combout\ = \workClock|Add2~28_combout\ $ (\workClock|hour[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~28_combout\,
	datac => \workClock|hour[6]~5_combout\,
	combout => \workClock|hour[6]~7_combout\);

-- Location: FF_X92_Y40_N21
\workClock|hour[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[6]~7_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[6]~_emulated_q\);

-- Location: LCCOMB_X92_Y40_N18
\workClock|hour[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[6]~6_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~12_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[6]~5_combout\ $ ((\workClock|hour[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~5_combout\,
	datab => \workClock|hour[6]~_emulated_q\,
	datac => \workClock|Add2~12_combout\,
	datad => \workClock|hour[7]~162_combout\,
	combout => \workClock|hour[6]~6_combout\);

-- Location: LCCOMB_X96_Y42_N14
\workClock|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~14_combout\ = (\workClock|hour[7]~18_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~13\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~13\ & VCC)))) # (!\workClock|hour[7]~18_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~13\) # (GND))) # 
-- (!\KEY[1]~input_o\ & (!\workClock|Add2~13\))))
-- \workClock|Add2~15\ = CARRY((\workClock|hour[7]~18_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~13\)) # (!\workClock|hour[7]~18_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~13\,
	combout => \workClock|Add2~14_combout\,
	cout => \workClock|Add2~15\);

-- Location: LCCOMB_X92_Y40_N16
\workClock|hour[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[7]~17_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|Add2~14_combout\))) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|hour[7]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[7]~17_combout\,
	datac => \workClock|Add2~14_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[7]~17_combout\);

-- Location: LCCOMB_X92_Y42_N14
\workClock|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~30_combout\ = (\workClock|hour[7]~18_combout\ & (!\workClock|Add2~29\)) # (!\workClock|hour[7]~18_combout\ & ((\workClock|Add2~29\) # (GND)))
-- \workClock|Add2~31\ = CARRY((!\workClock|Add2~29\) # (!\workClock|hour[7]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[7]~18_combout\,
	datad => VCC,
	cin => \workClock|Add2~29\,
	combout => \workClock|Add2~30_combout\,
	cout => \workClock|Add2~31\);

-- Location: LCCOMB_X92_Y40_N28
\workClock|hour[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[7]~19_combout\ = \workClock|hour[7]~17_combout\ $ (\workClock|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[7]~17_combout\,
	datad => \workClock|Add2~30_combout\,
	combout => \workClock|hour[7]~19_combout\);

-- Location: FF_X92_Y40_N29
\workClock|hour[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[7]~19_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[7]~_emulated_q\);

-- Location: LCCOMB_X92_Y40_N30
\workClock|hour[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[7]~18_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~14_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[7]~17_combout\ $ (((\workClock|hour[7]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[7]~17_combout\,
	datac => \workClock|Add2~14_combout\,
	datad => \workClock|hour[7]~_emulated_q\,
	combout => \workClock|hour[7]~18_combout\);

-- Location: LCCOMB_X96_Y42_N16
\workClock|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~32_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[8]~126_combout\ $ (\workClock|Add2~15\)))) # (GND)
-- \workClock|Add2~33\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[8]~126_combout\ & !\workClock|Add2~15\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[8]~126_combout\) # (!\workClock|Add2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[8]~126_combout\,
	datad => VCC,
	cin => \workClock|Add2~15\,
	combout => \workClock|Add2~32_combout\,
	cout => \workClock|Add2~33\);

-- Location: LCCOMB_X89_Y41_N14
\workClock|hour[8]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[8]~125_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~32_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[8]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~32_combout\,
	datac => \workClock|hour[8]~125_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[8]~125_combout\);

-- Location: LCCOMB_X92_Y42_N16
\workClock|Add2~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~80_combout\ = (\workClock|hour[8]~126_combout\ & (\workClock|Add2~31\ $ (GND))) # (!\workClock|hour[8]~126_combout\ & (!\workClock|Add2~31\ & VCC))
-- \workClock|Add2~81\ = CARRY((\workClock|hour[8]~126_combout\ & !\workClock|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[8]~126_combout\,
	datad => VCC,
	cin => \workClock|Add2~31\,
	combout => \workClock|Add2~80_combout\,
	cout => \workClock|Add2~81\);

-- Location: LCCOMB_X89_Y41_N12
\workClock|hour[8]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[8]~127_combout\ = \workClock|hour[8]~125_combout\ $ (\workClock|Add2~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[8]~125_combout\,
	datad => \workClock|Add2~80_combout\,
	combout => \workClock|hour[8]~127_combout\);

-- Location: FF_X89_Y41_N13
\workClock|hour[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[8]~127_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[8]~_emulated_q\);

-- Location: LCCOMB_X89_Y41_N22
\workClock|hour[8]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[8]~126_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~32_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[8]~_emulated_q\ $ ((\workClock|hour[8]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[8]~_emulated_q\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[8]~125_combout\,
	datad => \workClock|Add2~32_combout\,
	combout => \workClock|hour[8]~126_combout\);

-- Location: LCCOMB_X96_Y42_N18
\workClock|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~34_combout\ = (\KEY[1]~input_o\ & ((\workClock|hour[9]~122_combout\ & (!\workClock|Add2~33\)) # (!\workClock|hour[9]~122_combout\ & ((\workClock|Add2~33\) # (GND))))) # (!\KEY[1]~input_o\ & ((\workClock|hour[9]~122_combout\ & 
-- (\workClock|Add2~33\ & VCC)) # (!\workClock|hour[9]~122_combout\ & (!\workClock|Add2~33\))))
-- \workClock|Add2~35\ = CARRY((\KEY[1]~input_o\ & ((!\workClock|Add2~33\) # (!\workClock|hour[9]~122_combout\))) # (!\KEY[1]~input_o\ & (!\workClock|hour[9]~122_combout\ & !\workClock|Add2~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[9]~122_combout\,
	datad => VCC,
	cin => \workClock|Add2~33\,
	combout => \workClock|Add2~34_combout\,
	cout => \workClock|Add2~35\);

-- Location: LCCOMB_X90_Y41_N2
\workClock|hour[9]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[9]~121_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~34_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[9]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~34_combout\,
	datab => \workClock|hour[9]~121_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[9]~121_combout\);

-- Location: LCCOMB_X92_Y42_N18
\workClock|Add2~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~82_combout\ = (\workClock|hour[9]~122_combout\ & (!\workClock|Add2~81\)) # (!\workClock|hour[9]~122_combout\ & ((\workClock|Add2~81\) # (GND)))
-- \workClock|Add2~83\ = CARRY((!\workClock|Add2~81\) # (!\workClock|hour[9]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[9]~122_combout\,
	datad => VCC,
	cin => \workClock|Add2~81\,
	combout => \workClock|Add2~82_combout\,
	cout => \workClock|Add2~83\);

-- Location: LCCOMB_X90_Y41_N24
\workClock|hour[9]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[9]~123_combout\ = \workClock|Add2~82_combout\ $ (\workClock|hour[9]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~82_combout\,
	datac => \workClock|hour[9]~121_combout\,
	combout => \workClock|hour[9]~123_combout\);

-- Location: FF_X90_Y41_N25
\workClock|hour[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[9]~123_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[9]~_emulated_q\);

-- Location: LCCOMB_X90_Y41_N22
\workClock|hour[9]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[9]~122_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~34_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[9]~121_combout\ $ (((\workClock|hour[9]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[9]~121_combout\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|Add2~34_combout\,
	datad => \workClock|hour[9]~_emulated_q\,
	combout => \workClock|hour[9]~122_combout\);

-- Location: LCCOMB_X96_Y42_N20
\workClock|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~36_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[10]~118_combout\ $ (\workClock|Add2~35\)))) # (GND)
-- \workClock|Add2~37\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[10]~118_combout\ & !\workClock|Add2~35\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[10]~118_combout\) # (!\workClock|Add2~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[10]~118_combout\,
	datad => VCC,
	cin => \workClock|Add2~35\,
	combout => \workClock|Add2~36_combout\,
	cout => \workClock|Add2~37\);

-- Location: LCCOMB_X89_Y41_N4
\workClock|hour[10]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[10]~117_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~36_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[10]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~36_combout\,
	datac => \workClock|hour[10]~117_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[10]~117_combout\);

-- Location: LCCOMB_X92_Y42_N20
\workClock|Add2~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~84_combout\ = (\workClock|hour[10]~118_combout\ & (\workClock|Add2~83\ $ (GND))) # (!\workClock|hour[10]~118_combout\ & (!\workClock|Add2~83\ & VCC))
-- \workClock|Add2~85\ = CARRY((\workClock|hour[10]~118_combout\ & !\workClock|Add2~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[10]~118_combout\,
	datad => VCC,
	cin => \workClock|Add2~83\,
	combout => \workClock|Add2~84_combout\,
	cout => \workClock|Add2~85\);

-- Location: LCCOMB_X89_Y41_N28
\workClock|hour[10]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[10]~119_combout\ = \workClock|Add2~84_combout\ $ (\workClock|hour[10]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~84_combout\,
	datac => \workClock|hour[10]~117_combout\,
	combout => \workClock|hour[10]~119_combout\);

-- Location: FF_X89_Y41_N29
\workClock|hour[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[10]~119_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[10]~_emulated_q\);

-- Location: LCCOMB_X89_Y41_N30
\workClock|hour[10]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[10]~118_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~36_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[10]~117_combout\ $ (((\workClock|hour[10]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[10]~117_combout\,
	datac => \workClock|Add2~36_combout\,
	datad => \workClock|hour[10]~_emulated_q\,
	combout => \workClock|hour[10]~118_combout\);

-- Location: LCCOMB_X92_Y42_N22
\workClock|Add2~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~86_combout\ = (\workClock|hour[11]~114_combout\ & (!\workClock|Add2~85\)) # (!\workClock|hour[11]~114_combout\ & ((\workClock|Add2~85\) # (GND)))
-- \workClock|Add2~87\ = CARRY((!\workClock|Add2~85\) # (!\workClock|hour[11]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[11]~114_combout\,
	datad => VCC,
	cin => \workClock|Add2~85\,
	combout => \workClock|Add2~86_combout\,
	cout => \workClock|Add2~87\);

-- Location: LCCOMB_X96_Y42_N22
\workClock|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~38_combout\ = (\workClock|hour[11]~114_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~37\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~37\ & VCC)))) # (!\workClock|hour[11]~114_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~37\) # 
-- (GND))) # (!\KEY[1]~input_o\ & (!\workClock|Add2~37\))))
-- \workClock|Add2~39\ = CARRY((\workClock|hour[11]~114_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~37\)) # (!\workClock|hour[11]~114_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[11]~114_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~37\,
	combout => \workClock|Add2~38_combout\,
	cout => \workClock|Add2~39\);

-- Location: LCCOMB_X89_Y41_N2
\workClock|hour[11]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[11]~113_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~38_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[11]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~38_combout\,
	datab => \workClock|hour[11]~113_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[11]~113_combout\);

-- Location: LCCOMB_X89_Y41_N20
\workClock|hour[11]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[11]~115_combout\ = \workClock|Add2~86_combout\ $ (\workClock|hour[11]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~86_combout\,
	datac => \workClock|hour[11]~113_combout\,
	combout => \workClock|hour[11]~115_combout\);

-- Location: FF_X89_Y41_N21
\workClock|hour[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[11]~115_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[11]~_emulated_q\);

-- Location: LCCOMB_X89_Y41_N10
\workClock|hour[11]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[11]~114_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~38_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[11]~_emulated_q\ $ ((\workClock|hour[11]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[11]~_emulated_q\,
	datac => \workClock|hour[11]~113_combout\,
	datad => \workClock|Add2~38_combout\,
	combout => \workClock|hour[11]~114_combout\);

-- Location: LCCOMB_X96_Y42_N24
\workClock|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~40_combout\ = ((\workClock|hour[12]~110_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~39\)))) # (GND)
-- \workClock|Add2~41\ = CARRY((\workClock|hour[12]~110_combout\ & ((!\workClock|Add2~39\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[12]~110_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[12]~110_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~39\,
	combout => \workClock|Add2~40_combout\,
	cout => \workClock|Add2~41\);

-- Location: LCCOMB_X90_Y41_N8
\workClock|hour[12]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[12]~109_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~40_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[12]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~40_combout\,
	datac => \workClock|hour[12]~109_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[12]~109_combout\);

-- Location: LCCOMB_X92_Y42_N24
\workClock|Add2~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~88_combout\ = (\workClock|hour[12]~110_combout\ & (\workClock|Add2~87\ $ (GND))) # (!\workClock|hour[12]~110_combout\ & (!\workClock|Add2~87\ & VCC))
-- \workClock|Add2~89\ = CARRY((\workClock|hour[12]~110_combout\ & !\workClock|Add2~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[12]~110_combout\,
	datad => VCC,
	cin => \workClock|Add2~87\,
	combout => \workClock|Add2~88_combout\,
	cout => \workClock|Add2~89\);

-- Location: LCCOMB_X90_Y41_N28
\workClock|hour[12]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[12]~111_combout\ = \workClock|hour[12]~109_combout\ $ (\workClock|Add2~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[12]~109_combout\,
	datad => \workClock|Add2~88_combout\,
	combout => \workClock|hour[12]~111_combout\);

-- Location: FF_X90_Y41_N29
\workClock|hour[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[12]~111_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[12]~_emulated_q\);

-- Location: LCCOMB_X90_Y41_N30
\workClock|hour[12]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[12]~110_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~40_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[12]~_emulated_q\ $ ((\workClock|hour[12]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[12]~_emulated_q\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[12]~109_combout\,
	datad => \workClock|Add2~40_combout\,
	combout => \workClock|hour[12]~110_combout\);

-- Location: LCCOMB_X96_Y42_N26
\workClock|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~42_combout\ = (\workClock|hour[13]~106_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~41\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~41\ & VCC)))) # (!\workClock|hour[13]~106_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~41\) # 
-- (GND))) # (!\KEY[1]~input_o\ & (!\workClock|Add2~41\))))
-- \workClock|Add2~43\ = CARRY((\workClock|hour[13]~106_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~41\)) # (!\workClock|hour[13]~106_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[13]~106_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~41\,
	combout => \workClock|Add2~42_combout\,
	cout => \workClock|Add2~43\);

-- Location: LCCOMB_X90_Y41_N26
\workClock|hour[13]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[13]~105_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~42_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[13]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~42_combout\,
	datac => \workClock|hour[13]~105_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[13]~105_combout\);

-- Location: LCCOMB_X92_Y42_N26
\workClock|Add2~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~90_combout\ = (\workClock|hour[13]~106_combout\ & (!\workClock|Add2~89\)) # (!\workClock|hour[13]~106_combout\ & ((\workClock|Add2~89\) # (GND)))
-- \workClock|Add2~91\ = CARRY((!\workClock|Add2~89\) # (!\workClock|hour[13]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[13]~106_combout\,
	datad => VCC,
	cin => \workClock|Add2~89\,
	combout => \workClock|Add2~90_combout\,
	cout => \workClock|Add2~91\);

-- Location: LCCOMB_X90_Y41_N16
\workClock|hour[13]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[13]~107_combout\ = \workClock|hour[13]~105_combout\ $ (\workClock|Add2~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[13]~105_combout\,
	datad => \workClock|Add2~90_combout\,
	combout => \workClock|hour[13]~107_combout\);

-- Location: FF_X90_Y41_N15
\workClock|hour[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|hour[13]~107_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	sload => VCC,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[13]~_emulated_q\);

-- Location: LCCOMB_X90_Y41_N14
\workClock|hour[13]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[13]~106_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~42_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[13]~105_combout\ $ ((\workClock|hour[13]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[13]~105_combout\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[13]~_emulated_q\,
	datad => \workClock|Add2~42_combout\,
	combout => \workClock|hour[13]~106_combout\);

-- Location: LCCOMB_X96_Y42_N28
\workClock|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~44_combout\ = ((\workClock|hour[14]~102_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~43\)))) # (GND)
-- \workClock|Add2~45\ = CARRY((\workClock|hour[14]~102_combout\ & ((!\workClock|Add2~43\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[14]~102_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[14]~102_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~43\,
	combout => \workClock|Add2~44_combout\,
	cout => \workClock|Add2~45\);

-- Location: LCCOMB_X89_Y41_N8
\workClock|hour[14]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[14]~101_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~44_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[14]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~44_combout\,
	datac => \workClock|hour[14]~101_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[14]~101_combout\);

-- Location: LCCOMB_X92_Y42_N28
\workClock|Add2~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~92_combout\ = (\workClock|hour[14]~102_combout\ & (\workClock|Add2~91\ $ (GND))) # (!\workClock|hour[14]~102_combout\ & (!\workClock|Add2~91\ & VCC))
-- \workClock|Add2~93\ = CARRY((\workClock|hour[14]~102_combout\ & !\workClock|Add2~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[14]~102_combout\,
	datad => VCC,
	cin => \workClock|Add2~91\,
	combout => \workClock|Add2~92_combout\,
	cout => \workClock|Add2~93\);

-- Location: LCCOMB_X89_Y41_N16
\workClock|hour[14]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[14]~103_combout\ = \workClock|hour[14]~101_combout\ $ (\workClock|Add2~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[14]~101_combout\,
	datac => \workClock|Add2~92_combout\,
	combout => \workClock|hour[14]~103_combout\);

-- Location: FF_X90_Y41_N17
\workClock|hour[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|hour[14]~103_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	sload => VCC,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[14]~_emulated_q\);

-- Location: LCCOMB_X89_Y41_N6
\workClock|hour[14]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[14]~102_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~44_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[14]~_emulated_q\ $ ((\workClock|hour[14]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[14]~_emulated_q\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[14]~101_combout\,
	datad => \workClock|Add2~44_combout\,
	combout => \workClock|hour[14]~102_combout\);

-- Location: LCCOMB_X96_Y42_N30
\workClock|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~46_combout\ = (\workClock|hour[15]~98_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~45\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~45\ & VCC)))) # (!\workClock|hour[15]~98_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~45\) # (GND))) 
-- # (!\KEY[1]~input_o\ & (!\workClock|Add2~45\))))
-- \workClock|Add2~47\ = CARRY((\workClock|hour[15]~98_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~45\)) # (!\workClock|hour[15]~98_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[15]~98_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~45\,
	combout => \workClock|Add2~46_combout\,
	cout => \workClock|Add2~47\);

-- Location: LCCOMB_X89_Y41_N26
\workClock|hour[15]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[15]~97_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~46_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[15]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~46_combout\,
	datac => \workClock|hour[15]~97_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[15]~97_combout\);

-- Location: LCCOMB_X92_Y42_N30
\workClock|Add2~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~94_combout\ = (\workClock|hour[15]~98_combout\ & (!\workClock|Add2~93\)) # (!\workClock|hour[15]~98_combout\ & ((\workClock|Add2~93\) # (GND)))
-- \workClock|Add2~95\ = CARRY((!\workClock|Add2~93\) # (!\workClock|hour[15]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[15]~98_combout\,
	datad => VCC,
	cin => \workClock|Add2~93\,
	combout => \workClock|Add2~94_combout\,
	cout => \workClock|Add2~95\);

-- Location: LCCOMB_X90_Y41_N18
\workClock|hour[15]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[15]~99_combout\ = \workClock|hour[15]~97_combout\ $ (\workClock|Add2~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[15]~97_combout\,
	datad => \workClock|Add2~94_combout\,
	combout => \workClock|hour[15]~99_combout\);

-- Location: FF_X90_Y41_N19
\workClock|hour[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[15]~99_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[15]~_emulated_q\);

-- Location: LCCOMB_X89_Y41_N0
\workClock|hour[15]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[15]~98_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~46_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[15]~97_combout\ $ ((\workClock|hour[15]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[15]~97_combout\,
	datab => \workClock|hour[15]~_emulated_q\,
	datac => \workClock|hour[7]~162_combout\,
	datad => \workClock|Add2~46_combout\,
	combout => \workClock|hour[15]~98_combout\);

-- Location: LCCOMB_X96_Y41_N0
\workClock|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~48_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[16]~94_combout\ $ (\workClock|Add2~47\)))) # (GND)
-- \workClock|Add2~49\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[16]~94_combout\ & !\workClock|Add2~47\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[16]~94_combout\) # (!\workClock|Add2~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[16]~94_combout\,
	datad => VCC,
	cin => \workClock|Add2~47\,
	combout => \workClock|Add2~48_combout\,
	cout => \workClock|Add2~49\);

-- Location: LCCOMB_X90_Y41_N4
\workClock|hour[16]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[16]~93_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~48_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[16]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~48_combout\,
	datac => \workClock|hour[16]~93_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[16]~93_combout\);

-- Location: LCCOMB_X92_Y41_N0
\workClock|Add2~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~96_combout\ = (\workClock|hour[16]~94_combout\ & (\workClock|Add2~95\ $ (GND))) # (!\workClock|hour[16]~94_combout\ & (!\workClock|Add2~95\ & VCC))
-- \workClock|Add2~97\ = CARRY((\workClock|hour[16]~94_combout\ & !\workClock|Add2~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[16]~94_combout\,
	datad => VCC,
	cin => \workClock|Add2~95\,
	combout => \workClock|Add2~96_combout\,
	cout => \workClock|Add2~97\);

-- Location: LCCOMB_X91_Y41_N0
\workClock|hour[16]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[16]~95_combout\ = \workClock|Add2~96_combout\ $ (\workClock|hour[16]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~96_combout\,
	datac => \workClock|hour[16]~93_combout\,
	combout => \workClock|hour[16]~95_combout\);

-- Location: FF_X91_Y41_N1
\workClock|hour[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[16]~95_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[16]~_emulated_q\);

-- Location: LCCOMB_X90_Y41_N20
\workClock|hour[16]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[16]~94_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~48_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[16]~93_combout\ $ ((\workClock|hour[16]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[16]~93_combout\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[16]~_emulated_q\,
	datad => \workClock|Add2~48_combout\,
	combout => \workClock|hour[16]~94_combout\);

-- Location: LCCOMB_X96_Y41_N2
\workClock|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~50_combout\ = (\KEY[1]~input_o\ & ((\workClock|hour[17]~90_combout\ & (!\workClock|Add2~49\)) # (!\workClock|hour[17]~90_combout\ & ((\workClock|Add2~49\) # (GND))))) # (!\KEY[1]~input_o\ & ((\workClock|hour[17]~90_combout\ & 
-- (\workClock|Add2~49\ & VCC)) # (!\workClock|hour[17]~90_combout\ & (!\workClock|Add2~49\))))
-- \workClock|Add2~51\ = CARRY((\KEY[1]~input_o\ & ((!\workClock|Add2~49\) # (!\workClock|hour[17]~90_combout\))) # (!\KEY[1]~input_o\ & (!\workClock|hour[17]~90_combout\ & !\workClock|Add2~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[17]~90_combout\,
	datad => VCC,
	cin => \workClock|Add2~49\,
	combout => \workClock|Add2~50_combout\,
	cout => \workClock|Add2~51\);

-- Location: LCCOMB_X95_Y41_N22
\workClock|hour[17]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[17]~89_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~50_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[17]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~50_combout\,
	datac => \workClock|hour[17]~89_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[17]~89_combout\);

-- Location: LCCOMB_X92_Y41_N2
\workClock|Add2~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~98_combout\ = (\workClock|hour[17]~90_combout\ & (!\workClock|Add2~97\)) # (!\workClock|hour[17]~90_combout\ & ((\workClock|Add2~97\) # (GND)))
-- \workClock|Add2~99\ = CARRY((!\workClock|Add2~97\) # (!\workClock|hour[17]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[17]~90_combout\,
	datad => VCC,
	cin => \workClock|Add2~97\,
	combout => \workClock|Add2~98_combout\,
	cout => \workClock|Add2~99\);

-- Location: LCCOMB_X95_Y41_N12
\workClock|hour[17]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[17]~91_combout\ = \workClock|hour[17]~89_combout\ $ (\workClock|Add2~98_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[17]~89_combout\,
	datad => \workClock|Add2~98_combout\,
	combout => \workClock|hour[17]~91_combout\);

-- Location: FF_X95_Y41_N13
\workClock|hour[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[17]~91_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[17]~_emulated_q\);

-- Location: LCCOMB_X95_Y41_N30
\workClock|hour[17]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[17]~90_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~50_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[17]~_emulated_q\ $ ((\workClock|hour[17]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[17]~_emulated_q\,
	datac => \workClock|hour[17]~89_combout\,
	datad => \workClock|Add2~50_combout\,
	combout => \workClock|hour[17]~90_combout\);

-- Location: LCCOMB_X96_Y41_N4
\workClock|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~52_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[18]~86_combout\ $ (\workClock|Add2~51\)))) # (GND)
-- \workClock|Add2~53\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[18]~86_combout\ & !\workClock|Add2~51\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[18]~86_combout\) # (!\workClock|Add2~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[18]~86_combout\,
	datad => VCC,
	cin => \workClock|Add2~51\,
	combout => \workClock|Add2~52_combout\,
	cout => \workClock|Add2~53\);

-- Location: LCCOMB_X94_Y41_N18
\workClock|hour[18]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[18]~85_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~52_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[18]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~52_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[18]~85_combout\,
	combout => \workClock|hour[18]~85_combout\);

-- Location: LCCOMB_X92_Y41_N4
\workClock|Add2~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~100_combout\ = (\workClock|hour[18]~86_combout\ & (\workClock|Add2~99\ $ (GND))) # (!\workClock|hour[18]~86_combout\ & (!\workClock|Add2~99\ & VCC))
-- \workClock|Add2~101\ = CARRY((\workClock|hour[18]~86_combout\ & !\workClock|Add2~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[18]~86_combout\,
	datad => VCC,
	cin => \workClock|Add2~99\,
	combout => \workClock|Add2~100_combout\,
	cout => \workClock|Add2~101\);

-- Location: LCCOMB_X94_Y41_N24
\workClock|hour[18]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[18]~87_combout\ = \workClock|hour[18]~85_combout\ $ (\workClock|Add2~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[18]~85_combout\,
	datad => \workClock|Add2~100_combout\,
	combout => \workClock|hour[18]~87_combout\);

-- Location: FF_X94_Y41_N25
\workClock|hour[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[18]~87_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[18]~_emulated_q\);

-- Location: LCCOMB_X94_Y41_N14
\workClock|hour[18]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[18]~86_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~52_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[18]~_emulated_q\ $ ((\workClock|hour[18]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[18]~_emulated_q\,
	datac => \workClock|hour[18]~85_combout\,
	datad => \workClock|Add2~52_combout\,
	combout => \workClock|hour[18]~86_combout\);

-- Location: LCCOMB_X92_Y41_N6
\workClock|Add2~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~102_combout\ = (\workClock|hour[19]~82_combout\ & (!\workClock|Add2~101\)) # (!\workClock|hour[19]~82_combout\ & ((\workClock|Add2~101\) # (GND)))
-- \workClock|Add2~103\ = CARRY((!\workClock|Add2~101\) # (!\workClock|hour[19]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[19]~82_combout\,
	datad => VCC,
	cin => \workClock|Add2~101\,
	combout => \workClock|Add2~102_combout\,
	cout => \workClock|Add2~103\);

-- Location: LCCOMB_X96_Y41_N6
\workClock|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~54_combout\ = (\workClock|hour[19]~82_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~53\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~53\ & VCC)))) # (!\workClock|hour[19]~82_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~53\) # (GND))) 
-- # (!\KEY[1]~input_o\ & (!\workClock|Add2~53\))))
-- \workClock|Add2~55\ = CARRY((\workClock|hour[19]~82_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~53\)) # (!\workClock|hour[19]~82_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[19]~82_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~53\,
	combout => \workClock|Add2~54_combout\,
	cout => \workClock|Add2~55\);

-- Location: LCCOMB_X95_Y41_N28
\workClock|hour[19]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[19]~81_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~54_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[19]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~54_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[19]~81_combout\,
	combout => \workClock|hour[19]~81_combout\);

-- Location: LCCOMB_X95_Y41_N24
\workClock|hour[19]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[19]~83_combout\ = \workClock|Add2~102_combout\ $ (\workClock|hour[19]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~102_combout\,
	datac => \workClock|hour[19]~81_combout\,
	combout => \workClock|hour[19]~83_combout\);

-- Location: FF_X95_Y41_N25
\workClock|hour[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[19]~83_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[19]~_emulated_q\);

-- Location: LCCOMB_X95_Y41_N26
\workClock|hour[19]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[19]~82_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~54_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[19]~_emulated_q\ $ ((\workClock|hour[19]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[19]~_emulated_q\,
	datac => \workClock|hour[19]~81_combout\,
	datad => \workClock|Add2~54_combout\,
	combout => \workClock|hour[19]~82_combout\);

-- Location: LCCOMB_X96_Y41_N8
\workClock|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~56_combout\ = ((\workClock|hour[20]~78_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~55\)))) # (GND)
-- \workClock|Add2~57\ = CARRY((\workClock|hour[20]~78_combout\ & ((!\workClock|Add2~55\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[20]~78_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[20]~78_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~55\,
	combout => \workClock|Add2~56_combout\,
	cout => \workClock|Add2~57\);

-- Location: LCCOMB_X94_Y41_N12
\workClock|hour[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[20]~77_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~56_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[20]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~56_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[20]~77_combout\,
	combout => \workClock|hour[20]~77_combout\);

-- Location: LCCOMB_X92_Y41_N8
\workClock|Add2~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~104_combout\ = (\workClock|hour[20]~78_combout\ & (\workClock|Add2~103\ $ (GND))) # (!\workClock|hour[20]~78_combout\ & (!\workClock|Add2~103\ & VCC))
-- \workClock|Add2~105\ = CARRY((\workClock|hour[20]~78_combout\ & !\workClock|Add2~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[20]~78_combout\,
	datad => VCC,
	cin => \workClock|Add2~103\,
	combout => \workClock|Add2~104_combout\,
	cout => \workClock|Add2~105\);

-- Location: LCCOMB_X94_Y41_N16
\workClock|hour[20]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[20]~79_combout\ = \workClock|Add2~104_combout\ $ (\workClock|hour[20]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~104_combout\,
	datac => \workClock|hour[20]~77_combout\,
	combout => \workClock|hour[20]~79_combout\);

-- Location: FF_X94_Y41_N17
\workClock|hour[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[20]~79_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[20]~_emulated_q\);

-- Location: LCCOMB_X94_Y41_N30
\workClock|hour[20]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[20]~78_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~56_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[20]~77_combout\ $ (((\workClock|hour[20]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[20]~77_combout\,
	datac => \workClock|Add2~56_combout\,
	datad => \workClock|hour[20]~_emulated_q\,
	combout => \workClock|hour[20]~78_combout\);

-- Location: LCCOMB_X96_Y41_N10
\workClock|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~58_combout\ = (\KEY[1]~input_o\ & ((\workClock|hour[21]~74_combout\ & (!\workClock|Add2~57\)) # (!\workClock|hour[21]~74_combout\ & ((\workClock|Add2~57\) # (GND))))) # (!\KEY[1]~input_o\ & ((\workClock|hour[21]~74_combout\ & 
-- (\workClock|Add2~57\ & VCC)) # (!\workClock|hour[21]~74_combout\ & (!\workClock|Add2~57\))))
-- \workClock|Add2~59\ = CARRY((\KEY[1]~input_o\ & ((!\workClock|Add2~57\) # (!\workClock|hour[21]~74_combout\))) # (!\KEY[1]~input_o\ & (!\workClock|hour[21]~74_combout\ & !\workClock|Add2~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[21]~74_combout\,
	datad => VCC,
	cin => \workClock|Add2~57\,
	combout => \workClock|Add2~58_combout\,
	cout => \workClock|Add2~59\);

-- Location: LCCOMB_X94_Y41_N22
\workClock|hour[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[21]~73_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~58_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[21]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~58_combout\,
	datac => \workClock|hour[21]~73_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[21]~73_combout\);

-- Location: LCCOMB_X92_Y41_N10
\workClock|Add2~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~106_combout\ = (\workClock|hour[21]~74_combout\ & (!\workClock|Add2~105\)) # (!\workClock|hour[21]~74_combout\ & ((\workClock|Add2~105\) # (GND)))
-- \workClock|Add2~107\ = CARRY((!\workClock|Add2~105\) # (!\workClock|hour[21]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[21]~74_combout\,
	datad => VCC,
	cin => \workClock|Add2~105\,
	combout => \workClock|Add2~106_combout\,
	cout => \workClock|Add2~107\);

-- Location: LCCOMB_X94_Y41_N0
\workClock|hour[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[21]~75_combout\ = \workClock|Add2~106_combout\ $ (\workClock|hour[21]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~106_combout\,
	datac => \workClock|hour[21]~73_combout\,
	combout => \workClock|hour[21]~75_combout\);

-- Location: FF_X94_Y41_N1
\workClock|hour[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[21]~75_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[21]~_emulated_q\);

-- Location: LCCOMB_X94_Y41_N10
\workClock|hour[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[21]~74_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~58_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[21]~73_combout\ $ ((\workClock|hour[21]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[21]~73_combout\,
	datab => \workClock|hour[21]~_emulated_q\,
	datac => \workClock|hour[7]~162_combout\,
	datad => \workClock|Add2~58_combout\,
	combout => \workClock|hour[21]~74_combout\);

-- Location: LCCOMB_X96_Y41_N12
\workClock|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~60_combout\ = ((\workClock|hour[22]~70_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~59\)))) # (GND)
-- \workClock|Add2~61\ = CARRY((\workClock|hour[22]~70_combout\ & ((!\workClock|Add2~59\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[22]~70_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[22]~70_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~59\,
	combout => \workClock|Add2~60_combout\,
	cout => \workClock|Add2~61\);

-- Location: LCCOMB_X94_Y41_N20
\workClock|hour[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[22]~69_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~60_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[22]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~60_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[22]~69_combout\,
	combout => \workClock|hour[22]~69_combout\);

-- Location: LCCOMB_X92_Y41_N12
\workClock|Add2~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~108_combout\ = (\workClock|hour[22]~70_combout\ & (\workClock|Add2~107\ $ (GND))) # (!\workClock|hour[22]~70_combout\ & (!\workClock|Add2~107\ & VCC))
-- \workClock|Add2~109\ = CARRY((\workClock|hour[22]~70_combout\ & !\workClock|Add2~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[22]~70_combout\,
	datad => VCC,
	cin => \workClock|Add2~107\,
	combout => \workClock|Add2~108_combout\,
	cout => \workClock|Add2~109\);

-- Location: LCCOMB_X94_Y41_N8
\workClock|hour[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[22]~71_combout\ = \workClock|Add2~108_combout\ $ (\workClock|hour[22]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~108_combout\,
	datac => \workClock|hour[22]~69_combout\,
	combout => \workClock|hour[22]~71_combout\);

-- Location: FF_X94_Y41_N9
\workClock|hour[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[22]~71_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[22]~_emulated_q\);

-- Location: LCCOMB_X94_Y41_N6
\workClock|hour[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[22]~70_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~60_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[22]~69_combout\ $ ((\workClock|hour[22]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[22]~69_combout\,
	datab => \workClock|hour[22]~_emulated_q\,
	datac => \workClock|hour[7]~162_combout\,
	datad => \workClock|Add2~60_combout\,
	combout => \workClock|hour[22]~70_combout\);

-- Location: LCCOMB_X96_Y41_N14
\workClock|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~62_combout\ = (\workClock|hour[23]~66_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~61\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~61\ & VCC)))) # (!\workClock|hour[23]~66_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~61\) # (GND))) 
-- # (!\KEY[1]~input_o\ & (!\workClock|Add2~61\))))
-- \workClock|Add2~63\ = CARRY((\workClock|hour[23]~66_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~61\)) # (!\workClock|hour[23]~66_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[23]~66_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~61\,
	combout => \workClock|Add2~62_combout\,
	cout => \workClock|Add2~63\);

-- Location: LCCOMB_X97_Y41_N4
\workClock|hour[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[23]~65_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~62_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[23]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~62_combout\,
	datac => \workClock|hour[23]~65_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[23]~65_combout\);

-- Location: LCCOMB_X92_Y41_N14
\workClock|Add2~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~110_combout\ = (\workClock|hour[23]~66_combout\ & (!\workClock|Add2~109\)) # (!\workClock|hour[23]~66_combout\ & ((\workClock|Add2~109\) # (GND)))
-- \workClock|Add2~111\ = CARRY((!\workClock|Add2~109\) # (!\workClock|hour[23]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[23]~66_combout\,
	datad => VCC,
	cin => \workClock|Add2~109\,
	combout => \workClock|Add2~110_combout\,
	cout => \workClock|Add2~111\);

-- Location: LCCOMB_X94_Y41_N28
\workClock|hour[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[23]~67_combout\ = \workClock|Add2~110_combout\ $ (\workClock|hour[23]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~110_combout\,
	datac => \workClock|hour[23]~65_combout\,
	combout => \workClock|hour[23]~67_combout\);

-- Location: FF_X94_Y41_N29
\workClock|hour[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[23]~67_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[23]~_emulated_q\);

-- Location: LCCOMB_X94_Y41_N26
\workClock|hour[23]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[23]~66_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~62_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[23]~65_combout\ $ ((\workClock|hour[23]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[23]~65_combout\,
	datab => \workClock|hour[23]~_emulated_q\,
	datac => \workClock|hour[7]~162_combout\,
	datad => \workClock|Add2~62_combout\,
	combout => \workClock|hour[23]~66_combout\);

-- Location: LCCOMB_X92_Y41_N16
\workClock|Add2~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~112_combout\ = (\workClock|hour[24]~62_combout\ & (\workClock|Add2~111\ $ (GND))) # (!\workClock|hour[24]~62_combout\ & (!\workClock|Add2~111\ & VCC))
-- \workClock|Add2~113\ = CARRY((\workClock|hour[24]~62_combout\ & !\workClock|Add2~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[24]~62_combout\,
	datad => VCC,
	cin => \workClock|Add2~111\,
	combout => \workClock|Add2~112_combout\,
	cout => \workClock|Add2~113\);

-- Location: LCCOMB_X96_Y41_N16
\workClock|Add2~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~64_combout\ = ((\workClock|hour[24]~62_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~63\)))) # (GND)
-- \workClock|Add2~65\ = CARRY((\workClock|hour[24]~62_combout\ & ((!\workClock|Add2~63\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[24]~62_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[24]~62_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~63\,
	combout => \workClock|Add2~64_combout\,
	cout => \workClock|Add2~65\);

-- Location: LCCOMB_X95_Y41_N10
\workClock|hour[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[24]~61_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~64_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[24]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~64_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[24]~61_combout\,
	combout => \workClock|hour[24]~61_combout\);

-- Location: LCCOMB_X95_Y41_N4
\workClock|hour[24]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[24]~63_combout\ = \workClock|Add2~112_combout\ $ (\workClock|hour[24]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~112_combout\,
	datac => \workClock|hour[24]~61_combout\,
	combout => \workClock|hour[24]~63_combout\);

-- Location: FF_X95_Y41_N5
\workClock|hour[24]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[24]~63_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[24]~_emulated_q\);

-- Location: LCCOMB_X95_Y41_N2
\workClock|hour[24]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[24]~62_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~64_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[24]~_emulated_q\ $ ((\workClock|hour[24]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[24]~_emulated_q\,
	datac => \workClock|hour[24]~61_combout\,
	datad => \workClock|Add2~64_combout\,
	combout => \workClock|hour[24]~62_combout\);

-- Location: LCCOMB_X96_Y41_N18
\workClock|Add2~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~66_combout\ = (\workClock|hour[25]~58_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~65\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~65\ & VCC)))) # (!\workClock|hour[25]~58_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~65\) # (GND))) 
-- # (!\KEY[1]~input_o\ & (!\workClock|Add2~65\))))
-- \workClock|Add2~67\ = CARRY((\workClock|hour[25]~58_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~65\)) # (!\workClock|hour[25]~58_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~65\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[25]~58_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~65\,
	combout => \workClock|Add2~66_combout\,
	cout => \workClock|Add2~67\);

-- Location: LCCOMB_X95_Y41_N0
\workClock|hour[25]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[25]~57_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~66_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[25]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~66_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[25]~57_combout\,
	combout => \workClock|hour[25]~57_combout\);

-- Location: LCCOMB_X92_Y41_N18
\workClock|Add2~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~114_combout\ = (\workClock|hour[25]~58_combout\ & (!\workClock|Add2~113\)) # (!\workClock|hour[25]~58_combout\ & ((\workClock|Add2~113\) # (GND)))
-- \workClock|Add2~115\ = CARRY((!\workClock|Add2~113\) # (!\workClock|hour[25]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[25]~58_combout\,
	datad => VCC,
	cin => \workClock|Add2~113\,
	combout => \workClock|Add2~114_combout\,
	cout => \workClock|Add2~115\);

-- Location: LCCOMB_X94_Y41_N2
\workClock|hour[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[25]~59_combout\ = \workClock|hour[25]~57_combout\ $ (\workClock|Add2~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[25]~57_combout\,
	datac => \workClock|Add2~114_combout\,
	combout => \workClock|hour[25]~59_combout\);

-- Location: FF_X94_Y41_N3
\workClock|hour[25]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[25]~59_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[25]~_emulated_q\);

-- Location: LCCOMB_X95_Y41_N14
\workClock|hour[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[25]~58_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~66_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[25]~57_combout\ $ ((\workClock|hour[25]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[25]~57_combout\,
	datac => \workClock|hour[25]~_emulated_q\,
	datad => \workClock|Add2~66_combout\,
	combout => \workClock|hour[25]~58_combout\);

-- Location: LCCOMB_X96_Y41_N20
\workClock|Add2~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~68_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[26]~54_combout\ $ (\workClock|Add2~67\)))) # (GND)
-- \workClock|Add2~69\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[26]~54_combout\ & !\workClock|Add2~67\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[26]~54_combout\) # (!\workClock|Add2~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[26]~54_combout\,
	datad => VCC,
	cin => \workClock|Add2~67\,
	combout => \workClock|Add2~68_combout\,
	cout => \workClock|Add2~69\);

-- Location: LCCOMB_X97_Y41_N22
\workClock|hour[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[26]~53_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~68_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[26]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~68_combout\,
	datac => \workClock|hour[26]~53_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[26]~53_combout\);

-- Location: LCCOMB_X92_Y41_N20
\workClock|Add2~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~116_combout\ = (\workClock|hour[26]~54_combout\ & (\workClock|Add2~115\ $ (GND))) # (!\workClock|hour[26]~54_combout\ & (!\workClock|Add2~115\ & VCC))
-- \workClock|Add2~117\ = CARRY((\workClock|hour[26]~54_combout\ & !\workClock|Add2~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[26]~54_combout\,
	datad => VCC,
	cin => \workClock|Add2~115\,
	combout => \workClock|Add2~116_combout\,
	cout => \workClock|Add2~117\);

-- Location: LCCOMB_X90_Y41_N0
\workClock|hour[26]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[26]~55_combout\ = \workClock|Add2~116_combout\ $ (\workClock|hour[26]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~116_combout\,
	datad => \workClock|hour[26]~53_combout\,
	combout => \workClock|hour[26]~55_combout\);

-- Location: FF_X90_Y41_N1
\workClock|hour[26]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[26]~55_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[26]~_emulated_q\);

-- Location: LCCOMB_X90_Y41_N6
\workClock|hour[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[26]~54_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~68_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[26]~53_combout\ $ ((\workClock|hour[26]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[26]~53_combout\,
	datab => \workClock|hour[26]~_emulated_q\,
	datac => \workClock|Add2~68_combout\,
	datad => \workClock|hour[7]~162_combout\,
	combout => \workClock|hour[26]~54_combout\);

-- Location: LCCOMB_X92_Y41_N22
\workClock|Add2~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~118_combout\ = (\workClock|hour[27]~50_combout\ & (!\workClock|Add2~117\)) # (!\workClock|hour[27]~50_combout\ & ((\workClock|Add2~117\) # (GND)))
-- \workClock|Add2~119\ = CARRY((!\workClock|Add2~117\) # (!\workClock|hour[27]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[27]~50_combout\,
	datad => VCC,
	cin => \workClock|Add2~117\,
	combout => \workClock|Add2~118_combout\,
	cout => \workClock|Add2~119\);

-- Location: LCCOMB_X96_Y41_N22
\workClock|Add2~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~70_combout\ = (\KEY[1]~input_o\ & ((\workClock|hour[27]~50_combout\ & (!\workClock|Add2~69\)) # (!\workClock|hour[27]~50_combout\ & ((\workClock|Add2~69\) # (GND))))) # (!\KEY[1]~input_o\ & ((\workClock|hour[27]~50_combout\ & 
-- (\workClock|Add2~69\ & VCC)) # (!\workClock|hour[27]~50_combout\ & (!\workClock|Add2~69\))))
-- \workClock|Add2~71\ = CARRY((\KEY[1]~input_o\ & ((!\workClock|Add2~69\) # (!\workClock|hour[27]~50_combout\))) # (!\KEY[1]~input_o\ & (!\workClock|hour[27]~50_combout\ & !\workClock|Add2~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[27]~50_combout\,
	datad => VCC,
	cin => \workClock|Add2~69\,
	combout => \workClock|Add2~70_combout\,
	cout => \workClock|Add2~71\);

-- Location: LCCOMB_X97_Y41_N28
\workClock|hour[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[27]~49_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~70_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[27]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~70_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[27]~49_combout\,
	combout => \workClock|hour[27]~49_combout\);

-- Location: LCCOMB_X90_Y41_N12
\workClock|hour[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[27]~51_combout\ = \workClock|Add2~118_combout\ $ (\workClock|hour[27]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~118_combout\,
	datad => \workClock|hour[27]~49_combout\,
	combout => \workClock|hour[27]~51_combout\);

-- Location: FF_X90_Y41_N13
\workClock|hour[27]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[27]~51_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[27]~_emulated_q\);

-- Location: LCCOMB_X90_Y41_N10
\workClock|hour[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[27]~50_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~70_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[27]~_emulated_q\ $ ((\workClock|hour[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[27]~_emulated_q\,
	datab => \workClock|hour[27]~49_combout\,
	datac => \workClock|Add2~70_combout\,
	datad => \workClock|hour[7]~162_combout\,
	combout => \workClock|hour[27]~50_combout\);

-- Location: LCCOMB_X96_Y41_N24
\workClock|Add2~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~72_combout\ = ((\workClock|hour[28]~46_combout\ $ (\KEY[1]~input_o\ $ (\workClock|Add2~71\)))) # (GND)
-- \workClock|Add2~73\ = CARRY((\workClock|hour[28]~46_combout\ & ((!\workClock|Add2~71\) # (!\KEY[1]~input_o\))) # (!\workClock|hour[28]~46_combout\ & (!\KEY[1]~input_o\ & !\workClock|Add2~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[28]~46_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~71\,
	combout => \workClock|Add2~72_combout\,
	cout => \workClock|Add2~73\);

-- Location: LCCOMB_X95_Y41_N18
\workClock|hour[28]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[28]~45_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|Add2~72_combout\))) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|hour[28]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[28]~45_combout\,
	datac => \workClock|Add2~72_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[28]~45_combout\);

-- Location: LCCOMB_X92_Y41_N24
\workClock|Add2~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~120_combout\ = (\workClock|hour[28]~46_combout\ & (\workClock|Add2~119\ $ (GND))) # (!\workClock|hour[28]~46_combout\ & (!\workClock|Add2~119\ & VCC))
-- \workClock|Add2~121\ = CARRY((\workClock|hour[28]~46_combout\ & !\workClock|Add2~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[28]~46_combout\,
	datad => VCC,
	cin => \workClock|Add2~119\,
	combout => \workClock|Add2~120_combout\,
	cout => \workClock|Add2~121\);

-- Location: LCCOMB_X91_Y41_N16
\workClock|hour[28]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[28]~47_combout\ = \workClock|Add2~120_combout\ $ (\workClock|hour[28]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~120_combout\,
	datad => \workClock|hour[28]~45_combout\,
	combout => \workClock|hour[28]~47_combout\);

-- Location: FF_X91_Y41_N17
\workClock|hour[28]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[28]~47_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[28]~_emulated_q\);

-- Location: LCCOMB_X91_Y41_N22
\workClock|hour[28]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[28]~46_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~72_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[28]~45_combout\ $ (((\workClock|hour[28]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|hour[28]~45_combout\,
	datac => \workClock|Add2~72_combout\,
	datad => \workClock|hour[28]~_emulated_q\,
	combout => \workClock|hour[28]~46_combout\);

-- Location: LCCOMB_X96_Y41_N26
\workClock|Add2~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~74_combout\ = (\workClock|hour[29]~42_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~73\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~73\ & VCC)))) # (!\workClock|hour[29]~42_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~73\) # (GND))) 
-- # (!\KEY[1]~input_o\ & (!\workClock|Add2~73\))))
-- \workClock|Add2~75\ = CARRY((\workClock|hour[29]~42_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~73\)) # (!\workClock|hour[29]~42_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[29]~42_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~73\,
	combout => \workClock|Add2~74_combout\,
	cout => \workClock|Add2~75\);

-- Location: LCCOMB_X95_Y41_N20
\workClock|hour[29]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[29]~41_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~74_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[29]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~74_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[29]~41_combout\,
	combout => \workClock|hour[29]~41_combout\);

-- Location: LCCOMB_X92_Y41_N26
\workClock|Add2~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~122_combout\ = (\workClock|hour[29]~42_combout\ & (!\workClock|Add2~121\)) # (!\workClock|hour[29]~42_combout\ & ((\workClock|Add2~121\) # (GND)))
-- \workClock|Add2~123\ = CARRY((!\workClock|Add2~121\) # (!\workClock|hour[29]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[29]~42_combout\,
	datad => VCC,
	cin => \workClock|Add2~121\,
	combout => \workClock|Add2~122_combout\,
	cout => \workClock|Add2~123\);

-- Location: LCCOMB_X91_Y41_N24
\workClock|hour[29]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[29]~43_combout\ = \workClock|Add2~122_combout\ $ (\workClock|hour[29]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~122_combout\,
	datac => \workClock|hour[29]~41_combout\,
	combout => \workClock|hour[29]~43_combout\);

-- Location: FF_X91_Y41_N25
\workClock|hour[29]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[29]~43_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[29]~_emulated_q\);

-- Location: LCCOMB_X91_Y41_N14
\workClock|hour[29]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[29]~42_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~74_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[29]~41_combout\ $ ((\workClock|hour[29]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[29]~41_combout\,
	datab => \workClock|hour[29]~_emulated_q\,
	datac => \workClock|Add2~74_combout\,
	datad => \workClock|hour[7]~162_combout\,
	combout => \workClock|hour[29]~42_combout\);

-- Location: LCCOMB_X96_Y41_N28
\workClock|Add2~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~76_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[30]~38_combout\ $ (\workClock|Add2~75\)))) # (GND)
-- \workClock|Add2~77\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[30]~38_combout\ & !\workClock|Add2~75\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[30]~38_combout\) # (!\workClock|Add2~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[30]~38_combout\,
	datad => VCC,
	cin => \workClock|Add2~75\,
	combout => \workClock|Add2~76_combout\,
	cout => \workClock|Add2~77\);

-- Location: LCCOMB_X97_Y41_N26
\workClock|hour[30]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[30]~37_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~76_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[30]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~76_combout\,
	datac => \workClock|hour[30]~37_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[30]~37_combout\);

-- Location: LCCOMB_X92_Y41_N28
\workClock|Add2~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~124_combout\ = (\workClock|hour[30]~38_combout\ & (\workClock|Add2~123\ $ (GND))) # (!\workClock|hour[30]~38_combout\ & (!\workClock|Add2~123\ & VCC))
-- \workClock|Add2~125\ = CARRY((\workClock|hour[30]~38_combout\ & !\workClock|Add2~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[30]~38_combout\,
	datad => VCC,
	cin => \workClock|Add2~123\,
	combout => \workClock|Add2~124_combout\,
	cout => \workClock|Add2~125\);

-- Location: LCCOMB_X91_Y41_N8
\workClock|hour[30]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[30]~39_combout\ = \workClock|Add2~124_combout\ $ (\workClock|hour[30]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~124_combout\,
	datad => \workClock|hour[30]~37_combout\,
	combout => \workClock|hour[30]~39_combout\);

-- Location: FF_X91_Y41_N9
\workClock|hour[30]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[30]~39_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[30]~_emulated_q\);

-- Location: LCCOMB_X91_Y41_N2
\workClock|hour[30]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[30]~38_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~76_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[30]~37_combout\ $ ((\workClock|hour[30]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[30]~37_combout\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[30]~_emulated_q\,
	datad => \workClock|Add2~76_combout\,
	combout => \workClock|hour[30]~38_combout\);

-- Location: LCCOMB_X96_Y41_N30
\workClock|Add2~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~78_combout\ = \KEY[1]~input_o\ $ (\workClock|Add2~77\ $ (!\workClock|hour[31]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \workClock|hour[31]~34_combout\,
	cin => \workClock|Add2~77\,
	combout => \workClock|Add2~78_combout\);

-- Location: LCCOMB_X97_Y41_N8
\workClock|hour[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[31]~33_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|Add2~78_combout\))) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|hour[31]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[31]~33_combout\,
	datac => \workClock|Add2~78_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[31]~33_combout\);

-- Location: LCCOMB_X92_Y41_N30
\workClock|Add2~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~126_combout\ = \workClock|hour[31]~34_combout\ $ (\workClock|Add2~125\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[31]~34_combout\,
	cin => \workClock|Add2~125\,
	combout => \workClock|Add2~126_combout\);

-- Location: LCCOMB_X91_Y41_N12
\workClock|hour[31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[31]~35_combout\ = \workClock|hour[31]~33_combout\ $ (\workClock|Add2~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[31]~33_combout\,
	datad => \workClock|Add2~126_combout\,
	combout => \workClock|hour[31]~35_combout\);

-- Location: FF_X91_Y41_N13
\workClock|hour[31]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[31]~35_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[31]~_emulated_q\);

-- Location: LCCOMB_X91_Y41_N10
\workClock|hour[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[31]~34_combout\ = (\workClock|hour[7]~162_combout\ & (\workClock|Add2~78_combout\)) # (!\workClock|hour[7]~162_combout\ & ((\workClock|hour[31]~_emulated_q\ $ (\workClock|hour[31]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~78_combout\,
	datab => \workClock|hour[31]~_emulated_q\,
	datac => \workClock|hour[31]~33_combout\,
	datad => \workClock|hour[7]~162_combout\,
	combout => \workClock|hour[31]~34_combout\);

-- Location: LCCOMB_X89_Y41_N18
\workClock|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~6_combout\ = (!\workClock|hour[8]~126_combout\ & (!\workClock|hour[9]~122_combout\ & (!\workClock|hour[10]~118_combout\ & !\workClock|hour[11]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[8]~126_combout\,
	datab => \workClock|hour[9]~122_combout\,
	datac => \workClock|hour[10]~118_combout\,
	datad => \workClock|hour[11]~114_combout\,
	combout => \workClock|Equal2~6_combout\);

-- Location: LCCOMB_X97_Y38_N24
\workClock|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~0_combout\ = (!\workClock|hour[3]~26_combout\ & \workClock|hour[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[3]~26_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \workClock|Equal2~0_combout\);

-- Location: LCCOMB_X97_Y38_N14
\workClock|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~2_combout\ = (!\workClock|hour[6]~6_combout\ & (\workClock|hour[1]~22_combout\ & (\workClock|hour[0]~30_combout\ & \workClock|hour[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \workClock|hour[1]~22_combout\,
	datac => \workClock|hour[0]~30_combout\,
	datad => \workClock|hour[2]~10_combout\,
	combout => \workClock|Equal2~2_combout\);

-- Location: LCCOMB_X97_Y38_N20
\workClock|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~3_combout\ = (!\workClock|hour[7]~18_combout\ & (\workClock|Equal2~0_combout\ & (\workClock|Equal2~2_combout\ & !\workClock|hour[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \workClock|Equal2~0_combout\,
	datac => \workClock|Equal2~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \workClock|Equal2~3_combout\);

-- Location: LCCOMB_X89_Y41_N24
\workClock|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~5_combout\ = (!\workClock|hour[14]~102_combout\ & (!\workClock|hour[13]~106_combout\ & (!\workClock|hour[12]~110_combout\ & !\workClock|hour[15]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[14]~102_combout\,
	datab => \workClock|hour[13]~106_combout\,
	datac => \workClock|hour[12]~110_combout\,
	datad => \workClock|hour[15]~98_combout\,
	combout => \workClock|Equal2~5_combout\);

-- Location: LCCOMB_X95_Y41_N16
\workClock|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~4_combout\ = (!\workClock|hour[17]~90_combout\ & (!\workClock|hour[16]~94_combout\ & (!\workClock|hour[19]~82_combout\ & !\workClock|hour[18]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[17]~90_combout\,
	datab => \workClock|hour[16]~94_combout\,
	datac => \workClock|hour[19]~82_combout\,
	datad => \workClock|hour[18]~86_combout\,
	combout => \workClock|Equal2~4_combout\);

-- Location: LCCOMB_X95_Y41_N6
\workClock|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~7_combout\ = (\workClock|Equal2~6_combout\ & (\workClock|Equal2~3_combout\ & (\workClock|Equal2~5_combout\ & \workClock|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal2~6_combout\,
	datab => \workClock|Equal2~3_combout\,
	datac => \workClock|Equal2~5_combout\,
	datad => \workClock|Equal2~4_combout\,
	combout => \workClock|Equal2~7_combout\);

-- Location: LCCOMB_X94_Y41_N4
\workClock|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~1_combout\ = (!\workClock|hour[21]~74_combout\ & (!\workClock|hour[20]~78_combout\ & (!\workClock|hour[23]~66_combout\ & !\workClock|hour[22]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[21]~74_combout\,
	datab => \workClock|hour[20]~78_combout\,
	datac => \workClock|hour[23]~66_combout\,
	datad => \workClock|hour[22]~70_combout\,
	combout => \workClock|Equal2~1_combout\);

-- Location: LCCOMB_X95_Y41_N8
\workClock|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~8_combout\ = (\workClock|Equal2~7_combout\ & (\workClock|Equal2~1_combout\ & (!\workClock|hour[25]~58_combout\ & !\workClock|hour[24]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal2~7_combout\,
	datab => \workClock|Equal2~1_combout\,
	datac => \workClock|hour[25]~58_combout\,
	datad => \workClock|hour[24]~62_combout\,
	combout => \workClock|Equal2~8_combout\);

-- Location: LCCOMB_X91_Y41_N20
\workClock|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~9_combout\ = (!\workClock|hour[28]~46_combout\ & (!\workClock|hour[26]~54_combout\ & (!\workClock|hour[27]~50_combout\ & \workClock|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[28]~46_combout\,
	datab => \workClock|hour[26]~54_combout\,
	datac => \workClock|hour[27]~50_combout\,
	datad => \workClock|Equal2~8_combout\,
	combout => \workClock|Equal2~9_combout\);

-- Location: LCCOMB_X91_Y41_N30
\workClock|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Equal2~10_combout\ = (!\workClock|hour[31]~34_combout\ & (\workClock|Equal2~9_combout\ & (!\workClock|hour[30]~38_combout\ & !\workClock|hour[29]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[31]~34_combout\,
	datab => \workClock|Equal2~9_combout\,
	datac => \workClock|hour[30]~38_combout\,
	datad => \workClock|hour[29]~42_combout\,
	combout => \workClock|Equal2~10_combout\);

-- Location: LCCOMB_X91_Y41_N4
\workClock|hour[7]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[7]~161_combout\ = (!\db2|s_pulsedOut~q\ & ((\workClock|Equal2~10_combout\) # (!\workClock|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|Equal2~10_combout\,
	datad => \db2|s_pulsedOut~q\,
	combout => \workClock|hour[7]~161_combout\);

-- Location: FF_X114_Y40_N31
\workClock|hour[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|hour[0]~31_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	sload => VCC,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[0]~_emulated_q\);

-- Location: LCCOMB_X114_Y40_N30
\workClock|hour[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[0]~30_combout\ = (\workClock|hour[7]~162_combout\ & (\workClock|Add2~0_combout\)) # (!\workClock|hour[7]~162_combout\ & ((\workClock|hour[0]~_emulated_q\ $ (\workClock|hour[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~0_combout\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[0]~_emulated_q\,
	datad => \workClock|hour[0]~29_combout\,
	combout => \workClock|hour[0]~30_combout\);

-- Location: LCCOMB_X96_Y42_N2
\workClock|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~2_combout\ = (\KEY[1]~input_o\ & ((\workClock|hour[1]~22_combout\ & (!\workClock|Add2~1\)) # (!\workClock|hour[1]~22_combout\ & ((\workClock|Add2~1\) # (GND))))) # (!\KEY[1]~input_o\ & ((\workClock|hour[1]~22_combout\ & (\workClock|Add2~1\ 
-- & VCC)) # (!\workClock|hour[1]~22_combout\ & (!\workClock|Add2~1\))))
-- \workClock|Add2~3\ = CARRY((\KEY[1]~input_o\ & ((!\workClock|Add2~1\) # (!\workClock|hour[1]~22_combout\))) # (!\KEY[1]~input_o\ & (!\workClock|hour[1]~22_combout\ & !\workClock|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[1]~22_combout\,
	datad => VCC,
	cin => \workClock|Add2~1\,
	combout => \workClock|Add2~2_combout\,
	cout => \workClock|Add2~3\);

-- Location: LCCOMB_X114_Y40_N18
\workClock|hour[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[1]~21_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~2_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~2_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[1]~21_combout\,
	combout => \workClock|hour[1]~21_combout\);

-- Location: LCCOMB_X114_Y40_N20
\workClock|hour[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[1]~23_combout\ = \workClock|hour[1]~21_combout\ $ (\workClock|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[1]~21_combout\,
	datad => \workClock|Add2~18_combout\,
	combout => \workClock|hour[1]~23_combout\);

-- Location: FF_X114_Y40_N25
\workClock|hour[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|hour[1]~23_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	sload => VCC,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[1]~_emulated_q\);

-- Location: LCCOMB_X114_Y40_N24
\workClock|hour[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[1]~22_combout\ = (\workClock|hour[7]~162_combout\ & (\workClock|Add2~2_combout\)) # (!\workClock|hour[7]~162_combout\ & ((\workClock|hour[1]~_emulated_q\ $ (\workClock|hour[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~2_combout\,
	datab => \workClock|hour[7]~162_combout\,
	datac => \workClock|hour[1]~_emulated_q\,
	datad => \workClock|hour[1]~21_combout\,
	combout => \workClock|hour[1]~22_combout\);

-- Location: LCCOMB_X96_Y42_N4
\workClock|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~4_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[2]~10_combout\ $ (\workClock|Add2~3\)))) # (GND)
-- \workClock|Add2~5\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[2]~10_combout\ & !\workClock|Add2~3\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[2]~10_combout\) # (!\workClock|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[2]~10_combout\,
	datad => VCC,
	cin => \workClock|Add2~3\,
	combout => \workClock|Add2~4_combout\,
	cout => \workClock|Add2~5\);

-- Location: LCCOMB_X114_Y40_N12
\workClock|hour[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[2]~9_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~4_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~4_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[2]~9_combout\,
	combout => \workClock|hour[2]~9_combout\);

-- Location: LCCOMB_X114_Y40_N0
\workClock|hour[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[2]~11_combout\ = \workClock|Add2~20_combout\ $ (\workClock|hour[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~20_combout\,
	datad => \workClock|hour[2]~9_combout\,
	combout => \workClock|hour[2]~11_combout\);

-- Location: FF_X114_Y40_N27
\workClock|hour[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	asdata => \workClock|hour[2]~11_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	sload => VCC,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[2]~_emulated_q\);

-- Location: LCCOMB_X114_Y40_N26
\workClock|hour[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[2]~10_combout\ = (\workClock|hour[7]~162_combout\ & (\workClock|Add2~4_combout\)) # (!\workClock|hour[7]~162_combout\ & ((\workClock|hour[2]~_emulated_q\ $ (\workClock|hour[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~162_combout\,
	datab => \workClock|Add2~4_combout\,
	datac => \workClock|hour[2]~_emulated_q\,
	datad => \workClock|hour[2]~9_combout\,
	combout => \workClock|hour[2]~10_combout\);

-- Location: LCCOMB_X96_Y42_N6
\workClock|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~6_combout\ = (\workClock|hour[3]~26_combout\ & ((\KEY[1]~input_o\ & (!\workClock|Add2~5\)) # (!\KEY[1]~input_o\ & (\workClock|Add2~5\ & VCC)))) # (!\workClock|hour[3]~26_combout\ & ((\KEY[1]~input_o\ & ((\workClock|Add2~5\) # (GND))) # 
-- (!\KEY[1]~input_o\ & (!\workClock|Add2~5\))))
-- \workClock|Add2~7\ = CARRY((\workClock|hour[3]~26_combout\ & (\KEY[1]~input_o\ & !\workClock|Add2~5\)) # (!\workClock|hour[3]~26_combout\ & ((\KEY[1]~input_o\) # (!\workClock|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \KEY[1]~input_o\,
	datad => VCC,
	cin => \workClock|Add2~5\,
	combout => \workClock|Add2~6_combout\,
	cout => \workClock|Add2~7\);

-- Location: LCCOMB_X91_Y41_N26
\workClock|hour[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[3]~25_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~6_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~6_combout\,
	datac => \workClock|hour[3]~25_combout\,
	datad => \workClock|hour[7]~162clkctrl_outclk\,
	combout => \workClock|hour[3]~25_combout\);

-- Location: LCCOMB_X91_Y41_N18
\workClock|hour[3]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[3]~164_combout\ = (\workClock|Equal2~10_combout\) # ((\workClock|Equal1~9_combout\ & (!\workClock|hour[3]~26_combout\)) # (!\workClock|Equal1~9_combout\ & ((!\workClock|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Equal2~10_combout\,
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|hour[3]~26_combout\,
	datad => \workClock|Add2~22_combout\,
	combout => \workClock|hour[3]~164_combout\);

-- Location: LCCOMB_X91_Y41_N28
\workClock|hour[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[3]~27_combout\ = \workClock|hour[3]~25_combout\ $ (((\db2|s_pulsedOut~q\ & (\workClock|hour[3]~26_combout\)) # (!\db2|s_pulsedOut~q\ & ((!\workClock|hour[3]~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[3]~164_combout\,
	datac => \workClock|hour[3]~25_combout\,
	datad => \db2|s_pulsedOut~q\,
	combout => \workClock|hour[3]~27_combout\);

-- Location: FF_X91_Y41_N29
\workClock|hour[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[3]~27_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[3]~_emulated_q\);

-- Location: LCCOMB_X91_Y41_N6
\workClock|hour[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[3]~26_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~6_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[3]~25_combout\ $ ((\workClock|hour[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~25_combout\,
	datab => \workClock|hour[3]~_emulated_q\,
	datac => \workClock|Add2~6_combout\,
	datad => \workClock|hour[7]~162_combout\,
	combout => \workClock|hour[3]~26_combout\);

-- Location: LCCOMB_X96_Y42_N8
\workClock|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|Add2~8_combout\ = ((\KEY[1]~input_o\ $ (\workClock|hour[4]~2_combout\ $ (\workClock|Add2~7\)))) # (GND)
-- \workClock|Add2~9\ = CARRY((\KEY[1]~input_o\ & (\workClock|hour[4]~2_combout\ & !\workClock|Add2~7\)) # (!\KEY[1]~input_o\ & ((\workClock|hour[4]~2_combout\) # (!\workClock|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \workClock|hour[4]~2_combout\,
	datad => VCC,
	cin => \workClock|Add2~7\,
	combout => \workClock|Add2~8_combout\,
	cout => \workClock|Add2~9\);

-- Location: LCCOMB_X114_Y40_N28
\workClock|hour[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[4]~1_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~8_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~8_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[4]~1_combout\,
	combout => \workClock|hour[4]~1_combout\);

-- Location: LCCOMB_X114_Y40_N22
\workClock|hour[4]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[4]~163_combout\ = (\workClock|Equal2~10_combout\) # ((\workClock|Equal1~9_combout\ & ((!\workClock|hour[4]~2_combout\))) # (!\workClock|Equal1~9_combout\ & (!\workClock|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~24_combout\,
	datab => \workClock|Equal1~9_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|Equal2~10_combout\,
	combout => \workClock|hour[4]~163_combout\);

-- Location: LCCOMB_X114_Y40_N16
\workClock|hour[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[4]~3_combout\ = \workClock|hour[4]~1_combout\ $ (((\db2|s_pulsedOut~q\ & (\workClock|hour[4]~2_combout\)) # (!\db2|s_pulsedOut~q\ & ((!\workClock|hour[4]~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[4]~1_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[4]~163_combout\,
	datad => \db2|s_pulsedOut~q\,
	combout => \workClock|hour[4]~3_combout\);

-- Location: FF_X114_Y40_N17
\workClock|hour[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[4]~3_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[4]~_emulated_q\);

-- Location: LCCOMB_X114_Y40_N8
\workClock|hour[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[4]~2_combout\ = (\workClock|hour[7]~162_combout\ & (\workClock|Add2~8_combout\)) # (!\workClock|hour[7]~162_combout\ & ((\workClock|hour[4]~1_combout\ $ (\workClock|hour[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|Add2~8_combout\,
	datab => \workClock|hour[4]~1_combout\,
	datac => \workClock|hour[7]~162_combout\,
	datad => \workClock|hour[4]~_emulated_q\,
	combout => \workClock|hour[4]~2_combout\);

-- Location: LCCOMB_X114_Y40_N10
\workClock|hour[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[5]~13_combout\ = (GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & (\workClock|Add2~10_combout\)) # (!GLOBAL(\workClock|hour[7]~162clkctrl_outclk\) & ((\workClock|hour[5]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|Add2~10_combout\,
	datac => \workClock|hour[7]~162clkctrl_outclk\,
	datad => \workClock|hour[5]~13_combout\,
	combout => \workClock|hour[5]~13_combout\);

-- Location: LCCOMB_X114_Y40_N4
\workClock|hour[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[5]~15_combout\ = \workClock|hour[5]~13_combout\ $ (\workClock|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[5]~13_combout\,
	datad => \workClock|Add2~26_combout\,
	combout => \workClock|hour[5]~15_combout\);

-- Location: FF_X114_Y40_N5
\workClock|hour[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \workClock|hour[5]~15_combout\,
	clrn => \workClock|ALT_INV_hour[7]~162clkctrl_outclk\,
	ena => \workClock|hour[7]~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \workClock|hour[5]~_emulated_q\);

-- Location: LCCOMB_X114_Y40_N6
\workClock|hour[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \workClock|hour[5]~14_combout\ = (\workClock|hour[7]~162_combout\ & (((\workClock|Add2~10_combout\)))) # (!\workClock|hour[7]~162_combout\ & (\workClock|hour[5]~13_combout\ $ ((\workClock|hour[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[5]~13_combout\,
	datab => \workClock|hour[5]~_emulated_q\,
	datac => \workClock|hour[7]~162_combout\,
	datad => \workClock|Add2~10_combout\,
	combout => \workClock|hour[5]~14_combout\);

-- Location: LCCOMB_X101_Y37_N12
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \workClock|hour[5]~14_combout\ $ (VCC)
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\workClock|hour[5]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[5]~14_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X101_Y37_N14
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\workClock|hour[6]~6_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\workClock|hour[6]~6_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\workClock|hour[6]~6_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[6]~6_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X101_Y37_N16
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\workClock|hour[7]~18_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\workClock|hour[7]~18_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\workClock|hour[7]~18_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[7]~18_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X101_Y37_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X101_Y37_N30
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X101_Y37_N24
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\workClock|hour[5]~14_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[5]~14_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X100_Y37_N8
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\workClock|hour[4]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[4]~2_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X100_Y37_N6
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\workClock|hour[4]~2_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[4]~2_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X101_Y37_N2
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X101_Y37_N4
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X100_Y37_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X101_Y37_N0
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\workClock|hour[7]~18_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[7]~18_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X101_Y37_N22
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X101_Y37_N20
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\workClock|hour[6]~6_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[6]~6_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X101_Y37_N6
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X101_Y37_N8
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X101_Y37_N10
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X100_Y37_N22
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X101_Y37_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|hour[6]~6_combout\)) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \workClock|hour[6]~6_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X100_Y37_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X101_Y37_N26
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|hour[5]~14_combout\)) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \workClock|hour[5]~14_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X100_Y37_N26
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X100_Y37_N20
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|hour[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X100_Y37_N30
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|hour[3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|hour[3]~26_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X100_Y37_N24
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|hour[3]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|hour[3]~26_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X100_Y37_N10
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X100_Y37_N12
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X100_Y37_N14
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X100_Y37_N16
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X100_Y37_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X100_Y37_N0
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X100_Y38_N24
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X100_Y38_N10
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X100_Y37_N2
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\workClock|hour[4]~2_combout\))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X100_Y38_N30
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X100_Y38_N8
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\workClock|hour[3]~26_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[3]~26_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X99_Y38_N16
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|hour[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \workClock|hour[2]~10_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X99_Y38_N6
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|hour[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \workClock|hour[2]~10_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X100_Y38_N14
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X100_Y38_N16
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X100_Y38_N18
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X100_Y38_N20
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X100_Y38_N22
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X100_Y38_N4
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X100_Y38_N12
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X100_Y38_N2
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X100_Y38_N26
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\workClock|hour[3]~26_combout\)) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X99_Y38_N12
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\workClock|hour[2]~10_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[2]~10_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X100_Y38_N0
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X100_Y38_N6
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \workClock|hour[1]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \workClock|hour[1]~22_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X100_Y38_N28
\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \workClock|hour[1]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \workClock|hour[1]~22_combout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X99_Y38_N22
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\) # (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X99_Y38_N24
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X99_Y38_N26
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X99_Y38_N28
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X99_Y38_N30
\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X99_Y38_N14
\disp7|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[0]~6_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp7|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X101_Y38_N24
\disp7|decOut_n[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~11_combout\ = (\workClock|hour[4]~2_combout\ & (\workClock|hour[6]~6_combout\ $ (\workClock|hour[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[6]~6_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[1]~11_combout\);

-- Location: LCCOMB_X99_Y38_N8
\disp7|decOut_n[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~8_combout\ = (!\workClock|hour[6]~6_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp7|decOut_n[1]~8_combout\);

-- Location: LCCOMB_X101_Y38_N6
\disp7|decOut_n[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~56_combout\ = (\disp7|decOut_n[1]~11_combout\ & (\workClock|hour[7]~18_combout\ $ (((\workClock|hour[5]~14_combout\))))) # (!\disp7|decOut_n[1]~11_combout\ & (\workClock|hour[7]~18_combout\ & (\disp7|decOut_n[1]~8_combout\ & 
-- !\workClock|hour[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[1]~11_combout\,
	datab => \workClock|hour[7]~18_combout\,
	datac => \disp7|decOut_n[1]~8_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[1]~56_combout\);

-- Location: LCCOMB_X101_Y38_N28
\disp7|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~7_combout\ = (!\workClock|hour[4]~2_combout\ & (\workClock|hour[7]~18_combout\ $ (!\workClock|hour[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[7]~18_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X101_Y38_N18
\disp7|decOut_n[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~9_combout\ = (\disp7|decOut_n[1]~7_combout\ & ((\disp7|decOut_n[1]~8_combout\) # ((!\workClock|hour[2]~10_combout\ & \workClock|hour[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[2]~10_combout\,
	datab => \disp7|decOut_n[1]~8_combout\,
	datac => \workClock|hour[6]~6_combout\,
	datad => \disp7|decOut_n[1]~7_combout\,
	combout => \disp7|decOut_n[1]~9_combout\);

-- Location: LCCOMB_X99_Y38_N10
\disp7|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n~16_combout\ = (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp7|decOut_n~16_combout\);

-- Location: LCCOMB_X98_Y38_N16
\disp7|decOut_n[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~10_combout\ = \workClock|hour[5]~14_combout\ $ (\workClock|hour[7]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[5]~14_combout\,
	datad => \workClock|hour[7]~18_combout\,
	combout => \disp7|decOut_n[1]~10_combout\);

-- Location: LCCOMB_X101_Y38_N2
\disp7|decOut_n[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~17_combout\ = (!\workClock|hour[6]~6_combout\ & (!\workClock|hour[5]~14_combout\ & ((\workClock|hour[2]~10_combout\) # (\workClock|hour[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[2]~10_combout\,
	datab => \workClock|hour[6]~6_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[1]~17_combout\);

-- Location: LCCOMB_X101_Y38_N16
\disp7|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~15_combout\ = (\workClock|hour[2]~10_combout\ & (\workClock|hour[4]~2_combout\ & (\workClock|hour[6]~6_combout\ $ (\workClock|hour[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[2]~10_combout\,
	datab => \workClock|hour[6]~6_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X101_Y38_N4
\disp7|decOut_n[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~18_combout\ = (\disp7|decOut_n[1]~10_combout\ & ((\disp7|decOut_n[1]~15_combout\) # ((\disp7|decOut_n[1]~17_combout\ & \disp7|decOut_n~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[1]~10_combout\,
	datab => \disp7|decOut_n[1]~17_combout\,
	datac => \disp7|decOut_n~16_combout\,
	datad => \disp7|decOut_n[1]~15_combout\,
	combout => \disp7|decOut_n[1]~18_combout\);

-- Location: LCCOMB_X101_Y38_N14
\disp7|decOut_n[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~19_combout\ = (\disp7|decOut_n[1]~18_combout\) # ((\disp7|decOut_n[1]~7_combout\ & ((\disp7|decOut_n~16_combout\) # (\workClock|hour[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n~16_combout\,
	datab => \disp7|decOut_n[1]~18_combout\,
	datac => \workClock|hour[6]~6_combout\,
	datad => \disp7|decOut_n[1]~7_combout\,
	combout => \disp7|decOut_n[1]~19_combout\);

-- Location: LCCOMB_X101_Y38_N30
\disp7|decOut_n[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~12_combout\ = (!\workClock|hour[4]~2_combout\ & !\workClock|hour[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[2]~10_combout\,
	combout => \disp7|decOut_n[1]~12_combout\);

-- Location: LCCOMB_X101_Y38_N0
\disp7|decOut_n[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~13_combout\ = (\disp7|decOut_n[1]~8_combout\ & (\workClock|hour[5]~14_combout\ & ((\workClock|hour[6]~6_combout\) # (!\workClock|hour[4]~2_combout\)))) # (!\disp7|decOut_n[1]~8_combout\ & (\workClock|hour[4]~2_combout\ & 
-- (\workClock|hour[6]~6_combout\ $ (\workClock|hour[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \disp7|decOut_n[1]~8_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[1]~13_combout\);

-- Location: LCCOMB_X101_Y38_N26
\disp7|decOut_n[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~14_combout\ = (\disp7|decOut_n[1]~10_combout\ & (\disp7|decOut_n[1]~8_combout\ $ (((\disp7|decOut_n[1]~13_combout\))))) # (!\disp7|decOut_n[1]~10_combout\ & (\disp7|decOut_n[1]~8_combout\ & (\disp7|decOut_n[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[1]~10_combout\,
	datab => \disp7|decOut_n[1]~8_combout\,
	datac => \disp7|decOut_n[1]~12_combout\,
	datad => \disp7|decOut_n[1]~13_combout\,
	combout => \disp7|decOut_n[1]~14_combout\);

-- Location: LCCOMB_X101_Y38_N8
\disp7|decOut_n[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~20_combout\ = (\workClock|hour[1]~22_combout\ & (((\workClock|hour[3]~26_combout\)))) # (!\workClock|hour[1]~22_combout\ & ((\workClock|hour[3]~26_combout\ & ((\disp7|decOut_n[1]~14_combout\))) # (!\workClock|hour[3]~26_combout\ & 
-- (\disp7|decOut_n[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[1]~22_combout\,
	datab => \disp7|decOut_n[1]~19_combout\,
	datac => \disp7|decOut_n[1]~14_combout\,
	datad => \workClock|hour[3]~26_combout\,
	combout => \disp7|decOut_n[1]~20_combout\);

-- Location: LCCOMB_X101_Y38_N22
\disp7|decOut_n[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~21_combout\ = (\workClock|hour[1]~22_combout\ & ((\disp7|decOut_n[1]~56_combout\) # ((\disp7|decOut_n[1]~9_combout\ & !\disp7|decOut_n[1]~20_combout\)))) # (!\workClock|hour[1]~22_combout\ & (((\disp7|decOut_n[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[1]~56_combout\,
	datab => \disp7|decOut_n[1]~9_combout\,
	datac => \disp7|decOut_n[1]~20_combout\,
	datad => \workClock|hour[1]~22_combout\,
	combout => \disp7|decOut_n[1]~21_combout\);

-- Location: LCCOMB_X97_Y38_N4
\disp7|decOut_n[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~24_combout\ = (\workClock|hour[1]~22_combout\ & (((\workClock|hour[4]~2_combout\ & !\workClock|hour[2]~10_combout\)))) # (!\workClock|hour[1]~22_combout\ & ((\workClock|hour[4]~2_combout\) # ((\disp7|decOut_n~16_combout\ & 
-- !\workClock|hour[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n~16_combout\,
	datab => \workClock|hour[1]~22_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[2]~10_combout\,
	combout => \disp7|decOut_n[2]~24_combout\);

-- Location: LCCOMB_X97_Y38_N30
\disp7|decOut_n[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~25_combout\ = (\workClock|hour[7]~18_combout\ & (((\disp7|decOut_n[1]~8_combout\)))) # (!\workClock|hour[7]~18_combout\ & (\disp7|decOut_n[2]~24_combout\ & ((!\workClock|hour[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \disp7|decOut_n[2]~24_combout\,
	datac => \disp7|decOut_n[1]~8_combout\,
	datad => \workClock|hour[6]~6_combout\,
	combout => \disp7|decOut_n[2]~25_combout\);

-- Location: LCCOMB_X97_Y38_N28
\disp7|decOut_n[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[1]~22_combout\ = (!\workClock|hour[6]~6_combout\ & ((\workClock|hour[4]~2_combout\ & (\workClock|hour[2]~10_combout\)) # (!\workClock|hour[4]~2_combout\ & ((\disp7|decOut_n~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \workClock|hour[2]~10_combout\,
	datac => \disp7|decOut_n~16_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \disp7|decOut_n[1]~22_combout\);

-- Location: LCCOMB_X97_Y38_N26
\disp7|decOut_n[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~57_combout\ = (\disp7|decOut_n~16_combout\) # ((!\workClock|hour[1]~22_combout\ & (!\workClock|hour[4]~2_combout\ & !\workClock|hour[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n~16_combout\,
	datab => \workClock|hour[1]~22_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[2]~10_combout\,
	combout => \disp7|decOut_n[2]~57_combout\);

-- Location: LCCOMB_X97_Y38_N12
\disp7|decOut_n[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~26_combout\ = (\workClock|hour[7]~18_combout\ & (((\disp7|decOut_n[2]~57_combout\ & !\workClock|hour[6]~6_combout\)))) # (!\workClock|hour[7]~18_combout\ & (\disp7|decOut_n[1]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \disp7|decOut_n[1]~22_combout\,
	datac => \disp7|decOut_n[2]~57_combout\,
	datad => \workClock|hour[6]~6_combout\,
	combout => \disp7|decOut_n[2]~26_combout\);

-- Location: LCCOMB_X97_Y38_N22
\disp7|decOut_n[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~27_combout\ = (\workClock|hour[5]~14_combout\ & (((\workClock|hour[3]~26_combout\)))) # (!\workClock|hour[5]~14_combout\ & ((\workClock|hour[3]~26_combout\ & (\disp7|decOut_n[2]~25_combout\)) # (!\workClock|hour[3]~26_combout\ & 
-- ((\disp7|decOut_n[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[2]~25_combout\,
	datab => \workClock|hour[5]~14_combout\,
	datac => \workClock|hour[3]~26_combout\,
	datad => \disp7|decOut_n[2]~26_combout\,
	combout => \disp7|decOut_n[2]~27_combout\);

-- Location: LCCOMB_X97_Y38_N8
\disp7|decOut_n[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~28_combout\ = (\workClock|hour[6]~6_combout\ & (((!\workClock|hour[7]~18_combout\ & \workClock|hour[4]~2_combout\)))) # (!\workClock|hour[6]~6_combout\ & (\disp7|decOut_n[2]~24_combout\ & (\workClock|hour[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \disp7|decOut_n[2]~24_combout\,
	datac => \workClock|hour[7]~18_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \disp7|decOut_n[2]~28_combout\);

-- Location: LCCOMB_X97_Y38_N18
\disp7|decOut_n[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~23_combout\ = (\workClock|hour[7]~18_combout\ & \disp7|decOut_n[1]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[7]~18_combout\,
	datad => \disp7|decOut_n[1]~22_combout\,
	combout => \disp7|decOut_n[2]~23_combout\);

-- Location: LCCOMB_X97_Y38_N2
\disp7|decOut_n[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[2]~29_combout\ = (\disp7|decOut_n[2]~27_combout\ & (((\disp7|decOut_n[2]~28_combout\)) # (!\workClock|hour[5]~14_combout\))) # (!\disp7|decOut_n[2]~27_combout\ & (\workClock|hour[5]~14_combout\ & ((\disp7|decOut_n[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[2]~27_combout\,
	datab => \workClock|hour[5]~14_combout\,
	datac => \disp7|decOut_n[2]~28_combout\,
	datad => \disp7|decOut_n[2]~23_combout\,
	combout => \disp7|decOut_n[2]~29_combout\);

-- Location: LCCOMB_X98_Y38_N10
\disp7|decOut_n[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~42_combout\ = (\workClock|hour[6]~6_combout\) # ((!\workClock|hour[4]~2_combout\ & (\workClock|hour[7]~18_combout\ $ (\workClock|hour[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[6]~6_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~42_combout\);

-- Location: LCCOMB_X101_Y38_N20
\disp7|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~32_combout\ = (\workClock|hour[7]~18_combout\ & !\workClock|hour[5]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[7]~18_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X97_Y38_N6
\disp7|decOut_n[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~41_combout\ = (\workClock|hour[3]~26_combout\ & ((\workClock|hour[1]~22_combout\) # ((\workClock|hour[2]~10_combout\) # (\workClock|hour[4]~2_combout\)))) # (!\workClock|hour[3]~26_combout\ & (\workClock|hour[1]~22_combout\ & 
-- (\workClock|hour[2]~10_combout\ & \workClock|hour[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[1]~22_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \disp7|decOut_n[3]~41_combout\);

-- Location: LCCOMB_X98_Y38_N24
\disp7|decOut_n[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~43_combout\ = (!\disp7|decOut_n[3]~42_combout\ & ((\disp7|decOut_n[3]~41_combout\ & (\disp7|decOut_n[3]~32_combout\ & \workClock|hour[4]~2_combout\)) # (!\disp7|decOut_n[3]~41_combout\ & ((!\workClock|hour[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[3]~42_combout\,
	datab => \disp7|decOut_n[3]~32_combout\,
	datac => \disp7|decOut_n[3]~41_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \disp7|decOut_n[3]~43_combout\);

-- Location: LCCOMB_X98_Y38_N22
\disp7|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~33_combout\ = (!\workClock|hour[7]~18_combout\ & (\workClock|hour[5]~14_combout\ & ((\workClock|hour[4]~2_combout\) # (\workClock|hour[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X98_Y38_N2
\disp7|decOut_n[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~58_combout\ = (\workClock|hour[7]~18_combout\ & (!\workClock|hour[5]~14_combout\ & (!\workClock|hour[2]~10_combout\ & \workClock|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \workClock|hour[5]~14_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \workClock|Equal2~0_combout\,
	combout => \disp7|decOut_n[3]~58_combout\);

-- Location: LCCOMB_X98_Y38_N20
\disp7|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~34_combout\ = (\disp7|decOut_n[3]~33_combout\) # ((\disp7|decOut_n[3]~58_combout\) # ((!\workClock|hour[4]~2_combout\ & \workClock|hour[3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[3]~33_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \disp7|decOut_n[3]~58_combout\,
	datad => \workClock|hour[3]~26_combout\,
	combout => \disp7|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X101_Y38_N10
\disp7|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~35_combout\ = (!\disp7|decOut_n[3]~32_combout\ & ((\workClock|hour[2]~10_combout\ & (\workClock|hour[3]~26_combout\ & !\workClock|hour[4]~2_combout\)) # (!\workClock|hour[2]~10_combout\ & (!\workClock|hour[3]~26_combout\ & 
-- \workClock|hour[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[2]~10_combout\,
	datab => \workClock|hour[3]~26_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \disp7|decOut_n[3]~32_combout\,
	combout => \disp7|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X101_Y38_N12
\disp7|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~36_combout\ = (\disp7|decOut_n[3]~35_combout\) # ((\disp7|decOut_n[1]~12_combout\ & (\workClock|hour[3]~26_combout\ $ (!\workClock|hour[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[3]~35_combout\,
	datab => \workClock|hour[3]~26_combout\,
	datac => \disp7|decOut_n[1]~12_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X98_Y38_N6
\disp7|decOut_n[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~37_combout\ = (\workClock|hour[6]~6_combout\ & ((\disp7|decOut_n[3]~34_combout\) # ((\workClock|hour[1]~22_combout\)))) # (!\workClock|hour[6]~6_combout\ & (((\disp7|decOut_n[3]~36_combout\ & !\workClock|hour[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \disp7|decOut_n[3]~34_combout\,
	datac => \disp7|decOut_n[3]~36_combout\,
	datad => \workClock|hour[1]~22_combout\,
	combout => \disp7|decOut_n[3]~37_combout\);

-- Location: LCCOMB_X98_Y38_N4
\disp7|decOut_n[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~38_combout\ = (\workClock|hour[3]~26_combout\) # ((\workClock|hour[2]~10_combout\ & ((\workClock|hour[5]~14_combout\) # (!\workClock|hour[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[7]~18_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~38_combout\);

-- Location: LCCOMB_X98_Y38_N18
\disp7|decOut_n[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~39_combout\ = (\workClock|hour[4]~2_combout\ & (!\workClock|hour[7]~18_combout\ & ((\workClock|hour[5]~14_combout\)))) # (!\workClock|hour[4]~2_combout\ & (((\disp7|decOut_n[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \disp7|decOut_n[3]~38_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~39_combout\);

-- Location: LCCOMB_X98_Y38_N26
\disp7|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~30_combout\ = (\workClock|hour[3]~26_combout\ & (!\workClock|hour[4]~2_combout\ & ((\workClock|hour[5]~14_combout\) # (!\workClock|hour[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[7]~18_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X98_Y38_N8
\disp7|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~31_combout\ = (\disp7|decOut_n[3]~30_combout\) # ((\workClock|Equal2~0_combout\ & (!\workClock|hour[2]~10_combout\ & !\disp7|decOut_n[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[3]~30_combout\,
	datab => \workClock|Equal2~0_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \disp7|decOut_n[1]~10_combout\,
	combout => \disp7|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X98_Y38_N12
\disp7|decOut_n[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~40_combout\ = (\disp7|decOut_n[3]~37_combout\ & ((\disp7|decOut_n[3]~39_combout\) # ((!\workClock|hour[1]~22_combout\)))) # (!\disp7|decOut_n[3]~37_combout\ & (((\disp7|decOut_n[3]~31_combout\ & \workClock|hour[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[3]~37_combout\,
	datab => \disp7|decOut_n[3]~39_combout\,
	datac => \disp7|decOut_n[3]~31_combout\,
	datad => \workClock|hour[1]~22_combout\,
	combout => \disp7|decOut_n[3]~40_combout\);

-- Location: LCCOMB_X99_Y38_N4
\disp7|decOut_n[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[3]~44_combout\ = (\disp7|decOut_n[3]~43_combout\ & (\disp7|decOut_n~16_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\disp7|decOut_n[3]~43_combout\ & 
-- (((\disp7|decOut_n[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n~16_combout\,
	datab => \disp7|decOut_n[3]~43_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp7|decOut_n[3]~40_combout\,
	combout => \disp7|decOut_n[3]~44_combout\);

-- Location: LCCOMB_X99_Y38_N2
\disp7|decOut_n[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[4]~45_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ 
-- & ((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp7|decOut_n[4]~45_combout\);

-- Location: LCCOMB_X99_Y38_N20
\disp7|decOut_n[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[5]~46_combout\ = (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp7|decOut_n[5]~46_combout\);

-- Location: LCCOMB_X97_Y38_N10
\disp7|decOut_n[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~52_combout\ = (!\workClock|hour[4]~2_combout\ & ((\workClock|hour[2]~10_combout\) # (\workClock|hour[3]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[2]~10_combout\,
	datac => \workClock|hour[3]~26_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \disp7|decOut_n[6]~52_combout\);

-- Location: LCCOMB_X97_Y38_N16
\disp7|decOut_n[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~51_combout\ = (\workClock|hour[3]~26_combout\ & (\workClock|hour[2]~10_combout\ & !\workClock|hour[4]~2_combout\)) # (!\workClock|hour[3]~26_combout\ & ((\workClock|hour[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[3]~26_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \disp7|decOut_n[6]~51_combout\);

-- Location: LCCOMB_X97_Y38_N0
\disp7|decOut_n[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~53_combout\ = (\workClock|hour[7]~18_combout\ & (\disp7|decOut_n[6]~52_combout\ & ((\workClock|hour[5]~14_combout\)))) # (!\workClock|hour[7]~18_combout\ & ((\workClock|hour[5]~14_combout\ & ((\disp7|decOut_n[6]~51_combout\))) # 
-- (!\workClock|hour[5]~14_combout\ & (\disp7|decOut_n[6]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[6]~52_combout\,
	datab => \disp7|decOut_n[6]~51_combout\,
	datac => \workClock|hour[7]~18_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[6]~53_combout\);

-- Location: LCCOMB_X98_Y38_N30
\disp7|decOut_n[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~47_combout\ = (\disp7|decOut_n[1]~10_combout\) # ((\workClock|hour[3]~26_combout\ & (\workClock|hour[4]~2_combout\)) # (!\workClock|hour[3]~26_combout\ & ((\workClock|hour[2]~10_combout\) # (!\workClock|hour[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \disp7|decOut_n[1]~10_combout\,
	combout => \disp7|decOut_n[6]~47_combout\);

-- Location: LCCOMB_X98_Y38_N0
\disp7|decOut_n[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~48_combout\ = (\workClock|hour[3]~26_combout\ & (!\workClock|hour[4]~2_combout\ & (\workClock|hour[7]~18_combout\ $ (!\workClock|hour[5]~14_combout\)))) # (!\workClock|hour[3]~26_combout\ & (!\workClock|hour[7]~18_combout\ & 
-- (\workClock|hour[4]~2_combout\ & \workClock|hour[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[7]~18_combout\,
	datac => \workClock|hour[4]~2_combout\,
	datad => \workClock|hour[5]~14_combout\,
	combout => \disp7|decOut_n[6]~48_combout\);

-- Location: LCCOMB_X98_Y38_N14
\disp7|decOut_n[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~49_combout\ = (\disp7|decOut_n[1]~10_combout\) # ((\workClock|hour[3]~26_combout\ & ((\workClock|hour[4]~2_combout\) # (!\workClock|hour[2]~10_combout\))) # (!\workClock|hour[3]~26_combout\ & ((\workClock|hour[2]~10_combout\) # 
-- (!\workClock|hour[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[3]~26_combout\,
	datab => \workClock|hour[4]~2_combout\,
	datac => \workClock|hour[2]~10_combout\,
	datad => \disp7|decOut_n[1]~10_combout\,
	combout => \disp7|decOut_n[6]~49_combout\);

-- Location: LCCOMB_X98_Y38_N28
\disp7|decOut_n[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~50_combout\ = (\workClock|hour[6]~6_combout\ & ((\disp7|decOut_n[6]~48_combout\) # ((\workClock|hour[1]~22_combout\)))) # (!\workClock|hour[6]~6_combout\ & (((!\disp7|decOut_n[6]~49_combout\ & !\workClock|hour[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \disp7|decOut_n[6]~48_combout\,
	datac => \disp7|decOut_n[6]~49_combout\,
	datad => \workClock|hour[1]~22_combout\,
	combout => \disp7|decOut_n[6]~50_combout\);

-- Location: LCCOMB_X99_Y38_N18
\disp7|decOut_n[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~54_combout\ = (\workClock|hour[1]~22_combout\ & ((\disp7|decOut_n[6]~50_combout\ & (\disp7|decOut_n[6]~53_combout\)) # (!\disp7|decOut_n[6]~50_combout\ & ((!\disp7|decOut_n[6]~47_combout\))))) # (!\workClock|hour[1]~22_combout\ & 
-- (((\disp7|decOut_n[6]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n[6]~53_combout\,
	datab => \disp7|decOut_n[6]~47_combout\,
	datac => \workClock|hour[1]~22_combout\,
	datad => \disp7|decOut_n[6]~50_combout\,
	combout => \disp7|decOut_n[6]~54_combout\);

-- Location: LCCOMB_X99_Y38_N0
\disp7|decOut_n[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp7|decOut_n[6]~55_combout\ = (\disp7|decOut_n[3]~43_combout\ & (((\bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\disp7|decOut_n~16_combout\))) # (!\disp7|decOut_n[3]~43_combout\ & 
-- (((\disp7|decOut_n[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp7|decOut_n~16_combout\,
	datab => \disp7|decOut_n[3]~43_combout\,
	datac => \bin2BCD|Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp7|decOut_n[6]~54_combout\,
	combout => \disp7|decOut_n[6]~55_combout\);

-- Location: LCCOMB_X101_Y39_N4
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \workClock|hour[5]~14_combout\ $ (VCC)
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\workClock|hour[5]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[5]~14_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X101_Y39_N6
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\workClock|hour[6]~6_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\workClock|hour[6]~6_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\workClock|hour[6]~6_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[6]~6_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X101_Y39_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\workClock|hour[7]~18_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\workClock|hour[7]~18_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\workClock|hour[7]~18_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X101_Y39_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X101_Y39_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X101_Y39_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\workClock|hour[7]~18_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X101_Y39_N12
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\workClock|hour[6]~6_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[6]~6_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X100_Y39_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X101_Y39_N14
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X101_Y39_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\workClock|hour[5]~14_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[5]~14_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X100_Y39_N8
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\workClock|hour[4]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[4]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X100_Y39_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\workClock|hour[4]~2_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[4]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X101_Y39_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X101_Y39_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X101_Y39_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X101_Y39_N22
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X101_Y39_N24
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X100_Y39_N10
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X101_Y39_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|hour[7]~18_combout\)) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[7]~18_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X100_Y39_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|hour[6]~6_combout\)) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[6]~6_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X100_Y39_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X101_Y39_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|hour[5]~14_combout\))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \workClock|hour[5]~14_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X100_Y39_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X99_Y39_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X100_Y39_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\workClock|hour[4]~2_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|hour[4]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X99_Y39_N16
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\workClock|hour[3]~26_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[3]~26_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X99_Y39_N18
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\workClock|hour[3]~26_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[3]~26_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X100_Y39_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X100_Y39_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X100_Y39_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X100_Y39_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X100_Y39_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X100_Y39_N22
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X100_Y39_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X97_Y39_N16
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X99_Y39_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X99_Y39_N22
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X100_Y39_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X97_Y39_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X99_Y39_N20
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\workClock|hour[4]~2_combout\))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \workClock|hour[4]~2_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X99_Y39_N12
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X99_Y39_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X99_Y39_N14
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\workClock|hour[3]~26_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[3]~26_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X99_Y39_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \workClock|hour[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \workClock|hour[2]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X99_Y39_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \workClock|hour[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \workClock|hour[2]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X98_Y39_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X98_Y39_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X98_Y39_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X98_Y39_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X98_Y39_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # (GND))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X98_Y39_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X98_Y39_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X97_Y39_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X97_Y39_N22
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~81_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~81_combout\);

-- Location: LCCOMB_X99_Y39_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X97_Y39_N12
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~82_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~82_combout\);

-- Location: LCCOMB_X97_Y39_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X97_Y39_N10
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~83_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~83_combout\);

-- Location: LCCOMB_X97_Y39_N20
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~84_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~84_combout\);

-- Location: LCCOMB_X99_Y39_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X97_Y39_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\);

-- Location: LCCOMB_X99_Y39_N10
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\workClock|hour[3]~26_combout\)) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \workClock|hour[3]~26_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X96_Y39_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\ = (\workClock|hour[2]~10_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[2]~10_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\);

-- Location: LCCOMB_X97_Y39_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X96_Y39_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79_combout\ = (\workClock|hour[1]~22_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[1]~22_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79_combout\);

-- Location: LCCOMB_X96_Y39_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\ = (\workClock|hour[1]~22_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|hour[1]~22_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X96_Y39_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~79_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X96_Y39_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X96_Y39_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X96_Y39_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~84_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~84_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X96_Y39_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~83_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~83_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X96_Y39_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~82_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~82_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X96_Y39_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\) # ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~81_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~81_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X96_Y39_N22
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X96_Y39_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\workClock|hour[1]~22_combout\))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \workClock|hour[1]~22_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\);

-- Location: LCCOMB_X96_Y39_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X96_Y39_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~77_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\);

-- Location: LCCOMB_X82_Y4_N12
\disp6|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[0]~0_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\workClock|hour[0]~30_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ $ 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\))) # (!\workClock|hour[0]~30_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X82_Y4_N22
\disp6|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[1]~1_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ $ (((\workClock|hour[0]~30_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X82_Y4_N28
\disp6|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\) # 
-- (!\workClock|hour[0]~30_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ & (!\workClock|hour[0]~30_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X82_Y4_N10
\disp6|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[3]~3_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\workClock|hour[0]~30_combout\ $ ((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\)))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & (\workClock|hour[0]~30_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X82_Y4_N4
\disp6|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[4]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & (\workClock|hour[0]~30_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\workClock|hour[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X82_Y4_N30
\disp6|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[5]~5_combout\ = (\workClock|hour[0]~30_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ $ (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\))))) # (!\workClock|hour[0]~30_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X82_Y4_N24
\disp6|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp6|decOut_n[6]~6_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & (\workClock|hour[0]~30_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ $ 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\ & (((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|hour[0]~30_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp6|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X87_Y35_N20
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \workClock|min\(5) $ (VCC)
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\workClock|min\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(5),
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X87_Y35_N22
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\workClock|min\(6) & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\workClock|min\(6) & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\workClock|min\(6) & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(6),
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X87_Y35_N24
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\workClock|min\(7) & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\workClock|min\(7) & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\workClock|min\(7) & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(7),
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X87_Y35_N26
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X87_Y35_N6
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(6),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X88_Y35_N22
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X87_Y35_N30
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X87_Y35_N8
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(5),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X88_Y35_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(4),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X88_Y35_N10
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(4),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X87_Y35_N10
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X87_Y35_N12
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X87_Y35_N14
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X88_Y35_N20
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X87_Y35_N0
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\workClock|min\(7) & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(7),
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X87_Y35_N16
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X87_Y35_N18
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y35_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X87_Y35_N28
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|min\(6)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \workClock|min\(6),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X87_Y35_N2
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|min\(5)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(5),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X86_Y35_N8
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X86_Y35_N10
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|min\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|min\(4),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X86_Y35_N16
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X86_Y35_N6
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|min\(3),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X86_Y35_N0
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|min\(3),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X86_Y35_N22
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X86_Y35_N24
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X86_Y35_N26
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X86_Y35_N28
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X86_Y35_N30
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y35_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X86_Y35_N14
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X86_Y35_N20
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\workClock|min\(4)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \workClock|min\(4),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X86_Y35_N12
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X85_Y35_N12
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X85_Y35_N10
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \workClock|min\(3),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X85_Y34_N0
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|min\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \workClock|min\(2),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X86_Y35_N18
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|min\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \workClock|min\(2),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X85_Y35_N0
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X85_Y35_N2
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X85_Y35_N4
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X85_Y35_N6
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y35_N8
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X86_Y35_N2
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X85_Y35_N14
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X85_Y35_N30
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\workClock|min\(3)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \workClock|min\(3),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X85_Y35_N26
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X85_Y36_N4
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \workClock|min\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \workClock|min\(2),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X85_Y35_N28
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X85_Y36_N30
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \workClock|min\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \workClock|min\(1),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X85_Y36_N16
\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \workClock|min\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \workClock|min\(1),
	combout => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X85_Y35_N16
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X85_Y35_N18
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X85_Y35_N20
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X85_Y35_N22
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X85_Y35_N24
\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y33_N8
\disp5|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[0]~2_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp5|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X86_Y33_N14
\disp5|decOut_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~4_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\workClock|min\(6) & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \workClock|min\(6),
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \disp5|decOut_n[1]~4_combout\);

-- Location: LCCOMB_X87_Y33_N18
\disp5|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~7_combout\ = (\workClock|min\(4) & (\workClock|min\(5) $ (\workClock|min\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datab => \workClock|min\(6),
	datac => \workClock|min\(4),
	combout => \disp5|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X87_Y33_N6
\disp5|decOut_n[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~48_combout\ = (\disp5|decOut_n[1]~7_combout\ & ((\workClock|min\(7) $ (\workClock|min\(5))))) # (!\disp5|decOut_n[1]~7_combout\ & (\disp5|decOut_n[1]~4_combout\ & (\workClock|min\(7) & !\workClock|min\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~4_combout\,
	datab => \disp5|decOut_n[1]~7_combout\,
	datac => \workClock|min\(7),
	datad => \workClock|min\(5),
	combout => \disp5|decOut_n[1]~48_combout\);

-- Location: LCCOMB_X86_Y33_N16
\disp5|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~3_combout\ = (!\workClock|min\(4) & (\workClock|min\(5) $ (!\workClock|min\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datac => \workClock|min\(4),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X87_Y33_N0
\disp5|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~5_combout\ = (\disp5|decOut_n[1]~3_combout\ & ((\disp5|decOut_n[1]~4_combout\) # ((!\workClock|min\(2) & \workClock|min\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~3_combout\,
	datab => \workClock|min\(2),
	datac => \workClock|min\(6),
	datad => \disp5|decOut_n[1]~4_combout\,
	combout => \disp5|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X85_Y33_N2
\disp5|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n~10_combout\ = (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp5|decOut_n~10_combout\);

-- Location: LCCOMB_X85_Y33_N22
\disp5|decOut_n[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~6_combout\ = \workClock|min\(5) $ (\workClock|min\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|min\(5),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[1]~6_combout\);

-- Location: LCCOMB_X85_Y33_N20
\disp5|decOut_n[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~11_combout\ = (!\workClock|min\(5) & (!\workClock|min\(6) & ((\workClock|min\(4)) # (\workClock|min\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \workClock|min\(5),
	datac => \workClock|min\(6),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[1]~11_combout\);

-- Location: LCCOMB_X85_Y33_N4
\disp5|decOut_n[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~9_combout\ = (\workClock|min\(4) & (\workClock|min\(2) & (\workClock|min\(5) $ (\workClock|min\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \workClock|min\(5),
	datac => \workClock|min\(6),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[1]~9_combout\);

-- Location: LCCOMB_X85_Y33_N6
\disp5|decOut_n[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~12_combout\ = (\disp5|decOut_n[1]~6_combout\ & ((\disp5|decOut_n[1]~9_combout\) # ((\disp5|decOut_n[1]~11_combout\ & \disp5|decOut_n~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~6_combout\,
	datab => \disp5|decOut_n[1]~11_combout\,
	datac => \disp5|decOut_n[1]~9_combout\,
	datad => \disp5|decOut_n~10_combout\,
	combout => \disp5|decOut_n[1]~12_combout\);

-- Location: LCCOMB_X86_Y33_N24
\disp5|decOut_n[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~13_combout\ = (\disp5|decOut_n[1]~12_combout\) # ((\disp5|decOut_n[1]~3_combout\ & ((\disp5|decOut_n~10_combout\) # (\workClock|min\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n~10_combout\,
	datab => \disp5|decOut_n[1]~12_combout\,
	datac => \workClock|min\(6),
	datad => \disp5|decOut_n[1]~3_combout\,
	combout => \disp5|decOut_n[1]~13_combout\);

-- Location: LCCOMB_X87_Y33_N4
\disp5|decOut_n[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~8_combout\ = (\disp5|decOut_n[1]~48_combout\) # ((\disp5|decOut_n[1]~4_combout\ & (!\workClock|min\(2) & \disp5|decOut_n[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~4_combout\,
	datab => \workClock|min\(2),
	datac => \disp5|decOut_n[1]~3_combout\,
	datad => \disp5|decOut_n[1]~48_combout\,
	combout => \disp5|decOut_n[1]~8_combout\);

-- Location: LCCOMB_X87_Y33_N26
\disp5|decOut_n[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~14_combout\ = (\workClock|min\(3) & (((\disp5|decOut_n[1]~8_combout\) # (\workClock|min\(1))))) # (!\workClock|min\(3) & (\disp5|decOut_n[1]~13_combout\ & ((!\workClock|min\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(3),
	datab => \disp5|decOut_n[1]~13_combout\,
	datac => \disp5|decOut_n[1]~8_combout\,
	datad => \workClock|min\(1),
	combout => \disp5|decOut_n[1]~14_combout\);

-- Location: LCCOMB_X87_Y33_N20
\disp5|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~15_combout\ = (\workClock|min\(1) & ((\disp5|decOut_n[1]~48_combout\) # ((\disp5|decOut_n[1]~5_combout\ & !\disp5|decOut_n[1]~14_combout\)))) # (!\workClock|min\(1) & (((\disp5|decOut_n[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~48_combout\,
	datab => \disp5|decOut_n[1]~5_combout\,
	datac => \disp5|decOut_n[1]~14_combout\,
	datad => \workClock|min\(1),
	combout => \disp5|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X87_Y33_N2
\disp5|decOut_n[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~18_combout\ = (\workClock|min\(2) & (((\workClock|min\(4) & !\workClock|min\(1))))) # (!\workClock|min\(2) & ((\workClock|min\(4)) # ((\disp5|decOut_n~10_combout\ & !\workClock|min\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(2),
	datab => \disp5|decOut_n~10_combout\,
	datac => \workClock|min\(4),
	datad => \workClock|min\(1),
	combout => \disp5|decOut_n[2]~18_combout\);

-- Location: LCCOMB_X87_Y33_N12
\disp5|decOut_n[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~23_combout\ = (\workClock|min\(7) & (\disp5|decOut_n[2]~18_combout\ & ((!\workClock|min\(6))))) # (!\workClock|min\(7) & (((\workClock|min\(4) & \workClock|min\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(7),
	datab => \disp5|decOut_n[2]~18_combout\,
	datac => \workClock|min\(4),
	datad => \workClock|min\(6),
	combout => \disp5|decOut_n[2]~23_combout\);

-- Location: LCCOMB_X87_Y33_N14
\disp5|decOut_n[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[1]~16_combout\ = (!\workClock|min\(6) & ((\workClock|min\(4) & ((\workClock|min\(2)))) # (!\workClock|min\(4) & (\disp5|decOut_n~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \disp5|decOut_n~10_combout\,
	datac => \workClock|min\(6),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[1]~16_combout\);

-- Location: LCCOMB_X87_Y33_N16
\disp5|decOut_n[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~17_combout\ = (\workClock|min\(7) & \disp5|decOut_n[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(7),
	datac => \disp5|decOut_n[1]~16_combout\,
	combout => \disp5|decOut_n[2]~17_combout\);

-- Location: LCCOMB_X87_Y33_N28
\disp5|decOut_n[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~19_combout\ = (\workClock|min\(7) & (\disp5|decOut_n[1]~4_combout\)) # (!\workClock|min\(7) & (((\disp5|decOut_n[2]~18_combout\ & !\workClock|min\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~4_combout\,
	datab => \disp5|decOut_n[2]~18_combout\,
	datac => \workClock|min\(7),
	datad => \workClock|min\(6),
	combout => \disp5|decOut_n[2]~19_combout\);

-- Location: LCCOMB_X87_Y33_N10
\disp5|decOut_n[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~20_combout\ = (\disp5|decOut_n~10_combout\) # ((!\workClock|min\(2) & (!\workClock|min\(4) & !\workClock|min\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(2),
	datab => \disp5|decOut_n~10_combout\,
	datac => \workClock|min\(4),
	datad => \workClock|min\(1),
	combout => \disp5|decOut_n[2]~20_combout\);

-- Location: LCCOMB_X87_Y33_N24
\disp5|decOut_n[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~21_combout\ = (\workClock|min\(7) & (\disp5|decOut_n[2]~20_combout\ & ((!\workClock|min\(6))))) # (!\workClock|min\(7) & (((\disp5|decOut_n[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[2]~20_combout\,
	datab => \disp5|decOut_n[1]~16_combout\,
	datac => \workClock|min\(7),
	datad => \workClock|min\(6),
	combout => \disp5|decOut_n[2]~21_combout\);

-- Location: LCCOMB_X87_Y33_N22
\disp5|decOut_n[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~22_combout\ = (\workClock|min\(5) & (((\workClock|min\(3))))) # (!\workClock|min\(5) & ((\workClock|min\(3) & (\disp5|decOut_n[2]~19_combout\)) # (!\workClock|min\(3) & ((\disp5|decOut_n[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datab => \disp5|decOut_n[2]~19_combout\,
	datac => \workClock|min\(3),
	datad => \disp5|decOut_n[2]~21_combout\,
	combout => \disp5|decOut_n[2]~22_combout\);

-- Location: LCCOMB_X87_Y33_N30
\disp5|decOut_n[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[2]~24_combout\ = (\disp5|decOut_n[2]~22_combout\ & ((\disp5|decOut_n[2]~23_combout\) # ((!\workClock|min\(5))))) # (!\disp5|decOut_n[2]~22_combout\ & (((\disp5|decOut_n[2]~17_combout\ & \workClock|min\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[2]~23_combout\,
	datab => \disp5|decOut_n[2]~17_combout\,
	datac => \disp5|decOut_n[2]~22_combout\,
	datad => \workClock|min\(5),
	combout => \disp5|decOut_n[2]~24_combout\);

-- Location: LCCOMB_X87_Y33_N8
\disp5|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~31_combout\ = (\workClock|min\(2) & ((\workClock|min\(5)) # (!\workClock|min\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datab => \workClock|min\(2),
	datac => \workClock|min\(7),
	combout => \disp5|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X86_Y33_N20
\disp5|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~32_combout\ = (\workClock|min\(4) & (\disp5|decOut_n[3]~27_combout\)) # (!\workClock|min\(4) & (((\disp5|decOut_n[3]~31_combout\) # (\workClock|min\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \disp5|decOut_n[3]~27_combout\,
	datac => \disp5|decOut_n[3]~31_combout\,
	datad => \workClock|min\(3),
	combout => \disp5|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X86_Y33_N22
\disp5|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~28_combout\ = (\workClock|min\(4) & (!\workClock|min\(5) & (\workClock|min\(7) & !\workClock|min\(3)))) # (!\workClock|min\(4) & (((\workClock|min\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datab => \workClock|min\(7),
	datac => \workClock|min\(4),
	datad => \workClock|min\(3),
	combout => \disp5|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X86_Y33_N28
\disp5|decOut_n[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~29_combout\ = (\workClock|min\(4) & ((\disp5|decOut_n[3]~27_combout\) # ((\disp5|decOut_n[3]~28_combout\ & !\workClock|min\(2))))) # (!\workClock|min\(4) & ((\disp5|decOut_n[3]~28_combout\) # ((\disp5|decOut_n[3]~27_combout\ & 
-- \workClock|min\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \disp5|decOut_n[3]~27_combout\,
	datac => \disp5|decOut_n[3]~28_combout\,
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[3]~29_combout\);

-- Location: LCCOMB_X86_Y33_N8
\disp5|decOut_n[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~49_combout\ = (\workClock|min\(5) & (\workClock|min\(2) $ ((\workClock|min\(4))))) # (!\workClock|min\(5) & ((\workClock|min\(2) & (!\workClock|min\(4) & !\workClock|min\(7))) # (!\workClock|min\(2) & ((!\workClock|min\(7)) # 
-- (!\workClock|min\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datab => \workClock|min\(2),
	datac => \workClock|min\(4),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[3]~49_combout\);

-- Location: LCCOMB_X86_Y33_N6
\disp5|decOut_n[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~50_combout\ = (\disp5|decOut_n[3]~49_combout\ & ((\workClock|min\(3) $ (!\workClock|min\(2))))) # (!\disp5|decOut_n[3]~49_combout\ & (\workClock|min\(5) & (\workClock|min\(3) & !\workClock|min\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datab => \disp5|decOut_n[3]~49_combout\,
	datac => \workClock|min\(3),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[3]~50_combout\);

-- Location: LCCOMB_X86_Y33_N26
\disp5|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~30_combout\ = (\workClock|min\(1) & (((\workClock|min\(6))))) # (!\workClock|min\(1) & ((\workClock|min\(6) & (\disp5|decOut_n[3]~29_combout\)) # (!\workClock|min\(6) & ((\disp5|decOut_n[3]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(1),
	datab => \disp5|decOut_n[3]~29_combout\,
	datac => \workClock|min\(6),
	datad => \disp5|decOut_n[3]~50_combout\,
	combout => \disp5|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X86_Y33_N30
\disp5|decOut_n[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~25_combout\ = (\workClock|min\(7) & ((!\workClock|min\(5)))) # (!\workClock|min\(7) & (!\workClock|min\(3) & \workClock|min\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(3),
	datab => \workClock|min\(7),
	datad => \workClock|min\(5),
	combout => \disp5|decOut_n[3]~25_combout\);

-- Location: LCCOMB_X86_Y33_N12
\disp5|decOut_n[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~26_combout\ = (!\disp5|decOut_n[3]~25_combout\ & ((\workClock|min\(4) & (!\workClock|min\(2) & !\workClock|min\(3))) # (!\workClock|min\(4) & ((\workClock|min\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \workClock|min\(2),
	datac => \disp5|decOut_n[3]~25_combout\,
	datad => \workClock|min\(3),
	combout => \disp5|decOut_n[3]~26_combout\);

-- Location: LCCOMB_X86_Y33_N2
\disp5|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~33_combout\ = (\workClock|min\(1) & ((\disp5|decOut_n[3]~30_combout\ & (\disp5|decOut_n[3]~32_combout\)) # (!\disp5|decOut_n[3]~30_combout\ & ((\disp5|decOut_n[3]~26_combout\))))) # (!\workClock|min\(1) & 
-- (((\disp5|decOut_n[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(1),
	datab => \disp5|decOut_n[3]~32_combout\,
	datac => \disp5|decOut_n[3]~30_combout\,
	datad => \disp5|decOut_n[3]~26_combout\,
	combout => \disp5|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X86_Y33_N0
\disp5|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~34_combout\ = (!\workClock|min\(5) & (\workClock|min\(4) & \workClock|min\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(5),
	datac => \workClock|min\(4),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X86_Y33_N10
\disp5|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~35_combout\ = (\workClock|min\(3) & ((\disp5|decOut_n[3]~34_combout\) # ((\workClock|min\(1)) # (\workClock|min\(2))))) # (!\workClock|min\(3) & (\disp5|decOut_n[3]~34_combout\ & (\workClock|min\(1) & \workClock|min\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(3),
	datab => \disp5|decOut_n[3]~34_combout\,
	datac => \workClock|min\(1),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X86_Y33_N4
\disp5|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~36_combout\ = (!\workClock|min\(6) & ((\disp5|decOut_n[3]~35_combout\ & (\disp5|decOut_n[3]~34_combout\)) # (!\disp5|decOut_n[3]~35_combout\ & ((\disp5|decOut_n[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[3]~35_combout\,
	datab => \disp5|decOut_n[3]~34_combout\,
	datac => \workClock|min\(6),
	datad => \disp5|decOut_n[1]~3_combout\,
	combout => \disp5|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X85_Y33_N28
\disp5|decOut_n[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[3]~37_combout\ = (\disp5|decOut_n[3]~36_combout\ & (((\disp5|decOut_n~10_combout\ & !\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # (!\disp5|decOut_n[3]~36_combout\ & (\disp5|decOut_n[3]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[3]~33_combout\,
	datab => \disp5|decOut_n~10_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp5|decOut_n[3]~36_combout\,
	combout => \disp5|decOut_n[3]~37_combout\);

-- Location: LCCOMB_X85_Y33_N26
\disp5|decOut_n[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[4]~38_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp5|decOut_n[4]~38_combout\);

-- Location: LCCOMB_X85_Y33_N16
\disp5|decOut_n[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[5]~39_combout\ = (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & (!\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp5|decOut_n[5]~39_combout\);

-- Location: LCCOMB_X85_Y33_N12
\disp5|decOut_n[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~41_combout\ = (\workClock|min\(4) & (!\workClock|min\(3) & (\workClock|min\(5) & !\workClock|min\(7)))) # (!\workClock|min\(4) & (\workClock|min\(3) & (\workClock|min\(5) $ (!\workClock|min\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \workClock|min\(3),
	datac => \workClock|min\(5),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[6]~41_combout\);

-- Location: LCCOMB_X85_Y33_N18
\disp5|decOut_n[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~42_combout\ = (\disp5|decOut_n[1]~6_combout\) # ((\workClock|min\(4) & ((\workClock|min\(3)) # (\workClock|min\(2)))) # (!\workClock|min\(4) & ((!\workClock|min\(2)) # (!\workClock|min\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~6_combout\,
	datab => \workClock|min\(4),
	datac => \workClock|min\(3),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[6]~42_combout\);

-- Location: LCCOMB_X85_Y33_N24
\disp5|decOut_n[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~43_combout\ = (\workClock|min\(6) & ((\disp5|decOut_n[6]~41_combout\) # ((\workClock|min\(1))))) # (!\workClock|min\(6) & (((!\workClock|min\(1) & !\disp5|decOut_n[6]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[6]~41_combout\,
	datab => \workClock|min\(6),
	datac => \workClock|min\(1),
	datad => \disp5|decOut_n[6]~42_combout\,
	combout => \disp5|decOut_n[6]~43_combout\);

-- Location: LCCOMB_X85_Y33_N30
\disp5|decOut_n[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~40_combout\ = (\disp5|decOut_n[1]~6_combout\) # ((\workClock|min\(4) & ((\workClock|min\(3)) # (\workClock|min\(2)))) # (!\workClock|min\(4) & (!\workClock|min\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[1]~6_combout\,
	datab => \workClock|min\(4),
	datac => \workClock|min\(3),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[6]~40_combout\);

-- Location: LCCOMB_X85_Y33_N10
\disp5|decOut_n[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~44_combout\ = (\workClock|min\(5) & ((\workClock|min\(4) & (!\workClock|min\(3) & !\workClock|min\(7))) # (!\workClock|min\(4) & (\workClock|min\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datab => \workClock|min\(3),
	datac => \workClock|min\(5),
	datad => \workClock|min\(7),
	combout => \disp5|decOut_n[6]~44_combout\);

-- Location: LCCOMB_X86_Y33_N18
\disp5|decOut_n[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~45_combout\ = (\workClock|min\(2) & ((\disp5|decOut_n[6]~44_combout\) # ((\disp5|decOut_n[1]~3_combout\)))) # (!\workClock|min\(2) & ((\workClock|min\(3) & ((\disp5|decOut_n[1]~3_combout\))) # (!\workClock|min\(3) & 
-- (\disp5|decOut_n[6]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[6]~44_combout\,
	datab => \disp5|decOut_n[1]~3_combout\,
	datac => \workClock|min\(3),
	datad => \workClock|min\(2),
	combout => \disp5|decOut_n[6]~45_combout\);

-- Location: LCCOMB_X85_Y33_N0
\disp5|decOut_n[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~46_combout\ = (\workClock|min\(1) & ((\disp5|decOut_n[6]~43_combout\ & ((\disp5|decOut_n[6]~45_combout\))) # (!\disp5|decOut_n[6]~43_combout\ & (!\disp5|decOut_n[6]~40_combout\)))) # (!\workClock|min\(1) & 
-- (\disp5|decOut_n[6]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(1),
	datab => \disp5|decOut_n[6]~43_combout\,
	datac => \disp5|decOut_n[6]~40_combout\,
	datad => \disp5|decOut_n[6]~45_combout\,
	combout => \disp5|decOut_n[6]~46_combout\);

-- Location: LCCOMB_X85_Y33_N14
\disp5|decOut_n[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp5|decOut_n[6]~47_combout\ = (\disp5|decOut_n[3]~36_combout\ & (((\bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\disp5|decOut_n~10_combout\))) # (!\disp5|decOut_n[3]~36_combout\ & 
-- (((\disp5|decOut_n[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp5|decOut_n[3]~36_combout\,
	datab => \disp5|decOut_n~10_combout\,
	datac => \bin2BCD|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp5|decOut_n[6]~46_combout\,
	combout => \disp5|decOut_n[6]~47_combout\);

-- Location: LCCOMB_X88_Y36_N24
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \workClock|min\(5) $ (VCC)
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\workClock|min\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(5),
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X88_Y36_N26
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\workClock|min\(6) & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\workClock|min\(6) & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\workClock|min\(6) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(6),
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X88_Y36_N28
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\workClock|min\(7) & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\workClock|min\(7) & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\workClock|min\(7) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(7),
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X88_Y36_N30
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X88_Y36_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X88_Y36_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(7),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X88_Y36_N14
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X88_Y36_N20
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(6),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X88_Y36_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|min\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|min\(5),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X88_Y36_N22
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X88_Y36_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\workClock|min\(4) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X88_Y36_N18
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\workClock|min\(4) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(4),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X89_Y36_N0
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X89_Y36_N2
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X89_Y36_N4
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X89_Y36_N6
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X89_Y36_N8
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X88_Y36_N10
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|min\(7)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|min\(7),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X90_Y36_N24
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X88_Y36_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|min\(6)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \workClock|min\(6),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X89_Y36_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X88_Y36_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X88_Y36_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|min\(5)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|min\(5),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X90_Y36_N20
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X90_Y36_N22
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|min\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|min\(4),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X90_Y36_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|min\(3),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X90_Y36_N10
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \workClock|min\(3),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X89_Y36_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X89_Y36_N16
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X89_Y36_N18
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X89_Y36_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X89_Y36_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X89_Y36_N24
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X89_Y36_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X90_Y35_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X89_Y36_N10
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X90_Y35_N10
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X90_Y35_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X89_Y36_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X90_Y36_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X90_Y36_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\workClock|min\(4)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \workClock|min\(4),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X90_Y34_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\workClock|min\(3) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|min\(3),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X90_Y36_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X88_Y35_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \workClock|min\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \workClock|min\(2),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X88_Y35_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \workClock|min\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \workClock|min\(2),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X90_Y35_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X90_Y35_N16
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X90_Y35_N18
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X90_Y35_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X90_Y35_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X90_Y35_N24
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X90_Y35_N26
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X89_Y35_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\);

-- Location: LCCOMB_X90_Y35_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X90_Y35_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\);

-- Location: LCCOMB_X90_Y35_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X90_Y35_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X89_Y35_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\);

-- Location: LCCOMB_X89_Y35_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\);

-- Location: LCCOMB_X90_Y36_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X89_Y36_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\workClock|min\(3)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \workClock|min\(3),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X89_Y35_N24
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\);

-- Location: LCCOMB_X88_Y35_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \workClock|min\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \workClock|min\(2),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\);

-- Location: LCCOMB_X89_Y35_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X88_Y35_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\ = (\workClock|min\(1) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(1),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X88_Y35_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\ = (\workClock|min\(1) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|min\(1),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\);

-- Location: LCCOMB_X89_Y35_N8
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X89_Y35_N10
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X89_Y35_N12
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X89_Y35_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y35_N16
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X89_Y35_N18
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X89_Y35_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X89_Y35_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X89_Y35_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X89_Y35_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\);

-- Location: LCCOMB_X89_Y35_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\workClock|min\(1)))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \workClock|min\(1),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\);

-- Location: LCCOMB_X85_Y4_N4
\disp4|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[0]~0_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & 
-- \workClock|min\(0))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ $ (\workClock|min\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X85_Y4_N2
\disp4|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[1]~1_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ $ (((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- \workClock|min\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X85_Y4_N20
\disp4|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\) # 
-- (!\workClock|min\(0))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & 
-- !\workClock|min\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X85_Y4_N22
\disp4|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[3]~3_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ $ (!\workClock|min\(0))))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\)) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & \workClock|min\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X85_Y4_N28
\disp4|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[4]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & ((\workClock|min\(0))))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\)) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\workClock|min\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X85_Y4_N26
\disp4|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[5]~5_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\workClock|min\(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ $ 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\) # (\workClock|min\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X85_Y4_N12
\disp4|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp4|decOut_n[6]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & (\workClock|min\(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ $ 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datad => \workClock|min\(0),
	combout => \disp4|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X100_Y25_N24
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \workClock|sec\(5) $ (VCC)
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\workClock|sec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(5),
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X100_Y25_N26
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\workClock|sec\(6) & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\workClock|sec\(6) & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\workClock|sec\(6) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X100_Y25_N28
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\workClock|sec\(7) & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\workClock|sec\(7) & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\workClock|sec\(7) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(7),
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X100_Y25_N30
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X100_Y25_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X100_Y24_N20
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|sec\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|sec\(7),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X100_Y24_N22
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|sec\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|sec\(6),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X100_Y24_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X100_Y24_N26
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X100_Y24_N28
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|sec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|sec\(5),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X100_Y24_N30
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\workClock|sec\(4) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(4),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X100_Y24_N0
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\workClock|sec\(4) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(4),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X100_Y24_N6
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X100_Y24_N8
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X100_Y24_N10
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X100_Y24_N12
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X100_Y24_N14
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X100_Y24_N16
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X100_Y24_N18
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|sec\(6))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X101_Y24_N12
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X100_Y24_N24
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|sec\(5)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \workClock|sec\(5),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X101_Y24_N10
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\workClock|sec\(4) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|sec\(4),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X101_Y24_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X101_Y24_N26
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|sec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|sec\(3),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X101_Y24_N28
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|sec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|sec\(3),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X101_Y24_N14
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X101_Y24_N16
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X101_Y24_N18
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X101_Y24_N20
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X101_Y24_N22
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X101_Y24_N0
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X101_Y24_N6
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X102_Y24_N4
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X101_Y24_N24
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\workClock|sec\(4))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \workClock|sec\(4),
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X102_Y24_N26
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|sec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \workClock|sec\(3),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X102_Y24_N0
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X102_Y24_N28
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|sec\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \workClock|sec\(2),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X102_Y24_N2
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \workClock|sec\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \workClock|sec\(2),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X102_Y24_N16
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X102_Y24_N18
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X102_Y24_N20
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\)))))
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X102_Y24_N22
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X102_Y24_N24
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X102_Y24_N8
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X102_Y24_N6
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X102_Y24_N12
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X102_Y24_N30
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\workClock|sec\(3)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \workClock|sec\(3),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X102_Y24_N14
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \workClock|sec\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \workClock|sec\(2),
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X103_Y24_N16
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X103_Y24_N10
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\workClock|sec\(1) & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|sec\(1),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X103_Y24_N8
\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\workClock|sec\(1) & !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|sec\(1),
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: LCCOMB_X103_Y24_N20
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X103_Y24_N22
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X103_Y24_N24
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X103_Y24_N26
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X103_Y24_N28
\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X105_Y24_N0
\disp3|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[0]~2_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ $ (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp3|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X106_Y24_N10
\disp3|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~7_combout\ = (\workClock|sec\(4) & (\workClock|sec\(6) $ (\workClock|sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \workClock|sec\(5),
	datad => \workClock|sec\(4),
	combout => \disp3|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X105_Y24_N6
\disp3|decOut_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~4_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\workClock|sec\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \workClock|sec\(6),
	combout => \disp3|decOut_n[1]~4_combout\);

-- Location: LCCOMB_X106_Y24_N18
\disp3|decOut_n[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~48_combout\ = (\disp3|decOut_n[1]~7_combout\ & (\workClock|sec\(7) $ (((\workClock|sec\(5)))))) # (!\disp3|decOut_n[1]~7_combout\ & (\workClock|sec\(7) & (\disp3|decOut_n[1]~4_combout\ & !\workClock|sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[1]~7_combout\,
	datab => \workClock|sec\(7),
	datac => \disp3|decOut_n[1]~4_combout\,
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[1]~48_combout\);

-- Location: LCCOMB_X106_Y24_N12
\disp3|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~3_combout\ = (!\workClock|sec\(4) & (\workClock|sec\(7) $ (!\workClock|sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datab => \workClock|sec\(7),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X106_Y24_N4
\disp3|decOut_n[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~8_combout\ = (\disp3|decOut_n[1]~48_combout\) # ((!\workClock|sec\(2) & (\disp3|decOut_n[1]~4_combout\ & \disp3|decOut_n[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \disp3|decOut_n[1]~48_combout\,
	datac => \disp3|decOut_n[1]~4_combout\,
	datad => \disp3|decOut_n[1]~3_combout\,
	combout => \disp3|decOut_n[1]~8_combout\);

-- Location: LCCOMB_X106_Y24_N20
\disp3|decOut_n[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~11_combout\ = (!\workClock|sec\(5) & (!\workClock|sec\(6) & ((\workClock|sec\(4)) # (\workClock|sec\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datab => \workClock|sec\(5),
	datac => \workClock|sec\(6),
	datad => \workClock|sec\(2),
	combout => \disp3|decOut_n[1]~11_combout\);

-- Location: LCCOMB_X105_Y24_N24
\disp3|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n~10_combout\ = (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \disp3|decOut_n~10_combout\);

-- Location: LCCOMB_X106_Y24_N22
\disp3|decOut_n[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~9_combout\ = (\workClock|sec\(4) & (\workClock|sec\(2) & (\workClock|sec\(5) $ (\workClock|sec\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datab => \workClock|sec\(5),
	datac => \workClock|sec\(6),
	datad => \workClock|sec\(2),
	combout => \disp3|decOut_n[1]~9_combout\);

-- Location: LCCOMB_X106_Y24_N28
\disp3|decOut_n[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~6_combout\ = \workClock|sec\(7) $ (\workClock|sec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|sec\(7),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[1]~6_combout\);

-- Location: LCCOMB_X106_Y24_N30
\disp3|decOut_n[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~12_combout\ = (\disp3|decOut_n[1]~6_combout\ & ((\disp3|decOut_n[1]~9_combout\) # ((\disp3|decOut_n[1]~11_combout\ & \disp3|decOut_n~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[1]~11_combout\,
	datab => \disp3|decOut_n~10_combout\,
	datac => \disp3|decOut_n[1]~9_combout\,
	datad => \disp3|decOut_n[1]~6_combout\,
	combout => \disp3|decOut_n[1]~12_combout\);

-- Location: LCCOMB_X106_Y24_N16
\disp3|decOut_n[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~13_combout\ = (\disp3|decOut_n[1]~12_combout\) # ((\disp3|decOut_n[1]~3_combout\ & ((\disp3|decOut_n~10_combout\) # (\workClock|sec\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[1]~12_combout\,
	datab => \disp3|decOut_n~10_combout\,
	datac => \workClock|sec\(6),
	datad => \disp3|decOut_n[1]~3_combout\,
	combout => \disp3|decOut_n[1]~13_combout\);

-- Location: LCCOMB_X106_Y24_N14
\disp3|decOut_n[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~14_combout\ = (\workClock|sec\(1) & (\workClock|sec\(3))) # (!\workClock|sec\(1) & ((\workClock|sec\(3) & (\disp3|decOut_n[1]~8_combout\)) # (!\workClock|sec\(3) & ((\disp3|decOut_n[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(1),
	datab => \workClock|sec\(3),
	datac => \disp3|decOut_n[1]~8_combout\,
	datad => \disp3|decOut_n[1]~13_combout\,
	combout => \disp3|decOut_n[1]~14_combout\);

-- Location: LCCOMB_X106_Y24_N26
\disp3|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~5_combout\ = (\disp3|decOut_n[1]~3_combout\ & ((\disp3|decOut_n[1]~4_combout\) # ((!\workClock|sec\(2) & \workClock|sec\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \disp3|decOut_n[1]~4_combout\,
	datac => \workClock|sec\(6),
	datad => \disp3|decOut_n[1]~3_combout\,
	combout => \disp3|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X106_Y24_N0
\disp3|decOut_n[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~15_combout\ = (\workClock|sec\(1) & ((\disp3|decOut_n[1]~48_combout\) # ((!\disp3|decOut_n[1]~14_combout\ & \disp3|decOut_n[1]~5_combout\)))) # (!\workClock|sec\(1) & (\disp3|decOut_n[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(1),
	datab => \disp3|decOut_n[1]~14_combout\,
	datac => \disp3|decOut_n[1]~5_combout\,
	datad => \disp3|decOut_n[1]~48_combout\,
	combout => \disp3|decOut_n[1]~15_combout\);

-- Location: LCCOMB_X105_Y24_N10
\disp3|decOut_n[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~18_combout\ = (\workClock|sec\(2) & (\workClock|sec\(4) & (!\workClock|sec\(1)))) # (!\workClock|sec\(2) & ((\workClock|sec\(4)) # ((!\workClock|sec\(1) & \disp3|decOut_n~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \workClock|sec\(4),
	datac => \workClock|sec\(1),
	datad => \disp3|decOut_n~10_combout\,
	combout => \disp3|decOut_n[2]~18_combout\);

-- Location: LCCOMB_X105_Y24_N12
\disp3|decOut_n[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~23_combout\ = (\workClock|sec\(6) & (!\workClock|sec\(7) & (\workClock|sec\(4)))) # (!\workClock|sec\(6) & (\workClock|sec\(7) & ((\disp3|decOut_n[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \workClock|sec\(7),
	datac => \workClock|sec\(4),
	datad => \disp3|decOut_n[2]~18_combout\,
	combout => \disp3|decOut_n[2]~23_combout\);

-- Location: LCCOMB_X105_Y24_N30
\disp3|decOut_n[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[1]~16_combout\ = (!\workClock|sec\(6) & ((\workClock|sec\(4) & (\workClock|sec\(2))) # (!\workClock|sec\(4) & ((\disp3|decOut_n~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \workClock|sec\(2),
	datac => \workClock|sec\(4),
	datad => \disp3|decOut_n~10_combout\,
	combout => \disp3|decOut_n[1]~16_combout\);

-- Location: LCCOMB_X105_Y24_N14
\disp3|decOut_n[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~20_combout\ = (\disp3|decOut_n~10_combout\) # ((!\workClock|sec\(2) & (!\workClock|sec\(4) & !\workClock|sec\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \workClock|sec\(4),
	datac => \workClock|sec\(1),
	datad => \disp3|decOut_n~10_combout\,
	combout => \disp3|decOut_n[2]~20_combout\);

-- Location: LCCOMB_X105_Y24_N16
\disp3|decOut_n[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~21_combout\ = (\workClock|sec\(7) & (((\disp3|decOut_n[2]~20_combout\ & !\workClock|sec\(6))))) # (!\workClock|sec\(7) & (\disp3|decOut_n[1]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[1]~16_combout\,
	datab => \workClock|sec\(7),
	datac => \disp3|decOut_n[2]~20_combout\,
	datad => \workClock|sec\(6),
	combout => \disp3|decOut_n[2]~21_combout\);

-- Location: LCCOMB_X105_Y24_N4
\disp3|decOut_n[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~19_combout\ = (\workClock|sec\(7) & (((\disp3|decOut_n[1]~4_combout\)))) # (!\workClock|sec\(7) & (\disp3|decOut_n[2]~18_combout\ & (!\workClock|sec\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[2]~18_combout\,
	datab => \workClock|sec\(6),
	datac => \workClock|sec\(7),
	datad => \disp3|decOut_n[1]~4_combout\,
	combout => \disp3|decOut_n[2]~19_combout\);

-- Location: LCCOMB_X105_Y24_N2
\disp3|decOut_n[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~22_combout\ = (\workClock|sec\(5) & (((\workClock|sec\(3))))) # (!\workClock|sec\(5) & ((\workClock|sec\(3) & ((\disp3|decOut_n[2]~19_combout\))) # (!\workClock|sec\(3) & (\disp3|decOut_n[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(5),
	datab => \disp3|decOut_n[2]~21_combout\,
	datac => \disp3|decOut_n[2]~19_combout\,
	datad => \workClock|sec\(3),
	combout => \disp3|decOut_n[2]~22_combout\);

-- Location: LCCOMB_X105_Y24_N28
\disp3|decOut_n[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~17_combout\ = (\disp3|decOut_n[1]~16_combout\ & \workClock|sec\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[1]~16_combout\,
	datac => \workClock|sec\(7),
	combout => \disp3|decOut_n[2]~17_combout\);

-- Location: LCCOMB_X105_Y24_N26
\disp3|decOut_n[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[2]~24_combout\ = (\disp3|decOut_n[2]~22_combout\ & ((\disp3|decOut_n[2]~23_combout\) # ((!\workClock|sec\(5))))) # (!\disp3|decOut_n[2]~22_combout\ & (((\workClock|sec\(5) & \disp3|decOut_n[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[2]~23_combout\,
	datab => \disp3|decOut_n[2]~22_combout\,
	datac => \workClock|sec\(5),
	datad => \disp3|decOut_n[2]~17_combout\,
	combout => \disp3|decOut_n[2]~24_combout\);

-- Location: LCCOMB_X105_Y26_N14
\disp3|decOut_n[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~34_combout\ = (\workClock|sec\(7) & (\workClock|sec\(4) & !\workClock|sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \workClock|sec\(7),
	datac => \workClock|sec\(4),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[3]~34_combout\);

-- Location: LCCOMB_X105_Y26_N28
\disp3|decOut_n[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~35_combout\ = (\workClock|sec\(2) & ((\workClock|sec\(3)) # ((\disp3|decOut_n[3]~34_combout\ & \workClock|sec\(1))))) # (!\workClock|sec\(2) & (\workClock|sec\(3) & ((\disp3|decOut_n[3]~34_combout\) # (\workClock|sec\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \disp3|decOut_n[3]~34_combout\,
	datac => \workClock|sec\(3),
	datad => \workClock|sec\(1),
	combout => \disp3|decOut_n[3]~35_combout\);

-- Location: LCCOMB_X105_Y26_N26
\disp3|decOut_n[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~36_combout\ = (!\workClock|sec\(6) & ((\disp3|decOut_n[3]~35_combout\ & ((\disp3|decOut_n[3]~34_combout\))) # (!\disp3|decOut_n[3]~35_combout\ & (\disp3|decOut_n[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[1]~3_combout\,
	datab => \workClock|sec\(6),
	datac => \disp3|decOut_n[3]~34_combout\,
	datad => \disp3|decOut_n[3]~35_combout\,
	combout => \disp3|decOut_n[3]~36_combout\);

-- Location: LCCOMB_X105_Y26_N4
\disp3|decOut_n[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~31_combout\ = (\workClock|sec\(2) & ((\workClock|sec\(5)) # (!\workClock|sec\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \workClock|sec\(5),
	datac => \workClock|sec\(7),
	combout => \disp3|decOut_n[3]~31_combout\);

-- Location: LCCOMB_X105_Y26_N10
\disp3|decOut_n[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~32_combout\ = (\workClock|sec\(4) & (((\disp3|decOut_n[3]~27_combout\)))) # (!\workClock|sec\(4) & ((\workClock|sec\(3)) # ((\disp3|decOut_n[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(3),
	datab => \disp3|decOut_n[3]~31_combout\,
	datac => \workClock|sec\(4),
	datad => \disp3|decOut_n[3]~27_combout\,
	combout => \disp3|decOut_n[3]~32_combout\);

-- Location: LCCOMB_X105_Y26_N12
\disp3|decOut_n[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~49_combout\ = (\workClock|sec\(2) & (!\workClock|sec\(4) & ((\workClock|sec\(5)) # (!\workClock|sec\(7))))) # (!\workClock|sec\(2) & ((\workClock|sec\(4) & ((\workClock|sec\(5)) # (!\workClock|sec\(7)))) # (!\workClock|sec\(4) & 
-- ((!\workClock|sec\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \workClock|sec\(7),
	datac => \workClock|sec\(4),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[3]~49_combout\);

-- Location: LCCOMB_X105_Y26_N6
\disp3|decOut_n[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~50_combout\ = (\disp3|decOut_n[3]~49_combout\ & (\workClock|sec\(3) $ (((!\workClock|sec\(2)))))) # (!\disp3|decOut_n[3]~49_combout\ & (\workClock|sec\(3) & (\workClock|sec\(5) & !\workClock|sec\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(3),
	datab => \workClock|sec\(5),
	datac => \workClock|sec\(2),
	datad => \disp3|decOut_n[3]~49_combout\,
	combout => \disp3|decOut_n[3]~50_combout\);

-- Location: LCCOMB_X105_Y26_N2
\disp3|decOut_n[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~28_combout\ = (\workClock|sec\(3) & (((!\workClock|sec\(4))))) # (!\workClock|sec\(3) & (\workClock|sec\(7) & (\workClock|sec\(4) & !\workClock|sec\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(3),
	datab => \workClock|sec\(7),
	datac => \workClock|sec\(4),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[3]~28_combout\);

-- Location: LCCOMB_X105_Y26_N8
\disp3|decOut_n[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~29_combout\ = (\workClock|sec\(2) & ((\disp3|decOut_n[3]~27_combout\) # ((\disp3|decOut_n[3]~28_combout\ & !\workClock|sec\(4))))) # (!\workClock|sec\(2) & ((\disp3|decOut_n[3]~28_combout\) # ((\workClock|sec\(4) & 
-- \disp3|decOut_n[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \disp3|decOut_n[3]~28_combout\,
	datac => \workClock|sec\(4),
	datad => \disp3|decOut_n[3]~27_combout\,
	combout => \disp3|decOut_n[3]~29_combout\);

-- Location: LCCOMB_X105_Y26_N30
\disp3|decOut_n[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~30_combout\ = (\workClock|sec\(6) & (((\disp3|decOut_n[3]~29_combout\) # (\workClock|sec\(1))))) # (!\workClock|sec\(6) & (\disp3|decOut_n[3]~50_combout\ & ((!\workClock|sec\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[3]~50_combout\,
	datab => \workClock|sec\(6),
	datac => \disp3|decOut_n[3]~29_combout\,
	datad => \workClock|sec\(1),
	combout => \disp3|decOut_n[3]~30_combout\);

-- Location: LCCOMB_X105_Y26_N24
\disp3|decOut_n[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~25_combout\ = (\workClock|sec\(5) & (!\workClock|sec\(3) & !\workClock|sec\(7))) # (!\workClock|sec\(5) & ((\workClock|sec\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(3),
	datab => \workClock|sec\(5),
	datac => \workClock|sec\(7),
	combout => \disp3|decOut_n[3]~25_combout\);

-- Location: LCCOMB_X105_Y26_N18
\disp3|decOut_n[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~26_combout\ = (!\disp3|decOut_n[3]~25_combout\ & ((\workClock|sec\(4) & (!\workClock|sec\(2) & !\workClock|sec\(3))) # (!\workClock|sec\(4) & ((\workClock|sec\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \workClock|sec\(4),
	datac => \workClock|sec\(3),
	datad => \disp3|decOut_n[3]~25_combout\,
	combout => \disp3|decOut_n[3]~26_combout\);

-- Location: LCCOMB_X105_Y26_N20
\disp3|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~33_combout\ = (\workClock|sec\(1) & ((\disp3|decOut_n[3]~30_combout\ & (\disp3|decOut_n[3]~32_combout\)) # (!\disp3|decOut_n[3]~30_combout\ & ((\disp3|decOut_n[3]~26_combout\))))) # (!\workClock|sec\(1) & 
-- (((\disp3|decOut_n[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[3]~32_combout\,
	datab => \workClock|sec\(1),
	datac => \disp3|decOut_n[3]~30_combout\,
	datad => \disp3|decOut_n[3]~26_combout\,
	combout => \disp3|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X105_Y24_N8
\disp3|decOut_n[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[3]~37_combout\ = (\disp3|decOut_n[3]~36_combout\ & (\disp3|decOut_n~10_combout\ & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\disp3|decOut_n[3]~36_combout\ & 
-- (((\disp3|decOut_n[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[3]~36_combout\,
	datab => \disp3|decOut_n~10_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp3|decOut_n[3]~33_combout\,
	combout => \disp3|decOut_n[3]~37_combout\);

-- Location: LCCOMB_X105_Y24_N18
\disp3|decOut_n[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[4]~38_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \disp3|decOut_n[4]~38_combout\);

-- Location: LCCOMB_X102_Y24_N10
\disp3|decOut_n[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[5]~39_combout\ = (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & (!\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \disp3|decOut_n[5]~39_combout\);

-- Location: LCCOMB_X106_Y24_N6
\disp3|decOut_n[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~40_combout\ = (\disp3|decOut_n[1]~6_combout\) # ((\workClock|sec\(3) & ((\workClock|sec\(4)))) # (!\workClock|sec\(3) & ((\workClock|sec\(2)) # (!\workClock|sec\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \disp3|decOut_n[1]~6_combout\,
	datac => \workClock|sec\(3),
	datad => \workClock|sec\(4),
	combout => \disp3|decOut_n[6]~40_combout\);

-- Location: LCCOMB_X105_Y26_N0
\disp3|decOut_n[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~44_combout\ = (\workClock|sec\(5) & ((\workClock|sec\(3) & ((!\workClock|sec\(4)))) # (!\workClock|sec\(3) & (!\workClock|sec\(7) & \workClock|sec\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(3),
	datab => \workClock|sec\(7),
	datac => \workClock|sec\(4),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[6]~44_combout\);

-- Location: LCCOMB_X105_Y26_N22
\disp3|decOut_n[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~45_combout\ = (\workClock|sec\(2) & (((\disp3|decOut_n[6]~44_combout\) # (\disp3|decOut_n[1]~3_combout\)))) # (!\workClock|sec\(2) & ((\workClock|sec\(3) & ((\disp3|decOut_n[1]~3_combout\))) # (!\workClock|sec\(3) & 
-- (\disp3|decOut_n[6]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(3),
	datab => \disp3|decOut_n[6]~44_combout\,
	datac => \workClock|sec\(2),
	datad => \disp3|decOut_n[1]~3_combout\,
	combout => \disp3|decOut_n[6]~45_combout\);

-- Location: LCCOMB_X106_Y24_N2
\disp3|decOut_n[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~42_combout\ = (\disp3|decOut_n[1]~6_combout\) # ((\workClock|sec\(2) & ((\workClock|sec\(4)) # (!\workClock|sec\(3)))) # (!\workClock|sec\(2) & ((\workClock|sec\(3)) # (!\workClock|sec\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datab => \disp3|decOut_n[1]~6_combout\,
	datac => \workClock|sec\(3),
	datad => \workClock|sec\(4),
	combout => \disp3|decOut_n[6]~42_combout\);

-- Location: LCCOMB_X106_Y24_N8
\disp3|decOut_n[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~41_combout\ = (\workClock|sec\(4) & (!\workClock|sec\(7) & (!\workClock|sec\(3) & \workClock|sec\(5)))) # (!\workClock|sec\(4) & (\workClock|sec\(3) & (\workClock|sec\(7) $ (!\workClock|sec\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datab => \workClock|sec\(7),
	datac => \workClock|sec\(3),
	datad => \workClock|sec\(5),
	combout => \disp3|decOut_n[6]~41_combout\);

-- Location: LCCOMB_X106_Y24_N24
\disp3|decOut_n[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~43_combout\ = (\workClock|sec\(6) & (((\disp3|decOut_n[6]~41_combout\) # (\workClock|sec\(1))))) # (!\workClock|sec\(6) & (!\disp3|decOut_n[6]~42_combout\ & ((!\workClock|sec\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \disp3|decOut_n[6]~42_combout\,
	datac => \disp3|decOut_n[6]~41_combout\,
	datad => \workClock|sec\(1),
	combout => \disp3|decOut_n[6]~43_combout\);

-- Location: LCCOMB_X105_Y24_N20
\disp3|decOut_n[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~46_combout\ = (\workClock|sec\(1) & ((\disp3|decOut_n[6]~43_combout\ & ((\disp3|decOut_n[6]~45_combout\))) # (!\disp3|decOut_n[6]~43_combout\ & (!\disp3|decOut_n[6]~40_combout\)))) # (!\workClock|sec\(1) & 
-- (((\disp3|decOut_n[6]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[6]~40_combout\,
	datab => \disp3|decOut_n[6]~45_combout\,
	datac => \workClock|sec\(1),
	datad => \disp3|decOut_n[6]~43_combout\,
	combout => \disp3|decOut_n[6]~46_combout\);

-- Location: LCCOMB_X105_Y24_N22
\disp3|decOut_n[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|decOut_n[6]~47_combout\ = (\disp3|decOut_n[3]~36_combout\ & (((\bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\disp3|decOut_n~10_combout\)))) # (!\disp3|decOut_n[3]~36_combout\ & 
-- (\disp3|decOut_n[6]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3|decOut_n[3]~36_combout\,
	datab => \disp3|decOut_n[6]~46_combout\,
	datac => \bin2BCD|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \disp3|decOut_n~10_combout\,
	combout => \disp3|decOut_n[6]~47_combout\);

-- Location: LCCOMB_X102_Y25_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \workClock|sec\(5) $ (VCC)
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\workClock|sec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(5),
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X102_Y25_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\workClock|sec\(6) & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\workClock|sec\(6) & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\workClock|sec\(6) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X102_Y25_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\workClock|sec\(7) & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\workClock|sec\(7) & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\workClock|sec\(7) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(7),
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X102_Y25_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X102_Y25_N10
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \workClock|sec\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|sec\(7),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X102_Y25_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X102_Y25_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\workClock|sec\(6) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X102_Y25_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X102_Y25_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\workClock|sec\(5) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(5),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X105_Y25_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X103_Y25_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\workClock|sec\(4) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X103_Y25_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\workClock|sec\(4) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X102_Y25_N0
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X102_Y25_N2
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X102_Y25_N4
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X102_Y25_N6
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X102_Y25_N8
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X102_Y25_N12
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|sec\(7))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(7),
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X103_Y25_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X102_Y25_N14
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\workClock|sec\(6))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(6),
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X103_Y25_N18
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X105_Y25_N8
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\workClock|sec\(5)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \workClock|sec\(5),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X103_Y25_N20
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X103_Y25_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\workClock|sec\(4) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X105_Y25_N22
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X103_Y25_N22
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|sec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|sec\(3),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X103_Y25_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \workClock|sec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \workClock|sec\(3),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X103_Y25_N4
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X103_Y25_N6
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X103_Y25_N8
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X103_Y25_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X103_Y25_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # (GND))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X103_Y25_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X103_Y25_N16
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X105_Y23_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X103_Y25_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X105_Y23_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X105_Y25_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[34]~98_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X105_Y25_N20
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X105_Y25_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\workClock|sec\(4)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \workClock|sec\(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X105_Y25_N10
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X105_Y25_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\workClock|sec\(3) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \workClock|sec\(3),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X105_Y25_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X105_Y25_N16
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\workClock|sec\(2) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X105_Y23_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\workClock|sec\(2) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(2),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X105_Y23_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X105_Y23_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X105_Y23_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X105_Y23_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X105_Y23_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X105_Y23_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X105_Y23_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X105_Y23_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\);

-- Location: LCCOMB_X105_Y25_N12
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\workClock|sec\(3)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \workClock|sec\(3),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X105_Y23_N8
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X105_Y23_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \workClock|sec\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \workClock|sec\(2),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\);

-- Location: LCCOMB_X106_Y23_N12
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79_combout\ = (\workClock|sec\(1) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(1),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79_combout\);

-- Location: LCCOMB_X106_Y23_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\ = (\workClock|sec\(1) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(1),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X106_Y23_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~79_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X106_Y23_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X106_Y23_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X105_Y23_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X106_Y23_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\);

-- Location: LCCOMB_X106_Y23_N10
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~82_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~82_combout\);

-- Location: LCCOMB_X105_Y23_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X105_Y25_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~91_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X105_Y23_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~83_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~83_combout\);

-- Location: LCCOMB_X105_Y25_N18
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~99_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X106_Y23_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~84_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~84_combout\);

-- Location: LCCOMB_X106_Y23_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~84_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~84_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X106_Y23_N24
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~83_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~83_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X106_Y23_N26
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~82_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~82_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X106_Y23_N28
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~81_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X106_Y23_N30
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X106_Y23_N8
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~100_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: LCCOMB_X106_Y23_N14
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\workClock|sec\(1))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \workClock|sec\(1),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\);

-- Location: LCCOMB_X106_Y23_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\) # 
-- ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\);

-- Location: LCCOMB_X114_Y19_N20
\disp2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[0]~0_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\workClock|sec\(0) & 
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\)) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\workClock|sec\(0) $ (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\disp2|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[1]~1_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ $ (((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- \workClock|sec\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X114_Y19_N4
\disp2|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\) # 
-- (!\workClock|sec\(0))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & (!\workClock|sec\(0) & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X114_Y19_N26
\disp2|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[3]~3_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ $ (!\workClock|sec\(0))))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & \workClock|sec\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X114_Y19_N28
\disp2|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[4]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & (\workClock|sec\(0)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\workClock|sec\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X114_Y19_N10
\disp2|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[5]~5_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & ((\workClock|sec\(0)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & (\workClock|sec\(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ $ 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X114_Y19_N0
\disp2|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|decOut_n[6]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & (\workClock|sec\(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ $ 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\ & 
-- ((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~87_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~88_combout\,
	datac => \workClock|sec\(0),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~86_combout\,
	combout => \disp2|decOut_n[6]~6_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;
END structure;


