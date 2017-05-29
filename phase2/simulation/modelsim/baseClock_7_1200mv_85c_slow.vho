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

-- DATE "05/29/2017 19:53:33"

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
	SW : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(6 DOWNTO 0)
	);
END Clock;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDiv|Add0~0_combout\ : std_logic;
SIGNAL \freqDiv|Add0~1\ : std_logic;
SIGNAL \freqDiv|Add0~2_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~1_cout\ : std_logic;
SIGNAL \freqDiv2|Add0~2_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~3\ : std_logic;
SIGNAL \freqDiv2|Add0~4_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~5\ : std_logic;
SIGNAL \freqDiv2|Add0~6_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~7\ : std_logic;
SIGNAL \freqDiv2|Add0~8_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~9\ : std_logic;
SIGNAL \freqDiv2|Add0~11\ : std_logic;
SIGNAL \freqDiv2|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~15\ : std_logic;
SIGNAL \freqDiv2|Add0~16_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~17\ : std_logic;
SIGNAL \freqDiv2|Add0~18_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~19\ : std_logic;
SIGNAL \freqDiv2|Add0~20_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~21\ : std_logic;
SIGNAL \freqDiv2|Add0~22_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~23\ : std_logic;
SIGNAL \freqDiv2|Add0~24_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~8_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~25\ : std_logic;
SIGNAL \freqDiv2|Add0~26_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~7_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~27\ : std_logic;
SIGNAL \freqDiv2|Add0~28_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~2_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~29\ : std_logic;
SIGNAL \freqDiv2|Add0~30_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~31\ : std_logic;
SIGNAL \freqDiv2|Add0~32_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~33\ : std_logic;
SIGNAL \freqDiv2|Add0~34_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~1_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~35\ : std_logic;
SIGNAL \freqDiv2|Add0~36_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~37\ : std_logic;
SIGNAL \freqDiv2|Add0~38_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~39\ : std_logic;
SIGNAL \freqDiv2|Add0~40_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~6_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~41\ : std_logic;
SIGNAL \freqDiv2|Add0~42_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~5_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~43\ : std_logic;
SIGNAL \freqDiv2|Add0~44_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~0_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~45\ : std_logic;
SIGNAL \freqDiv2|Add0~46_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~47\ : std_logic;
SIGNAL \freqDiv2|Add0~48_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~49\ : std_logic;
SIGNAL \freqDiv2|Add0~50_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~51\ : std_logic;
SIGNAL \freqDiv2|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~53\ : std_logic;
SIGNAL \freqDiv2|Add0~54_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~55\ : std_logic;
SIGNAL \freqDiv2|Add0~56_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~57\ : std_logic;
SIGNAL \freqDiv2|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~9_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~13\ : std_logic;
SIGNAL \freqDiv2|Add0~14_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~3_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~10_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~4_combout\ : std_logic;
SIGNAL \freqDiv2|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv2|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv2|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv2|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv2|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv2|clkOut~q\ : std_logic;
SIGNAL \freqDiv2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \press[0]~7_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \db0|sampled_dirty~q\ : std_logic;
SIGNAL \db0|level~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \db1|sampled_dirty~q\ : std_logic;
SIGNAL \db1|level~q\ : std_logic;
SIGNAL \sec~13_combout\ : std_logic;
SIGNAL \press[0]~8\ : std_logic;
SIGNAL \press[1]~9_combout\ : std_logic;
SIGNAL \press[1]~10\ : std_logic;
SIGNAL \press[2]~11_combout\ : std_logic;
SIGNAL \press[2]~12\ : std_logic;
SIGNAL \press[3]~13_combout\ : std_logic;
SIGNAL \press[3]~14\ : std_logic;
SIGNAL \press[4]~15_combout\ : std_logic;
SIGNAL \press[4]~16\ : std_logic;
SIGNAL \press[5]~17_combout\ : std_logic;
SIGNAL \press[5]~18\ : std_logic;
SIGNAL \press[6]~19_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \am~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \min[0]~3_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \sec[1]~7_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \min[0]~27_combout\ : std_logic;
SIGNAL \sec[1]~27_combout\ : std_logic;
SIGNAL \min[0]~28_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \min[0]~6_combout\ : std_logic;
SIGNAL \min[0]~26_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \sec~9_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \sec~10_combout\ : std_logic;
SIGNAL \HEX3~4_combout\ : std_logic;
SIGNAL \sec[1]~6_combout\ : std_logic;
SIGNAL \sec[1]~8_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \sec~11_combout\ : std_logic;
SIGNAL \sec~12_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \db3|sampled_dirty~q\ : std_logic;
SIGNAL \db3|level~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cur_sel~0_combout\ : std_logic;
SIGNAL \cur_sel~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \cur_sel~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \cur_sel~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \cur_sel~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cur_sel~5_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \cur_sel~6_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cur_sel~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \cur_sel~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \cur_sel~9_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \cur_sel~10_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \cur_sel~11_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \cur_sel~12_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cur_sel~13_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cur_sel~14_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cur_sel~15_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cur_sel~16_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cur_sel~17_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \cur_sel~18_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \cur_sel~19_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \cur_sel~20_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cur_sel~21_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cur_sel~22_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cur_sel~23_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \cur_sel~24_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cur_sel~25_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \cur_sel~26_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \cur_sel~27_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \cur_sel~28_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \cur_sel~29_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \cur_sel~30_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \cur_sel~31_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \cur_sel~32_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \sec[1]~31_combout\ : std_logic;
SIGNAL \sec[1]~33_combout\ : std_logic;
SIGNAL \sec[1]~34_combout\ : std_logic;
SIGNAL \sec~23_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \sec~24_combout\ : std_logic;
SIGNAL \sec~25_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \sec~20_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \sec~21_combout\ : std_logic;
SIGNAL \sec~22_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \sec~17_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \sec~18_combout\ : std_logic;
SIGNAL \sec~19_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \sec~14_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \sec~15_combout\ : std_logic;
SIGNAL \sec~16_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \sec~26_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \sec~32_combout\ : std_logic;
SIGNAL \sec~28_combout\ : std_logic;
SIGNAL \sec~5_combout\ : std_logic;
SIGNAL \sec~29_combout\ : std_logic;
SIGNAL \sec~30_combout\ : std_logic;
SIGNAL \sec[0]~0_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \min~2_combout\ : std_logic;
SIGNAL \min~24_combout\ : std_logic;
SIGNAL \min~30_combout\ : std_logic;
SIGNAL \min~25_combout\ : std_logic;
SIGNAL \min[0]~29_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \min[5]~4_combout\ : std_logic;
SIGNAL \min[5]~5_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \min[5]~7_combout\ : std_logic;
SIGNAL \min~21_combout\ : std_logic;
SIGNAL \min~22_combout\ : std_logic;
SIGNAL \min~23_combout\ : std_logic;
SIGNAL \min[5]~11_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \min~18_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \min~19_combout\ : std_logic;
SIGNAL \min~20_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \min~15_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \min~16_combout\ : std_logic;
SIGNAL \min~17_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \min~12_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \min~13_combout\ : std_logic;
SIGNAL \min~14_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \min~8_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \min~9_combout\ : std_logic;
SIGNAL \min~10_combout\ : std_logic;
SIGNAL \hour~4_combout\ : std_logic;
SIGNAL \am~2_combout\ : std_logic;
SIGNAL \am~3_combout\ : std_logic;
SIGNAL \hour~5_combout\ : std_logic;
SIGNAL \hour~82_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \hour[4]~8_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \hour~63_combout\ : std_logic;
SIGNAL \hour~61_combout\ : std_logic;
SIGNAL \hour~62_combout\ : std_logic;
SIGNAL \hour~64_combout\ : std_logic;
SIGNAL \hour~65_combout\ : std_logic;
SIGNAL \hour~55_combout\ : std_logic;
SIGNAL \hour[4]~9_combout\ : std_logic;
SIGNAL \hour~54_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \hour~58_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \hour~56_combout\ : std_logic;
SIGNAL \hour~57_combout\ : std_logic;
SIGNAL \hour~59_combout\ : std_logic;
SIGNAL \hour~60_combout\ : std_logic;
SIGNAL \hour~66_combout\ : std_logic;
SIGNAL \hour~67_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \hour~69_combout\ : std_logic;
SIGNAL \hour~70_combout\ : std_logic;
SIGNAL \hour~71_combout\ : std_logic;
SIGNAL \hour~72_combout\ : std_logic;
SIGNAL \hour~73_combout\ : std_logic;
SIGNAL \hour~68_combout\ : std_logic;
SIGNAL \hour~74_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \hour~29_combout\ : std_logic;
SIGNAL \HEX7~0_combout\ : std_logic;
SIGNAL \hour~75_combout\ : std_logic;
SIGNAL \hour~76_combout\ : std_logic;
SIGNAL \hour~77_combout\ : std_logic;
SIGNAL \am~6_combout\ : std_logic;
SIGNAL \am~5_combout\ : std_logic;
SIGNAL \am~7_combout\ : std_logic;
SIGNAL \hour~78_combout\ : std_logic;
SIGNAL \hour~79_combout\ : std_logic;
SIGNAL \hour[0]~80_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \hour[4]~20_combout\ : std_logic;
SIGNAL \hour~39_combout\ : std_logic;
SIGNAL \hour~40_combout\ : std_logic;
SIGNAL \hour~41_combout\ : std_logic;
SIGNAL \hour~81_combout\ : std_logic;
SIGNAL \hour~43_combout\ : std_logic;
SIGNAL \hour~42_combout\ : std_logic;
SIGNAL \hour~44_combout\ : std_logic;
SIGNAL \hour~45_combout\ : std_logic;
SIGNAL \hour~49_combout\ : std_logic;
SIGNAL \hour~46_combout\ : std_logic;
SIGNAL \hour~47_combout\ : std_logic;
SIGNAL \hour~48_combout\ : std_logic;
SIGNAL \hour~50_combout\ : std_logic;
SIGNAL \hour~51_combout\ : std_logic;
SIGNAL \hour~52_combout\ : std_logic;
SIGNAL \hour~53_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \hour[3]~30_combout\ : std_logic;
SIGNAL \hour[4]~10_combout\ : std_logic;
SIGNAL \hour[3]~28_combout\ : std_logic;
SIGNAL \hour[3]~31_combout\ : std_logic;
SIGNAL \hour[4]~21_combout\ : std_logic;
SIGNAL \hour[3]~27_combout\ : std_logic;
SIGNAL \hour[3]~32_combout\ : std_logic;
SIGNAL \hour~6_combout\ : std_logic;
SIGNAL \hour[4]~7_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \hour[4]~12_combout\ : std_logic;
SIGNAL \hour[4]~11_combout\ : std_logic;
SIGNAL \hour[4]~13_combout\ : std_logic;
SIGNAL \hour[4]~14_combout\ : std_logic;
SIGNAL \hour[4]~15_combout\ : std_logic;
SIGNAL \hour[4]~18_combout\ : std_logic;
SIGNAL \hour~16_combout\ : std_logic;
SIGNAL \hour~17_combout\ : std_logic;
SIGNAL \hour~19_combout\ : std_logic;
SIGNAL \hour[3]~22_combout\ : std_logic;
SIGNAL \hour[3]~33_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \hour[4]~24_combout\ : std_logic;
SIGNAL \hour[4]~25_combout\ : std_logic;
SIGNAL \hour[4]~23_combout\ : std_logic;
SIGNAL \hour[4]~26_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \hour[4]~36_combout\ : std_logic;
SIGNAL \hour[4]~37_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \hour~34_combout\ : std_logic;
SIGNAL \hour~83_combout\ : std_logic;
SIGNAL \hour~84_combout\ : std_logic;
SIGNAL \hour[4]~35_combout\ : std_logic;
SIGNAL \hour[4]~38_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \am~1_combout\ : std_logic;
SIGNAL \am~4_combout\ : std_logic;
SIGNAL \am~8_combout\ : std_logic;
SIGNAL \am~9_combout\ : std_logic;
SIGNAL \am~q\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
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
SIGNAL \freqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv|Add0~47\ : std_logic;
SIGNAL \freqDiv|Add0~48_combout\ : std_logic;
SIGNAL \freqDiv|Add0~49\ : std_logic;
SIGNAL \freqDiv|Add0~50_combout\ : std_logic;
SIGNAL \freqDiv|s_count~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv|Add0~51\ : std_logic;
SIGNAL \freqDiv|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv|Add0~53\ : std_logic;
SIGNAL \freqDiv|Add0~54_combout\ : std_logic;
SIGNAL \freqDiv|Add0~55\ : std_logic;
SIGNAL \freqDiv|Add0~56_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv|Add0~23\ : std_logic;
SIGNAL \freqDiv|Add0~24_combout\ : std_logic;
SIGNAL \freqDiv|s_count~6_combout\ : std_logic;
SIGNAL \freqDiv|Add0~25\ : std_logic;
SIGNAL \freqDiv|Add0~26_combout\ : std_logic;
SIGNAL \freqDiv|s_count~5_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv|Add0~57\ : std_logic;
SIGNAL \freqDiv|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv|Add0~59\ : std_logic;
SIGNAL \freqDiv|Add0~60_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~9_combout\ : std_logic;
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
SIGNAL \freqDiv|Add0~46_combout\ : std_logic;
SIGNAL \freqDiv|s_count~9_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[1]~8_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[1]~9_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[2]~10_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[2]~11_combout\ : std_logic;
SIGNAL \HEX2~3_combout\ : std_logic;
SIGNAL \HEX2~2_combout\ : std_logic;
SIGNAL \HEX2~4_combout\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL \HEX2~5_combout\ : std_logic;
SIGNAL \HEX2~1_combout\ : std_logic;
SIGNAL \HEX2~6_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[4]~12_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[4]~15_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[5]~13_combout\ : std_logic;
SIGNAL \b7segL|decOut_n[5]~16_combout\ : std_logic;
SIGNAL \HEX2~7_combout\ : std_logic;
SIGNAL \HEX2~8_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[0]~3_combout\ : std_logic;
SIGNAL \HEX3~5_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[2]~6_combout\ : std_logic;
SIGNAL \HEX3~13_combout\ : std_logic;
SIGNAL \HEX3~6_combout\ : std_logic;
SIGNAL \HEX3~7_combout\ : std_logic;
SIGNAL \HEX3~8_combout\ : std_logic;
SIGNAL \HEX3~9_combout\ : std_logic;
SIGNAL \HEX3~10_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~7_combout\ : std_logic;
SIGNAL \b7segH|decOut_n[5]~8_combout\ : std_logic;
SIGNAL \HEX3~11_combout\ : std_logic;
SIGNAL \HEX3~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~43_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~53_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~54_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[0]~14_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[1]~8_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[1]~9_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[2]~10_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[2]~11_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \HEX4~2_combout\ : std_logic;
SIGNAL \HEX4~5_combout\ : std_logic;
SIGNAL \HEX4~3_combout\ : std_logic;
SIGNAL \HEX4~4_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \HEX4~6_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[4]~12_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[4]~15_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[5]~13_combout\ : std_logic;
SIGNAL \b7segL1|decOut_n[5]~16_combout\ : std_logic;
SIGNAL \HEX4~7_combout\ : std_logic;
SIGNAL \HEX4~8_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[0]~3_combout\ : std_logic;
SIGNAL \HEX5~1_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[2]~6_combout\ : std_logic;
SIGNAL \HEX5~4_combout\ : std_logic;
SIGNAL \HEX5~3_combout\ : std_logic;
SIGNAL \HEX5~2_combout\ : std_logic;
SIGNAL \HEX5~5_combout\ : std_logic;
SIGNAL \HEX5~6_combout\ : std_logic;
SIGNAL \HEX5~7_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~7_combout\ : std_logic;
SIGNAL \b7segH1|decOut_n[5]~8_combout\ : std_logic;
SIGNAL \HEX5~8_combout\ : std_logic;
SIGNAL \HEX5~9_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~7_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~8_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~9_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~10_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[0]~10_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[0]~15_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[1]~11_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[1]~16_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[2]~12_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[2]~17_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \HEX6~1_combout\ : std_logic;
SIGNAL \HEX6~2_combout\ : std_logic;
SIGNAL \HEX6~0_combout\ : std_logic;
SIGNAL \HEX6~3_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[4]~13_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[4]~18_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[5]~14_combout\ : std_logic;
SIGNAL \b7segL2|decOut_n[5]~19_combout\ : std_logic;
SIGNAL \HEX6~4_combout\ : std_logic;
SIGNAL \HEX6~5_combout\ : std_logic;
SIGNAL \HEX7~1_combout\ : std_logic;
SIGNAL \HEX7~2_combout\ : std_logic;
SIGNAL \HEX7~3_combout\ : std_logic;
SIGNAL \HEX7~4_combout\ : std_logic;
SIGNAL \HEX7~5_combout\ : std_logic;
SIGNAL \HEX7~6_combout\ : std_logic;
SIGNAL \b7segH2|decOut_n[1]~0_combout\ : std_logic;
SIGNAL \HEX7~7_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \db2|sampled_dirty~feeder_combout\ : std_logic;
SIGNAL \db2|sampled_dirty~q\ : std_logic;
SIGNAL \db2|level~feeder_combout\ : std_logic;
SIGNAL \db2|level~q\ : std_logic;
SIGNAL sec : std_logic_vector(5 DOWNTO 0);
SIGNAL press : std_logic_vector(6 DOWNTO 0);
SIGNAL \freqDiv|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL cur_sel : std_logic_vector(31 DOWNTO 0);
SIGNAL min : std_logic_vector(5 DOWNTO 0);
SIGNAL hour : std_logic_vector(4 DOWNTO 0);
SIGNAL \freqDiv2|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \db3|ALT_INV_level~q\ : std_logic;
SIGNAL \db2|ALT_INV_level~q\ : std_logic;
SIGNAL \db1|ALT_INV_level~q\ : std_logic;
SIGNAL \db0|ALT_INV_level~q\ : std_logic;
SIGNAL \ALT_INV_HEX7~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv2|clkOut~q\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\db3|ALT_INV_level~q\ <= NOT \db3|level~q\;
\db2|ALT_INV_level~q\ <= NOT \db2|level~q\;
\db1|ALT_INV_level~q\ <= NOT \db1|level~q\;
\db0|ALT_INV_level~q\ <= NOT \db0|level~q\;
\ALT_INV_HEX7~2_combout\ <= NOT \HEX7~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[1]~input_o\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL|decOut_n[0]~14_combout\,
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
	i => \b7segL|decOut_n[1]~9_combout\,
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
	i => \b7segL|decOut_n[2]~11_combout\,
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
	i => \HEX2~6_combout\,
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
	i => \b7segL|decOut_n[4]~15_combout\,
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
	i => \b7segL|decOut_n[5]~16_combout\,
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
	i => \HEX2~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH|decOut_n[0]~3_combout\,
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
	i => \HEX3~5_combout\,
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
	i => \b7segH|decOut_n[2]~6_combout\,
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
	i => \HEX3~8_combout\,
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
	i => \HEX3~10_combout\,
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
	i => \b7segH|decOut_n[5]~8_combout\,
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
	i => \HEX3~12_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL1|decOut_n[0]~14_combout\,
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
	i => \b7segL1|decOut_n[1]~9_combout\,
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
	i => \b7segL1|decOut_n[2]~11_combout\,
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
	i => \HEX4~6_combout\,
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
	i => \b7segL1|decOut_n[4]~15_combout\,
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
	i => \b7segL1|decOut_n[5]~16_combout\,
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
	i => \HEX4~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segH1|decOut_n[0]~3_combout\,
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
	i => \HEX5~1_combout\,
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
	i => \b7segH1|decOut_n[2]~6_combout\,
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
	i => \HEX5~5_combout\,
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
	i => \HEX5~7_combout\,
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
	i => \b7segH1|decOut_n[5]~8_combout\,
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
	i => \HEX5~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b7segL2|decOut_n[0]~15_combout\,
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
	i => \b7segL2|decOut_n[1]~16_combout\,
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
	i => \b7segL2|decOut_n[2]~17_combout\,
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
	i => \HEX6~3_combout\,
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
	i => \b7segL2|decOut_n[4]~18_combout\,
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
	i => \b7segL2|decOut_n[5]~19_combout\,
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
	i => \HEX6~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~3_combout\,
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
	i => \process_0~3_combout\,
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
	i => \HEX7~5_combout\,
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
	i => \HEX7~3_combout\,
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
	i => \HEX7~6_combout\,
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
	i => \HEX7~7_combout\,
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
	i => \ALT_INV_HEX7~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \db0|ALT_INV_level~q\,
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
	i => \db1|ALT_INV_level~q\,
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
	i => \db2|ALT_INV_level~q\,
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
	i => \db3|ALT_INV_level~q\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

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

-- Location: LCCOMB_X74_Y14_N2
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

-- Location: FF_X74_Y14_N3
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

-- Location: LCCOMB_X74_Y14_N4
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

-- Location: FF_X74_Y14_N5
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

-- Location: LCCOMB_X73_Y10_N2
\freqDiv2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~1_cout\ = CARRY((\freqDiv|s_count\(0) & \freqDiv|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(0),
	datab => \freqDiv|s_count\(1),
	datad => VCC,
	cout => \freqDiv2|Add0~1_cout\);

-- Location: LCCOMB_X73_Y10_N4
\freqDiv2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~2_combout\ = (\freqDiv2|s_count\(2) & (!\freqDiv2|Add0~1_cout\)) # (!\freqDiv2|s_count\(2) & ((\freqDiv2|Add0~1_cout\) # (GND)))
-- \freqDiv2|Add0~3\ = CARRY((!\freqDiv2|Add0~1_cout\) # (!\freqDiv2|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(2),
	datad => VCC,
	cin => \freqDiv2|Add0~1_cout\,
	combout => \freqDiv2|Add0~2_combout\,
	cout => \freqDiv2|Add0~3\);

-- Location: FF_X73_Y10_N5
\freqDiv2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(2));

-- Location: LCCOMB_X73_Y10_N6
\freqDiv2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~4_combout\ = (\freqDiv2|s_count\(3) & (\freqDiv2|Add0~3\ $ (GND))) # (!\freqDiv2|s_count\(3) & (!\freqDiv2|Add0~3\ & VCC))
-- \freqDiv2|Add0~5\ = CARRY((\freqDiv2|s_count\(3) & !\freqDiv2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(3),
	datad => VCC,
	cin => \freqDiv2|Add0~3\,
	combout => \freqDiv2|Add0~4_combout\,
	cout => \freqDiv2|Add0~5\);

-- Location: FF_X73_Y10_N7
\freqDiv2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(3));

-- Location: LCCOMB_X73_Y10_N8
\freqDiv2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~6_combout\ = (\freqDiv2|s_count\(4) & (!\freqDiv2|Add0~5\)) # (!\freqDiv2|s_count\(4) & ((\freqDiv2|Add0~5\) # (GND)))
-- \freqDiv2|Add0~7\ = CARRY((!\freqDiv2|Add0~5\) # (!\freqDiv2|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(4),
	datad => VCC,
	cin => \freqDiv2|Add0~5\,
	combout => \freqDiv2|Add0~6_combout\,
	cout => \freqDiv2|Add0~7\);

-- Location: FF_X73_Y10_N9
\freqDiv2|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(4));

-- Location: LCCOMB_X73_Y10_N10
\freqDiv2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~8_combout\ = (\freqDiv2|s_count\(5) & (\freqDiv2|Add0~7\ $ (GND))) # (!\freqDiv2|s_count\(5) & (!\freqDiv2|Add0~7\ & VCC))
-- \freqDiv2|Add0~9\ = CARRY((\freqDiv2|s_count\(5) & !\freqDiv2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(5),
	datad => VCC,
	cin => \freqDiv2|Add0~7\,
	combout => \freqDiv2|Add0~8_combout\,
	cout => \freqDiv2|Add0~9\);

-- Location: FF_X73_Y10_N11
\freqDiv2|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(5));

-- Location: LCCOMB_X73_Y10_N12
\freqDiv2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~10_combout\ = (\freqDiv2|s_count\(6) & (!\freqDiv2|Add0~9\)) # (!\freqDiv2|s_count\(6) & ((\freqDiv2|Add0~9\) # (GND)))
-- \freqDiv2|Add0~11\ = CARRY((!\freqDiv2|Add0~9\) # (!\freqDiv2|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(6),
	datad => VCC,
	cin => \freqDiv2|Add0~9\,
	combout => \freqDiv2|Add0~10_combout\,
	cout => \freqDiv2|Add0~11\);

-- Location: LCCOMB_X73_Y10_N14
\freqDiv2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~12_combout\ = (\freqDiv2|s_count\(7) & (\freqDiv2|Add0~11\ $ (GND))) # (!\freqDiv2|s_count\(7) & (!\freqDiv2|Add0~11\ & VCC))
-- \freqDiv2|Add0~13\ = CARRY((\freqDiv2|s_count\(7) & !\freqDiv2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(7),
	datad => VCC,
	cin => \freqDiv2|Add0~11\,
	combout => \freqDiv2|Add0~12_combout\,
	cout => \freqDiv2|Add0~13\);

-- Location: LCCOMB_X73_Y10_N16
\freqDiv2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~14_combout\ = (\freqDiv2|s_count\(8) & (!\freqDiv2|Add0~13\)) # (!\freqDiv2|s_count\(8) & ((\freqDiv2|Add0~13\) # (GND)))
-- \freqDiv2|Add0~15\ = CARRY((!\freqDiv2|Add0~13\) # (!\freqDiv2|s_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(8),
	datad => VCC,
	cin => \freqDiv2|Add0~13\,
	combout => \freqDiv2|Add0~14_combout\,
	cout => \freqDiv2|Add0~15\);

-- Location: LCCOMB_X73_Y10_N18
\freqDiv2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~16_combout\ = (\freqDiv2|s_count\(9) & (\freqDiv2|Add0~15\ $ (GND))) # (!\freqDiv2|s_count\(9) & (!\freqDiv2|Add0~15\ & VCC))
-- \freqDiv2|Add0~17\ = CARRY((\freqDiv2|s_count\(9) & !\freqDiv2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(9),
	datad => VCC,
	cin => \freqDiv2|Add0~15\,
	combout => \freqDiv2|Add0~16_combout\,
	cout => \freqDiv2|Add0~17\);

-- Location: FF_X73_Y10_N19
\freqDiv2|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(9));

-- Location: LCCOMB_X73_Y10_N20
\freqDiv2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~18_combout\ = (\freqDiv2|s_count\(10) & (!\freqDiv2|Add0~17\)) # (!\freqDiv2|s_count\(10) & ((\freqDiv2|Add0~17\) # (GND)))
-- \freqDiv2|Add0~19\ = CARRY((!\freqDiv2|Add0~17\) # (!\freqDiv2|s_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(10),
	datad => VCC,
	cin => \freqDiv2|Add0~17\,
	combout => \freqDiv2|Add0~18_combout\,
	cout => \freqDiv2|Add0~19\);

-- Location: FF_X73_Y10_N21
\freqDiv2|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(10));

-- Location: LCCOMB_X73_Y10_N22
\freqDiv2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~20_combout\ = (\freqDiv2|s_count\(11) & (\freqDiv2|Add0~19\ $ (GND))) # (!\freqDiv2|s_count\(11) & (!\freqDiv2|Add0~19\ & VCC))
-- \freqDiv2|Add0~21\ = CARRY((\freqDiv2|s_count\(11) & !\freqDiv2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(11),
	datad => VCC,
	cin => \freqDiv2|Add0~19\,
	combout => \freqDiv2|Add0~20_combout\,
	cout => \freqDiv2|Add0~21\);

-- Location: FF_X73_Y10_N23
\freqDiv2|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(11));

-- Location: LCCOMB_X73_Y10_N24
\freqDiv2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~22_combout\ = (\freqDiv2|s_count\(12) & (!\freqDiv2|Add0~21\)) # (!\freqDiv2|s_count\(12) & ((\freqDiv2|Add0~21\) # (GND)))
-- \freqDiv2|Add0~23\ = CARRY((!\freqDiv2|Add0~21\) # (!\freqDiv2|s_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(12),
	datad => VCC,
	cin => \freqDiv2|Add0~21\,
	combout => \freqDiv2|Add0~22_combout\,
	cout => \freqDiv2|Add0~23\);

-- Location: FF_X73_Y10_N25
\freqDiv2|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(12));

-- Location: LCCOMB_X73_Y10_N26
\freqDiv2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~24_combout\ = (\freqDiv2|s_count\(13) & (\freqDiv2|Add0~23\ $ (GND))) # (!\freqDiv2|s_count\(13) & (!\freqDiv2|Add0~23\ & VCC))
-- \freqDiv2|Add0~25\ = CARRY((\freqDiv2|s_count\(13) & !\freqDiv2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(13),
	datad => VCC,
	cin => \freqDiv2|Add0~23\,
	combout => \freqDiv2|Add0~24_combout\,
	cout => \freqDiv2|Add0~25\);

-- Location: LCCOMB_X74_Y9_N30
\freqDiv2|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~8_combout\ = (\freqDiv2|Add0~24_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~24_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|s_count~8_combout\);

-- Location: FF_X74_Y9_N31
\freqDiv2|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(13));

-- Location: LCCOMB_X73_Y10_N28
\freqDiv2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~26_combout\ = (\freqDiv2|s_count\(14) & (!\freqDiv2|Add0~25\)) # (!\freqDiv2|s_count\(14) & ((\freqDiv2|Add0~25\) # (GND)))
-- \freqDiv2|Add0~27\ = CARRY((!\freqDiv2|Add0~25\) # (!\freqDiv2|s_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(14),
	datad => VCC,
	cin => \freqDiv2|Add0~25\,
	combout => \freqDiv2|Add0~26_combout\,
	cout => \freqDiv2|Add0~27\);

-- Location: LCCOMB_X74_Y9_N10
\freqDiv2|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~7_combout\ = (\freqDiv2|Add0~26_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~26_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|s_count~7_combout\);

-- Location: FF_X74_Y9_N11
\freqDiv2|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(14));

-- Location: LCCOMB_X73_Y10_N30
\freqDiv2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~28_combout\ = (\freqDiv2|s_count\(15) & (\freqDiv2|Add0~27\ $ (GND))) # (!\freqDiv2|s_count\(15) & (!\freqDiv2|Add0~27\ & VCC))
-- \freqDiv2|Add0~29\ = CARRY((\freqDiv2|s_count\(15) & !\freqDiv2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(15),
	datad => VCC,
	cin => \freqDiv2|Add0~27\,
	combout => \freqDiv2|Add0~28_combout\,
	cout => \freqDiv2|Add0~29\);

-- Location: LCCOMB_X72_Y9_N0
\freqDiv2|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~2_combout\ = (\freqDiv2|Add0~28_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~28_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|s_count~2_combout\);

-- Location: FF_X72_Y9_N1
\freqDiv2|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(15));

-- Location: LCCOMB_X73_Y9_N0
\freqDiv2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~30_combout\ = (\freqDiv2|s_count\(16) & (!\freqDiv2|Add0~29\)) # (!\freqDiv2|s_count\(16) & ((\freqDiv2|Add0~29\) # (GND)))
-- \freqDiv2|Add0~31\ = CARRY((!\freqDiv2|Add0~29\) # (!\freqDiv2|s_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(16),
	datad => VCC,
	cin => \freqDiv2|Add0~29\,
	combout => \freqDiv2|Add0~30_combout\,
	cout => \freqDiv2|Add0~31\);

-- Location: FF_X73_Y9_N1
\freqDiv2|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(16));

-- Location: LCCOMB_X73_Y9_N2
\freqDiv2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~32_combout\ = (\freqDiv2|s_count\(17) & (\freqDiv2|Add0~31\ $ (GND))) # (!\freqDiv2|s_count\(17) & (!\freqDiv2|Add0~31\ & VCC))
-- \freqDiv2|Add0~33\ = CARRY((\freqDiv2|s_count\(17) & !\freqDiv2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(17),
	datad => VCC,
	cin => \freqDiv2|Add0~31\,
	combout => \freqDiv2|Add0~32_combout\,
	cout => \freqDiv2|Add0~33\);

-- Location: FF_X73_Y9_N3
\freqDiv2|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(17));

-- Location: LCCOMB_X73_Y9_N4
\freqDiv2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~34_combout\ = (\freqDiv2|s_count\(18) & (!\freqDiv2|Add0~33\)) # (!\freqDiv2|s_count\(18) & ((\freqDiv2|Add0~33\) # (GND)))
-- \freqDiv2|Add0~35\ = CARRY((!\freqDiv2|Add0~33\) # (!\freqDiv2|s_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(18),
	datad => VCC,
	cin => \freqDiv2|Add0~33\,
	combout => \freqDiv2|Add0~34_combout\,
	cout => \freqDiv2|Add0~35\);

-- Location: LCCOMB_X72_Y9_N6
\freqDiv2|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~1_combout\ = (\freqDiv2|Add0~34_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~9_combout\,
	datac => \freqDiv2|Equal0~2_combout\,
	datad => \freqDiv2|Add0~34_combout\,
	combout => \freqDiv2|s_count~1_combout\);

-- Location: FF_X72_Y9_N7
\freqDiv2|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(18));

-- Location: LCCOMB_X73_Y9_N6
\freqDiv2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~36_combout\ = (\freqDiv2|s_count\(19) & (\freqDiv2|Add0~35\ $ (GND))) # (!\freqDiv2|s_count\(19) & (!\freqDiv2|Add0~35\ & VCC))
-- \freqDiv2|Add0~37\ = CARRY((\freqDiv2|s_count\(19) & !\freqDiv2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(19),
	datad => VCC,
	cin => \freqDiv2|Add0~35\,
	combout => \freqDiv2|Add0~36_combout\,
	cout => \freqDiv2|Add0~37\);

-- Location: FF_X73_Y9_N7
\freqDiv2|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(19));

-- Location: LCCOMB_X73_Y9_N8
\freqDiv2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~38_combout\ = (\freqDiv2|s_count\(20) & (!\freqDiv2|Add0~37\)) # (!\freqDiv2|s_count\(20) & ((\freqDiv2|Add0~37\) # (GND)))
-- \freqDiv2|Add0~39\ = CARRY((!\freqDiv2|Add0~37\) # (!\freqDiv2|s_count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(20),
	datad => VCC,
	cin => \freqDiv2|Add0~37\,
	combout => \freqDiv2|Add0~38_combout\,
	cout => \freqDiv2|Add0~39\);

-- Location: FF_X73_Y9_N9
\freqDiv2|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(20));

-- Location: LCCOMB_X73_Y9_N10
\freqDiv2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~40_combout\ = (\freqDiv2|s_count\(21) & (\freqDiv2|Add0~39\ $ (GND))) # (!\freqDiv2|s_count\(21) & (!\freqDiv2|Add0~39\ & VCC))
-- \freqDiv2|Add0~41\ = CARRY((\freqDiv2|s_count\(21) & !\freqDiv2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(21),
	datad => VCC,
	cin => \freqDiv2|Add0~39\,
	combout => \freqDiv2|Add0~40_combout\,
	cout => \freqDiv2|Add0~41\);

-- Location: LCCOMB_X73_Y9_N30
\freqDiv2|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~6_combout\ = (\freqDiv2|Add0~40_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Equal0~9_combout\,
	datad => \freqDiv2|Add0~40_combout\,
	combout => \freqDiv2|s_count~6_combout\);

-- Location: FF_X73_Y9_N31
\freqDiv2|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(21));

-- Location: LCCOMB_X73_Y9_N12
\freqDiv2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~42_combout\ = (\freqDiv2|s_count\(22) & (!\freqDiv2|Add0~41\)) # (!\freqDiv2|s_count\(22) & ((\freqDiv2|Add0~41\) # (GND)))
-- \freqDiv2|Add0~43\ = CARRY((!\freqDiv2|Add0~41\) # (!\freqDiv2|s_count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(22),
	datad => VCC,
	cin => \freqDiv2|Add0~41\,
	combout => \freqDiv2|Add0~42_combout\,
	cout => \freqDiv2|Add0~43\);

-- Location: LCCOMB_X74_Y9_N22
\freqDiv2|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~5_combout\ = (\freqDiv2|Add0~42_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~2_combout\,
	datab => \freqDiv2|Equal0~9_combout\,
	datad => \freqDiv2|Add0~42_combout\,
	combout => \freqDiv2|s_count~5_combout\);

-- Location: FF_X74_Y9_N23
\freqDiv2|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(22));

-- Location: LCCOMB_X73_Y9_N14
\freqDiv2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~44_combout\ = (\freqDiv2|s_count\(23) & (\freqDiv2|Add0~43\ $ (GND))) # (!\freqDiv2|s_count\(23) & (!\freqDiv2|Add0~43\ & VCC))
-- \freqDiv2|Add0~45\ = CARRY((\freqDiv2|s_count\(23) & !\freqDiv2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(23),
	datad => VCC,
	cin => \freqDiv2|Add0~43\,
	combout => \freqDiv2|Add0~44_combout\,
	cout => \freqDiv2|Add0~45\);

-- Location: LCCOMB_X72_Y9_N16
\freqDiv2|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~0_combout\ = (\freqDiv2|Add0~44_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~44_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|s_count~0_combout\);

-- Location: FF_X72_Y9_N17
\freqDiv2|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(23));

-- Location: LCCOMB_X73_Y9_N16
\freqDiv2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~46_combout\ = (\freqDiv2|s_count\(24) & (!\freqDiv2|Add0~45\)) # (!\freqDiv2|s_count\(24) & ((\freqDiv2|Add0~45\) # (GND)))
-- \freqDiv2|Add0~47\ = CARRY((!\freqDiv2|Add0~45\) # (!\freqDiv2|s_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(24),
	datad => VCC,
	cin => \freqDiv2|Add0~45\,
	combout => \freqDiv2|Add0~46_combout\,
	cout => \freqDiv2|Add0~47\);

-- Location: FF_X73_Y9_N17
\freqDiv2|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(24));

-- Location: LCCOMB_X73_Y9_N18
\freqDiv2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~48_combout\ = (\freqDiv2|s_count\(25) & (\freqDiv2|Add0~47\ $ (GND))) # (!\freqDiv2|s_count\(25) & (!\freqDiv2|Add0~47\ & VCC))
-- \freqDiv2|Add0~49\ = CARRY((\freqDiv2|s_count\(25) & !\freqDiv2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(25),
	datad => VCC,
	cin => \freqDiv2|Add0~47\,
	combout => \freqDiv2|Add0~48_combout\,
	cout => \freqDiv2|Add0~49\);

-- Location: FF_X73_Y9_N19
\freqDiv2|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(25));

-- Location: LCCOMB_X73_Y9_N20
\freqDiv2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~50_combout\ = (\freqDiv2|s_count\(26) & (!\freqDiv2|Add0~49\)) # (!\freqDiv2|s_count\(26) & ((\freqDiv2|Add0~49\) # (GND)))
-- \freqDiv2|Add0~51\ = CARRY((!\freqDiv2|Add0~49\) # (!\freqDiv2|s_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(26),
	datad => VCC,
	cin => \freqDiv2|Add0~49\,
	combout => \freqDiv2|Add0~50_combout\,
	cout => \freqDiv2|Add0~51\);

-- Location: FF_X73_Y9_N21
\freqDiv2|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(26));

-- Location: LCCOMB_X73_Y9_N22
\freqDiv2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~52_combout\ = (\freqDiv2|s_count\(27) & (\freqDiv2|Add0~51\ $ (GND))) # (!\freqDiv2|s_count\(27) & (!\freqDiv2|Add0~51\ & VCC))
-- \freqDiv2|Add0~53\ = CARRY((\freqDiv2|s_count\(27) & !\freqDiv2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(27),
	datad => VCC,
	cin => \freqDiv2|Add0~51\,
	combout => \freqDiv2|Add0~52_combout\,
	cout => \freqDiv2|Add0~53\);

-- Location: FF_X73_Y9_N23
\freqDiv2|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(27));

-- Location: LCCOMB_X73_Y9_N24
\freqDiv2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~54_combout\ = (\freqDiv2|s_count\(28) & (!\freqDiv2|Add0~53\)) # (!\freqDiv2|s_count\(28) & ((\freqDiv2|Add0~53\) # (GND)))
-- \freqDiv2|Add0~55\ = CARRY((!\freqDiv2|Add0~53\) # (!\freqDiv2|s_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(28),
	datad => VCC,
	cin => \freqDiv2|Add0~53\,
	combout => \freqDiv2|Add0~54_combout\,
	cout => \freqDiv2|Add0~55\);

-- Location: FF_X73_Y9_N25
\freqDiv2|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(28));

-- Location: LCCOMB_X73_Y9_N26
\freqDiv2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~56_combout\ = (\freqDiv2|s_count\(29) & (\freqDiv2|Add0~55\ $ (GND))) # (!\freqDiv2|s_count\(29) & (!\freqDiv2|Add0~55\ & VCC))
-- \freqDiv2|Add0~57\ = CARRY((\freqDiv2|s_count\(29) & !\freqDiv2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(29),
	datad => VCC,
	cin => \freqDiv2|Add0~55\,
	combout => \freqDiv2|Add0~56_combout\,
	cout => \freqDiv2|Add0~57\);

-- Location: FF_X73_Y9_N27
\freqDiv2|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(29));

-- Location: LCCOMB_X73_Y9_N28
\freqDiv2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~58_combout\ = \freqDiv2|Add0~57\ $ (\freqDiv2|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv2|s_count\(30),
	cin => \freqDiv2|Add0~57\,
	combout => \freqDiv2|Add0~58_combout\);

-- Location: FF_X73_Y9_N29
\freqDiv2|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(30));

-- Location: LCCOMB_X74_Y10_N8
\freqDiv2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~8_combout\ = (\freqDiv2|s_count\(7) & (\freqDiv2|s_count\(3) & (\freqDiv2|s_count\(2) & \freqDiv2|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(7),
	datab => \freqDiv2|s_count\(3),
	datac => \freqDiv2|s_count\(2),
	datad => \freqDiv2|s_count\(4),
	combout => \freqDiv2|Equal0~8_combout\);

-- Location: LCCOMB_X74_Y9_N12
\freqDiv2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~4_combout\ = (!\freqDiv2|s_count\(24) & (!\freqDiv2|s_count\(25) & (\freqDiv2|s_count\(22) & !\freqDiv2|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(24),
	datab => \freqDiv2|s_count\(25),
	datac => \freqDiv2|s_count\(22),
	datad => \freqDiv2|s_count\(26),
	combout => \freqDiv2|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y9_N4
\freqDiv2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~5_combout\ = (\freqDiv2|s_count\(14) & (!\freqDiv2|s_count\(19) & (!\freqDiv2|s_count\(16) & \freqDiv2|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(14),
	datab => \freqDiv2|s_count\(19),
	datac => \freqDiv2|s_count\(16),
	datad => \freqDiv2|s_count\(21),
	combout => \freqDiv2|Equal0~5_combout\);

-- Location: LCCOMB_X74_Y9_N8
\freqDiv2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~6_combout\ = (\freqDiv2|s_count\(13) & (!\freqDiv2|s_count\(10) & (!\freqDiv2|s_count\(9) & !\freqDiv2|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(13),
	datab => \freqDiv2|s_count\(10),
	datac => \freqDiv2|s_count\(9),
	datad => \freqDiv2|s_count\(11),
	combout => \freqDiv2|Equal0~6_combout\);

-- Location: LCCOMB_X74_Y9_N28
\freqDiv2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~3_combout\ = (!\freqDiv2|s_count\(28) & (!\freqDiv2|s_count\(27) & (\freqDiv|s_count\(0) & \freqDiv|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(28),
	datab => \freqDiv2|s_count\(27),
	datac => \freqDiv|s_count\(0),
	datad => \freqDiv|s_count\(1),
	combout => \freqDiv2|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y9_N18
\freqDiv2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~7_combout\ = (\freqDiv2|Equal0~4_combout\ & (\freqDiv2|Equal0~5_combout\ & (\freqDiv2|Equal0~6_combout\ & \freqDiv2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~4_combout\,
	datab => \freqDiv2|Equal0~5_combout\,
	datac => \freqDiv2|Equal0~6_combout\,
	datad => \freqDiv2|Equal0~3_combout\,
	combout => \freqDiv2|Equal0~7_combout\);

-- Location: LCCOMB_X74_Y9_N24
\freqDiv2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~9_combout\ = (!\freqDiv2|s_count\(29) & (!\freqDiv2|s_count\(30) & (\freqDiv2|Equal0~8_combout\ & \freqDiv2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(29),
	datab => \freqDiv2|s_count\(30),
	datac => \freqDiv2|Equal0~8_combout\,
	datad => \freqDiv2|Equal0~7_combout\,
	combout => \freqDiv2|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y10_N0
\freqDiv2|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~9_combout\ = (\freqDiv2|Add0~12_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Add0~12_combout\,
	datac => \freqDiv2|Equal0~9_combout\,
	datad => \freqDiv2|Equal0~2_combout\,
	combout => \freqDiv2|s_count~9_combout\);

-- Location: FF_X73_Y10_N1
\freqDiv2|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(7));

-- Location: LCCOMB_X72_Y9_N2
\freqDiv2|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~3_combout\ = (\freqDiv2|Add0~14_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~14_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|s_count~3_combout\);

-- Location: FF_X72_Y9_N3
\freqDiv2|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(8));

-- Location: LCCOMB_X72_Y9_N26
\freqDiv2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~1_combout\ = (!\freqDiv2|s_count\(6) & (\freqDiv2|s_count\(8) & (!\freqDiv2|s_count\(12) & \freqDiv2|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(6),
	datab => \freqDiv2|s_count\(8),
	datac => \freqDiv2|s_count\(12),
	datad => \freqDiv2|s_count\(15),
	combout => \freqDiv2|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y9_N18
\freqDiv2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~0_combout\ = (\freqDiv2|s_count\(18) & (\freqDiv2|s_count\(23) & (!\freqDiv2|s_count\(20) & !\freqDiv2|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(18),
	datab => \freqDiv2|s_count\(23),
	datac => \freqDiv2|s_count\(20),
	datad => \freqDiv2|s_count\(17),
	combout => \freqDiv2|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y9_N14
\freqDiv2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~2_combout\ = (\freqDiv2|s_count\(5) & (\freqDiv2|Equal0~1_combout\ & \freqDiv2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(5),
	datac => \freqDiv2|Equal0~1_combout\,
	datad => \freqDiv2|Equal0~0_combout\,
	combout => \freqDiv2|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y9_N22
\freqDiv2|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~4_combout\ = (\freqDiv2|Add0~10_combout\ & ((!\freqDiv2|Equal0~9_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~10_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|s_count~4_combout\);

-- Location: FF_X72_Y9_N23
\freqDiv2|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|s_count\(6));

-- Location: LCCOMB_X72_Y9_N10
\freqDiv2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal1~1_combout\ = (\freqDiv2|s_count\(6) & (!\freqDiv2|s_count\(15) & (\freqDiv2|s_count\(12) & !\freqDiv2|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(6),
	datab => \freqDiv2|s_count\(15),
	datac => \freqDiv2|s_count\(12),
	datad => \freqDiv2|s_count\(8),
	combout => \freqDiv2|Equal1~1_combout\);

-- Location: LCCOMB_X72_Y9_N28
\freqDiv2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal1~0_combout\ = (!\freqDiv2|s_count\(18) & (!\freqDiv2|s_count\(23) & (\freqDiv2|s_count\(20) & \freqDiv2|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(18),
	datab => \freqDiv2|s_count\(23),
	datac => \freqDiv2|s_count\(20),
	datad => \freqDiv2|s_count\(17),
	combout => \freqDiv2|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y9_N12
\freqDiv2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal1~2_combout\ = (\freqDiv2|Equal1~1_combout\ & (!\freqDiv2|s_count\(5) & \freqDiv2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal1~1_combout\,
	datab => \freqDiv2|s_count\(5),
	datad => \freqDiv2|Equal1~0_combout\,
	combout => \freqDiv2|Equal1~2_combout\);

-- Location: LCCOMB_X72_Y9_N20
\freqDiv2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|clkOut~0_combout\ = (\freqDiv2|Equal0~9_combout\ & ((\freqDiv2|Equal0~2_combout\) # ((!\freqDiv2|Equal1~2_combout\ & \freqDiv2|clkOut~q\)))) # (!\freqDiv2|Equal0~9_combout\ & (((\freqDiv2|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal1~2_combout\,
	datab => \freqDiv2|clkOut~q\,
	datac => \freqDiv2|Equal0~2_combout\,
	datad => \freqDiv2|Equal0~9_combout\,
	combout => \freqDiv2|clkOut~0_combout\);

-- Location: LCCOMB_X72_Y9_N30
\freqDiv2|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|clkOut~feeder_combout\ = \freqDiv2|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|clkOut~0_combout\,
	combout => \freqDiv2|clkOut~feeder_combout\);

-- Location: FF_X72_Y9_N31
\freqDiv2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv2|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv2|clkOut~q\);

-- Location: CLKCTRL_G18
\freqDiv2|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv2|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv2|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X106_Y15_N14
\press[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[0]~7_combout\ = press(0) $ (VCC)
-- \press[0]~8\ = CARRY(press(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => press(0),
	datad => VCC,
	combout => \press[0]~7_combout\,
	cout => \press[0]~8\);

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

-- Location: FF_X108_Y14_N5
\db0|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db0|sampled_dirty~q\);

-- Location: FF_X108_Y14_N11
\db0|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \db0|sampled_dirty~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db0|level~q\);

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

-- Location: FF_X107_Y15_N31
\db1|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|sampled_dirty~q\);

-- Location: FF_X107_Y15_N25
\db1|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \db1|sampled_dirty~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|level~q\);

-- Location: LCCOMB_X108_Y15_N10
\sec~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~13_combout\ = (\db0|level~q\ & \db1|level~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db0|level~q\,
	datad => \db1|level~q\,
	combout => \sec~13_combout\);

-- Location: FF_X106_Y15_N15
\press[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[0]~7_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(0));

-- Location: LCCOMB_X106_Y15_N16
\press[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[1]~9_combout\ = (press(1) & (!\press[0]~8\)) # (!press(1) & ((\press[0]~8\) # (GND)))
-- \press[1]~10\ = CARRY((!\press[0]~8\) # (!press(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => press(1),
	datad => VCC,
	cin => \press[0]~8\,
	combout => \press[1]~9_combout\,
	cout => \press[1]~10\);

-- Location: FF_X106_Y15_N17
\press[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[1]~9_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(1));

-- Location: LCCOMB_X106_Y15_N18
\press[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[2]~11_combout\ = (press(2) & (\press[1]~10\ $ (GND))) # (!press(2) & (!\press[1]~10\ & VCC))
-- \press[2]~12\ = CARRY((press(2) & !\press[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => press(2),
	datad => VCC,
	cin => \press[1]~10\,
	combout => \press[2]~11_combout\,
	cout => \press[2]~12\);

-- Location: FF_X106_Y15_N19
\press[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[2]~11_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(2));

-- Location: LCCOMB_X106_Y15_N20
\press[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[3]~13_combout\ = (press(3) & (!\press[2]~12\)) # (!press(3) & ((\press[2]~12\) # (GND)))
-- \press[3]~14\ = CARRY((!\press[2]~12\) # (!press(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => press(3),
	datad => VCC,
	cin => \press[2]~12\,
	combout => \press[3]~13_combout\,
	cout => \press[3]~14\);

-- Location: FF_X106_Y15_N21
\press[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[3]~13_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(3));

-- Location: LCCOMB_X106_Y15_N22
\press[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[4]~15_combout\ = (press(4) & (\press[3]~14\ $ (GND))) # (!press(4) & (!\press[3]~14\ & VCC))
-- \press[4]~16\ = CARRY((press(4) & !\press[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => press(4),
	datad => VCC,
	cin => \press[3]~14\,
	combout => \press[4]~15_combout\,
	cout => \press[4]~16\);

-- Location: FF_X106_Y15_N23
\press[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[4]~15_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(4));

-- Location: LCCOMB_X106_Y15_N24
\press[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[5]~17_combout\ = (press(5) & (!\press[4]~16\)) # (!press(5) & ((\press[4]~16\) # (GND)))
-- \press[5]~18\ = CARRY((!\press[4]~16\) # (!press(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => press(5),
	datad => VCC,
	cin => \press[4]~16\,
	combout => \press[5]~17_combout\,
	cout => \press[5]~18\);

-- Location: FF_X106_Y15_N25
\press[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[5]~17_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(5));

-- Location: LCCOMB_X106_Y15_N26
\press[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \press[6]~19_combout\ = press(6) $ (!\press[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => press(6),
	cin => \press[5]~18\,
	combout => \press[6]~19_combout\);

-- Location: FF_X106_Y15_N27
\press[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \press[6]~19_combout\,
	sclr => \sec~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => press(6));

-- Location: LCCOMB_X106_Y15_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!press(4) & (!press(3) & (press(0) & !press(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => press(4),
	datab => press(3),
	datac => press(0),
	datad => press(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X106_Y15_N6
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!press(6) & (!press(1) & (press(2) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => press(6),
	datab => press(1),
	datac => press(2),
	datad => \Equal0~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X107_Y14_N8
\am~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~0_combout\ = \am~q\ $ ((((!\Equal1~0_combout\ & \db1|level~q\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \am~q\,
	datac => \db1|level~q\,
	datad => \SW[0]~input_o\,
	combout => \am~0_combout\);

-- Location: LCCOMB_X106_Y15_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!press(6) & (press(1) & (!press(2) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => press(6),
	datab => press(1),
	datac => press(2),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X107_Y15_N24
\min[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~3_combout\ = (\SW[0]~input_o\ & !\db1|level~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \db1|level~q\,
	combout => \min[0]~3_combout\);

-- Location: LCCOMB_X105_Y15_N10
\HEX5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = (!min(1) & (!min(3) & !min(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(3),
	datad => min(2),
	combout => \HEX5~0_combout\);

-- Location: LCCOMB_X106_Y15_N2
\sec[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~7_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\Equal1~0_combout\)) # (!\SW[1]~input_o\ & ((\Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \Equal0~1_combout\,
	combout => \sec[1]~7_combout\);

-- Location: LCCOMB_X109_Y15_N6
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = min(0) $ (VCC)
-- \Add13~1\ = CARRY(min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X109_Y15_N2
\min[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~27_combout\ = (\Add13~0_combout\ & (((\LessThan13~0_combout\) # (!min(4))) # (!min(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(4),
	datac => \LessThan13~0_combout\,
	datad => \Add13~0_combout\,
	combout => \min[0]~27_combout\);

-- Location: LCCOMB_X107_Y15_N30
\sec[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~27_combout\ = (\SW[1]~input_o\ & ((\Equal1~0_combout\))) # (!\SW[1]~input_o\ & (\Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal1~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \sec[1]~27_combout\);

-- Location: LCCOMB_X108_Y15_N12
\min[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~28_combout\ = (\min[0]~27_combout\ & (((\db1|level~q\ & !\sec[1]~27_combout\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[0]~27_combout\,
	datab => \db1|level~q\,
	datac => \sec[1]~27_combout\,
	datad => \SW[0]~input_o\,
	combout => \min[0]~28_combout\);

-- Location: LCCOMB_X110_Y15_N20
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = min(0) $ (VCC)
-- \Add10~1\ = CARRY(min(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X109_Y15_N4
\min[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~6_combout\ = (!min(5) & (!min(0) & (\HEX5~0_combout\ & !min(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(0),
	datac => \HEX5~0_combout\,
	datad => min(4),
	combout => \min[0]~6_combout\);

-- Location: LCCOMB_X108_Y15_N18
\min[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~26_combout\ = (\min[0]~3_combout\ & ((\sec[1]~27_combout\) # ((\Add10~0_combout\) # (\min[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec[1]~27_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add10~0_combout\,
	datad => \min[0]~6_combout\,
	combout => \min[0]~26_combout\);

-- Location: LCCOMB_X110_Y16_N22
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = sec(1) $ (VCC)
-- \Add7~1\ = CARRY(sec(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X108_Y16_N12
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = sec(0) $ (VCC)
-- \Add12~1\ = CARRY(sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X108_Y16_N14
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (sec(1) & (!\Add12~1\)) # (!sec(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X106_Y16_N0
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = sec(0) $ (VCC)
-- \Add11~1\ = CARRY(sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X106_Y16_N2
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (sec(1) & (\Add11~1\ & VCC)) # (!sec(1) & (!\Add11~1\))
-- \Add11~3\ = CARRY((!sec(1) & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X108_Y16_N0
\sec~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~9_combout\ = (!sec(2) & (!sec(3) & (!sec(0) & !sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(2),
	datab => sec(3),
	datac => sec(0),
	datad => sec(1),
	combout => \sec~9_combout\);

-- Location: LCCOMB_X110_Y16_N26
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (sec(3) & (\Add7~3\ $ (GND))) # (!sec(3) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((sec(3) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X110_Y16_N28
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (sec(4) & (\Add7~5\ & VCC)) # (!sec(4) & (!\Add7~5\))
-- \Add7~7\ = CARRY((!sec(4) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X110_Y16_N30
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = sec(5) $ (\Add7~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	cin => \Add7~7\,
	combout => \Add7~8_combout\);

-- Location: LCCOMB_X106_Y16_N4
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (sec(2) & ((GND) # (!\Add11~3\))) # (!sec(2) & (\Add11~3\ $ (GND)))
-- \Add11~5\ = CARRY((sec(2)) # (!\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X106_Y16_N6
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (sec(3) & (\Add11~5\ & VCC)) # (!sec(3) & (!\Add11~5\))
-- \Add11~7\ = CARRY((!sec(3) & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X106_Y16_N8
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (sec(4) & ((GND) # (!\Add11~7\))) # (!sec(4) & (\Add11~7\ $ (GND)))
-- \Add11~9\ = CARRY((sec(4)) # (!\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X106_Y16_N10
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = \Add11~9\ $ (!sec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sec(5),
	cin => \Add11~9\,
	combout => \Add11~10_combout\);

-- Location: LCCOMB_X108_Y16_N20
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (sec(4) & (\Add12~7\ $ (GND))) # (!sec(4) & (!\Add12~7\ & VCC))
-- \Add12~9\ = CARRY((sec(4) & !\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X108_Y16_N22
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = sec(5) $ (\Add12~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	cin => \Add12~9\,
	combout => \Add12~10_combout\);

-- Location: LCCOMB_X107_Y16_N20
\sec~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~10_combout\ = (\min[0]~3_combout\ & ((\Add11~10_combout\) # ((!\sec[1]~34_combout\)))) # (!\min[0]~3_combout\ & (((\Add12~10_combout\ & \sec[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add12~10_combout\,
	datac => \min[0]~3_combout\,
	datad => \sec[1]~34_combout\,
	combout => \sec~10_combout\);

-- Location: LCCOMB_X109_Y12_N2
\HEX3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~4_combout\ = (!sec(2) & (!sec(3) & !sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datac => sec(3),
	datad => sec(1),
	combout => \HEX3~4_combout\);

-- Location: LCCOMB_X108_Y16_N28
\sec[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~6_combout\ = (sec(4) & (sec(5) & ((\db1|level~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => \SW[0]~input_o\,
	datac => sec(5),
	datad => \db1|level~q\,
	combout => \sec[1]~6_combout\);

-- Location: LCCOMB_X108_Y16_N30
\sec[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~8_combout\ = (\sec[1]~6_combout\ & ((\sec[1]~7_combout\ & (!\HEX3~4_combout\)) # (!\sec[1]~7_combout\ & ((!\LessThan12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX3~4_combout\,
	datab => \LessThan12~0_combout\,
	datac => \sec[1]~7_combout\,
	datad => \sec[1]~6_combout\,
	combout => \sec[1]~8_combout\);

-- Location: LCCOMB_X110_Y16_N4
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!sec(4) & (!sec(5) & !sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => sec(5),
	datad => sec(3),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X107_Y16_N22
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = sec(1) $ (VCC)
-- \Add9~1\ = CARRY(sec(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X107_Y16_N24
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (sec(2) & (!\Add9~1\)) # (!sec(2) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!sec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X107_Y16_N26
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (sec(3) & ((GND) # (!\Add9~3\))) # (!sec(3) & (\Add9~3\ $ (GND)))
-- \Add9~5\ = CARRY((sec(3)) # (!\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X107_Y16_N28
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (sec(4) & (!\Add9~5\)) # (!sec(4) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!sec(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X107_Y16_N30
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = sec(5) $ (!\Add9~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	cin => \Add9~7\,
	combout => \Add9~8_combout\);

-- Location: LCCOMB_X107_Y16_N10
\sec~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~11_combout\ = (\sec[1]~7_combout\ & ((\sec~10_combout\ & (!\LessThan5~0_combout\)) # (!\sec~10_combout\ & ((\Add9~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \Add9~8_combout\,
	datad => \sec~10_combout\,
	combout => \sec~11_combout\);

-- Location: LCCOMB_X107_Y16_N4
\sec~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~12_combout\ = (!\sec[1]~8_combout\ & ((\sec~10_combout\ & ((\Add7~8_combout\) # (!\sec~11_combout\))) # (!\sec~10_combout\ & ((\sec~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \sec~10_combout\,
	datac => \sec[1]~8_combout\,
	datad => \sec~11_combout\,
	combout => \sec~12_combout\);

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

-- Location: FF_X109_Y18_N15
\db3|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db3|sampled_dirty~q\);

-- Location: FF_X109_Y18_N5
\db3|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \db3|sampled_dirty~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db3|level~q\);

-- Location: LCCOMB_X109_Y17_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cur_sel(0) $ (VCC)
-- \Add0~1\ = CARRY(cur_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X110_Y18_N16
\cur_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~0_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & ((\Add0~0_combout\) # (!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~0_combout\);

-- Location: LCCOMB_X109_Y18_N4
\cur_sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~1_combout\ = (!\db3|level~q\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \db3|level~q\,
	combout => \cur_sel~1_combout\);

-- Location: FF_X110_Y18_N17
\cur_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~0_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(0));

-- Location: LCCOMB_X109_Y17_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cur_sel(1) & (!\Add0~1\)) # (!cur_sel(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cur_sel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X110_Y18_N26
\cur_sel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~2_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~2_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~2_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~2_combout\);

-- Location: FF_X110_Y18_N27
\cur_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~2_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(1));

-- Location: LCCOMB_X109_Y17_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cur_sel(2) & (\Add0~3\ $ (GND))) # (!cur_sel(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cur_sel(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X108_Y18_N8
\cur_sel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~3_combout\ = (\Equal4~0_combout\ & (\SW[0]~input_o\ & (\Add0~4_combout\ & !\db3|level~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \Add0~4_combout\,
	datad => \db3|level~q\,
	combout => \cur_sel~3_combout\);

-- Location: FF_X108_Y18_N9
\cur_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~3_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(2));

-- Location: LCCOMB_X109_Y17_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cur_sel(3) & (!\Add0~5\)) # (!cur_sel(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cur_sel(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X108_Y18_N26
\cur_sel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~4_combout\ = (!\db3|level~q\ & (\Add0~6_combout\ & (\SW[0]~input_o\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Add0~6_combout\,
	datac => \SW[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~4_combout\);

-- Location: FF_X108_Y18_N27
\cur_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~4_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(3));

-- Location: LCCOMB_X109_Y17_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cur_sel(4) & (\Add0~7\ $ (GND))) # (!cur_sel(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cur_sel(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X108_Y18_N28
\cur_sel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~5_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Equal4~0_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \Add0~8_combout\,
	combout => \cur_sel~5_combout\);

-- Location: FF_X108_Y18_N29
\cur_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~5_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(4));

-- Location: LCCOMB_X109_Y17_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cur_sel(5) & (!\Add0~9\)) # (!cur_sel(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cur_sel(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X108_Y18_N18
\cur_sel~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~6_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~10_combout\,
	combout => \cur_sel~6_combout\);

-- Location: FF_X108_Y18_N19
\cur_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~6_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(5));

-- Location: LCCOMB_X109_Y17_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cur_sel(6) & (\Add0~11\ $ (GND))) # (!cur_sel(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cur_sel(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X108_Y18_N14
\cur_sel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~7_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~12_combout\,
	combout => \cur_sel~7_combout\);

-- Location: FF_X108_Y18_N15
\cur_sel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~7_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(6));

-- Location: LCCOMB_X109_Y17_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cur_sel(7) & (!\Add0~13\)) # (!cur_sel(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cur_sel(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X108_Y18_N20
\cur_sel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~8_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~14_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~8_combout\);

-- Location: FF_X108_Y18_N21
\cur_sel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~8_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(7));

-- Location: LCCOMB_X109_Y17_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cur_sel(8) & (\Add0~15\ $ (GND))) # (!cur_sel(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cur_sel(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X108_Y18_N2
\cur_sel~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~9_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~16_combout\,
	combout => \cur_sel~9_combout\);

-- Location: FF_X108_Y18_N3
\cur_sel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~9_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(8));

-- Location: LCCOMB_X109_Y17_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cur_sel(9) & (!\Add0~17\)) # (!cur_sel(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cur_sel(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X109_Y18_N22
\cur_sel~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~10_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~18_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~18_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~10_combout\);

-- Location: FF_X109_Y18_N23
\cur_sel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~10_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(9));

-- Location: LCCOMB_X109_Y17_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cur_sel(10) & (\Add0~19\ $ (GND))) # (!cur_sel(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cur_sel(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X108_Y18_N10
\cur_sel~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~11_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~20_combout\,
	combout => \cur_sel~11_combout\);

-- Location: FF_X108_Y18_N11
\cur_sel[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~11_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(10));

-- Location: LCCOMB_X109_Y17_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cur_sel(11) & (!\Add0~21\)) # (!cur_sel(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cur_sel(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X108_Y18_N4
\cur_sel~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~12_combout\ = (!\db3|level~q\ & (\Add0~22_combout\ & (\SW[0]~input_o\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Add0~22_combout\,
	datac => \SW[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~12_combout\);

-- Location: FF_X108_Y18_N5
\cur_sel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~12_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(11));

-- Location: LCCOMB_X109_Y17_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cur_sel(12) & (\Add0~23\ $ (GND))) # (!cur_sel(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cur_sel(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X108_Y18_N30
\cur_sel~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~13_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~24_combout\,
	combout => \cur_sel~13_combout\);

-- Location: FF_X108_Y18_N31
\cur_sel[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~13_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(12));

-- Location: LCCOMB_X109_Y17_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cur_sel(13) & (!\Add0~25\)) # (!cur_sel(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cur_sel(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X109_Y18_N6
\cur_sel~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~14_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~26_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~26_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~14_combout\);

-- Location: FF_X109_Y18_N7
\cur_sel[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~14_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(13));

-- Location: LCCOMB_X109_Y17_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cur_sel(14) & (\Add0~27\ $ (GND))) # (!cur_sel(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cur_sel(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X110_Y18_N8
\cur_sel~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~15_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~28_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~28_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~15_combout\);

-- Location: FF_X110_Y18_N9
\cur_sel[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~15_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(14));

-- Location: LCCOMB_X109_Y17_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cur_sel(15) & (!\Add0~29\)) # (!cur_sel(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cur_sel(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X110_Y18_N30
\cur_sel~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~16_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~30_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~30_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~16_combout\);

-- Location: FF_X110_Y18_N31
\cur_sel[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~16_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(15));

-- Location: LCCOMB_X109_Y16_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cur_sel(16) & (\Add0~31\ $ (GND))) # (!cur_sel(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cur_sel(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X110_Y18_N0
\cur_sel~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~17_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~32_combout\,
	combout => \cur_sel~17_combout\);

-- Location: FF_X110_Y18_N1
\cur_sel[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~17_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(16));

-- Location: LCCOMB_X109_Y16_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cur_sel(17) & (!\Add0~33\)) # (!cur_sel(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cur_sel(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X110_Y18_N10
\cur_sel~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~18_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~34_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~34_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~18_combout\);

-- Location: FF_X110_Y18_N11
\cur_sel[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~18_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(17));

-- Location: LCCOMB_X109_Y16_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cur_sel(18) & (\Add0~35\ $ (GND))) # (!cur_sel(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cur_sel(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X109_Y18_N2
\cur_sel~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~19_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~36_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~36_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~19_combout\);

-- Location: FF_X109_Y18_N3
\cur_sel[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~19_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(18));

-- Location: LCCOMB_X109_Y16_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cur_sel(19) & (!\Add0~37\)) # (!cur_sel(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cur_sel(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X109_Y18_N24
\cur_sel~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~20_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~38_combout\,
	combout => \cur_sel~20_combout\);

-- Location: FF_X109_Y18_N25
\cur_sel[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~20_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(19));

-- Location: LCCOMB_X109_Y16_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cur_sel(20) & (\Add0~39\ $ (GND))) # (!cur_sel(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cur_sel(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X109_Y18_N30
\cur_sel~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~21_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~40_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~40_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~21_combout\);

-- Location: FF_X109_Y18_N31
\cur_sel[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~21_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(20));

-- Location: LCCOMB_X109_Y16_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cur_sel(21) & (!\Add0~41\)) # (!cur_sel(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cur_sel(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X109_Y18_N0
\cur_sel~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~22_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~42_combout\,
	combout => \cur_sel~22_combout\);

-- Location: FF_X109_Y18_N1
\cur_sel[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~22_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(21));

-- Location: LCCOMB_X109_Y18_N20
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!cur_sel(21) & (!cur_sel(18) & (!cur_sel(20) & !cur_sel(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(21),
	datab => cur_sel(18),
	datac => cur_sel(20),
	datad => cur_sel(19),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X109_Y16_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cur_sel(22) & (\Add0~43\ $ (GND))) # (!cur_sel(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cur_sel(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X109_Y18_N8
\cur_sel~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~23_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~44_combout\,
	combout => \cur_sel~23_combout\);

-- Location: FF_X109_Y18_N9
\cur_sel[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~23_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(22));

-- Location: LCCOMB_X109_Y16_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cur_sel(23) & (!\Add0~45\)) # (!cur_sel(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cur_sel(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X109_Y18_N26
\cur_sel~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~24_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~46_combout\,
	combout => \cur_sel~24_combout\);

-- Location: FF_X109_Y18_N27
\cur_sel[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~24_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(23));

-- Location: LCCOMB_X109_Y16_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cur_sel(24) & (\Add0~47\ $ (GND))) # (!cur_sel(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cur_sel(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X109_Y18_N16
\cur_sel~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~25_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~48_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~48_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~25_combout\);

-- Location: FF_X109_Y18_N17
\cur_sel[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~25_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(24));

-- Location: LCCOMB_X109_Y16_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cur_sel(25) & (!\Add0~49\)) # (!cur_sel(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cur_sel(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X109_Y18_N12
\cur_sel~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~26_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Equal4~0_combout\ & \Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \Add0~50_combout\,
	combout => \cur_sel~26_combout\);

-- Location: FF_X109_Y18_N13
\cur_sel[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~26_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(25));

-- Location: LCCOMB_X109_Y18_N18
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!cur_sel(23) & (!cur_sel(24) & (!cur_sel(22) & !cur_sel(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(23),
	datab => cur_sel(24),
	datac => cur_sel(22),
	datad => cur_sel(25),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X108_Y18_N12
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!cur_sel(3) & (!cur_sel(5) & (!cur_sel(2) & !cur_sel(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(3),
	datab => cur_sel(5),
	datac => cur_sel(2),
	datad => cur_sel(4),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X108_Y18_N16
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!cur_sel(7) & (!cur_sel(6) & (!cur_sel(9) & !cur_sel(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(7),
	datab => cur_sel(6),
	datac => cur_sel(9),
	datad => cur_sel(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X110_Y18_N28
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!cur_sel(17) & (!cur_sel(14) & (!cur_sel(15) & !cur_sel(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(17),
	datab => cur_sel(14),
	datac => cur_sel(15),
	datad => cur_sel(16),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X108_Y18_N0
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!cur_sel(10) & (!cur_sel(11) & (!cur_sel(12) & !cur_sel(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(10),
	datab => cur_sel(11),
	datac => cur_sel(12),
	datad => cur_sel(13),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X108_Y18_N22
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X109_Y16_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (cur_sel(26) & (\Add0~51\ $ (GND))) # (!cur_sel(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((cur_sel(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X110_Y18_N22
\cur_sel~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~27_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~52_combout\,
	combout => \cur_sel~27_combout\);

-- Location: FF_X110_Y18_N23
\cur_sel[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~27_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(26));

-- Location: LCCOMB_X109_Y16_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (cur_sel(27) & (!\Add0~53\)) # (!cur_sel(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!cur_sel(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X110_Y18_N4
\cur_sel~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~28_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~54_combout\,
	combout => \cur_sel~28_combout\);

-- Location: FF_X110_Y18_N5
\cur_sel[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~28_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(27));

-- Location: LCCOMB_X109_Y16_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (cur_sel(28) & (\Add0~55\ $ (GND))) # (!cur_sel(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((cur_sel(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X110_Y18_N6
\cur_sel~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~29_combout\ = (!\db3|level~q\ & (\SW[0]~input_o\ & (\Add0~56_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \SW[0]~input_o\,
	datac => \Add0~56_combout\,
	datad => \Equal4~0_combout\,
	combout => \cur_sel~29_combout\);

-- Location: FF_X110_Y18_N7
\cur_sel[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~29_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(28));

-- Location: LCCOMB_X109_Y16_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (cur_sel(29) & (!\Add0~57\)) # (!cur_sel(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!cur_sel(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X110_Y18_N20
\cur_sel~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~30_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~58_combout\,
	combout => \cur_sel~30_combout\);

-- Location: FF_X110_Y18_N21
\cur_sel[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~30_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(29));

-- Location: LCCOMB_X109_Y16_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (cur_sel(30) & (\Add0~59\ $ (GND))) # (!cur_sel(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((cur_sel(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X109_Y18_N28
\cur_sel~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~31_combout\ = (\Equal4~0_combout\ & (\SW[0]~input_o\ & (\Add0~60_combout\ & !\db3|level~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \Add0~60_combout\,
	datad => \db3|level~q\,
	combout => \cur_sel~31_combout\);

-- Location: FF_X109_Y18_N29
\cur_sel[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~31_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(30));

-- Location: LCCOMB_X109_Y16_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = cur_sel(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X109_Y18_N10
\cur_sel~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cur_sel~32_combout\ = (!\db3|level~q\ & (\Equal4~0_combout\ & (\SW[0]~input_o\ & \Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datab => \Equal4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \Add0~62_combout\,
	combout => \cur_sel~32_combout\);

-- Location: FF_X109_Y18_N11
\cur_sel[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \cur_sel~32_combout\,
	ena => \cur_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cur_sel(31));

-- Location: LCCOMB_X110_Y18_N14
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!cur_sel(26) & (!cur_sel(29) & (!cur_sel(27) & !cur_sel(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(26),
	datab => cur_sel(29),
	datac => cur_sel(27),
	datad => cur_sel(28),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X108_Y18_N24
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!cur_sel(30) & (!cur_sel(31) & \Equal2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cur_sel(30),
	datac => cur_sel(31),
	datad => \Equal2~7_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X108_Y18_N6
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~5_combout\ & (\Equal2~6_combout\ & (\Equal2~4_combout\ & \Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~5_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X108_Y14_N16
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ((!\Equal2~9_combout\) # (!cur_sel(1))) # (!cur_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datac => cur_sel(1),
	datad => \Equal2~9_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X108_Y14_N6
\sec[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~31_combout\ = ((!\Equal4~0_combout\ & ((!\db1|level~q\) # (!\db0|level~q\)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db0|level~q\,
	datab => \SW[0]~input_o\,
	datac => \db1|level~q\,
	datad => \Equal4~0_combout\,
	combout => \sec[1]~31_combout\);

-- Location: FF_X107_Y16_N5
\sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \sec~12_combout\,
	ena => \sec[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(5));

-- Location: LCCOMB_X107_Y15_N14
\sec[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~33_combout\ = (sec(5)) # (((sec(4)) # (\db1|level~q\)) # (!\sec~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => \sec~9_combout\,
	datac => sec(4),
	datad => \db1|level~q\,
	combout => \sec[1]~33_combout\);

-- Location: LCCOMB_X107_Y15_N12
\sec[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[1]~34_combout\ = (!\sec[1]~7_combout\ & ((\sec[1]~33_combout\) # ((\sec~9_combout\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec[1]~7_combout\,
	datab => \sec~9_combout\,
	datac => \SW[0]~input_o\,
	datad => \sec[1]~33_combout\,
	combout => \sec[1]~34_combout\);

-- Location: LCCOMB_X108_Y15_N0
\sec~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~23_combout\ = (\min[0]~3_combout\ & (((\Add11~2_combout\) # (!\sec[1]~34_combout\)))) # (!\min[0]~3_combout\ & (\Add12~2_combout\ & ((\sec[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add11~2_combout\,
	datad => \sec[1]~34_combout\,
	combout => \sec~23_combout\);

-- Location: LCCOMB_X107_Y16_N12
\sec~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~24_combout\ = (\sec[1]~7_combout\ & ((\sec~23_combout\ & (!\LessThan5~0_combout\)) # (!\sec~23_combout\ & ((\Add9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \Add9~0_combout\,
	datad => \sec~23_combout\,
	combout => \sec~24_combout\);

-- Location: LCCOMB_X107_Y16_N14
\sec~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~25_combout\ = (!\sec[1]~8_combout\ & ((\sec~23_combout\ & ((\Add7~0_combout\) # (!\sec~24_combout\))) # (!\sec~23_combout\ & ((\sec~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \sec~23_combout\,
	datac => \sec[1]~8_combout\,
	datad => \sec~24_combout\,
	combout => \sec~25_combout\);

-- Location: FF_X107_Y16_N15
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \sec~25_combout\,
	ena => \sec[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: LCCOMB_X110_Y16_N24
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (sec(2) & (\Add7~1\ & VCC)) # (!sec(2) & (!\Add7~1\))
-- \Add7~3\ = CARRY((!sec(2) & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(2),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X108_Y16_N16
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (sec(2) & (\Add12~3\ $ (GND))) # (!sec(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((sec(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sec(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X107_Y16_N8
\sec~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~20_combout\ = (\min[0]~3_combout\ & (((\Add11~4_combout\ & \sec[1]~34_combout\)))) # (!\min[0]~3_combout\ & ((\Add12~4_combout\) # ((!\sec[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datab => \Add11~4_combout\,
	datac => \min[0]~3_combout\,
	datad => \sec[1]~34_combout\,
	combout => \sec~20_combout\);

-- Location: LCCOMB_X107_Y16_N6
\sec~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~21_combout\ = (\sec[1]~7_combout\ & ((\sec~20_combout\ & ((!\Add9~2_combout\))) # (!\sec~20_combout\ & (!\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \Add9~2_combout\,
	datac => \sec~20_combout\,
	datad => \sec[1]~7_combout\,
	combout => \sec~21_combout\);

-- Location: LCCOMB_X107_Y16_N0
\sec~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~22_combout\ = (!\sec[1]~8_combout\ & ((\sec~20_combout\ & ((!\sec~21_combout\))) # (!\sec~20_combout\ & (\Add7~2_combout\ & \sec~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \sec~20_combout\,
	datac => \sec[1]~8_combout\,
	datad => \sec~21_combout\,
	combout => \sec~22_combout\);

-- Location: FF_X107_Y16_N1
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \sec~22_combout\,
	ena => \sec[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: LCCOMB_X108_Y16_N18
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (sec(3) & (!\Add12~5\)) # (!sec(3) & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X107_Y16_N16
\sec~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~17_combout\ = (\min[0]~3_combout\ & ((\Add11~6_combout\) # ((!\sec[1]~34_combout\)))) # (!\min[0]~3_combout\ & (((\Add12~6_combout\ & \sec[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Add12~6_combout\,
	datac => \min[0]~3_combout\,
	datad => \sec[1]~34_combout\,
	combout => \sec~17_combout\);

-- Location: LCCOMB_X107_Y16_N2
\sec~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~18_combout\ = (\sec[1]~7_combout\ & ((\sec~17_combout\ & (!\LessThan5~0_combout\)) # (!\sec~17_combout\ & ((\Add9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \Add9~4_combout\,
	datad => \sec~17_combout\,
	combout => \sec~18_combout\);

-- Location: LCCOMB_X107_Y16_N18
\sec~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~19_combout\ = (!\sec[1]~8_combout\ & ((\sec~17_combout\ & ((\Add7~4_combout\) # (!\sec~18_combout\))) # (!\sec~17_combout\ & ((\sec~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \sec~17_combout\,
	datac => \sec[1]~8_combout\,
	datad => \sec~18_combout\,
	combout => \sec~19_combout\);

-- Location: FF_X107_Y16_N19
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \sec~19_combout\,
	ena => \sec[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: LCCOMB_X110_Y15_N10
\sec~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~14_combout\ = (\min[0]~3_combout\ & (((\Add11~8_combout\) # (!\sec[1]~34_combout\)))) # (!\min[0]~3_combout\ & (\Add12~8_combout\ & ((\sec[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add11~8_combout\,
	datad => \sec[1]~34_combout\,
	combout => \sec~14_combout\);

-- Location: LCCOMB_X110_Y15_N12
\sec~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~15_combout\ = (\sec[1]~7_combout\ & ((\sec~14_combout\ & (!\LessThan5~0_combout\)) # (!\sec~14_combout\ & ((\Add9~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec[1]~7_combout\,
	datab => \LessThan5~0_combout\,
	datac => \Add9~6_combout\,
	datad => \sec~14_combout\,
	combout => \sec~15_combout\);

-- Location: LCCOMB_X110_Y15_N4
\sec~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~16_combout\ = (!\sec[1]~8_combout\ & ((\sec~14_combout\ & ((\Add7~6_combout\) # (!\sec~15_combout\))) # (!\sec~14_combout\ & ((\sec~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~14_combout\,
	datab => \Add7~6_combout\,
	datac => \sec[1]~8_combout\,
	datad => \sec~15_combout\,
	combout => \sec~16_combout\);

-- Location: FF_X110_Y15_N5
\sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \sec~16_combout\,
	ena => \sec[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(4));

-- Location: LCCOMB_X108_Y16_N26
\sec~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~26_combout\ = (\Add12~0_combout\ & (((\LessThan12~0_combout\) # (!sec(5))) # (!sec(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => sec(5),
	datac => \LessThan12~0_combout\,
	datad => \Add12~0_combout\,
	combout => \sec~26_combout\);

-- Location: LCCOMB_X108_Y16_N10
\sec~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~32_combout\ = (\Add11~0_combout\) # ((!sec(4) & (!sec(5) & \sec~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => sec(5),
	datac => \Add11~0_combout\,
	datad => \sec~9_combout\,
	combout => \sec~32_combout\);

-- Location: LCCOMB_X108_Y16_N8
\sec~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~28_combout\ = (\db1|level~q\ & (\sec~26_combout\ & (!\sec[1]~27_combout\))) # (!\db1|level~q\ & (((\sec[1]~27_combout\) # (\sec~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~26_combout\,
	datab => \db1|level~q\,
	datac => \sec[1]~27_combout\,
	datad => \sec~32_combout\,
	combout => \sec~28_combout\);

-- Location: LCCOMB_X108_Y16_N6
\sec~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~5_combout\ = (sec(4) & (sec(5) & !\HEX3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datac => sec(5),
	datad => \HEX3~4_combout\,
	combout => \sec~5_combout\);

-- Location: LCCOMB_X108_Y16_N2
\sec~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~29_combout\ = (\db1|level~q\ & (\sec~5_combout\ & ((!\db0|level~q\)))) # (!\db1|level~q\ & (((\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~5_combout\,
	datab => \LessThan5~0_combout\,
	datac => \db1|level~q\,
	datad => \db0|level~q\,
	combout => \sec~29_combout\);

-- Location: LCCOMB_X108_Y16_N24
\sec~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec~30_combout\ = (!\Equal4~0_combout\ & ((\sec[1]~27_combout\ & (\sec~29_combout\)) # (!\sec[1]~27_combout\ & ((!\sec~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \sec~29_combout\,
	datac => \sec[1]~27_combout\,
	datad => \sec~13_combout\,
	combout => \sec~30_combout\);

-- Location: LCCOMB_X108_Y16_N4
\sec[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sec[0]~0_combout\ = (\sec~30_combout\ & (\sec~28_combout\)) # (!\sec~30_combout\ & ((sec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec~28_combout\,
	datac => sec(0),
	datad => \sec~30_combout\,
	combout => \sec[0]~0_combout\);

-- Location: FF_X108_Y16_N5
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \sec[0]~0_combout\,
	asdata => \sec~26_combout\,
	sload => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LCCOMB_X106_Y16_N14
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = ((!sec(2) & ((!sec(1)) # (!sec(0))))) # (!sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(0),
	datab => sec(2),
	datac => sec(1),
	datad => sec(3),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X106_Y16_N20
\LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (!\LessThan12~0_combout\ & (sec(4) & sec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan12~0_combout\,
	datac => sec(4),
	datad => sec(5),
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X108_Y15_N26
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!cur_sel(0) & (cur_sel(1) & \Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => cur_sel(1),
	datac => \Equal2~9_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X109_Y15_N0
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!min(3) & (!min(4) & !min(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(4),
	datac => min(5),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X109_Y15_N30
\min~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~2_combout\ = (min(5) & (!\HEX5~0_combout\ & min(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datac => \HEX5~0_combout\,
	datad => min(4),
	combout => \min~2_combout\);

-- Location: LCCOMB_X108_Y15_N6
\min~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~24_combout\ = (\db1|level~q\ & (((\min~2_combout\ & !\db0|level~q\)))) # (!\db1|level~q\ & (\LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \db1|level~q\,
	datac => \min~2_combout\,
	datad => \db0|level~q\,
	combout => \min~24_combout\);

-- Location: LCCOMB_X108_Y15_N2
\min~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~30_combout\ = (\sec[1]~27_combout\ & (((\min~24_combout\)))) # (!\sec[1]~27_combout\ & (((!\db0|level~q\)) # (!\db1|level~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|level~q\,
	datab => \db0|level~q\,
	datac => \sec[1]~27_combout\,
	datad => \min~24_combout\,
	combout => \min~30_combout\);

-- Location: LCCOMB_X108_Y15_N24
\min~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~25_combout\ = (\SW[0]~input_o\ & (((\Equal3~0_combout\ & \min~30_combout\)))) # (!\SW[0]~input_o\ & (\LessThan12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \LessThan12~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \min~30_combout\,
	combout => \min~25_combout\);

-- Location: LCCOMB_X108_Y15_N20
\min[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[0]~29_combout\ = (\min~25_combout\ & ((\min[0]~28_combout\) # ((\min[0]~26_combout\)))) # (!\min~25_combout\ & (((min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[0]~28_combout\,
	datab => \min[0]~26_combout\,
	datac => min(0),
	datad => \min~25_combout\,
	combout => \min[0]~29_combout\);

-- Location: FF_X108_Y15_N21
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \min[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X105_Y15_N26
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = ((!min(2) & ((!min(1)) # (!min(0))))) # (!min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => min(2),
	datac => min(3),
	datad => min(1),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X109_Y15_N28
\min[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[5]~4_combout\ = (min(5) & (min(4) & ((\db1|level~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(4),
	datac => \SW[0]~input_o\,
	datad => \db1|level~q\,
	combout => \min[5]~4_combout\);

-- Location: LCCOMB_X109_Y15_N26
\min[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[5]~5_combout\ = (\min[5]~4_combout\ & ((\sec[1]~7_combout\ & (!\HEX5~0_combout\)) # (!\sec[1]~7_combout\ & ((!\LessThan13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \LessThan13~0_combout\,
	datad => \min[5]~4_combout\,
	combout => \min[5]~5_combout\);

-- Location: LCCOMB_X111_Y15_N10
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = min(1) $ (VCC)
-- \Add6~1\ = CARRY(min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X111_Y15_N22
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = min(1) $ (VCC)
-- \Add8~1\ = CARRY(min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X109_Y15_N8
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (min(1) & (!\Add13~1\)) # (!min(1) & ((\Add13~1\) # (GND)))
-- \Add13~3\ = CARRY((!\Add13~1\) # (!min(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X110_Y15_N22
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (min(1) & (\Add10~1\ & VCC)) # (!min(1) & (!\Add10~1\))
-- \Add10~3\ = CARRY((!min(1) & !\Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X109_Y15_N18
\min[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[5]~7_combout\ = (!\sec[1]~7_combout\ & (((\db1|level~q\) # (!\min[0]~6_combout\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \min[0]~6_combout\,
	datac => \sec[1]~7_combout\,
	datad => \db1|level~q\,
	combout => \min[5]~7_combout\);

-- Location: LCCOMB_X110_Y15_N18
\min~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~21_combout\ = (\min[0]~3_combout\ & (((\Add10~2_combout\) # (!\min[5]~7_combout\)))) # (!\min[0]~3_combout\ & (\Add13~2_combout\ & ((\min[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~2_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add10~2_combout\,
	datad => \min[5]~7_combout\,
	combout => \min~21_combout\);

-- Location: LCCOMB_X110_Y15_N8
\min~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~22_combout\ = (\sec[1]~7_combout\ & ((\min~21_combout\ & (!\LessThan4~0_combout\)) # (!\min~21_combout\ & ((\Add8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \Add8~0_combout\,
	datac => \sec[1]~7_combout\,
	datad => \min~21_combout\,
	combout => \min~22_combout\);

-- Location: LCCOMB_X110_Y15_N0
\min~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~23_combout\ = (!\min[5]~5_combout\ & ((\min~22_combout\ & ((\Add6~0_combout\) # (!\min~21_combout\))) # (!\min~22_combout\ & ((\min~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[5]~5_combout\,
	datab => \Add6~0_combout\,
	datac => \min~22_combout\,
	datad => \min~21_combout\,
	combout => \min~23_combout\);

-- Location: LCCOMB_X108_Y15_N8
\min[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \min[5]~11_combout\ = (\SW[0]~input_o\ & (\Equal3~0_combout\ & ((!\sec~13_combout\)))) # (!\SW[0]~input_o\ & (((\LessThan12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \LessThan12~1_combout\,
	datad => \sec~13_combout\,
	combout => \min[5]~11_combout\);

-- Location: FF_X110_Y15_N1
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \min~23_combout\,
	ena => \min[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X110_Y15_N24
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (min(2) & ((GND) # (!\Add10~3\))) # (!min(2) & (\Add10~3\ $ (GND)))
-- \Add10~5\ = CARRY((min(2)) # (!\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X109_Y15_N10
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (min(2) & (\Add13~3\ $ (GND))) # (!min(2) & (!\Add13~3\ & VCC))
-- \Add13~5\ = CARRY((min(2) & !\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X108_Y15_N30
\min~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~18_combout\ = (\min[0]~3_combout\ & (\Add10~4_combout\ & ((\min[5]~7_combout\)))) # (!\min[0]~3_combout\ & (((\Add13~4_combout\) # (!\min[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add13~4_combout\,
	datad => \min[5]~7_combout\,
	combout => \min~18_combout\);

-- Location: LCCOMB_X111_Y15_N12
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (min(2) & (\Add6~1\ & VCC)) # (!min(2) & (!\Add6~1\))
-- \Add6~3\ = CARRY((!min(2) & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X111_Y15_N24
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (min(2) & (!\Add8~1\)) # (!min(2) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!min(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(2),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X108_Y15_N4
\min~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~19_combout\ = (\sec[1]~7_combout\ & ((\min~18_combout\ & ((!\Add8~2_combout\))) # (!\min~18_combout\ & (!\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \min~18_combout\,
	datad => \Add8~2_combout\,
	combout => \min~19_combout\);

-- Location: LCCOMB_X108_Y15_N22
\min~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~20_combout\ = (!\min[5]~5_combout\ & ((\min~18_combout\ & ((!\min~19_combout\))) # (!\min~18_combout\ & (\Add6~2_combout\ & \min~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~18_combout\,
	datab => \Add6~2_combout\,
	datac => \min~19_combout\,
	datad => \min[5]~5_combout\,
	combout => \min~20_combout\);

-- Location: FF_X108_Y15_N23
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \min~20_combout\,
	ena => \min[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X109_Y15_N12
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (min(3) & (!\Add13~5\)) # (!min(3) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!min(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X110_Y15_N26
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (min(3) & (\Add10~5\ & VCC)) # (!min(3) & (!\Add10~5\))
-- \Add10~7\ = CARRY((!min(3) & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X110_Y15_N6
\min~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~15_combout\ = (\min[0]~3_combout\ & (((\Add10~6_combout\) # (!\min[5]~7_combout\)))) # (!\min[0]~3_combout\ & (\Add13~6_combout\ & ((\min[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add10~6_combout\,
	datad => \min[5]~7_combout\,
	combout => \min~15_combout\);

-- Location: LCCOMB_X111_Y15_N14
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (min(3) & (\Add6~3\ $ (GND))) # (!min(3) & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((min(3) & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X111_Y15_N26
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (min(3) & ((GND) # (!\Add8~3\))) # (!min(3) & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((min(3)) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X110_Y15_N16
\min~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~16_combout\ = (\sec[1]~7_combout\ & ((\min~15_combout\ & (!\LessThan4~0_combout\)) # (!\min~15_combout\ & ((\Add8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \Add8~4_combout\,
	datac => \sec[1]~7_combout\,
	datad => \min~15_combout\,
	combout => \min~16_combout\);

-- Location: LCCOMB_X110_Y15_N2
\min~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~17_combout\ = (!\min[5]~5_combout\ & ((\min~15_combout\ & ((\Add6~4_combout\) # (!\min~16_combout\))) # (!\min~15_combout\ & ((\min~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~15_combout\,
	datab => \Add6~4_combout\,
	datac => \min[5]~5_combout\,
	datad => \min~16_combout\,
	combout => \min~17_combout\);

-- Location: FF_X110_Y15_N3
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \min~17_combout\,
	ena => \min[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LCCOMB_X110_Y15_N28
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (min(4) & ((GND) # (!\Add10~7\))) # (!min(4) & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((min(4)) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X109_Y15_N14
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (min(4) & (\Add13~7\ $ (GND))) # (!min(4) & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((min(4) & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X109_Y15_N22
\min~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~12_combout\ = (\min[0]~3_combout\ & ((\Add10~8_combout\) # ((!\min[5]~7_combout\)))) # (!\min[0]~3_combout\ & (((\Add13~8_combout\ & \min[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min[0]~3_combout\,
	datab => \Add10~8_combout\,
	datac => \Add13~8_combout\,
	datad => \min[5]~7_combout\,
	combout => \min~12_combout\);

-- Location: LCCOMB_X111_Y15_N16
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (min(4) & (\Add6~5\ & VCC)) # (!min(4) & (!\Add6~5\))
-- \Add6~7\ = CARRY((!min(4) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X111_Y15_N28
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (min(4) & (!\Add8~5\)) # (!min(4) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!min(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X109_Y15_N20
\min~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~13_combout\ = (\sec[1]~7_combout\ & ((\min~12_combout\ & (!\LessThan4~0_combout\)) # (!\min~12_combout\ & ((\Add8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \min~12_combout\,
	datad => \Add8~6_combout\,
	combout => \min~13_combout\);

-- Location: LCCOMB_X109_Y15_N24
\min~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~14_combout\ = (!\min[5]~5_combout\ & ((\min~12_combout\ & ((\Add6~6_combout\) # (!\min~13_combout\))) # (!\min~12_combout\ & ((\min~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~12_combout\,
	datab => \Add6~6_combout\,
	datac => \min[5]~5_combout\,
	datad => \min~13_combout\,
	combout => \min~14_combout\);

-- Location: FF_X109_Y15_N25
\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \min~14_combout\,
	ena => \min[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

-- Location: LCCOMB_X111_Y15_N18
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = \Add6~7\ $ (min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => min(5),
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X110_Y15_N30
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = min(5) $ (!\Add10~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	cin => \Add10~9\,
	combout => \Add10~10_combout\);

-- Location: LCCOMB_X109_Y15_N16
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = min(5) $ (\Add13~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	cin => \Add13~9\,
	combout => \Add13~10_combout\);

-- Location: LCCOMB_X108_Y15_N14
\min~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~8_combout\ = (\min[0]~3_combout\ & ((\Add10~10_combout\) # ((!\min[5]~7_combout\)))) # (!\min[0]~3_combout\ & (((\Add13~10_combout\ & \min[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \min[0]~3_combout\,
	datac => \Add13~10_combout\,
	datad => \min[5]~7_combout\,
	combout => \min~8_combout\);

-- Location: LCCOMB_X111_Y15_N30
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = \Add8~7\ $ (!min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => min(5),
	cin => \Add8~7\,
	combout => \Add8~8_combout\);

-- Location: LCCOMB_X108_Y15_N16
\min~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~9_combout\ = (\sec[1]~7_combout\ & ((\min~8_combout\ & (!\LessThan4~0_combout\)) # (!\min~8_combout\ & ((\Add8~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \sec[1]~7_combout\,
	datac => \min~8_combout\,
	datad => \Add8~8_combout\,
	combout => \min~9_combout\);

-- Location: LCCOMB_X108_Y15_N28
\min~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \min~10_combout\ = (!\min[5]~5_combout\ & ((\min~8_combout\ & ((\Add6~8_combout\) # (!\min~9_combout\))) # (!\min~8_combout\ & ((\min~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => \min[5]~5_combout\,
	datac => \min~8_combout\,
	datad => \min~9_combout\,
	combout => \min~10_combout\);

-- Location: FF_X108_Y15_N29
\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \min~10_combout\,
	ena => \min[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

-- Location: LCCOMB_X106_Y16_N22
\hour~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~4_combout\ = (min(5) & (min(4) & (!\LessThan13~0_combout\ & \LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => min(4),
	datac => \LessThan13~0_combout\,
	datad => \LessThan12~1_combout\,
	combout => \hour~4_combout\);

-- Location: LCCOMB_X110_Y18_N24
\am~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~2_combout\ = (!cur_sel(1) & cur_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cur_sel(1),
	datad => cur_sel(0),
	combout => \am~2_combout\);

-- Location: LCCOMB_X107_Y14_N4
\am~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~3_combout\ = (\am~2_combout\ & (\Equal2~9_combout\ & ((!\db1|level~q\) # (!\db0|level~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \am~2_combout\,
	datab => \db0|level~q\,
	datac => \db1|level~q\,
	datad => \Equal2~9_combout\,
	combout => \am~3_combout\);

-- Location: LCCOMB_X107_Y14_N20
\hour~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~5_combout\ = (\SW[0]~input_o\ & ((\am~3_combout\))) # (!\SW[0]~input_o\ & (\hour~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \hour~4_combout\,
	datad => \am~3_combout\,
	combout => \hour~5_combout\);

-- Location: LCCOMB_X107_Y13_N26
\hour~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~82_combout\ = (\SW[1]~input_o\ & (((\LessThan15~1_combout\)))) # (!\SW[1]~input_o\ & (\LessThan14~0_combout\ & (\am~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \am~q\,
	datad => \LessThan15~1_combout\,
	combout => \hour~82_combout\);

-- Location: LCCOMB_X107_Y13_N6
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (hour(3) & hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => hour(2),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X107_Y13_N24
\hour[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~8_combout\ = (!\SW[1]~input_o\ & ((hour(4)) # ((\LessThan15~0_combout\) # (!\am~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => \SW[1]~input_o\,
	datac => \am~q\,
	datad => \LessThan15~0_combout\,
	combout => \hour[4]~8_combout\);

-- Location: LCCOMB_X108_Y13_N12
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = hour(1) $ (hour(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datac => hour(0),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X108_Y13_N4
\hour~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~63_combout\ = hour(1) $ (((hour(0) & !\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datac => hour(0),
	datad => \Equal0~1_combout\,
	combout => \hour~63_combout\);

-- Location: LCCOMB_X108_Y13_N20
\hour~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~61_combout\ = (hour(4)) # ((hour(1) & hour(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datac => hour(3),
	datad => hour(4),
	combout => \hour~61_combout\);

-- Location: LCCOMB_X108_Y13_N26
\hour~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~62_combout\ = (\Equal0~1_combout\ & (\hour~61_combout\)) # (!\Equal0~1_combout\ & ((\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour~61_combout\,
	datac => \LessThan2~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \hour~62_combout\);

-- Location: LCCOMB_X108_Y13_N6
\hour~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~64_combout\ = (\hour~63_combout\ & (!\hour~62_combout\ & (\Equal0~1_combout\ $ (\db1|level~q\)))) # (!\hour~63_combout\ & (((\Equal0~1_combout\ & !\hour~62_combout\)) # (!\db1|level~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \hour~63_combout\,
	datac => \db1|level~q\,
	datad => \hour~62_combout\,
	combout => \hour~64_combout\);

-- Location: LCCOMB_X108_Y13_N14
\hour~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~65_combout\ = (\SW[0]~input_o\ & (((\hour~64_combout\)))) # (!\SW[0]~input_o\ & (\Add5~1_combout\ & (!\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \LessThan2~1_combout\,
	datad => \hour~64_combout\,
	combout => \hour~65_combout\);

-- Location: LCCOMB_X108_Y13_N30
\hour~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~55_combout\ = (\LessThan14~0_combout\ & (hour(1) $ (hour(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datac => hour(0),
	datad => \LessThan14~0_combout\,
	combout => \hour~55_combout\);

-- Location: LCCOMB_X107_Y13_N14
\hour[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~9_combout\ = (!hour(4) & (\SW[1]~input_o\ & ((!\LessThan15~0_combout\) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => \SW[1]~input_o\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan15~0_combout\,
	combout => \hour[4]~9_combout\);

-- Location: LCCOMB_X108_Y13_N8
\hour~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~54_combout\ = (hour(1)) # ((!hour(4) & ((!hour(2)) # (!hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(3),
	datac => hour(2),
	datad => hour(4),
	combout => \hour~54_combout\);

-- Location: LCCOMB_X107_Y13_N30
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!hour(3) & (!hour(2) & ((!hour(1)) # (!hour(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => hour(1),
	datac => hour(3),
	datad => hour(2),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X108_Y13_N24
\hour~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~58_combout\ = (hour(4)) # ((hour(1)) # (!\LessThan6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(4),
	datac => hour(1),
	datad => \LessThan6~0_combout\,
	combout => \hour~58_combout\);

-- Location: LCCOMB_X107_Y13_N0
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (hour(4)) # ((hour(1)) # ((hour(3)) # (hour(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(1),
	datac => hour(3),
	datad => hour(2),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X108_Y13_N28
\hour~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~56_combout\ = (\LessThan9~0_combout\ & (hour(1) $ (!hour(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(0),
	datac => \LessThan9~0_combout\,
	combout => \hour~56_combout\);

-- Location: LCCOMB_X108_Y13_N18
\hour~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~57_combout\ = (\db1|level~q\ & ((\hour~55_combout\) # ((\Equal1~0_combout\)))) # (!\db1|level~q\ & (((\hour~56_combout\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~55_combout\,
	datab => \hour~56_combout\,
	datac => \db1|level~q\,
	datad => \Equal1~0_combout\,
	combout => \hour~57_combout\);

-- Location: LCCOMB_X108_Y13_N2
\hour~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~59_combout\ = (\Equal1~0_combout\ & ((\hour~57_combout\ & ((!\hour~58_combout\))) # (!\hour~57_combout\ & (!\hour~54_combout\)))) # (!\Equal1~0_combout\ & (((\hour~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~54_combout\,
	datab => \hour~58_combout\,
	datac => \Equal1~0_combout\,
	datad => \hour~57_combout\,
	combout => \hour~59_combout\);

-- Location: LCCOMB_X107_Y13_N10
\hour~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~60_combout\ = (\hour[4]~9_combout\ & ((\SW[0]~input_o\ & ((\hour~59_combout\))) # (!\SW[0]~input_o\ & (\hour~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~55_combout\,
	datab => \hour[4]~9_combout\,
	datac => \SW[0]~input_o\,
	datad => \hour~59_combout\,
	combout => \hour~60_combout\);

-- Location: LCCOMB_X107_Y13_N28
\hour~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~66_combout\ = (\hour~60_combout\) # ((\hour[4]~8_combout\ & \hour~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~8_combout\,
	datac => \hour~65_combout\,
	datad => \hour~60_combout\,
	combout => \hour~66_combout\);

-- Location: LCCOMB_X107_Y13_N16
\hour~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~67_combout\ = (\hour~5_combout\ & ((\hour~66_combout\) # ((\hour~82_combout\ & hour(1))))) # (!\hour~5_combout\ & (((hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~5_combout\,
	datab => \hour~82_combout\,
	datac => hour(1),
	datad => \hour~66_combout\,
	combout => \hour~67_combout\);

-- Location: FF_X107_Y13_N17
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \hour~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LCCOMB_X107_Y15_N16
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (hour(1) & (hour(0) & hour(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(1),
	datac => hour(0),
	datad => hour(2),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X105_Y15_N18
\hour~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~69_combout\ = (!hour(0) & (((!hour(3) & !\LessThan2~0_combout\)) # (!hour(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(4),
	datac => hour(0),
	datad => \LessThan2~0_combout\,
	combout => \hour~69_combout\);

-- Location: LCCOMB_X105_Y15_N16
\hour~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~70_combout\ = (\hour~69_combout\ & (((!\SW[1]~input_o\ & !\Equal0~1_combout\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \hour~69_combout\,
	combout => \hour~70_combout\);

-- Location: LCCOMB_X105_Y15_N2
\hour~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~71_combout\ = (hour(4)) # (((hour(3) & hour(2))) # (!hour(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(4),
	datac => hour(0),
	datad => hour(2),
	combout => \hour~71_combout\);

-- Location: LCCOMB_X106_Y15_N4
\hour~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~72_combout\ = (\SW[0]~input_o\ & (\db1|level~q\ & ((\hour~71_combout\) # (\Equal1~0_combout\)))) # (!\SW[0]~input_o\ & (\hour~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~71_combout\,
	datab => \SW[0]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \db1|level~q\,
	combout => \hour~72_combout\);

-- Location: LCCOMB_X106_Y15_N8
\hour~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~73_combout\ = (\hour~72_combout\) # ((!\Equal1~0_combout\ & (!hour(0) & \LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => hour(0),
	datac => \hour~72_combout\,
	datad => \LessThan9~0_combout\,
	combout => \hour~73_combout\);

-- Location: LCCOMB_X106_Y15_N10
\hour~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~68_combout\ = (!\SW[1]~input_o\ & (\min[0]~3_combout\ & ((\Equal0~1_combout\) # (!hour(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Equal0~1_combout\,
	datac => hour(0),
	datad => \min[0]~3_combout\,
	combout => \hour~68_combout\);

-- Location: LCCOMB_X106_Y15_N30
\hour~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~74_combout\ = (\hour~70_combout\) # ((\hour~68_combout\) # ((\SW[1]~input_o\ & \hour~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~70_combout\,
	datab => \SW[1]~input_o\,
	datac => \hour~73_combout\,
	datad => \hour~68_combout\,
	combout => \hour~74_combout\);

-- Location: LCCOMB_X107_Y14_N0
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (cur_sel(0) & (!cur_sel(1) & \Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => cur_sel(1),
	datad => \Equal2~9_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X107_Y13_N18
\hour~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~29_combout\ = (!hour(4) & (((!hour(2)) # (!hour(3))) # (!hour(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(1),
	datac => hour(3),
	datad => hour(2),
	combout => \hour~29_combout\);

-- Location: LCCOMB_X105_Y13_N8
\HEX7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~0_combout\ = (!hour(4) & (((!hour(1) & !hour(2))) # (!hour(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(3),
	datac => hour(1),
	datad => hour(2),
	combout => \HEX7~0_combout\);

-- Location: LCCOMB_X107_Y14_N26
\hour~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~75_combout\ = (\db1|level~q\ & (!\hour~29_combout\ & (!\db0|level~q\))) # (!\db1|level~q\ & (((\HEX7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~29_combout\,
	datab => \db0|level~q\,
	datac => \db1|level~q\,
	datad => \HEX7~0_combout\,
	combout => \hour~75_combout\);

-- Location: LCCOMB_X107_Y14_N24
\hour~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~76_combout\ = (\Equal2~10_combout\ & ((\Equal0~1_combout\ & (\hour~75_combout\)) # (!\Equal0~1_combout\ & ((!\sec~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal2~10_combout\,
	datac => \hour~75_combout\,
	datad => \sec~13_combout\,
	combout => \hour~76_combout\);

-- Location: LCCOMB_X107_Y14_N2
\hour~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~77_combout\ = (\hour[4]~8_combout\ & ((\SW[0]~input_o\ & ((\hour~76_combout\))) # (!\SW[0]~input_o\ & (\hour~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \hour[4]~8_combout\,
	datac => \hour~4_combout\,
	datad => \hour~76_combout\,
	combout => \hour~77_combout\);

-- Location: LCCOMB_X107_Y14_N22
\am~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~6_combout\ = (!\db1|level~q\ & \HEX7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \db1|level~q\,
	datad => \HEX7~0_combout\,
	combout => \am~6_combout\);

-- Location: LCCOMB_X108_Y14_N22
\am~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~5_combout\ = (!\db0|level~q\ & (\db1|level~q\ & ((hour(4)) # (!\LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => \db0|level~q\,
	datac => \LessThan6~0_combout\,
	datad => \db1|level~q\,
	combout => \am~5_combout\);

-- Location: LCCOMB_X107_Y14_N28
\am~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~7_combout\ = (\Equal1~0_combout\ & (\Equal2~10_combout\ & ((\am~6_combout\) # (\am~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal2~10_combout\,
	datac => \am~6_combout\,
	datad => \am~5_combout\,
	combout => \am~7_combout\);

-- Location: LCCOMB_X107_Y14_N16
\hour~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~78_combout\ = (\SW[0]~input_o\ & ((\am~7_combout\) # ((\am~3_combout\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \am~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \am~7_combout\,
	combout => \hour~78_combout\);

-- Location: LCCOMB_X107_Y14_N18
\hour~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~79_combout\ = (\hour[4]~9_combout\ & ((\hour~78_combout\) # ((!\SW[0]~input_o\ & \hour~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \hour[4]~9_combout\,
	datac => \hour~4_combout\,
	datad => \hour~78_combout\,
	combout => \hour~79_combout\);

-- Location: LCCOMB_X107_Y14_N30
\hour[0]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[0]~80_combout\ = (\hour~77_combout\ & (\hour~74_combout\)) # (!\hour~77_combout\ & ((\hour~79_combout\ & (\hour~74_combout\)) # (!\hour~79_combout\ & ((hour(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~74_combout\,
	datab => \hour~77_combout\,
	datac => hour(0),
	datad => \hour~79_combout\,
	combout => \hour[0]~80_combout\);

-- Location: FF_X107_Y14_N31
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \hour[0]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LCCOMB_X107_Y13_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (hour(0)) # (hour(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(0),
	datad => hour(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X106_Y13_N14
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (hour(4)) # ((hour(2) & (hour(3) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(3),
	datac => hour(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X106_Y13_N2
\hour[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~20_combout\ = (\hour[4]~8_combout\) # ((\SW[1]~input_o\ & !\LessThan15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \LessThan15~1_combout\,
	datad => \hour[4]~8_combout\,
	combout => \hour[4]~20_combout\);

-- Location: LCCOMB_X107_Y15_N2
\hour~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~39_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\LessThan14~0_combout\))) # (!\SW[1]~input_o\ & (\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan14~0_combout\,
	combout => \hour~39_combout\);

-- Location: LCCOMB_X106_Y16_N24
\hour~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~40_combout\ = (\hour~4_combout\ & ((\hour~39_combout\) # ((hour(0) & hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(0),
	datab => hour(1),
	datac => \hour~4_combout\,
	datad => \hour~39_combout\,
	combout => \hour~40_combout\);

-- Location: LCCOMB_X106_Y16_N30
\hour~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~41_combout\ = (\SW[0]~input_o\ & (((\hour~39_combout\)))) # (!\SW[0]~input_o\ & ((hour(2) & ((!\hour~40_combout\))) # (!hour(2) & (!\hour~39_combout\ & \hour~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => \hour~39_combout\,
	datac => \SW[0]~input_o\,
	datad => \hour~40_combout\,
	combout => \hour~41_combout\);

-- Location: LCCOMB_X107_Y15_N10
\hour~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~81_combout\ = (hour(2) $ (((!hour(1) & !hour(0))))) # (!\LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(1),
	datac => hour(0),
	datad => \LessThan9~0_combout\,
	combout => \hour~81_combout\);

-- Location: LCCOMB_X107_Y15_N22
\hour~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~43_combout\ = hour(2) $ (((hour(1) & ((\Equal1~0_combout\) # (hour(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(1),
	datac => \Equal1~0_combout\,
	datad => hour(0),
	combout => \hour~43_combout\);

-- Location: LCCOMB_X107_Y15_N20
\hour~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~42_combout\ = (hour(4) & (((!\db1|level~q\)))) # (!hour(4) & ((\db1|level~q\ & (\LessThan6~0_combout\)) # (!\db1|level~q\ & ((hour(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => hour(4),
	datac => hour(3),
	datad => \db1|level~q\,
	combout => \hour~42_combout\);

-- Location: LCCOMB_X107_Y15_N28
\hour~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~44_combout\ = (\hour~43_combout\ & ((\Equal1~0_combout\ & ((\hour~42_combout\))) # (!\Equal1~0_combout\ & (\LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \hour~43_combout\,
	datad => \hour~42_combout\,
	combout => \hour~44_combout\);

-- Location: LCCOMB_X107_Y15_N26
\hour~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~45_combout\ = (\db1|level~q\ & (((\hour~44_combout\)))) # (!\db1|level~q\ & ((\Equal1~0_combout\ & ((!\hour~44_combout\))) # (!\Equal1~0_combout\ & (\hour~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~81_combout\,
	datab => \db1|level~q\,
	datac => \Equal1~0_combout\,
	datad => \hour~44_combout\,
	combout => \hour~45_combout\);

-- Location: LCCOMB_X106_Y16_N16
\hour~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~49_combout\ = (!hour(4) & (hour(2) $ (hour(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datac => hour(1),
	datad => hour(4),
	combout => \hour~49_combout\);

-- Location: LCCOMB_X105_Y15_N0
\hour~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~46_combout\ = (hour(3) & (hour(1) $ (((!hour(2)))))) # (!hour(3) & ((hour(1) $ (!hour(2))) # (!hour(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(3),
	datab => hour(1),
	datac => hour(4),
	datad => hour(2),
	combout => \hour~46_combout\);

-- Location: LCCOMB_X107_Y15_N6
\hour~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~47_combout\ = hour(2) $ (((hour(1) & ((hour(0)) # (!\db1|level~q\))) # (!hour(1) & (hour(0) & !\db1|level~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(1),
	datac => hour(0),
	datad => \db1|level~q\,
	combout => \hour~47_combout\);

-- Location: LCCOMB_X107_Y15_N0
\hour~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~48_combout\ = (\Equal0~1_combout\ & (((\db1|level~q\)))) # (!\Equal0~1_combout\ & ((\db1|level~q\ & (!\LessThan2~1_combout\ & \hour~47_combout\)) # (!\db1|level~q\ & ((!\hour~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \LessThan2~1_combout\,
	datac => \db1|level~q\,
	datad => \hour~47_combout\,
	combout => \hour~48_combout\);

-- Location: LCCOMB_X106_Y16_N18
\hour~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~50_combout\ = (\Equal0~1_combout\ & ((\hour~48_combout\ & (\hour~49_combout\)) # (!\hour~48_combout\ & ((\hour~46_combout\))))) # (!\Equal0~1_combout\ & (((\hour~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~49_combout\,
	datab => \Equal0~1_combout\,
	datac => \hour~46_combout\,
	datad => \hour~48_combout\,
	combout => \hour~50_combout\);

-- Location: LCCOMB_X106_Y16_N12
\hour~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~51_combout\ = (\hour~41_combout\ & (\hour~45_combout\)) # (!\hour~41_combout\ & ((\hour~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~41_combout\,
	datac => \hour~45_combout\,
	datad => \hour~50_combout\,
	combout => \hour~51_combout\);

-- Location: LCCOMB_X106_Y16_N26
\hour~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~52_combout\ = (\hour[4]~20_combout\ & ((\am~3_combout\ & ((\hour~51_combout\))) # (!\am~3_combout\ & (hour(2))))) # (!\hour[4]~20_combout\ & (hour(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => \hour[4]~20_combout\,
	datac => \am~3_combout\,
	datad => \hour~51_combout\,
	combout => \hour~52_combout\);

-- Location: LCCOMB_X106_Y16_N28
\hour~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~53_combout\ = (\hour[4]~20_combout\ & ((\SW[0]~input_o\ & (\hour~52_combout\)) # (!\SW[0]~input_o\ & ((\hour~41_combout\))))) # (!\hour[4]~20_combout\ & (((!\hour~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \hour[4]~20_combout\,
	datac => \hour~52_combout\,
	datad => \hour~41_combout\,
	combout => \hour~53_combout\);

-- Location: FF_X106_Y16_N29
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \hour~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: LCCOMB_X107_Y13_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (hour(2) & hour(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(2),
	datad => hour(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X107_Y13_N20
\hour[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~30_combout\ = (\hour~29_combout\ & ((\LessThan6~0_combout\) # (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \LessThan6~0_combout\,
	datad => \hour~29_combout\,
	combout => \hour[3]~30_combout\);

-- Location: LCCOMB_X105_Y13_N30
\hour[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~10_combout\ = (\Equal0~1_combout\ & ((\hour[4]~8_combout\) # ((\Equal1~0_combout\ & \hour[4]~9_combout\)))) # (!\Equal0~1_combout\ & (\Equal1~0_combout\ & (\hour[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \hour[4]~9_combout\,
	datad => \hour[4]~8_combout\,
	combout => \hour[4]~10_combout\);

-- Location: LCCOMB_X106_Y13_N18
\hour[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~28_combout\ = ((\SW[0]~input_o\ & \sec[1]~27_combout\)) # (!\hour[4]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \sec[1]~27_combout\,
	datad => \hour[4]~20_combout\,
	combout => \hour[3]~28_combout\);

-- Location: LCCOMB_X106_Y13_N8
\hour[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~31_combout\ = (\hour[3]~30_combout\ & (\hour[4]~10_combout\ & (\db1|level~q\ & \hour[3]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[3]~30_combout\,
	datab => \hour[4]~10_combout\,
	datac => \db1|level~q\,
	datad => \hour[3]~28_combout\,
	combout => \hour[3]~31_combout\);

-- Location: LCCOMB_X106_Y15_N28
\hour[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~21_combout\ = (\hour[4]~20_combout\ & (((!\sec[1]~27_combout\ & \db1|level~q\)) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec[1]~27_combout\,
	datab => \SW[0]~input_o\,
	datac => \db1|level~q\,
	datad => \hour[4]~20_combout\,
	combout => \hour[4]~21_combout\);

-- Location: LCCOMB_X106_Y13_N28
\hour[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~27_combout\ = (\hour[4]~21_combout\ & (!\hour[4]~26_combout\ & (\LessThan2~0_combout\ $ (hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => hour(3),
	datac => \hour[4]~21_combout\,
	datad => \hour[4]~26_combout\,
	combout => \hour[3]~27_combout\);

-- Location: LCCOMB_X106_Y13_N22
\hour[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~32_combout\ = (\hour[3]~27_combout\) # ((\hour[3]~31_combout\ & (\Add2~0_combout\ $ (!hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => hour(3),
	datac => \hour[3]~31_combout\,
	datad => \hour[3]~27_combout\,
	combout => \hour[3]~32_combout\);

-- Location: LCCOMB_X107_Y13_N22
\hour~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~6_combout\ = (!\SW[1]~input_o\ & (\LessThan14~0_combout\ & \am~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \LessThan14~0_combout\,
	datad => \am~q\,
	combout => \hour~6_combout\);

-- Location: LCCOMB_X106_Y13_N20
\hour[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~7_combout\ = (\hour~5_combout\) # ((\SW[1]~input_o\ & ((\LessThan15~1_combout\))) # (!\SW[1]~input_o\ & (\hour~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \hour~6_combout\,
	datac => \LessThan15~1_combout\,
	datad => \hour~5_combout\,
	combout => \hour[4]~7_combout\);

-- Location: LCCOMB_X105_Y13_N24
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = hour(3) $ (hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(3),
	datad => hour(2),
	combout => \Add15~0_combout\);

-- Location: LCCOMB_X105_Y13_N6
\hour[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~12_combout\ = (hour(3)) # ((hour(2)) # ((!\SW[1]~input_o\ & hour(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => hour(3),
	datac => hour(0),
	datad => hour(2),
	combout => \hour[4]~12_combout\);

-- Location: LCCOMB_X105_Y13_N28
\hour[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~11_combout\ = (\Equal0~1_combout\ & (!\Equal1~0_combout\ & ((\hour[4]~9_combout\)))) # (!\Equal0~1_combout\ & ((\hour[4]~8_combout\) # ((!\Equal1~0_combout\ & \hour[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \hour[4]~8_combout\,
	datad => \hour[4]~9_combout\,
	combout => \hour[4]~11_combout\);

-- Location: LCCOMB_X105_Y13_N16
\hour[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~13_combout\ = (\hour[4]~11_combout\ & ((\hour[4]~12_combout\) # ((hour(4)) # (hour(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~12_combout\,
	datab => hour(4),
	datac => hour(1),
	datad => \hour[4]~11_combout\,
	combout => \hour[4]~13_combout\);

-- Location: LCCOMB_X105_Y13_N22
\hour[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~14_combout\ = (!\hour[4]~13_combout\ & ((\HEX7~0_combout\) # (!\hour[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX7~0_combout\,
	datac => \hour[4]~10_combout\,
	datad => \hour[4]~13_combout\,
	combout => \hour[4]~14_combout\);

-- Location: LCCOMB_X105_Y13_N20
\hour[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~15_combout\ = (\hour[4]~13_combout\) # ((\SW[1]~input_o\ & ((\HEX7~0_combout\) # (!\hour[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \HEX7~0_combout\,
	datac => \hour[4]~10_combout\,
	datad => \hour[4]~13_combout\,
	combout => \hour[4]~15_combout\);

-- Location: LCCOMB_X105_Y13_N26
\hour[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~18_combout\ = (\hour[4]~14_combout\ & ((\hour~6_combout\) # (\hour[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour~6_combout\,
	datac => \hour[4]~14_combout\,
	datad => \hour[4]~15_combout\,
	combout => \hour[4]~18_combout\);

-- Location: LCCOMB_X105_Y13_N2
\hour~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~16_combout\ = (hour(1)) # ((hour(2)) # ((hour(0) & \hour[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(1),
	datab => hour(2),
	datac => hour(0),
	datad => \hour[4]~15_combout\,
	combout => \hour~16_combout\);

-- Location: LCCOMB_X105_Y13_N12
\hour~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~17_combout\ = \hour[4]~15_combout\ $ (((!\hour[4]~14_combout\ & (hour(3) $ (\hour~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~14_combout\,
	datab => \hour[4]~15_combout\,
	datac => hour(3),
	datad => \hour~16_combout\,
	combout => \hour~17_combout\);

-- Location: LCCOMB_X105_Y13_N14
\hour~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~19_combout\ = (\Add15~0_combout\ & (((\hour~17_combout\)))) # (!\Add15~0_combout\ & ((\hour[4]~18_combout\ & ((!\hour~17_combout\) # (!\LessThan15~1_combout\))) # (!\hour[4]~18_combout\ & ((\hour~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => \Add15~0_combout\,
	datac => \hour[4]~18_combout\,
	datad => \hour~17_combout\,
	combout => \hour~19_combout\);

-- Location: LCCOMB_X106_Y13_N24
\hour[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~22_combout\ = (!\hour[4]~21_combout\ & (\hour~19_combout\ & ((!\hour[4]~10_combout\) # (!\db1|level~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|level~q\,
	datab => \hour[4]~21_combout\,
	datac => \hour[4]~10_combout\,
	datad => \hour~19_combout\,
	combout => \hour[3]~22_combout\);

-- Location: LCCOMB_X106_Y13_N0
\hour[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[3]~33_combout\ = (\hour[4]~7_combout\ & ((\hour[3]~32_combout\) # ((\hour[3]~22_combout\)))) # (!\hour[4]~7_combout\ & (((hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[3]~32_combout\,
	datab => \hour[4]~7_combout\,
	datac => hour(3),
	datad => \hour[3]~22_combout\,
	combout => \hour[3]~33_combout\);

-- Location: FF_X106_Y13_N1
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \hour[3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LCCOMB_X107_Y15_N4
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (hour(4) & ((hour(3)) # (\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(4),
	datac => hour(3),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X107_Y13_N12
\hour[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~24_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((!\LessThan14~0_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \LessThan14~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \hour[4]~24_combout\);

-- Location: LCCOMB_X107_Y15_N18
\hour[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~25_combout\ = (\db1|level~q\ & ((hour(4)) # ((hour(2) & hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(2),
	datac => hour(3),
	datad => \db1|level~q\,
	combout => \hour[4]~25_combout\);

-- Location: LCCOMB_X107_Y15_N8
\hour[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~23_combout\ = (hour(4) & (\db1|level~q\ & ((hour(3)) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(3),
	datac => \db1|level~q\,
	datad => \LessThan2~0_combout\,
	combout => \hour[4]~23_combout\);

-- Location: LCCOMB_X106_Y13_N10
\hour[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~26_combout\ = (\SW[0]~input_o\ & ((\hour[4]~24_combout\ & (\hour[4]~25_combout\)) # (!\hour[4]~24_combout\ & ((\hour[4]~23_combout\))))) # (!\SW[0]~input_o\ & (\hour[4]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \hour[4]~24_combout\,
	datac => \hour[4]~25_combout\,
	datad => \hour[4]~23_combout\,
	combout => \hour[4]~26_combout\);

-- Location: LCCOMB_X107_Y13_N8
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = hour(4) $ (((hour(3) & \LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datac => hour(3),
	datad => \LessThan2~0_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X106_Y13_N4
\hour[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~36_combout\ = (\hour[3]~31_combout\ & (hour(4) $ (((hour(3)) # (\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(3),
	datac => \hour[3]~31_combout\,
	datad => \Add2~0_combout\,
	combout => \hour[4]~36_combout\);

-- Location: LCCOMB_X106_Y13_N30
\hour[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~37_combout\ = (\hour[4]~36_combout\) # ((!\hour[4]~26_combout\ & (\Add5~0_combout\ & \hour[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~26_combout\,
	datab => \Add5~0_combout\,
	datac => \hour[4]~36_combout\,
	datad => \hour[4]~21_combout\,
	combout => \hour[4]~37_combout\);

-- Location: LCCOMB_X105_Y13_N4
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = hour(4) $ (((hour(3) & ((hour(1)) # (hour(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(3),
	datac => hour(1),
	datad => hour(2),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X106_Y13_N12
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = hour(4) $ (((hour(2)) # ((hour(3)) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datab => hour(3),
	datac => hour(4),
	datad => \LessThan1~0_combout\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X105_Y13_N18
\hour~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~34_combout\ = (\hour[4]~14_combout\ & (((!\hour[4]~15_combout\)))) # (!\hour[4]~14_combout\ & ((\hour[4]~15_combout\ & ((!\Add4~0_combout\))) # (!\hour[4]~15_combout\ & (!\Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \Add4~0_combout\,
	datac => \hour[4]~14_combout\,
	datad => \hour[4]~15_combout\,
	combout => \hour~34_combout\);

-- Location: LCCOMB_X105_Y13_N0
\hour~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~83_combout\ = (\hour~34_combout\ & (hour(4) $ (((hour(2)) # (hour(3)))))) # (!\hour~34_combout\ & (hour(4) & (hour(2) & hour(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(2),
	datac => hour(3),
	datad => \hour~34_combout\,
	combout => \hour~83_combout\);

-- Location: LCCOMB_X105_Y13_N10
\hour~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour~84_combout\ = (\hour[4]~18_combout\ & (\hour~83_combout\ & ((hour(4)) # (\hour~34_combout\)))) # (!\hour[4]~18_combout\ & (((\hour~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => \hour~34_combout\,
	datac => \hour[4]~18_combout\,
	datad => \hour~83_combout\,
	combout => \hour~84_combout\);

-- Location: LCCOMB_X106_Y13_N6
\hour[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~35_combout\ = (!\hour[4]~21_combout\ & (\hour~84_combout\ & ((!\hour[4]~10_combout\) # (!\db1|level~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db1|level~q\,
	datab => \hour[4]~21_combout\,
	datac => \hour[4]~10_combout\,
	datad => \hour~84_combout\,
	combout => \hour[4]~35_combout\);

-- Location: LCCOMB_X106_Y13_N26
\hour[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \hour[4]~38_combout\ = (\hour[4]~7_combout\ & ((\hour[4]~37_combout\) # ((\hour[4]~35_combout\)))) # (!\hour[4]~7_combout\ & (((hour(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour[4]~37_combout\,
	datab => \hour[4]~7_combout\,
	datac => hour(4),
	datad => \hour[4]~35_combout\,
	combout => \hour[4]~38_combout\);

-- Location: FF_X106_Y13_N27
\hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \hour[4]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(4));

-- Location: LCCOMB_X106_Y13_N16
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (!hour(4) & ((!hour(3)) # (!hour(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datac => hour(2),
	datad => hour(3),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X107_Y14_N6
\am~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~1_combout\ = (\LessThan14~0_combout\ & ((\am~0_combout\))) # (!\LessThan14~0_combout\ & (\am~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \am~q\,
	datac => \am~0_combout\,
	datad => \LessThan14~0_combout\,
	combout => \am~1_combout\);

-- Location: LCCOMB_X107_Y14_N14
\am~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~4_combout\ = (!\Equal1~0_combout\ & (\am~3_combout\ & ((\db1|level~q\) # (!\LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \LessThan9~0_combout\,
	datac => \am~3_combout\,
	datad => \db1|level~q\,
	combout => \am~4_combout\);

-- Location: LCCOMB_X107_Y14_N10
\am~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~8_combout\ = (\SW[0]~input_o\ & ((\am~4_combout\) # ((\am~7_combout\)))) # (!\SW[0]~input_o\ & (((\hour~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \am~4_combout\,
	datac => \hour~4_combout\,
	datad => \am~7_combout\,
	combout => \am~8_combout\);

-- Location: LCCOMB_X107_Y14_N12
\am~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \am~9_combout\ = (\SW[1]~input_o\ & ((\am~8_combout\ & (!\am~1_combout\)) # (!\am~8_combout\ & ((\am~q\))))) # (!\SW[1]~input_o\ & (((\am~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \am~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \am~q\,
	datad => \am~8_combout\,
	combout => \am~9_combout\);

-- Location: FF_X107_Y14_N13
am : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \am~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \am~q\);

-- Location: LCCOMB_X107_Y17_N24
\HEX1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = (\am~q\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \am~q\,
	datac => \SW[1]~input_o\,
	combout => \HEX1~0_combout\);

-- Location: LCCOMB_X74_Y14_N6
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

-- Location: FF_X74_Y14_N7
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

-- Location: LCCOMB_X74_Y14_N8
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

-- Location: FF_X74_Y14_N9
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

-- Location: LCCOMB_X74_Y14_N10
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

-- Location: FF_X74_Y14_N11
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

-- Location: LCCOMB_X74_Y14_N12
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

-- Location: FF_X74_Y14_N13
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

-- Location: LCCOMB_X74_Y14_N14
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

-- Location: FF_X74_Y14_N15
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

-- Location: LCCOMB_X74_Y14_N16
\freqDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~14_combout\ = (\freqDiv|s_count\(7) & (!\freqDiv|Add0~13\)) # (!\freqDiv|s_count\(7) & ((\freqDiv|Add0~13\) # (GND)))
-- \freqDiv|Add0~15\ = CARRY((!\freqDiv|Add0~13\) # (!\freqDiv|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_count\(7),
	datad => VCC,
	cin => \freqDiv|Add0~13\,
	combout => \freqDiv|Add0~14_combout\,
	cout => \freqDiv|Add0~15\);

-- Location: LCCOMB_X74_Y14_N0
\freqDiv|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~7_combout\ = (\freqDiv|Add0~14_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add0~14_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~7_combout\);

-- Location: FF_X74_Y14_N1
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

-- Location: LCCOMB_X74_Y14_N18
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

-- Location: FF_X74_Y14_N19
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

-- Location: LCCOMB_X74_Y14_N20
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

-- Location: FF_X74_Y14_N21
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

-- Location: LCCOMB_X74_Y14_N22
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

-- Location: FF_X74_Y14_N23
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

-- Location: LCCOMB_X74_Y14_N24
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

-- Location: FF_X74_Y14_N25
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

-- Location: LCCOMB_X75_Y13_N18
\freqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~8_combout\ = (!\freqDiv|s_count\(16) & (\freqDiv|s_count\(15) & (!\freqDiv|s_count\(11) & \freqDiv|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(16),
	datab => \freqDiv|s_count\(15),
	datac => \freqDiv|s_count\(11),
	datad => \freqDiv|s_count\(17),
	combout => \freqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X74_Y13_N16
\freqDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~46_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|Add0~45\)) # (!\freqDiv|s_count\(23) & ((\freqDiv|Add0~45\) # (GND)))
-- \freqDiv|Add0~47\ = CARRY((!\freqDiv|Add0~45\) # (!\freqDiv|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datad => VCC,
	cin => \freqDiv|Add0~45\,
	combout => \freqDiv|Add0~46_combout\,
	cout => \freqDiv|Add0~47\);

-- Location: LCCOMB_X74_Y13_N18
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

-- Location: FF_X74_Y13_N19
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

-- Location: LCCOMB_X74_Y13_N20
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

-- Location: LCCOMB_X75_Y13_N20
\freqDiv|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~8_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~50_combout\,
	combout => \freqDiv|s_count~8_combout\);

-- Location: FF_X75_Y13_N21
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

-- Location: LCCOMB_X75_Y13_N8
\freqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~7_combout\ = (\freqDiv|s_count\(23) & (!\freqDiv|s_count\(24) & (!\freqDiv|s_count\(18) & \freqDiv|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(24),
	datac => \freqDiv|s_count\(18),
	datad => \freqDiv|s_count\(25),
	combout => \freqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X75_Y14_N20
\freqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~5_combout\ = (\freqDiv|s_count\(4) & (!\freqDiv|s_count\(8) & (!\freqDiv|s_count\(7) & \freqDiv|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(4),
	datab => \freqDiv|s_count\(8),
	datac => \freqDiv|s_count\(7),
	datad => \freqDiv|s_count\(5),
	combout => \freqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y13_N6
\freqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~2_combout\ = (\freqDiv|s_count\(19) & (\freqDiv|s_count\(20) & (\freqDiv|s_count\(21) & \freqDiv|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(19),
	datab => \freqDiv|s_count\(20),
	datac => \freqDiv|s_count\(21),
	datad => \freqDiv|s_count\(14),
	combout => \freqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X74_Y13_N22
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

-- Location: FF_X74_Y13_N23
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

-- Location: LCCOMB_X74_Y13_N24
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

-- Location: FF_X74_Y13_N25
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

-- Location: LCCOMB_X74_Y13_N26
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

-- Location: FF_X74_Y13_N27
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

-- Location: LCCOMB_X73_Y13_N20
\freqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~1_combout\ = (!\freqDiv|s_count\(27) & (!\freqDiv|s_count\(26) & (\freqDiv|s_count\(22) & !\freqDiv|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(27),
	datab => \freqDiv|s_count\(26),
	datac => \freqDiv|s_count\(22),
	datad => \freqDiv|s_count\(28),
	combout => \freqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y14_N26
\freqDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~24_combout\ = (\freqDiv|s_count\(12) & (\freqDiv|Add0~23\ $ (GND))) # (!\freqDiv|s_count\(12) & (!\freqDiv|Add0~23\ & VCC))
-- \freqDiv|Add0~25\ = CARRY((\freqDiv|s_count\(12) & !\freqDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(12),
	datad => VCC,
	cin => \freqDiv|Add0~23\,
	combout => \freqDiv|Add0~24_combout\,
	cout => \freqDiv|Add0~25\);

-- Location: LCCOMB_X73_Y13_N22
\freqDiv|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~6_combout\ = (!\freqDiv|Equal0~9_combout\ & \freqDiv|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Add0~24_combout\,
	combout => \freqDiv|s_count~6_combout\);

-- Location: FF_X73_Y13_N23
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

-- Location: LCCOMB_X74_Y14_N28
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

-- Location: LCCOMB_X73_Y13_N0
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

-- Location: FF_X73_Y13_N1
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

-- Location: LCCOMB_X73_Y13_N8
\freqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~3_combout\ = (!\freqDiv|s_count\(9) & (\freqDiv|s_count\(13) & (\freqDiv|s_count\(12) & !\freqDiv|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(9),
	datab => \freqDiv|s_count\(13),
	datac => \freqDiv|s_count\(12),
	datad => \freqDiv|s_count\(10),
	combout => \freqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y13_N28
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

-- Location: FF_X74_Y13_N29
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

-- Location: LCCOMB_X74_Y13_N30
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

-- Location: FF_X74_Y13_N31
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

-- Location: LCCOMB_X73_Y13_N24
\freqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~0_combout\ = (!\freqDiv|s_count\(29) & (!\freqDiv|s_count\(30) & (\freqDiv|s_count\(0) & \freqDiv|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(29),
	datab => \freqDiv|s_count\(30),
	datac => \freqDiv|s_count\(0),
	datad => \freqDiv|s_count\(1),
	combout => \freqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y13_N26
\freqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~4_combout\ = (\freqDiv|Equal0~2_combout\ & (\freqDiv|Equal0~1_combout\ & (\freqDiv|Equal0~3_combout\ & \freqDiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~2_combout\,
	datab => \freqDiv|Equal0~1_combout\,
	datac => \freqDiv|Equal0~3_combout\,
	datad => \freqDiv|Equal0~0_combout\,
	combout => \freqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y13_N10
\freqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~6_combout\ = (\freqDiv|Equal0~5_combout\ & (\freqDiv|s_count\(2) & (\freqDiv|s_count\(3) & \freqDiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~5_combout\,
	datab => \freqDiv|s_count\(2),
	datac => \freqDiv|s_count\(3),
	datad => \freqDiv|Equal0~4_combout\,
	combout => \freqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y13_N0
\freqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~9_combout\ = (\freqDiv|s_count\(6) & (\freqDiv|Equal0~8_combout\ & (\freqDiv|Equal0~7_combout\ & \freqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(6),
	datab => \freqDiv|Equal0~8_combout\,
	datac => \freqDiv|Equal0~7_combout\,
	datad => \freqDiv|Equal0~6_combout\,
	combout => \freqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X74_Y14_N30
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

-- Location: LCCOMB_X73_Y13_N16
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

-- Location: FF_X73_Y13_N17
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

-- Location: LCCOMB_X74_Y13_N0
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

-- Location: LCCOMB_X75_Y13_N4
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

-- Location: FF_X75_Y13_N5
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

-- Location: LCCOMB_X74_Y13_N2
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

-- Location: FF_X74_Y13_N3
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

-- Location: LCCOMB_X74_Y13_N4
\freqDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~34_combout\ = (\freqDiv|s_count\(17) & (!\freqDiv|Add0~33\)) # (!\freqDiv|s_count\(17) & ((\freqDiv|Add0~33\) # (GND)))
-- \freqDiv|Add0~35\ = CARRY((!\freqDiv|Add0~33\) # (!\freqDiv|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(17),
	datad => VCC,
	cin => \freqDiv|Add0~33\,
	combout => \freqDiv|Add0~34_combout\,
	cout => \freqDiv|Add0~35\);

-- Location: LCCOMB_X75_Y13_N2
\freqDiv|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~10_combout\ = (\freqDiv|Add0~34_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~34_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~10_combout\);

-- Location: FF_X75_Y13_N3
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

-- Location: LCCOMB_X74_Y13_N6
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

-- Location: FF_X74_Y13_N7
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

-- Location: LCCOMB_X74_Y13_N8
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

-- Location: LCCOMB_X73_Y13_N10
\freqDiv|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~3_combout\ = (\freqDiv|Add0~38_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add0~38_combout\,
	datac => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~3_combout\);

-- Location: FF_X73_Y13_N11
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

-- Location: LCCOMB_X74_Y13_N10
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

-- Location: LCCOMB_X73_Y13_N28
\freqDiv|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~2_combout\ = (\freqDiv|Add0~40_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add0~40_combout\,
	datac => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~2_combout\);

-- Location: FF_X73_Y13_N29
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

-- Location: LCCOMB_X74_Y13_N12
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

-- Location: LCCOMB_X73_Y13_N18
\freqDiv|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~1_combout\ = (\freqDiv|Add0~42_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add0~42_combout\,
	datac => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~1_combout\);

-- Location: FF_X73_Y13_N19
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

-- Location: LCCOMB_X74_Y13_N14
\freqDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Add0~44_combout\ = (\freqDiv|s_count\(22) & (\freqDiv|Add0~43\ $ (GND))) # (!\freqDiv|s_count\(22) & (!\freqDiv|Add0~43\ & VCC))
-- \freqDiv|Add0~45\ = CARRY((\freqDiv|s_count\(22) & !\freqDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(22),
	datad => VCC,
	cin => \freqDiv|Add0~43\,
	combout => \freqDiv|Add0~44_combout\,
	cout => \freqDiv|Add0~45\);

-- Location: LCCOMB_X73_Y13_N14
\freqDiv|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~0_combout\ = (\freqDiv|Add0~44_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|Add0~44_combout\,
	datac => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~0_combout\);

-- Location: FF_X73_Y13_N15
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

-- Location: LCCOMB_X75_Y13_N6
\freqDiv|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_count~9_combout\ = (\freqDiv|Add0~46_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Add0~46_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \freqDiv|s_count~9_combout\);

-- Location: FF_X75_Y13_N7
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

-- Location: LCCOMB_X75_Y13_N26
\freqDiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~0_combout\ = (!\freqDiv|s_count\(23) & (\freqDiv|s_count\(24) & (\freqDiv|s_count\(18) & !\freqDiv|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(23),
	datab => \freqDiv|s_count\(24),
	datac => \freqDiv|s_count\(18),
	datad => \freqDiv|s_count\(25),
	combout => \freqDiv|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y13_N12
\freqDiv|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~1_combout\ = (\freqDiv|s_count\(16) & (\freqDiv|s_count\(11) & (!\freqDiv|s_count\(15) & !\freqDiv|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_count\(16),
	datab => \freqDiv|s_count\(11),
	datac => \freqDiv|s_count\(15),
	datad => \freqDiv|s_count\(17),
	combout => \freqDiv|Equal1~1_combout\);

-- Location: LCCOMB_X75_Y13_N22
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

-- Location: LCCOMB_X75_Y13_N24
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|Equal0~9_combout\) # ((\freqDiv|clkOut~q\ & ((!\freqDiv|Equal0~6_combout\) # (!\freqDiv|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal1~2_combout\,
	datab => \freqDiv|Equal0~9_combout\,
	datac => \freqDiv|clkOut~q\,
	datad => \freqDiv|Equal0~6_combout\,
	combout => \freqDiv|clkOut~0_combout\);

-- Location: FF_X75_Y13_N25
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: LCCOMB_X108_Y14_N4
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\freqDiv|clkOut~q\ & (\SW[0]~input_o\ & \Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~q\,
	datab => \SW[0]~input_o\,
	datad => \Equal2~9_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X112_Y13_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = sec(3) $ (VCC)
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(sec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X112_Y13_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (sec(4) & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!sec(4) & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!sec(4) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(4),
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X112_Y13_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (sec(5) & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!sec(5) & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((sec(5) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X112_Y13_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X112_Y13_N22
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X112_Y13_N24
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

-- Location: LCCOMB_X111_Y13_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\);

-- Location: LCCOMB_X112_Y13_N12
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\);

-- Location: LCCOMB_X112_Y13_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ = (sec(5) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(5),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\);

-- Location: LCCOMB_X112_Y13_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\);

-- Location: LCCOMB_X112_Y13_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\ = (sec(4) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\);

-- Location: LCCOMB_X112_Y13_N8
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\);

-- Location: LCCOMB_X112_Y13_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ = (sec(3) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\);

-- Location: LCCOMB_X112_Y13_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\);

-- Location: LCCOMB_X111_Y13_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\ = (sec(2) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\);

-- Location: LCCOMB_X111_Y13_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\ = (sec(2) & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\);

-- Location: LCCOMB_X111_Y13_N8
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X111_Y13_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X111_Y13_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X111_Y13_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X111_Y13_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ & ((GND) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X111_Y13_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X111_Y13_N20
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

-- Location: LCCOMB_X110_Y13_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & sec(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => sec(1),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\);

-- Location: LCCOMB_X110_Y13_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & sec(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => sec(1),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\);

-- Location: LCCOMB_X110_Y13_N8
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\) # (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X110_Y13_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\);

-- Location: LCCOMB_X111_Y13_N28
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\);

-- Location: LCCOMB_X111_Y13_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LCCOMB_X111_Y13_N22
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\);

-- Location: LCCOMB_X111_Y13_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X112_Y13_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((sec(5)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => sec(5),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\);

-- Location: LCCOMB_X112_Y13_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((sec(4)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => sec(4),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\);

-- Location: LCCOMB_X110_Y13_N4
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X112_Y13_N10
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((sec(3)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => sec(3),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\);

-- Location: LCCOMB_X111_Y13_N26
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\);

-- Location: LCCOMB_X111_Y13_N6
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ = (sec(2) & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec(2),
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\);

-- Location: LCCOMB_X110_Y13_N24
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\);

-- Location: LCCOMB_X110_Y13_N10
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ & 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\)))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X110_Y13_N12
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\)))))
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X110_Y13_N14
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X110_Y13_N16
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X110_Y13_N18
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X110_Y13_N20
\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\) # ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X110_Y13_N22
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

-- Location: LCCOMB_X110_Y13_N0
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((sec(1)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => sec(1),
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\);

-- Location: LCCOMB_X110_Y13_N30
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X110_Y13_N2
\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\,
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\,
	combout => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\);

-- Location: LCCOMB_X109_Y20_N24
\b7segL|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[0]~6_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (sec(0) $ 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ $ 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \b7segL|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X108_Y14_N14
\b7segL|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[0]~14_combout\ = (\b7segL|decOut_n[0]~6_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \process_0~0_combout\,
	datac => cur_sel(1),
	datad => \b7segL|decOut_n[0]~6_combout\,
	combout => \b7segL|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X108_Y12_N24
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (cur_sel(0) & (\process_0~0_combout\ & cur_sel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X109_Y20_N4
\b7segL|decOut_n[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[1]~8_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ $ 
-- (sec(0))))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (sec(0) & \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \b7segL|decOut_n[1]~8_combout\);

-- Location: LCCOMB_X109_Y20_N10
\b7segL|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[1]~7_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\) # 
-- (!sec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \b7segL|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X109_Y20_N6
\b7segL|decOut_n[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[1]~9_combout\ = (\process_0~1_combout\) # ((\b7segL|decOut_n[1]~8_combout\) # (\b7segL|decOut_n[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~1_combout\,
	datac => \b7segL|decOut_n[1]~8_combout\,
	datad => \b7segL|decOut_n[1]~7_combout\,
	combout => \b7segL|decOut_n[1]~9_combout\);

-- Location: LCCOMB_X109_Y20_N8
\b7segL|decOut_n[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[2]~10_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (!sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- !\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \b7segL|decOut_n[2]~10_combout\);

-- Location: LCCOMB_X109_Y20_N22
\b7segL|decOut_n[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[2]~11_combout\ = (\b7segL|decOut_n[1]~7_combout\) # ((\process_0~1_combout\) # (\b7segL|decOut_n[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segL|decOut_n[1]~7_combout\,
	datab => \process_0~1_combout\,
	datac => \b7segL|decOut_n[2]~10_combout\,
	combout => \b7segL|decOut_n[2]~11_combout\);

-- Location: LCCOMB_X109_Y20_N26
\HEX2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~3_combout\ = (sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ $ (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \HEX2~3_combout\);

-- Location: LCCOMB_X109_Y20_N0
\HEX2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~2_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (!sec(0) & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & !\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \HEX2~2_combout\);

-- Location: LCCOMB_X109_Y20_N12
\HEX2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~4_combout\ = (!\process_0~1_combout\ & (!\HEX2~3_combout\ & !\HEX2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~1_combout\,
	datac => \HEX2~3_combout\,
	datad => \HEX2~2_combout\,
	combout => \HEX2~4_combout\);

-- Location: LCCOMB_X109_Y20_N20
\HEX2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \HEX2~0_combout\);

-- Location: LCCOMB_X110_Y18_N12
\HEX2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~5_combout\ = (\HEX2~2_combout\ & (((!cur_sel(1)) # (!cur_sel(0))) # (!\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => cur_sel(0),
	datac => cur_sel(1),
	datad => \HEX2~2_combout\,
	combout => \HEX2~5_combout\);

-- Location: LCCOMB_X109_Y20_N2
\HEX2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~1_combout\ = (!sec(0) & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & ((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \HEX2~1_combout\);

-- Location: LCCOMB_X109_Y20_N30
\HEX2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~6_combout\ = (\HEX2~4_combout\ & (\HEX2~1_combout\ & ((\HEX2~0_combout\) # (!\HEX2~5_combout\)))) # (!\HEX2~4_combout\ & ((\HEX2~0_combout\) # ((!\HEX2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2~4_combout\,
	datab => \HEX2~0_combout\,
	datac => \HEX2~5_combout\,
	datad => \HEX2~1_combout\,
	combout => \HEX2~6_combout\);

-- Location: LCCOMB_X109_Y20_N16
\b7segL|decOut_n[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[4]~12_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (sec(0) & ((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & ((\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & ((!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\))) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (sec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \b7segL|decOut_n[4]~12_combout\);

-- Location: LCCOMB_X108_Y14_N24
\b7segL|decOut_n[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[4]~15_combout\ = (\b7segL|decOut_n[4]~12_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \process_0~0_combout\,
	datac => cur_sel(1),
	datad => \b7segL|decOut_n[4]~12_combout\,
	combout => \b7segL|decOut_n[4]~15_combout\);

-- Location: LCCOMB_X109_Y20_N14
\b7segL|decOut_n[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[5]~13_combout\ = (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((sec(0)) # 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\)))) # (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ $ 
-- (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \b7segL|decOut_n[5]~13_combout\);

-- Location: LCCOMB_X110_Y18_N18
\b7segL|decOut_n[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL|decOut_n[5]~16_combout\ = (\b7segL|decOut_n[5]~13_combout\) # ((\process_0~0_combout\ & (cur_sel(0) & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => cur_sel(0),
	datac => cur_sel(1),
	datad => \b7segL|decOut_n[5]~13_combout\,
	combout => \b7segL|decOut_n[5]~16_combout\);

-- Location: LCCOMB_X109_Y20_N28
\HEX2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~7_combout\ = (!\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (!sec(0) & (\bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datab => sec(0),
	datac => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datad => \bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	combout => \HEX2~7_combout\);

-- Location: LCCOMB_X109_Y20_N18
\HEX2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2~8_combout\ = (\HEX2~4_combout\ & (\HEX2~7_combout\ & ((!\HEX2~5_combout\) # (!\HEX2~0_combout\)))) # (!\HEX2~4_combout\ & (((!\HEX2~5_combout\)) # (!\HEX2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX2~4_combout\,
	datab => \HEX2~0_combout\,
	datac => \HEX2~5_combout\,
	datad => \HEX2~7_combout\,
	combout => \HEX2~8_combout\);

-- Location: LCCOMB_X109_Y12_N10
\b7segH|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~1_combout\ = (sec(4) & ((sec(2)) # ((sec(1) & sec(5))))) # (!sec(4) & (((sec(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(1),
	datab => sec(2),
	datac => sec(5),
	datad => sec(4),
	combout => \b7segH|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X109_Y12_N4
\b7segH|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~0_combout\ = (sec(3) & ((sec(2)) # (sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datac => sec(2),
	datad => sec(1),
	combout => \b7segH|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X109_Y12_N24
\b7segH|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~2_combout\ = (\b7segH|decOut_n[0]~1_combout\ & (((sec(3) & !sec(4))))) # (!\b7segH|decOut_n[0]~1_combout\ & ((sec(4) & ((!sec(3)))) # (!sec(4) & (\b7segH|decOut_n[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH|decOut_n[0]~1_combout\,
	datab => \b7segH|decOut_n[0]~0_combout\,
	datac => sec(3),
	datad => sec(4),
	combout => \b7segH|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X108_Y12_N26
\b7segH|decOut_n[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[0]~3_combout\ = (\b7segH|decOut_n[0]~2_combout\) # ((cur_sel(0) & (cur_sel(1) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => cur_sel(1),
	datac => \process_0~0_combout\,
	datad => \b7segH|decOut_n[0]~2_combout\,
	combout => \b7segH|decOut_n[0]~3_combout\);

-- Location: LCCOMB_X110_Y18_N2
\HEX3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~5_combout\ = (\sec~5_combout\) # ((\process_0~0_combout\ & (cur_sel(0) & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => cur_sel(0),
	datac => cur_sel(1),
	datad => \sec~5_combout\,
	combout => \HEX3~5_combout\);

-- Location: LCCOMB_X109_Y12_N20
\b7segH|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~4_combout\ = (sec(3) & ((!sec(1)) # (!sec(2)))) # (!sec(3) & (sec(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datac => sec(2),
	datad => sec(1),
	combout => \b7segH|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X109_Y12_N22
\b7segH|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~5_combout\ = (sec(4) & (!sec(5) & \b7segH|decOut_n[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datac => sec(5),
	datad => \b7segH|decOut_n[2]~4_combout\,
	combout => \b7segH|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X108_Y12_N12
\b7segH|decOut_n[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[2]~6_combout\ = (\b7segH|decOut_n[2]~5_combout\) # ((cur_sel(0) & (cur_sel(1) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => cur_sel(1),
	datac => \process_0~0_combout\,
	datad => \b7segH|decOut_n[2]~5_combout\,
	combout => \b7segH|decOut_n[2]~6_combout\);

-- Location: LCCOMB_X109_Y12_N8
\HEX3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~13_combout\ = (!sec(4) & (!\b7segH|decOut_n[0]~0_combout\ & !sec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => \b7segH|decOut_n[0]~0_combout\,
	datac => sec(5),
	combout => \HEX3~13_combout\);

-- Location: LCCOMB_X109_Y12_N28
\HEX3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~6_combout\ = (sec(3) & (((!sec(4))))) # (!sec(3) & (!sec(5) & ((!sec(4)) # (!sec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(5),
	datad => sec(4),
	combout => \HEX3~6_combout\);

-- Location: LCCOMB_X109_Y12_N18
\HEX3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~7_combout\ = (\HEX3~6_combout\) # ((sec(4) & (sec(5) & \HEX3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => \HEX3~6_combout\,
	datac => sec(5),
	datad => \HEX3~4_combout\,
	combout => \HEX3~7_combout\);

-- Location: LCCOMB_X109_Y12_N16
\HEX3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~8_combout\ = (\process_0~1_combout\) # ((!\HEX3~13_combout\ & \HEX3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~1_combout\,
	datac => \HEX3~13_combout\,
	datad => \HEX3~7_combout\,
	combout => \HEX3~8_combout\);

-- Location: LCCOMB_X109_Y12_N6
\HEX3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~9_combout\ = (sec(3) & ((sec(2) & (!sec(5) & sec(1))) # (!sec(2) & (sec(5))))) # (!sec(3) & (((sec(5))) # (!sec(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(5),
	datad => sec(1),
	combout => \HEX3~9_combout\);

-- Location: LCCOMB_X109_Y12_N12
\HEX3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~10_combout\ = (\process_0~1_combout\) # ((!\HEX3~13_combout\ & ((\HEX3~9_combout\) # (!sec(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(4),
	datab => \process_0~1_combout\,
	datac => \HEX3~13_combout\,
	datad => \HEX3~9_combout\,
	combout => \HEX3~10_combout\);

-- Location: LCCOMB_X109_Y12_N14
\b7segH|decOut_n[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~7_combout\ = (sec(5) & (!sec(3) & ((!sec(4))))) # (!sec(5) & (((\b7segH|decOut_n[0]~0_combout\) # (sec(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => \b7segH|decOut_n[0]~0_combout\,
	datac => sec(5),
	datad => sec(4),
	combout => \b7segH|decOut_n[5]~7_combout\);

-- Location: LCCOMB_X108_Y12_N30
\b7segH|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH|decOut_n[5]~8_combout\ = (\b7segH|decOut_n[5]~7_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \b7segH|decOut_n[5]~7_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \b7segH|decOut_n[5]~8_combout\);

-- Location: LCCOMB_X109_Y12_N0
\HEX3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~11_combout\ = (!sec(5) & (((!sec(3) & !sec(2))) # (!sec(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(3),
	datab => sec(2),
	datac => sec(5),
	datad => sec(4),
	combout => \HEX3~11_combout\);

-- Location: LCCOMB_X109_Y12_N30
\HEX3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3~12_combout\ = (\process_0~1_combout\) # ((\HEX3~13_combout\) # (\HEX3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~1_combout\,
	datac => \HEX3~13_combout\,
	datad => \HEX3~11_combout\,
	combout => \HEX3~12_combout\);

-- Location: LCCOMB_X105_Y14_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = min(3) $ (VCC)
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(3),
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X105_Y14_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (min(4) & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!min(4) & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!min(4) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X105_Y14_N24
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (min(5) & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!min(5) & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((min(5) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X105_Y14_N26
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X105_Y14_N28
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X105_Y14_N30
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

-- Location: LCCOMB_X106_Y14_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36_combout\ = (min(2) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36_combout\);

-- Location: LCCOMB_X106_Y14_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37_combout\ = (min(2) & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37_combout\);

-- Location: LCCOMB_X106_Y14_N4
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~36_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[40]~37_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X106_Y14_N24
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\);

-- Location: LCCOMB_X106_Y14_N22
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\);

-- Location: LCCOMB_X106_Y14_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\);

-- Location: LCCOMB_X105_Y14_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & min(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => min(5),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\);

-- Location: LCCOMB_X105_Y14_N14
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\ = (min(4) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(4),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\);

-- Location: LCCOMB_X106_Y14_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\);

-- Location: LCCOMB_X106_Y14_N20
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\);

-- Location: LCCOMB_X106_Y14_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\ = (min(3) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(3),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\);

-- Location: LCCOMB_X106_Y14_N6
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~35_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[41]~34_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X106_Y14_N8
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~32_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[42]~33_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X106_Y14_N10
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~31_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[43]~30_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X106_Y14_N12
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\ & ((GND) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[44]~29_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X106_Y14_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[45]~28_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X106_Y14_N16
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

-- Location: LCCOMB_X105_Y11_N30
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\);

-- Location: LCCOMB_X105_Y11_N28
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\ = (min(2) & \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(2),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\);

-- Location: LCCOMB_X105_Y11_N26
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => min(1),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42_combout\);

-- Location: LCCOMB_X105_Y11_N4
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & min(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => min(1),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41_combout\);

-- Location: LCCOMB_X105_Y11_N10
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42_combout\) # (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~42_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~41_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X105_Y11_N12
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\ & 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\)))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X105_Y14_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~43_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~43_combout\);

-- Location: LCCOMB_X105_Y14_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\);

-- Location: LCCOMB_X105_Y14_N10
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~44_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LCCOMB_X105_Y14_N12
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\);

-- Location: LCCOMB_X105_Y14_N16
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~53_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((min(5)))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => min(5),
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~53_combout\);

-- Location: LCCOMB_X105_Y14_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X105_Y14_N18
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~54_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((min(4)))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => min(4),
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~54_combout\);

-- Location: LCCOMB_X105_Y11_N0
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X106_Y14_N18
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\);

-- Location: LCCOMB_X105_Y14_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (min(3))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\);

-- Location: LCCOMB_X105_Y11_N14
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\)))))
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X105_Y11_N16
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~54_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~46_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~54_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X105_Y11_N18
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~53_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~53_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X105_Y11_N20
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~44_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\ & 
-- !\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~44_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X105_Y11_N22
\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~43_combout\) # ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~43_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~50_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X105_Y11_N24
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

-- Location: LCCOMB_X105_Y11_N2
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~40_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~39_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X105_Y11_N6
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~38_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~52_combout\,
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\);

-- Location: LCCOMB_X105_Y11_N8
\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((min(1)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => min(1),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\);

-- Location: LCCOMB_X103_Y14_N28
\b7segL1|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[0]~6_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ $ 
-- (!min(0))))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (min(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ $ (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \b7segL1|decOut_n[0]~6_combout\);

-- Location: LCCOMB_X98_Y14_N0
\b7segL1|decOut_n[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[0]~14_combout\ = (\b7segL1|decOut_n[0]~6_combout\) # ((cur_sel(1) & (!cur_sel(0) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(1),
	datab => cur_sel(0),
	datac => \b7segL1|decOut_n[0]~6_combout\,
	datad => \process_0~0_combout\,
	combout => \b7segL1|decOut_n[0]~14_combout\);

-- Location: LCCOMB_X103_Y14_N10
\b7segL1|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[1]~7_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\) # 
-- (!min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \b7segL1|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X108_Y14_N10
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (cur_sel(1) & (\process_0~0_combout\ & !cur_sel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(1),
	datab => \process_0~0_combout\,
	datad => cur_sel(0),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X103_Y14_N20
\b7segL1|decOut_n[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[1]~8_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (min(0) $ 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (min(0) & 
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \b7segL1|decOut_n[1]~8_combout\);

-- Location: LCCOMB_X108_Y14_N28
\b7segL1|decOut_n[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[1]~9_combout\ = (\b7segL1|decOut_n[1]~7_combout\) # ((\process_0~2_combout\) # (\b7segL1|decOut_n[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segL1|decOut_n[1]~7_combout\,
	datab => \process_0~2_combout\,
	datac => \b7segL1|decOut_n[1]~8_combout\,
	combout => \b7segL1|decOut_n[1]~9_combout\);

-- Location: LCCOMB_X103_Y14_N6
\b7segL1|decOut_n[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[2]~10_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!min(0) & 
-- \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \b7segL1|decOut_n[2]~10_combout\);

-- Location: LCCOMB_X103_Y14_N8
\b7segL1|decOut_n[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[2]~11_combout\ = (\b7segL1|decOut_n[1]~7_combout\) # ((\process_0~2_combout\) # (\b7segL1|decOut_n[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segL1|decOut_n[1]~7_combout\,
	datac => \process_0~2_combout\,
	datad => \b7segL1|decOut_n[2]~10_combout\,
	combout => \b7segL1|decOut_n[2]~11_combout\);

-- Location: LCCOMB_X103_Y14_N26
\HEX4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (min(0) & \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \HEX4~0_combout\);

-- Location: LCCOMB_X103_Y14_N18
\HEX4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~2_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (min(0) & \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!min(0) & !\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \HEX4~2_combout\);

-- Location: LCCOMB_X103_Y14_N0
\HEX4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~5_combout\ = (\HEX4~2_combout\ & (((cur_sel(0)) # (!\process_0~0_combout\)) # (!cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(1),
	datab => \HEX4~2_combout\,
	datac => cur_sel(0),
	datad => \process_0~0_combout\,
	combout => \HEX4~5_combout\);

-- Location: LCCOMB_X103_Y14_N12
\HEX4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~3_combout\ = (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (min(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ $ (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \HEX4~3_combout\);

-- Location: LCCOMB_X103_Y14_N14
\HEX4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~4_combout\ = (!\HEX4~3_combout\ & (!\process_0~2_combout\ & !\HEX4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~3_combout\,
	datac => \process_0~2_combout\,
	datad => \HEX4~2_combout\,
	combout => \HEX4~4_combout\);

-- Location: LCCOMB_X103_Y14_N16
\HEX4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = (!min(0) & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \HEX4~1_combout\);

-- Location: LCCOMB_X103_Y14_N2
\HEX4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~6_combout\ = (\HEX4~0_combout\ & (((\HEX4~1_combout\) # (!\HEX4~4_combout\)))) # (!\HEX4~0_combout\ & (!\HEX4~5_combout\ & ((\HEX4~1_combout\) # (!\HEX4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~0_combout\,
	datab => \HEX4~5_combout\,
	datac => \HEX4~4_combout\,
	datad => \HEX4~1_combout\,
	combout => \HEX4~6_combout\);

-- Location: LCCOMB_X103_Y14_N4
\b7segL1|decOut_n[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[4]~12_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\ & (((!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & min(0))))) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\ & ((\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\)) # 
-- (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & ((min(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \b7segL1|decOut_n[4]~12_combout\);

-- Location: LCCOMB_X103_Y13_N22
\b7segL1|decOut_n[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[4]~15_combout\ = (\b7segL1|decOut_n[4]~12_combout\) # ((\process_0~0_combout\ & (!cur_sel(0) & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segL1|decOut_n[4]~12_combout\,
	datab => \process_0~0_combout\,
	datac => cur_sel(0),
	datad => cur_sel(1),
	combout => \b7segL1|decOut_n[4]~15_combout\);

-- Location: LCCOMB_X103_Y14_N30
\b7segL1|decOut_n[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[5]~13_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (min(0) & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ $ 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))) # (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((min(0)) # 
-- (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \b7segL1|decOut_n[5]~13_combout\);

-- Location: LCCOMB_X103_Y13_N12
\b7segL1|decOut_n[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL1|decOut_n[5]~16_combout\ = (\b7segL1|decOut_n[5]~13_combout\) # ((cur_sel(1) & (!cur_sel(0) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segL1|decOut_n[5]~13_combout\,
	datab => cur_sel(1),
	datac => cur_sel(0),
	datad => \process_0~0_combout\,
	combout => \b7segL1|decOut_n[5]~16_combout\);

-- Location: LCCOMB_X103_Y14_N24
\HEX4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~7_combout\ = (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!min(0) & !\bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datab => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datac => min(0),
	datad => \bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~48_combout\,
	combout => \HEX4~7_combout\);

-- Location: LCCOMB_X103_Y14_N22
\HEX4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~8_combout\ = (\HEX4~0_combout\ & (!\HEX4~5_combout\ & ((\HEX4~7_combout\) # (!\HEX4~4_combout\)))) # (!\HEX4~0_combout\ & (((\HEX4~7_combout\) # (!\HEX4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~0_combout\,
	datab => \HEX4~5_combout\,
	datac => \HEX4~4_combout\,
	datad => \HEX4~7_combout\,
	combout => \HEX4~8_combout\);

-- Location: LCCOMB_X105_Y15_N22
\b7segH1|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~1_combout\ = (min(4) & ((min(2)) # ((min(5) & min(1))))) # (!min(4) & (((min(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(5),
	datad => min(1),
	combout => \b7segH1|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X105_Y15_N12
\b7segH1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~0_combout\ = (min(3) & ((min(2)) # (min(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datac => min(3),
	datad => min(1),
	combout => \b7segH1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X105_Y15_N20
\b7segH1|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~2_combout\ = (\b7segH1|decOut_n[0]~1_combout\ & (((min(3) & !min(4))))) # (!\b7segH1|decOut_n[0]~1_combout\ & ((min(4) & ((!min(3)))) # (!min(4) & (\b7segH1|decOut_n[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[0]~1_combout\,
	datab => \b7segH1|decOut_n[0]~0_combout\,
	datac => min(3),
	datad => min(4),
	combout => \b7segH1|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X103_Y13_N28
\b7segH1|decOut_n[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[0]~3_combout\ = (\b7segH1|decOut_n[0]~2_combout\) # ((\process_0~0_combout\ & (!cur_sel(0) & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[0]~2_combout\,
	datab => \process_0~0_combout\,
	datac => cur_sel(0),
	datad => cur_sel(1),
	combout => \b7segH1|decOut_n[0]~3_combout\);

-- Location: LCCOMB_X108_Y12_N28
\HEX5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~1_combout\ = (\min~2_combout\) # ((!cur_sel(0) & (cur_sel(1) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => cur_sel(1),
	datac => \process_0~0_combout\,
	datad => \min~2_combout\,
	combout => \HEX5~1_combout\);

-- Location: LCCOMB_X105_Y15_N24
\b7segH1|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~4_combout\ = (min(2) & ((!min(1)) # (!min(3)))) # (!min(2) & (min(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(2),
	datac => min(3),
	datad => min(1),
	combout => \b7segH1|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X105_Y15_N14
\b7segH1|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~5_combout\ = (min(4) & (!min(5) & \b7segH1|decOut_n[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datac => min(5),
	datad => \b7segH1|decOut_n[2]~4_combout\,
	combout => \b7segH1|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X103_Y13_N2
\b7segH1|decOut_n[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[2]~6_combout\ = (\b7segH1|decOut_n[2]~5_combout\) # ((\process_0~0_combout\ & (!cur_sel(0) & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH1|decOut_n[2]~5_combout\,
	datab => \process_0~0_combout\,
	datac => cur_sel(0),
	datad => cur_sel(1),
	combout => \b7segH1|decOut_n[2]~6_combout\);

-- Location: LCCOMB_X105_Y12_N22
\HEX5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~4_combout\ = (!min(4) & (!\b7segH1|decOut_n[0]~0_combout\ & !min(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datac => \b7segH1|decOut_n[0]~0_combout\,
	datad => min(5),
	combout => \HEX5~4_combout\);

-- Location: LCCOMB_X105_Y12_N20
\HEX5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~3_combout\ = (min(3) & (!min(4))) # (!min(3) & (!min(5) & ((!min(2)) # (!min(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(3),
	datad => min(5),
	combout => \HEX5~3_combout\);

-- Location: LCCOMB_X105_Y15_N28
\HEX5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~2_combout\ = (\HEX5~0_combout\ & (min(5) & min(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~0_combout\,
	datac => min(5),
	datad => min(4),
	combout => \HEX5~2_combout\);

-- Location: LCCOMB_X105_Y12_N4
\HEX5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~5_combout\ = (\process_0~2_combout\) # ((!\HEX5~4_combout\ & ((\HEX5~3_combout\) # (\HEX5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~4_combout\,
	datab => \HEX5~3_combout\,
	datac => \HEX5~2_combout\,
	datad => \process_0~2_combout\,
	combout => \HEX5~5_combout\);

-- Location: LCCOMB_X105_Y12_N18
\HEX5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~6_combout\ = (min(2) & ((min(3) & (min(1) & !min(5))) # (!min(3) & ((min(5)))))) # (!min(2) & (((min(5)) # (!min(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(1),
	datab => min(2),
	datac => min(3),
	datad => min(5),
	combout => \HEX5~6_combout\);

-- Location: LCCOMB_X105_Y12_N12
\HEX5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~7_combout\ = (\process_0~2_combout\) # ((!\HEX5~4_combout\ & ((\HEX5~6_combout\) # (!min(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => \HEX5~6_combout\,
	datac => \HEX5~4_combout\,
	datad => \process_0~2_combout\,
	combout => \HEX5~7_combout\);

-- Location: LCCOMB_X105_Y12_N10
\b7segH1|decOut_n[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~7_combout\ = (min(4) & (((!min(5))))) # (!min(4) & ((min(5) & (!min(3))) # (!min(5) & ((\b7segH1|decOut_n[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(3),
	datac => \b7segH1|decOut_n[0]~0_combout\,
	datad => min(5),
	combout => \b7segH1|decOut_n[5]~7_combout\);

-- Location: LCCOMB_X108_Y12_N2
\b7segH1|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH1|decOut_n[5]~8_combout\ = (\b7segH1|decOut_n[5]~7_combout\) # ((!cur_sel(0) & (\process_0~0_combout\ & cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \b7segH1|decOut_n[5]~7_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \b7segH1|decOut_n[5]~8_combout\);

-- Location: LCCOMB_X105_Y12_N28
\HEX5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~8_combout\ = (!min(5) & (((!min(2) & !min(3))) # (!min(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => min(2),
	datac => min(3),
	datad => min(5),
	combout => \HEX5~8_combout\);

-- Location: LCCOMB_X105_Y12_N26
\HEX5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~9_combout\ = (\HEX5~4_combout\) # ((\HEX5~8_combout\) # (\process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~4_combout\,
	datab => \HEX5~8_combout\,
	datad => \process_0~2_combout\,
	combout => \HEX5~9_combout\);

-- Location: LCCOMB_X103_Y15_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = hour(2) $ (VCC)
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(hour(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(2),
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X103_Y15_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (hour(3) & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!hour(3) & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!hour(3) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(3),
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X103_Y15_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (hour(4) & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!hour(4) & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((hour(4) & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour(4),
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X103_Y15_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X103_Y15_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X103_Y15_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X103_Y15_N20
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

-- Location: LCCOMB_X103_Y15_N22
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\);

-- Location: LCCOMB_X103_Y15_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\ = (hour(2) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(2),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\);

-- Location: LCCOMB_X102_Y15_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & hour(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => hour(1),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5_combout\);

-- Location: LCCOMB_X102_Y15_N4
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & hour(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => hour(1),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4_combout\);

-- Location: LCCOMB_X102_Y15_N8
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5_combout\) # (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~5_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[48]~4_combout\,
	datad => VCC,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X102_Y15_N10
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\ & 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\)))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X102_Y15_N24
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~6_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~6_combout\);

-- Location: LCCOMB_X102_Y15_N6
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~7_combout\ = (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~7_combout\);

-- Location: LCCOMB_X102_Y15_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~8_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~8_combout\);

-- Location: LCCOMB_X103_Y15_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~9_combout\ = (hour(4) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour(4),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~9_combout\);

-- Location: LCCOMB_X103_Y15_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~10_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~10_combout\);

-- Location: LCCOMB_X103_Y15_N30
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\);

-- Location: LCCOMB_X103_Y15_N0
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\ = (hour(3) & \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour(3),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\);

-- Location: LCCOMB_X102_Y15_N12
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\)))))
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X102_Y15_N14
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~9_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~10_combout\ & 
-- !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~9_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[51]~10_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X102_Y15_N16
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~8_combout\) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[52]~8_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X102_Y15_N18
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~7_combout\ & !\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[53]~7_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X102_Y15_N20
\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~6_combout\) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[54]~6_combout\,
	datad => VCC,
	cin => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X102_Y15_N22
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

-- Location: LCCOMB_X102_Y15_N26
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\) # 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~3_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[49]~2_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\);

-- Location: LCCOMB_X102_Y15_N28
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((hour(1)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => hour(1),
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\);

-- Location: LCCOMB_X102_Y15_N2
\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\) # 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~0_combout\,
	datac => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[50]~1_combout\,
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\);

-- Location: LCCOMB_X95_Y8_N0
\b7segL2|decOut_n[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[0]~10_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (hour(0) $ 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (hour(0) & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ $ 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \b7segL2|decOut_n[0]~10_combout\);

-- Location: LCCOMB_X95_Y8_N26
\b7segL2|decOut_n[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[0]~15_combout\ = (\b7segL2|decOut_n[0]~10_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & !cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \b7segL2|decOut_n[0]~10_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \b7segL2|decOut_n[0]~15_combout\);

-- Location: LCCOMB_X95_Y8_N2
\b7segL2|decOut_n[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[1]~11_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((hour(0) & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\))) # (!hour(0) & 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (hour(0) $ 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \b7segL2|decOut_n[1]~11_combout\);

-- Location: LCCOMB_X95_Y8_N16
\b7segL2|decOut_n[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[1]~16_combout\ = (\b7segL2|decOut_n[1]~11_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & !cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \b7segL2|decOut_n[1]~11_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \b7segL2|decOut_n[1]~16_combout\);

-- Location: LCCOMB_X95_Y8_N24
\b7segL2|decOut_n[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[2]~12_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\) # 
-- (!hour(0))))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (!hour(0) & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \b7segL2|decOut_n[2]~12_combout\);

-- Location: LCCOMB_X95_Y8_N30
\b7segL2|decOut_n[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[2]~17_combout\ = (\b7segL2|decOut_n[2]~12_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & !cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \b7segL2|decOut_n[2]~12_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \b7segL2|decOut_n[2]~17_combout\);

-- Location: LCCOMB_X103_Y13_N4
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~0_combout\ & (cur_sel(0) & !cur_sel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datac => cur_sel(0),
	datad => cur_sel(1),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X95_Y8_N8
\HEX6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~1_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & !hour(0)))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ $ (((!hour(0)) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~1_combout\);

-- Location: LCCOMB_X95_Y8_N22
\HEX6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~2_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (hour(0) & \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (!hour(0) & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~2_combout\);

-- Location: LCCOMB_X95_Y8_N18
\HEX6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~0_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (hour(0) & \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~0_combout\);

-- Location: LCCOMB_X95_Y8_N12
\HEX6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~3_combout\ = (\process_0~3_combout\) # ((\HEX6~2_combout\ & ((\HEX6~0_combout\))) # (!\HEX6~2_combout\ & (\HEX6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \HEX6~1_combout\,
	datac => \HEX6~2_combout\,
	datad => \HEX6~0_combout\,
	combout => \HEX6~3_combout\);

-- Location: LCCOMB_X95_Y8_N14
\b7segL2|decOut_n[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[4]~13_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & (((hour(0) & !\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\))) # 
-- (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (hour(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \b7segL2|decOut_n[4]~13_combout\);

-- Location: LCCOMB_X95_Y8_N4
\b7segL2|decOut_n[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[4]~18_combout\ = (\b7segL2|decOut_n[4]~13_combout\) # ((!cur_sel(1) & (\process_0~0_combout\ & cur_sel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(1),
	datab => \b7segL2|decOut_n[4]~13_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(0),
	combout => \b7segL2|decOut_n[4]~18_combout\);

-- Location: LCCOMB_X95_Y8_N20
\b7segL2|decOut_n[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[5]~14_combout\ = (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (hour(0) & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ $ 
-- (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))) # (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ & 
-- ((\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\) # (hour(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \b7segL2|decOut_n[5]~14_combout\);

-- Location: LCCOMB_X95_Y8_N6
\b7segL2|decOut_n[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segL2|decOut_n[5]~19_combout\ = (\b7segL2|decOut_n[5]~14_combout\) # ((cur_sel(0) & (\process_0~0_combout\ & !cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cur_sel(0),
	datab => \b7segL2|decOut_n[5]~14_combout\,
	datac => \process_0~0_combout\,
	datad => cur_sel(1),
	combout => \b7segL2|decOut_n[5]~19_combout\);

-- Location: LCCOMB_X95_Y8_N10
\HEX6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~4_combout\ = (hour(0) & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\ & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ $ (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # 
-- (!hour(0) & (\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\ & \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => hour(0),
	datad => \bin2BCD|Mod2|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~4_combout\);

-- Location: LCCOMB_X95_Y8_N28
\HEX6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~5_combout\ = (\process_0~3_combout\) # ((\HEX6~2_combout\ & (!\HEX6~0_combout\)) # (!\HEX6~2_combout\ & ((\HEX6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX6~2_combout\,
	datab => \HEX6~0_combout\,
	datac => \process_0~3_combout\,
	datad => \HEX6~4_combout\,
	combout => \HEX6~5_combout\);

-- Location: LCCOMB_X103_Y13_N10
\HEX7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~1_combout\ = (\HEX7~0_combout\ & ((cur_sel(1)) # ((!\process_0~0_combout\) # (!cur_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~0_combout\,
	datab => cur_sel(1),
	datac => cur_sel(0),
	datad => \process_0~0_combout\,
	combout => \HEX7~1_combout\);

-- Location: LCCOMB_X103_Y13_N20
\HEX7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~2_combout\ = (hour(4) & (!\process_0~3_combout\ & ((hour(2)) # (hour(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => \process_0~3_combout\,
	datac => hour(2),
	datad => hour(3),
	combout => \HEX7~2_combout\);

-- Location: LCCOMB_X103_Y13_N30
\HEX7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~3_combout\ = (!\HEX7~1_combout\ & !\HEX7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~1_combout\,
	datad => \HEX7~2_combout\,
	combout => \HEX7~3_combout\);

-- Location: LCCOMB_X103_Y13_N24
\HEX7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~4_combout\ = (hour(4) & ((hour(2) & ((!hour(3)) # (!hour(1)))) # (!hour(2) & ((hour(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(1),
	datac => hour(2),
	datad => hour(3),
	combout => \HEX7~4_combout\);

-- Location: LCCOMB_X103_Y13_N26
\HEX7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~5_combout\ = (\process_0~3_combout\) # ((!\HEX7~0_combout\ & \HEX7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~0_combout\,
	datac => \process_0~3_combout\,
	datad => \HEX7~4_combout\,
	combout => \HEX7~5_combout\);

-- Location: LCCOMB_X103_Y13_N8
\HEX7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~6_combout\ = (!\HEX7~1_combout\ & (((hour(1) & \LessThan15~0_combout\)) # (!\HEX7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~1_combout\,
	datab => hour(1),
	datac => \LessThan15~0_combout\,
	datad => \HEX7~2_combout\,
	combout => \HEX7~6_combout\);

-- Location: LCCOMB_X103_Y13_N6
\b7segH2|decOut_n[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b7segH2|decOut_n[1]~0_combout\ = (hour(4)) # ((hour(3) & ((hour(1)) # (hour(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour(4),
	datab => hour(1),
	datac => hour(2),
	datad => hour(3),
	combout => \b7segH2|decOut_n[1]~0_combout\);

-- Location: LCCOMB_X103_Y13_N16
\HEX7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~7_combout\ = (\b7segH2|decOut_n[1]~0_combout\) # ((\process_0~0_combout\ & (cur_sel(0) & !cur_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b7segH2|decOut_n[1]~0_combout\,
	datab => \process_0~0_combout\,
	datac => cur_sel(0),
	datad => cur_sel(1),
	combout => \HEX7~7_combout\);

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

-- Location: LCCOMB_X91_Y58_N18
\db2|sampled_dirty~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|sampled_dirty~feeder_combout\ = \KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \db2|sampled_dirty~feeder_combout\);

-- Location: FF_X91_Y58_N19
\db2|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|sampled_dirty~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|sampled_dirty~q\);

-- Location: LCCOMB_X91_Y58_N16
\db2|level~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|level~feeder_combout\ = \db2|sampled_dirty~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \db2|sampled_dirty~q\,
	combout => \db2|level~feeder_combout\);

-- Location: FF_X91_Y58_N17
\db2|level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|level~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|level~q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;
END structure;


