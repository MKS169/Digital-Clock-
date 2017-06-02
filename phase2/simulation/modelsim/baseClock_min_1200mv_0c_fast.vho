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

-- DATE "06/02/2017 18:04:25"

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

ENTITY 	Alarm IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0)
	);
END Alarm;

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
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Alarm IS
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
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkIn|freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~0_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~1\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~2_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~3\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~4_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~5\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~6_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~7\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~8_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~9\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~10_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~11\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~1_cout\ : std_logic;
SIGNAL \freqDiv3|Add0~3_cout\ : std_logic;
SIGNAL \freqDiv3|Add0~5_cout\ : std_logic;
SIGNAL \freqDiv3|Add0~7_cout\ : std_logic;
SIGNAL \freqDiv3|Add0~9_cout\ : std_logic;
SIGNAL \freqDiv3|Add0~11_cout\ : std_logic;
SIGNAL \freqDiv3|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~7_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~13\ : std_logic;
SIGNAL \freqDiv3|Add0~14_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~15\ : std_logic;
SIGNAL \freqDiv3|Add0~17\ : std_logic;
SIGNAL \freqDiv3|Add0~18_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~4_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~19\ : std_logic;
SIGNAL \freqDiv3|Add0~20_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~21\ : std_logic;
SIGNAL \freqDiv3|Add0~22_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~3_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~23\ : std_logic;
SIGNAL \freqDiv3|Add0~24_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~25\ : std_logic;
SIGNAL \freqDiv3|Add0~26_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~27\ : std_logic;
SIGNAL \freqDiv3|Add0~28_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~2_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~29\ : std_logic;
SIGNAL \freqDiv3|Add0~30_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~31\ : std_logic;
SIGNAL \freqDiv3|Add0~32_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~33\ : std_logic;
SIGNAL \freqDiv3|Add0~34_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~43\ : std_logic;
SIGNAL \freqDiv3|Add0~44_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~0_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~16_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~6_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~45\ : std_logic;
SIGNAL \freqDiv3|Add0~46_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~47\ : std_logic;
SIGNAL \freqDiv3|Add0~48_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~49\ : std_logic;
SIGNAL \freqDiv3|Add0~50_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~51\ : std_logic;
SIGNAL \freqDiv3|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~53\ : std_logic;
SIGNAL \freqDiv3|Add0~54_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~35\ : std_logic;
SIGNAL \freqDiv3|Add0~36_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~5_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~55\ : std_logic;
SIGNAL \freqDiv3|Add0~56_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~57\ : std_logic;
SIGNAL \freqDiv3|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv3|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~37\ : std_logic;
SIGNAL \freqDiv3|Add0~38_combout\ : std_logic;
SIGNAL \freqDiv3|s_count~1_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~39\ : std_logic;
SIGNAL \freqDiv3|Add0~40_combout\ : std_logic;
SIGNAL \freqDiv3|Add0~41\ : std_logic;
SIGNAL \freqDiv3|Add0~42_combout\ : std_logic;
SIGNAL \freqDiv3|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv3|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv3|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv3|Equal1~3_combout\ : std_logic;
SIGNAL \freqDiv3|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv3|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv3|clkOut~q\ : std_logic;
SIGNAL \freqDiv3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \db0|sampled_dirty~0_combout\ : std_logic;
SIGNAL \db0|sampled_dirty~q\ : std_logic;
SIGNAL \db0|level~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \db1|sampled_dirty~0_combout\ : std_logic;
SIGNAL \db1|sampled_dirty~q\ : std_logic;
SIGNAL \db1|level~q\ : std_logic;
SIGNAL \almsetMin|Add1~0_combout\ : std_logic;
SIGNAL \almsetMin|Add0~0_combout\ : std_logic;
SIGNAL \almsetMin|Add1~13_combout\ : std_logic;
SIGNAL \almsetMin|Add0~1\ : std_logic;
SIGNAL \almsetMin|Add0~2_combout\ : std_logic;
SIGNAL \almsetMin|Add1~1\ : std_logic;
SIGNAL \almsetMin|Add1~2_combout\ : std_logic;
SIGNAL \almsetMin|Add1~12_combout\ : std_logic;
SIGNAL \almsetMin|Add1~3\ : std_logic;
SIGNAL \almsetMin|Add1~4_combout\ : std_logic;
SIGNAL \almsetMin|Add0~3\ : std_logic;
SIGNAL \almsetMin|Add0~4_combout\ : std_logic;
SIGNAL \almsetMin|s_count[2]~51_combout\ : std_logic;
SIGNAL \almsetMin|s_count[2]~52_combout\ : std_logic;
SIGNAL \almsetMin|Add1~5\ : std_logic;
SIGNAL \almsetMin|Add1~7\ : std_logic;
SIGNAL \almsetMin|Add1~8_combout\ : std_logic;
SIGNAL \almsetMin|Add0~5\ : std_logic;
SIGNAL \almsetMin|Add0~7\ : std_logic;
SIGNAL \almsetMin|Add0~8_combout\ : std_logic;
SIGNAL \almsetMin|s_count[4]~47_combout\ : std_logic;
SIGNAL \almsetMin|s_count[4]~48_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~39_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~40_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~1_cout\ : std_logic;
SIGNAL \freqDiv2|Add0~3_cout\ : std_logic;
SIGNAL \freqDiv2|Add0~5_cout\ : std_logic;
SIGNAL \freqDiv2|Add0~7_cout\ : std_logic;
SIGNAL \freqDiv2|Add0~9_cout\ : std_logic;
SIGNAL \freqDiv2|Add0~10_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~4_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~11\ : std_logic;
SIGNAL \freqDiv2|Add0~12_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~9_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~13\ : std_logic;
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
SIGNAL \freqDiv2|Add0~29\ : std_logic;
SIGNAL \freqDiv2|Add0~30_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~6_combout\ : std_logic;
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
SIGNAL \freqDiv2|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~57\ : std_logic;
SIGNAL \freqDiv2|Add0~58_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~3_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~5_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~28_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~2_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~0_combout\ : std_logic;
SIGNAL \freqDiv2|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv2|Add0~14_combout\ : std_logic;
SIGNAL \freqDiv2|s_count~3_combout\ : std_logic;
SIGNAL \freqDiv2|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv2|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv2|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv2|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv2|clkOut~feeder_combout\ : std_logic;
SIGNAL \freqDiv2|clkOut~q\ : std_logic;
SIGNAL \freqDiv2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \db3|sampled_dirty~0_combout\ : std_logic;
SIGNAL \db3|sampled_dirty~q\ : std_logic;
SIGNAL \db3|level~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \setHour~0_combout\ : std_logic;
SIGNAL \setMin~1_combout\ : std_logic;
SIGNAL \setHour~q\ : std_logic;
SIGNAL \setMin~0_combout\ : std_logic;
SIGNAL \setMin~q\ : std_logic;
SIGNAL \almsetMin|s_count[5]~41_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~45_combout\ : std_logic;
SIGNAL \almsetMin|Add1~9\ : std_logic;
SIGNAL \almsetMin|Add1~10_combout\ : std_logic;
SIGNAL \almsetMin|Add0~9\ : std_logic;
SIGNAL \almsetMin|Add0~10_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~38_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~46_combout\ : std_logic;
SIGNAL \almsetMin|Add1~11\ : std_logic;
SIGNAL \almsetMin|Add1~14_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~0_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~9_combout\ : std_logic;
SIGNAL \almsetMin|Add0~11\ : std_logic;
SIGNAL \almsetMin|Add0~12_combout\ : std_logic;
SIGNAL \almsetMin|s_count~67_combout\ : std_logic;
SIGNAL \almsetMin|s_count[6]~25_combout\ : std_logic;
SIGNAL \almsetMin|Add1~15\ : std_logic;
SIGNAL \almsetMin|Add1~16_combout\ : std_logic;
SIGNAL \almsetMin|Add0~13\ : std_logic;
SIGNAL \almsetMin|Add0~14_combout\ : std_logic;
SIGNAL \almsetMin|s_count~66_combout\ : std_logic;
SIGNAL \almsetMin|s_count[7]~24_combout\ : std_logic;
SIGNAL \almsetMin|Add0~15\ : std_logic;
SIGNAL \almsetMin|Add0~16_combout\ : std_logic;
SIGNAL \almsetMin|s_count~65_combout\ : std_logic;
SIGNAL \almsetMin|Add1~17\ : std_logic;
SIGNAL \almsetMin|Add1~18_combout\ : std_logic;
SIGNAL \almsetMin|s_count[8]~23_combout\ : std_logic;
SIGNAL \almsetMin|Add0~17\ : std_logic;
SIGNAL \almsetMin|Add0~18_combout\ : std_logic;
SIGNAL \almsetMin|s_count~64_combout\ : std_logic;
SIGNAL \almsetMin|Add1~19\ : std_logic;
SIGNAL \almsetMin|Add1~20_combout\ : std_logic;
SIGNAL \almsetMin|s_count[9]~22_combout\ : std_logic;
SIGNAL \almsetMin|Add0~19\ : std_logic;
SIGNAL \almsetMin|Add0~20_combout\ : std_logic;
SIGNAL \almsetMin|s_count~63_combout\ : std_logic;
SIGNAL \almsetMin|Add1~21\ : std_logic;
SIGNAL \almsetMin|Add1~22_combout\ : std_logic;
SIGNAL \almsetMin|s_count[10]~21_combout\ : std_logic;
SIGNAL \almsetMin|Add1~23\ : std_logic;
SIGNAL \almsetMin|Add1~24_combout\ : std_logic;
SIGNAL \almsetMin|Add0~21\ : std_logic;
SIGNAL \almsetMin|Add0~22_combout\ : std_logic;
SIGNAL \almsetMin|s_count~62_combout\ : std_logic;
SIGNAL \almsetMin|s_count[11]~20_combout\ : std_logic;
SIGNAL \almsetMin|Add1~25\ : std_logic;
SIGNAL \almsetMin|Add1~26_combout\ : std_logic;
SIGNAL \almsetMin|Add0~23\ : std_logic;
SIGNAL \almsetMin|Add0~24_combout\ : std_logic;
SIGNAL \almsetMin|s_count~61_combout\ : std_logic;
SIGNAL \almsetMin|s_count[12]~19_combout\ : std_logic;
SIGNAL \almsetMin|Add0~25\ : std_logic;
SIGNAL \almsetMin|Add0~26_combout\ : std_logic;
SIGNAL \almsetMin|s_count~60_combout\ : std_logic;
SIGNAL \almsetMin|Add1~27\ : std_logic;
SIGNAL \almsetMin|Add1~28_combout\ : std_logic;
SIGNAL \almsetMin|s_count[13]~18_combout\ : std_logic;
SIGNAL \almsetMin|Add0~27\ : std_logic;
SIGNAL \almsetMin|Add0~28_combout\ : std_logic;
SIGNAL \almsetMin|s_count~59_combout\ : std_logic;
SIGNAL \almsetMin|Add1~29\ : std_logic;
SIGNAL \almsetMin|Add1~30_combout\ : std_logic;
SIGNAL \almsetMin|s_count[14]~17_combout\ : std_logic;
SIGNAL \almsetMin|Add1~31\ : std_logic;
SIGNAL \almsetMin|Add1~32_combout\ : std_logic;
SIGNAL \almsetMin|Add0~29\ : std_logic;
SIGNAL \almsetMin|Add0~30_combout\ : std_logic;
SIGNAL \almsetMin|s_count~58_combout\ : std_logic;
SIGNAL \almsetMin|s_count[15]~16_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~6_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~7_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~8_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~10_combout\ : std_logic;
SIGNAL \almsetMin|s_count[29]~53_combout\ : std_logic;
SIGNAL \almsetMin|Add1~33\ : std_logic;
SIGNAL \almsetMin|Add1~34_combout\ : std_logic;
SIGNAL \almsetMin|Add0~31\ : std_logic;
SIGNAL \almsetMin|Add0~32_combout\ : std_logic;
SIGNAL \almsetMin|s_count~57_combout\ : std_logic;
SIGNAL \almsetMin|s_count[16]~15_combout\ : std_logic;
SIGNAL \almsetMin|Add1~35\ : std_logic;
SIGNAL \almsetMin|Add1~36_combout\ : std_logic;
SIGNAL \almsetMin|Add0~33\ : std_logic;
SIGNAL \almsetMin|Add0~34_combout\ : std_logic;
SIGNAL \almsetMin|s_count~56_combout\ : std_logic;
SIGNAL \almsetMin|s_count[17]~14_combout\ : std_logic;
SIGNAL \almsetMin|Add1~37\ : std_logic;
SIGNAL \almsetMin|Add1~38_combout\ : std_logic;
SIGNAL \almsetMin|Add0~35\ : std_logic;
SIGNAL \almsetMin|Add0~36_combout\ : std_logic;
SIGNAL \almsetMin|s_count~55_combout\ : std_logic;
SIGNAL \almsetMin|s_count[18]~13_combout\ : std_logic;
SIGNAL \almsetMin|Add1~39\ : std_logic;
SIGNAL \almsetMin|Add1~40_combout\ : std_logic;
SIGNAL \almsetMin|Add0~37\ : std_logic;
SIGNAL \almsetMin|Add0~38_combout\ : std_logic;
SIGNAL \almsetMin|s_count~54_combout\ : std_logic;
SIGNAL \almsetMin|s_count[19]~12_combout\ : std_logic;
SIGNAL \almsetMin|Add1~41\ : std_logic;
SIGNAL \almsetMin|Add1~42_combout\ : std_logic;
SIGNAL \almsetMin|Add0~39\ : std_logic;
SIGNAL \almsetMin|Add0~40_combout\ : std_logic;
SIGNAL \almsetMin|s_count~73_combout\ : std_logic;
SIGNAL \almsetMin|s_count[20]~11_combout\ : std_logic;
SIGNAL \almsetMin|Add1~43\ : std_logic;
SIGNAL \almsetMin|Add1~44_combout\ : std_logic;
SIGNAL \almsetMin|Add0~41\ : std_logic;
SIGNAL \almsetMin|Add0~42_combout\ : std_logic;
SIGNAL \almsetMin|s_count~72_combout\ : std_logic;
SIGNAL \almsetMin|s_count[21]~10_combout\ : std_logic;
SIGNAL \almsetMin|Add1~45\ : std_logic;
SIGNAL \almsetMin|Add1~47\ : std_logic;
SIGNAL \almsetMin|Add1~48_combout\ : std_logic;
SIGNAL \almsetMin|Add0~43\ : std_logic;
SIGNAL \almsetMin|Add0~45\ : std_logic;
SIGNAL \almsetMin|Add0~46_combout\ : std_logic;
SIGNAL \almsetMin|s_count~70_combout\ : std_logic;
SIGNAL \almsetMin|s_count[23]~8_combout\ : std_logic;
SIGNAL \almsetMin|Add0~47\ : std_logic;
SIGNAL \almsetMin|Add0~48_combout\ : std_logic;
SIGNAL \almsetMin|s_count~69_combout\ : std_logic;
SIGNAL \almsetMin|Add1~49\ : std_logic;
SIGNAL \almsetMin|Add1~50_combout\ : std_logic;
SIGNAL \almsetMin|s_count[24]~7_combout\ : std_logic;
SIGNAL \almsetMin|Add1~51\ : std_logic;
SIGNAL \almsetMin|Add1~52_combout\ : std_logic;
SIGNAL \almsetMin|Add0~49\ : std_logic;
SIGNAL \almsetMin|Add0~50_combout\ : std_logic;
SIGNAL \almsetMin|s_count~68_combout\ : std_logic;
SIGNAL \almsetMin|s_count[25]~6_combout\ : std_logic;
SIGNAL \almsetMin|Add0~51\ : std_logic;
SIGNAL \almsetMin|Add0~52_combout\ : std_logic;
SIGNAL \almsetMin|Add1~53\ : std_logic;
SIGNAL \almsetMin|Add1~54_combout\ : std_logic;
SIGNAL \almsetMin|s_count[26]~5_combout\ : std_logic;
SIGNAL \almsetMin|s_count[26]~feeder_combout\ : std_logic;
SIGNAL \almsetMin|Add0~53\ : std_logic;
SIGNAL \almsetMin|Add0~54_combout\ : std_logic;
SIGNAL \almsetMin|Add1~55\ : std_logic;
SIGNAL \almsetMin|Add1~56_combout\ : std_logic;
SIGNAL \almsetMin|s_count[27]~4_combout\ : std_logic;
SIGNAL \almsetMin|s_count[27]~feeder_combout\ : std_logic;
SIGNAL \almsetMin|Add0~55\ : std_logic;
SIGNAL \almsetMin|Add0~56_combout\ : std_logic;
SIGNAL \almsetMin|Add1~57\ : std_logic;
SIGNAL \almsetMin|Add1~58_combout\ : std_logic;
SIGNAL \almsetMin|s_count[28]~3_combout\ : std_logic;
SIGNAL \almsetMin|s_count[28]~feeder_combout\ : std_logic;
SIGNAL \almsetMin|Add0~57\ : std_logic;
SIGNAL \almsetMin|Add0~58_combout\ : std_logic;
SIGNAL \almsetMin|Add1~59\ : std_logic;
SIGNAL \almsetMin|Add1~60_combout\ : std_logic;
SIGNAL \almsetMin|s_count[29]~2_combout\ : std_logic;
SIGNAL \almsetMin|s_count[29]~feeder_combout\ : std_logic;
SIGNAL \almsetMin|Add0~59\ : std_logic;
SIGNAL \almsetMin|Add0~60_combout\ : std_logic;
SIGNAL \almsetMin|Add1~61\ : std_logic;
SIGNAL \almsetMin|Add1~62_combout\ : std_logic;
SIGNAL \almsetMin|s_count[30]~1_combout\ : std_logic;
SIGNAL \almsetMin|s_count[30]~feeder_combout\ : std_logic;
SIGNAL \almsetMin|Add1~63\ : std_logic;
SIGNAL \almsetMin|Add1~64_combout\ : std_logic;
SIGNAL \almsetMin|Add0~61\ : std_logic;
SIGNAL \almsetMin|Add0~62_combout\ : std_logic;
SIGNAL \almsetMin|s_count[31]~0_combout\ : std_logic;
SIGNAL \almsetMin|s_count[31]~feeder_combout\ : std_logic;
SIGNAL \almsetMin|process_0~0_combout\ : std_logic;
SIGNAL \almsetMin|Add1~46_combout\ : std_logic;
SIGNAL \almsetMin|Add0~44_combout\ : std_logic;
SIGNAL \almsetMin|s_count~71_combout\ : std_logic;
SIGNAL \almsetMin|s_count[22]~9_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~3_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~4_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~2_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~1_combout\ : std_logic;
SIGNAL \almsetMin|Equal0~5_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~42_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~43_combout\ : std_logic;
SIGNAL \almsetMin|s_count[5]~44_combout\ : std_logic;
SIGNAL \almsetMin|Add0~6_combout\ : std_logic;
SIGNAL \almsetMin|Add1~6_combout\ : std_logic;
SIGNAL \almsetMin|s_count[3]~49_combout\ : std_logic;
SIGNAL \almsetMin|s_count[3]~50_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~13\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~14_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~7_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~15\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~16_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~17\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~18_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~19\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~20_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~21\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~22_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~23\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~24_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~6_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~25\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~26_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~5_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~27\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~28_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~4_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~29\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~30_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~11_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~31\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~32_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~33\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~34_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~10_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~35\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~36_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~37\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~38_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~3_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~39\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~40_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~2_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~41\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~42_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~1_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~43\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~44_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~0_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~45\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~46_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~9_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~47\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~48_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~49\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~50_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|s_count~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~51\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~52_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~53\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~54_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~55\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~56_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~57\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~58_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~59\ : std_logic;
SIGNAL \clkIn|freqDiv|Add0~60_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \freqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~1_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~2_combout\ : std_logic;
SIGNAL \freqDiv|Equal1~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \HEX6~0_combout\ : std_logic;
SIGNAL \almsetHour|Add1~0_combout\ : std_logic;
SIGNAL \almsetHour|Add0~0_combout\ : std_logic;
SIGNAL \almsetHour|Add0~5\ : std_logic;
SIGNAL \almsetHour|Add0~6_combout\ : std_logic;
SIGNAL \almsetHour|Add1~4\ : std_logic;
SIGNAL \almsetHour|Add1~7\ : std_logic;
SIGNAL \almsetHour|Add1~9_combout\ : std_logic;
SIGNAL \almsetHour|s_count[3]~30_combout\ : std_logic;
SIGNAL \almsetHour|Add1~12\ : std_logic;
SIGNAL \almsetHour|Add1~13_combout\ : std_logic;
SIGNAL \almsetHour|Add0~7\ : std_logic;
SIGNAL \almsetHour|Add0~9\ : std_logic;
SIGNAL \almsetHour|Add0~10_combout\ : std_logic;
SIGNAL \almsetHour|s_count~55_combout\ : std_logic;
SIGNAL \almsetHour|s_count[5]~26_combout\ : std_logic;
SIGNAL \almsetHour|Add1~14\ : std_logic;
SIGNAL \almsetHour|Add1~15_combout\ : std_logic;
SIGNAL \almsetHour|Add0~11\ : std_logic;
SIGNAL \almsetHour|Add0~12_combout\ : std_logic;
SIGNAL \almsetHour|s_count~54_combout\ : std_logic;
SIGNAL \almsetHour|s_count[6]~25_combout\ : std_logic;
SIGNAL \almsetHour|Add1~16\ : std_logic;
SIGNAL \almsetHour|Add1~17_combout\ : std_logic;
SIGNAL \almsetHour|Add0~13\ : std_logic;
SIGNAL \almsetHour|Add0~14_combout\ : std_logic;
SIGNAL \almsetHour|s_count~53_combout\ : std_logic;
SIGNAL \almsetHour|s_count[7]~24_combout\ : std_logic;
SIGNAL \almsetHour|Add1~18\ : std_logic;
SIGNAL \almsetHour|Add1~19_combout\ : std_logic;
SIGNAL \almsetHour|Add0~15\ : std_logic;
SIGNAL \almsetHour|Add0~16_combout\ : std_logic;
SIGNAL \almsetHour|s_count~52_combout\ : std_logic;
SIGNAL \almsetHour|s_count[8]~23_combout\ : std_logic;
SIGNAL \almsetHour|Add1~20\ : std_logic;
SIGNAL \almsetHour|Add1~21_combout\ : std_logic;
SIGNAL \almsetHour|Add0~17\ : std_logic;
SIGNAL \almsetHour|Add0~18_combout\ : std_logic;
SIGNAL \almsetHour|s_count~51_combout\ : std_logic;
SIGNAL \almsetHour|s_count[9]~22_combout\ : std_logic;
SIGNAL \almsetHour|Add1~22\ : std_logic;
SIGNAL \almsetHour|Add1~23_combout\ : std_logic;
SIGNAL \almsetHour|Add0~19\ : std_logic;
SIGNAL \almsetHour|Add0~20_combout\ : std_logic;
SIGNAL \almsetHour|s_count~50_combout\ : std_logic;
SIGNAL \almsetHour|s_count[10]~21_combout\ : std_logic;
SIGNAL \almsetHour|Add1~24\ : std_logic;
SIGNAL \almsetHour|Add1~25_combout\ : std_logic;
SIGNAL \almsetHour|Add0~21\ : std_logic;
SIGNAL \almsetHour|Add0~22_combout\ : std_logic;
SIGNAL \almsetHour|s_count~49_combout\ : std_logic;
SIGNAL \almsetHour|s_count[11]~20_combout\ : std_logic;
SIGNAL \almsetHour|Add0~23\ : std_logic;
SIGNAL \almsetHour|Add0~24_combout\ : std_logic;
SIGNAL \almsetHour|s_count~59_combout\ : std_logic;
SIGNAL \almsetHour|Add1~26\ : std_logic;
SIGNAL \almsetHour|Add1~27_combout\ : std_logic;
SIGNAL \almsetHour|s_count[12]~19_combout\ : std_logic;
SIGNAL \almsetHour|Add1~28\ : std_logic;
SIGNAL \almsetHour|Add1~29_combout\ : std_logic;
SIGNAL \almsetHour|Add0~25\ : std_logic;
SIGNAL \almsetHour|Add0~26_combout\ : std_logic;
SIGNAL \almsetHour|s_count~58_combout\ : std_logic;
SIGNAL \almsetHour|s_count[13]~18_combout\ : std_logic;
SIGNAL \almsetHour|Add0~27\ : std_logic;
SIGNAL \almsetHour|Add0~28_combout\ : std_logic;
SIGNAL \almsetHour|s_count~57_combout\ : std_logic;
SIGNAL \almsetHour|Add1~30\ : std_logic;
SIGNAL \almsetHour|Add1~31_combout\ : std_logic;
SIGNAL \almsetHour|s_count[14]~17_combout\ : std_logic;
SIGNAL \almsetHour|Add1~32\ : std_logic;
SIGNAL \almsetHour|Add1~33_combout\ : std_logic;
SIGNAL \almsetHour|Add0~29\ : std_logic;
SIGNAL \almsetHour|Add0~30_combout\ : std_logic;
SIGNAL \almsetHour|s_count~56_combout\ : std_logic;
SIGNAL \almsetHour|s_count[15]~16_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~7_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~5_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~6_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~8_combout\ : std_logic;
SIGNAL \almsetHour|Add0~31\ : std_logic;
SIGNAL \almsetHour|Add0~32_combout\ : std_logic;
SIGNAL \almsetHour|s_count~48_combout\ : std_logic;
SIGNAL \almsetHour|Add1~34\ : std_logic;
SIGNAL \almsetHour|Add1~35_combout\ : std_logic;
SIGNAL \almsetHour|s_count[16]~15_combout\ : std_logic;
SIGNAL \almsetHour|Add1~36\ : std_logic;
SIGNAL \almsetHour|Add1~37_combout\ : std_logic;
SIGNAL \almsetHour|Add0~33\ : std_logic;
SIGNAL \almsetHour|Add0~34_combout\ : std_logic;
SIGNAL \almsetHour|s_count~47_combout\ : std_logic;
SIGNAL \almsetHour|s_count[17]~14_combout\ : std_logic;
SIGNAL \almsetHour|Add0~35\ : std_logic;
SIGNAL \almsetHour|Add0~36_combout\ : std_logic;
SIGNAL \almsetHour|s_count~46_combout\ : std_logic;
SIGNAL \almsetHour|Add1~38\ : std_logic;
SIGNAL \almsetHour|Add1~39_combout\ : std_logic;
SIGNAL \almsetHour|s_count[18]~13_combout\ : std_logic;
SIGNAL \almsetHour|Add1~40\ : std_logic;
SIGNAL \almsetHour|Add1~41_combout\ : std_logic;
SIGNAL \almsetHour|Add0~37\ : std_logic;
SIGNAL \almsetHour|Add0~38_combout\ : std_logic;
SIGNAL \almsetHour|s_count~45_combout\ : std_logic;
SIGNAL \almsetHour|s_count[19]~12_combout\ : std_logic;
SIGNAL \almsetHour|Add1~42\ : std_logic;
SIGNAL \almsetHour|Add1~43_combout\ : std_logic;
SIGNAL \almsetHour|Add0~39\ : std_logic;
SIGNAL \almsetHour|Add0~40_combout\ : std_logic;
SIGNAL \almsetHour|s_count~44_combout\ : std_logic;
SIGNAL \almsetHour|s_count[20]~11_combout\ : std_logic;
SIGNAL \almsetHour|Add1~44\ : std_logic;
SIGNAL \almsetHour|Add1~45_combout\ : std_logic;
SIGNAL \almsetHour|Add0~41\ : std_logic;
SIGNAL \almsetHour|Add0~42_combout\ : std_logic;
SIGNAL \almsetHour|s_count~43_combout\ : std_logic;
SIGNAL \almsetHour|s_count[21]~10_combout\ : std_logic;
SIGNAL \almsetHour|Add1~46\ : std_logic;
SIGNAL \almsetHour|Add1~47_combout\ : std_logic;
SIGNAL \almsetHour|Add0~43\ : std_logic;
SIGNAL \almsetHour|Add0~44_combout\ : std_logic;
SIGNAL \almsetHour|s_count~42_combout\ : std_logic;
SIGNAL \almsetHour|s_count[22]~9_combout\ : std_logic;
SIGNAL \almsetHour|Add0~45\ : std_logic;
SIGNAL \almsetHour|Add0~46_combout\ : std_logic;
SIGNAL \almsetHour|s_count~41_combout\ : std_logic;
SIGNAL \almsetHour|Add1~48\ : std_logic;
SIGNAL \almsetHour|Add1~49_combout\ : std_logic;
SIGNAL \almsetHour|s_count[23]~8_combout\ : std_logic;
SIGNAL \almsetHour|Add1~50\ : std_logic;
SIGNAL \almsetHour|Add1~51_combout\ : std_logic;
SIGNAL \almsetHour|Add0~47\ : std_logic;
SIGNAL \almsetHour|Add0~48_combout\ : std_logic;
SIGNAL \almsetHour|s_count~40_combout\ : std_logic;
SIGNAL \almsetHour|s_count[24]~7_combout\ : std_logic;
SIGNAL \almsetHour|Add0~49\ : std_logic;
SIGNAL \almsetHour|Add0~50_combout\ : std_logic;
SIGNAL \almsetHour|s_count~39_combout\ : std_logic;
SIGNAL \almsetHour|Add1~52\ : std_logic;
SIGNAL \almsetHour|Add1~53_combout\ : std_logic;
SIGNAL \almsetHour|s_count[25]~6_combout\ : std_logic;
SIGNAL \almsetHour|Add1~54\ : std_logic;
SIGNAL \almsetHour|Add1~55_combout\ : std_logic;
SIGNAL \almsetHour|Add0~51\ : std_logic;
SIGNAL \almsetHour|Add0~52_combout\ : std_logic;
SIGNAL \almsetHour|s_count~38_combout\ : std_logic;
SIGNAL \almsetHour|s_count[26]~5_combout\ : std_logic;
SIGNAL \almsetHour|Add0~53\ : std_logic;
SIGNAL \almsetHour|Add0~54_combout\ : std_logic;
SIGNAL \almsetHour|Add1~56\ : std_logic;
SIGNAL \almsetHour|Add1~57_combout\ : std_logic;
SIGNAL \almsetHour|s_count[29]~37_combout\ : std_logic;
SIGNAL \almsetHour|s_count[27]~4_combout\ : std_logic;
SIGNAL \almsetHour|s_count[27]~feeder_combout\ : std_logic;
SIGNAL \almsetHour|Add0~55\ : std_logic;
SIGNAL \almsetHour|Add0~56_combout\ : std_logic;
SIGNAL \almsetHour|Add1~58\ : std_logic;
SIGNAL \almsetHour|Add1~59_combout\ : std_logic;
SIGNAL \almsetHour|s_count[28]~3_combout\ : std_logic;
SIGNAL \almsetHour|s_count[28]~feeder_combout\ : std_logic;
SIGNAL \almsetHour|Add1~60\ : std_logic;
SIGNAL \almsetHour|Add1~61_combout\ : std_logic;
SIGNAL \almsetHour|Add0~57\ : std_logic;
SIGNAL \almsetHour|Add0~58_combout\ : std_logic;
SIGNAL \almsetHour|s_count[29]~2_combout\ : std_logic;
SIGNAL \almsetHour|s_count[29]~feeder_combout\ : std_logic;
SIGNAL \almsetHour|Add0~59\ : std_logic;
SIGNAL \almsetHour|Add0~60_combout\ : std_logic;
SIGNAL \almsetHour|Add1~62\ : std_logic;
SIGNAL \almsetHour|Add1~63_combout\ : std_logic;
SIGNAL \almsetHour|s_count[30]~1_combout\ : std_logic;
SIGNAL \almsetHour|s_count[30]~feeder_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~0_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~1_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~3_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~2_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~4_combout\ : std_logic;
SIGNAL \almsetHour|s_count[4]~28_combout\ : std_logic;
SIGNAL \almsetHour|s_count[4]~27_combout\ : std_logic;
SIGNAL \almsetHour|s_count[4]~29_combout\ : std_logic;
SIGNAL \almsetHour|s_count[11]~31_combout\ : std_logic;
SIGNAL \almsetHour|s_count[3]~32_combout\ : std_logic;
SIGNAL \almsetHour|s_count[3]~33_combout\ : std_logic;
SIGNAL \almsetHour|s_count[3]~34_combout\ : std_logic;
SIGNAL \almsetHour|Add1~10\ : std_logic;
SIGNAL \almsetHour|Add1~11_combout\ : std_logic;
SIGNAL \almsetHour|Add0~8_combout\ : std_logic;
SIGNAL \almsetHour|s_count[4]~35_combout\ : std_logic;
SIGNAL \almsetHour|s_count[4]~36_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~9_combout\ : std_logic;
SIGNAL \almsetHour|Equal0~10_combout\ : std_logic;
SIGNAL \almsetHour|Add0~61\ : std_logic;
SIGNAL \almsetHour|Add0~62_combout\ : std_logic;
SIGNAL \almsetHour|Add1~64\ : std_logic;
SIGNAL \almsetHour|Add1~65_combout\ : std_logic;
SIGNAL \almsetHour|s_count[31]~0_combout\ : std_logic;
SIGNAL \almsetHour|s_count[31]~feeder_combout\ : std_logic;
SIGNAL \almsetHour|process_0~0_combout\ : std_logic;
SIGNAL \almsetHour|Add1~2_combout\ : std_logic;
SIGNAL \almsetHour|Add1~1\ : std_logic;
SIGNAL \almsetHour|Add1~3_combout\ : std_logic;
SIGNAL \almsetHour|Add0~1\ : std_logic;
SIGNAL \almsetHour|Add0~2_combout\ : std_logic;
SIGNAL \almsetHour|Add1~5_combout\ : std_logic;
SIGNAL \almsetHour|Add0~3\ : std_logic;
SIGNAL \almsetHour|Add0~4_combout\ : std_logic;
SIGNAL \almsetHour|Add1~6_combout\ : std_logic;
SIGNAL \almsetHour|Add1~8_combout\ : std_logic;
SIGNAL \clkIn|freqDiv|clkOut~q\ : std_logic;
SIGNAL \clkIn|freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \clkIn|Add5~0_combout\ : std_logic;
SIGNAL \clkIn|min[0]~6_combout\ : std_logic;
SIGNAL \clkIn|sec[0]~6_combout\ : std_logic;
SIGNAL \clkIn|sec[0]~7\ : std_logic;
SIGNAL \clkIn|sec[1]~8_combout\ : std_logic;
SIGNAL \clkIn|sec[1]~9\ : std_logic;
SIGNAL \clkIn|sec[2]~10_combout\ : std_logic;
SIGNAL \clkIn|sec[2]~11\ : std_logic;
SIGNAL \clkIn|sec[3]~12_combout\ : std_logic;
SIGNAL \clkIn|sec[3]~13\ : std_logic;
SIGNAL \clkIn|sec[4]~14_combout\ : std_logic;
SIGNAL \clkIn|sec[4]~15\ : std_logic;
SIGNAL \clkIn|sec[5]~16_combout\ : std_logic;
SIGNAL \clkIn|LessThan3~0_combout\ : std_logic;
SIGNAL \clkIn|LessThan3~1_combout\ : std_logic;
SIGNAL \clkIn|min[0]~7\ : std_logic;
SIGNAL \clkIn|min[1]~8_combout\ : std_logic;
SIGNAL \clkIn|min[1]~9\ : std_logic;
SIGNAL \clkIn|min[2]~10_combout\ : std_logic;
SIGNAL \clkIn|min[2]~11\ : std_logic;
SIGNAL \clkIn|min[3]~12_combout\ : std_logic;
SIGNAL \clkIn|min[3]~13\ : std_logic;
SIGNAL \clkIn|min[4]~14_combout\ : std_logic;
SIGNAL \clkIn|min[4]~15\ : std_logic;
SIGNAL \clkIn|min[5]~16_combout\ : std_logic;
SIGNAL \clkIn|LessThan4~0_combout\ : std_logic;
SIGNAL \clkIn|LessThan4~1_combout\ : std_logic;
SIGNAL \clkIn|hour[3]~13_combout\ : std_logic;
SIGNAL \clkIn|LessThan5~1_combout\ : std_logic;
SIGNAL \clkIn|am~0_combout\ : std_logic;
SIGNAL \clkIn|am~q\ : std_logic;
SIGNAL \clkIn|Add5~1\ : std_logic;
SIGNAL \clkIn|Add5~2_combout\ : std_logic;
SIGNAL \clkIn|hour[0]~8_combout\ : std_logic;
SIGNAL \clkIn|hour[1]~9_combout\ : std_logic;
SIGNAL \clkIn|Equal2~0_combout\ : std_logic;
SIGNAL \clkIn|Equal2~1_combout\ : std_logic;
SIGNAL \clkIn|hour[2]~16_combout\ : std_logic;
SIGNAL \clkIn|Add5~3\ : std_logic;
SIGNAL \clkIn|Add5~4_combout\ : std_logic;
SIGNAL \clkIn|hour[2]~15_combout\ : std_logic;
SIGNAL \clkIn|hour[2]~17_combout\ : std_logic;
SIGNAL \clkIn|hour[0]~7_combout\ : std_logic;
SIGNAL \clkIn|hour[3]~11_combout\ : std_logic;
SIGNAL \clkIn|hour[0]~18_combout\ : std_logic;
SIGNAL \clkIn|Add5~5\ : std_logic;
SIGNAL \clkIn|Add5~7\ : std_logic;
SIGNAL \clkIn|Add5~8_combout\ : std_logic;
SIGNAL \clkIn|hour[4]~22_combout\ : std_logic;
SIGNAL \clkIn|hour[4]~19_combout\ : std_logic;
SIGNAL \clkIn|hour[4]~23_combout\ : std_logic;
SIGNAL \clkIn|hour[4]~20_combout\ : std_logic;
SIGNAL \clkIn|hour[1]~6_combout\ : std_logic;
SIGNAL \clkIn|hour[0]~10_combout\ : std_logic;
SIGNAL \clkIn|LessThan5~0_combout\ : std_logic;
SIGNAL \clkIn|Add5~6_combout\ : std_logic;
SIGNAL \clkIn|hour[3]~21_combout\ : std_logic;
SIGNAL \clkIn|Add15~0_combout\ : std_logic;
SIGNAL \clkIn|hour[3]~12_combout\ : std_logic;
SIGNAL \clkIn|hour[3]~14_combout\ : std_logic;
SIGNAL \process_2~5_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \process_2~4_combout\ : std_logic;
SIGNAL \process_2~6_combout\ : std_logic;
SIGNAL \process_2~7_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[1]~2_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[1]~4_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[2]~6_combout\ : std_logic;
SIGNAL \HEX4~4_combout\ : std_logic;
SIGNAL \HEX4~3_combout\ : std_logic;
SIGNAL \HEX4~5_combout\ : std_logic;
SIGNAL \HEX4~6_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \HEX4~2_combout\ : std_logic;
SIGNAL \HEX4~7_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[4]~8_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \a_b7segL1|decOut_n[5]~10_combout\ : std_logic;
SIGNAL \HEX4~8_combout\ : std_logic;
SIGNAL \HEX4~9_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[0]~2_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[0]~3_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[0]~4_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \HEX5~1_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[2]~6_combout\ : std_logic;
SIGNAL \HEX5~4_combout\ : std_logic;
SIGNAL \HEX5~3_combout\ : std_logic;
SIGNAL \HEX5~2_combout\ : std_logic;
SIGNAL \HEX5~5_combout\ : std_logic;
SIGNAL \HEX5~6_combout\ : std_logic;
SIGNAL \HEX5~7_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[5]~7_combout\ : std_logic;
SIGNAL \a_b7segH1|decOut_n[5]~8_combout\ : std_logic;
SIGNAL \HEX5~8_combout\ : std_logic;
SIGNAL \HEX5~9_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~6_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~7_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~8_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~10_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~9_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \HEX6~1_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[0]~1_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[1]~2_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[1]~3_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \HEX6~3_combout\ : std_logic;
SIGNAL \HEX6~2_combout\ : std_logic;
SIGNAL \HEX6~4_combout\ : std_logic;
SIGNAL \HEX6~5_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[4]~6_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[4]~7_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[5]~8_combout\ : std_logic;
SIGNAL \a_b7segL2|decOut_n[5]~9_combout\ : std_logic;
SIGNAL \HEX6~6_combout\ : std_logic;
SIGNAL \HEX6~7_combout\ : std_logic;
SIGNAL \HEX7~0_combout\ : std_logic;
SIGNAL \HEX7~1_combout\ : std_logic;
SIGNAL \HEX7~2_combout\ : std_logic;
SIGNAL \HEX7~3_combout\ : std_logic;
SIGNAL \HEX7~4_combout\ : std_logic;
SIGNAL \HEX7~5_combout\ : std_logic;
SIGNAL \HEX7~6_combout\ : std_logic;
SIGNAL \a_b7segH2|decOut_n[1]~0_combout\ : std_logic;
SIGNAL \HEX7~7_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \db2|sampled_dirty~0_combout\ : std_logic;
SIGNAL \db2|sampled_dirty~q\ : std_logic;
SIGNAL \db2|level~feeder_combout\ : std_logic;
SIGNAL \db2|level~q\ : std_logic;
SIGNAL \LEDG[8]$latch~combout\ : std_logic;
SIGNAL \clkIn|min\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \clkIn|hour\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \almsetMin|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkIn|sec\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \almsetHour|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkIn|freqDiv|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \freqDiv3|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \freqDiv2|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \almsetHour|ALT_INV_s_count[4]~29_combout\ : std_logic;
SIGNAL \almsetMin|ALT_INV_s_count[5]~45_combout\ : std_logic;
SIGNAL \ALT_INV_HEX7~1_combout\ : std_logic;

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
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv3|clkOut~q\);

\freqDiv2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv2|clkOut~q\);

\clkIn|freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkIn|freqDiv|clkOut~q\);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\almsetHour|ALT_INV_s_count[4]~29_combout\ <= NOT \almsetHour|s_count[4]~29_combout\;
\almsetMin|ALT_INV_s_count[5]~45_combout\ <= NOT \almsetMin|s_count[5]~45_combout\;
\ALT_INV_HEX7~1_combout\ <= NOT \HEX7~1_combout\;
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
	i => \SW[1]~input_o\,
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
	i => GND,
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
	i => \SW[1]~input_o\,
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
	i => GND,
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
	i => GND,
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
	i => \ALT_INV_SW[1]~input_o\,
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
	i => \ALT_INV_SW[1]~input_o\,
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
	i => GND,
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
	i => GND,
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
	i => \SW[1]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => \SW[1]~input_o\,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_b7segL1|decOut_n[0]~1_combout\,
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
	i => \a_b7segL1|decOut_n[1]~4_combout\,
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
	i => \a_b7segL1|decOut_n[2]~6_combout\,
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
	i => \HEX4~7_combout\,
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
	i => \a_b7segL1|decOut_n[4]~8_combout\,
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
	i => \a_b7segL1|decOut_n[5]~10_combout\,
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
	i => \HEX4~9_combout\,
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
	i => \a_b7segH1|decOut_n[0]~4_combout\,
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
	i => \a_b7segH1|decOut_n[2]~6_combout\,
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
	i => \a_b7segH1|decOut_n[5]~8_combout\,
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
	i => \a_b7segL2|decOut_n[0]~1_combout\,
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
	i => \a_b7segL2|decOut_n[1]~3_combout\,
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
	i => \a_b7segL2|decOut_n[2]~5_combout\,
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
	i => \HEX6~5_combout\,
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
	i => \a_b7segL2|decOut_n[4]~7_combout\,
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
	i => \a_b7segL2|decOut_n[5]~9_combout\,
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
	i => \HEX6~7_combout\,
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
	i => \HEX7~2_combout\,
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
	i => \HEX6~1_combout\,
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
	i => \HEX7~4_combout\,
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
	i => \HEX7~2_combout\,
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
	i => \ALT_INV_HEX7~1_combout\,
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
	i => \db0|level~q\,
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
	i => \db1|level~q\,
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
	i => \db2|level~q\,
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
	i => \db3|level~q\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[8]$latch~combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

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

-- Location: LCCOMB_X111_Y39_N2
\clkIn|freqDiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~0_combout\ = \clkIn|freqDiv|s_count\(0) $ (VCC)
-- \clkIn|freqDiv|Add0~1\ = CARRY(\clkIn|freqDiv|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(0),
	datad => VCC,
	combout => \clkIn|freqDiv|Add0~0_combout\,
	cout => \clkIn|freqDiv|Add0~1\);

-- Location: FF_X111_Y39_N3
\clkIn|freqDiv|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(0));

-- Location: LCCOMB_X111_Y39_N4
\clkIn|freqDiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~2_combout\ = (\clkIn|freqDiv|s_count\(1) & (!\clkIn|freqDiv|Add0~1\)) # (!\clkIn|freqDiv|s_count\(1) & ((\clkIn|freqDiv|Add0~1\) # (GND)))
-- \clkIn|freqDiv|Add0~3\ = CARRY((!\clkIn|freqDiv|Add0~1\) # (!\clkIn|freqDiv|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(1),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~1\,
	combout => \clkIn|freqDiv|Add0~2_combout\,
	cout => \clkIn|freqDiv|Add0~3\);

-- Location: FF_X111_Y39_N5
\clkIn|freqDiv|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(1));

-- Location: LCCOMB_X111_Y39_N6
\clkIn|freqDiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~4_combout\ = (\clkIn|freqDiv|s_count\(2) & (\clkIn|freqDiv|Add0~3\ $ (GND))) # (!\clkIn|freqDiv|s_count\(2) & (!\clkIn|freqDiv|Add0~3\ & VCC))
-- \clkIn|freqDiv|Add0~5\ = CARRY((\clkIn|freqDiv|s_count\(2) & !\clkIn|freqDiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(2),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~3\,
	combout => \clkIn|freqDiv|Add0~4_combout\,
	cout => \clkIn|freqDiv|Add0~5\);

-- Location: FF_X111_Y39_N7
\clkIn|freqDiv|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(2));

-- Location: LCCOMB_X111_Y39_N8
\clkIn|freqDiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~6_combout\ = (\clkIn|freqDiv|s_count\(3) & (!\clkIn|freqDiv|Add0~5\)) # (!\clkIn|freqDiv|s_count\(3) & ((\clkIn|freqDiv|Add0~5\) # (GND)))
-- \clkIn|freqDiv|Add0~7\ = CARRY((!\clkIn|freqDiv|Add0~5\) # (!\clkIn|freqDiv|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(3),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~5\,
	combout => \clkIn|freqDiv|Add0~6_combout\,
	cout => \clkIn|freqDiv|Add0~7\);

-- Location: FF_X111_Y39_N9
\clkIn|freqDiv|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(3));

-- Location: LCCOMB_X111_Y39_N10
\clkIn|freqDiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~8_combout\ = (\clkIn|freqDiv|s_count\(4) & (\clkIn|freqDiv|Add0~7\ $ (GND))) # (!\clkIn|freqDiv|s_count\(4) & (!\clkIn|freqDiv|Add0~7\ & VCC))
-- \clkIn|freqDiv|Add0~9\ = CARRY((\clkIn|freqDiv|s_count\(4) & !\clkIn|freqDiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(4),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~7\,
	combout => \clkIn|freqDiv|Add0~8_combout\,
	cout => \clkIn|freqDiv|Add0~9\);

-- Location: FF_X111_Y39_N11
\clkIn|freqDiv|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(4));

-- Location: LCCOMB_X111_Y39_N12
\clkIn|freqDiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~10_combout\ = (\clkIn|freqDiv|s_count\(5) & (!\clkIn|freqDiv|Add0~9\)) # (!\clkIn|freqDiv|s_count\(5) & ((\clkIn|freqDiv|Add0~9\) # (GND)))
-- \clkIn|freqDiv|Add0~11\ = CARRY((!\clkIn|freqDiv|Add0~9\) # (!\clkIn|freqDiv|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(5),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~9\,
	combout => \clkIn|freqDiv|Add0~10_combout\,
	cout => \clkIn|freqDiv|Add0~11\);

-- Location: FF_X111_Y39_N13
\clkIn|freqDiv|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(5));

-- Location: LCCOMB_X111_Y39_N14
\clkIn|freqDiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~12_combout\ = (\clkIn|freqDiv|s_count\(6) & (\clkIn|freqDiv|Add0~11\ $ (GND))) # (!\clkIn|freqDiv|s_count\(6) & (!\clkIn|freqDiv|Add0~11\ & VCC))
-- \clkIn|freqDiv|Add0~13\ = CARRY((\clkIn|freqDiv|s_count\(6) & !\clkIn|freqDiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(6),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~11\,
	combout => \clkIn|freqDiv|Add0~12_combout\,
	cout => \clkIn|freqDiv|Add0~13\);

-- Location: FF_X111_Y39_N15
\clkIn|freqDiv|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(6));

-- Location: LCCOMB_X110_Y41_N2
\freqDiv3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~1_cout\ = CARRY((\clkIn|freqDiv|s_count\(0) & \clkIn|freqDiv|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(0),
	datab => \clkIn|freqDiv|s_count\(1),
	datad => VCC,
	cout => \freqDiv3|Add0~1_cout\);

-- Location: LCCOMB_X110_Y41_N4
\freqDiv3|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~3_cout\ = CARRY((!\freqDiv3|Add0~1_cout\) # (!\clkIn|freqDiv|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(2),
	datad => VCC,
	cin => \freqDiv3|Add0~1_cout\,
	cout => \freqDiv3|Add0~3_cout\);

-- Location: LCCOMB_X110_Y41_N6
\freqDiv3|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~5_cout\ = CARRY((\clkIn|freqDiv|s_count\(3) & !\freqDiv3|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(3),
	datad => VCC,
	cin => \freqDiv3|Add0~3_cout\,
	cout => \freqDiv3|Add0~5_cout\);

-- Location: LCCOMB_X110_Y41_N8
\freqDiv3|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~7_cout\ = CARRY((!\freqDiv3|Add0~5_cout\) # (!\clkIn|freqDiv|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(4),
	datad => VCC,
	cin => \freqDiv3|Add0~5_cout\,
	cout => \freqDiv3|Add0~7_cout\);

-- Location: LCCOMB_X110_Y41_N10
\freqDiv3|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~9_cout\ = CARRY((\clkIn|freqDiv|s_count\(5) & !\freqDiv3|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(5),
	datad => VCC,
	cin => \freqDiv3|Add0~7_cout\,
	cout => \freqDiv3|Add0~9_cout\);

-- Location: LCCOMB_X110_Y41_N12
\freqDiv3|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~11_cout\ = CARRY((!\freqDiv3|Add0~9_cout\) # (!\clkIn|freqDiv|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(6),
	datad => VCC,
	cin => \freqDiv3|Add0~9_cout\,
	cout => \freqDiv3|Add0~11_cout\);

-- Location: LCCOMB_X110_Y41_N14
\freqDiv3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~12_combout\ = (\freqDiv3|s_count\(7) & (\freqDiv3|Add0~11_cout\ $ (GND))) # (!\freqDiv3|s_count\(7) & (!\freqDiv3|Add0~11_cout\ & VCC))
-- \freqDiv3|Add0~13\ = CARRY((\freqDiv3|s_count\(7) & !\freqDiv3|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(7),
	datad => VCC,
	cin => \freqDiv3|Add0~11_cout\,
	combout => \freqDiv3|Add0~12_combout\,
	cout => \freqDiv3|Add0~13\);

-- Location: LCCOMB_X111_Y41_N30
\freqDiv3|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~7_combout\ = (\freqDiv3|Add0~12_combout\ & ((!\freqDiv3|Equal0~9_combout\) # (!\freqDiv3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|Equal0~9_combout\,
	datad => \freqDiv3|Add0~12_combout\,
	combout => \freqDiv3|s_count~7_combout\);

-- Location: FF_X111_Y41_N31
\freqDiv3|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(7));

-- Location: LCCOMB_X110_Y41_N16
\freqDiv3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~14_combout\ = (\freqDiv3|s_count\(8) & (!\freqDiv3|Add0~13\)) # (!\freqDiv3|s_count\(8) & ((\freqDiv3|Add0~13\) # (GND)))
-- \freqDiv3|Add0~15\ = CARRY((!\freqDiv3|Add0~13\) # (!\freqDiv3|s_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(8),
	datad => VCC,
	cin => \freqDiv3|Add0~13\,
	combout => \freqDiv3|Add0~14_combout\,
	cout => \freqDiv3|Add0~15\);

-- Location: FF_X110_Y41_N17
\freqDiv3|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(8));

-- Location: LCCOMB_X110_Y41_N18
\freqDiv3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~16_combout\ = (\freqDiv3|s_count\(9) & (\freqDiv3|Add0~15\ $ (GND))) # (!\freqDiv3|s_count\(9) & (!\freqDiv3|Add0~15\ & VCC))
-- \freqDiv3|Add0~17\ = CARRY((\freqDiv3|s_count\(9) & !\freqDiv3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(9),
	datad => VCC,
	cin => \freqDiv3|Add0~15\,
	combout => \freqDiv3|Add0~16_combout\,
	cout => \freqDiv3|Add0~17\);

-- Location: LCCOMB_X110_Y41_N20
\freqDiv3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~18_combout\ = (\freqDiv3|s_count\(10) & (!\freqDiv3|Add0~17\)) # (!\freqDiv3|s_count\(10) & ((\freqDiv3|Add0~17\) # (GND)))
-- \freqDiv3|Add0~19\ = CARRY((!\freqDiv3|Add0~17\) # (!\freqDiv3|s_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(10),
	datad => VCC,
	cin => \freqDiv3|Add0~17\,
	combout => \freqDiv3|Add0~18_combout\,
	cout => \freqDiv3|Add0~19\);

-- Location: LCCOMB_X111_Y40_N8
\freqDiv3|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~4_combout\ = (\freqDiv3|Add0~18_combout\ & ((!\freqDiv3|Equal0~9_combout\) # (!\freqDiv3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|Add0~18_combout\,
	datad => \freqDiv3|Equal0~9_combout\,
	combout => \freqDiv3|s_count~4_combout\);

-- Location: FF_X111_Y40_N9
\freqDiv3|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(10));

-- Location: LCCOMB_X110_Y41_N22
\freqDiv3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~20_combout\ = (\freqDiv3|s_count\(11) & (\freqDiv3|Add0~19\ $ (GND))) # (!\freqDiv3|s_count\(11) & (!\freqDiv3|Add0~19\ & VCC))
-- \freqDiv3|Add0~21\ = CARRY((\freqDiv3|s_count\(11) & !\freqDiv3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(11),
	datad => VCC,
	cin => \freqDiv3|Add0~19\,
	combout => \freqDiv3|Add0~20_combout\,
	cout => \freqDiv3|Add0~21\);

-- Location: FF_X110_Y41_N23
\freqDiv3|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(11));

-- Location: LCCOMB_X110_Y41_N24
\freqDiv3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~22_combout\ = (\freqDiv3|s_count\(12) & (!\freqDiv3|Add0~21\)) # (!\freqDiv3|s_count\(12) & ((\freqDiv3|Add0~21\) # (GND)))
-- \freqDiv3|Add0~23\ = CARRY((!\freqDiv3|Add0~21\) # (!\freqDiv3|s_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(12),
	datad => VCC,
	cin => \freqDiv3|Add0~21\,
	combout => \freqDiv3|Add0~22_combout\,
	cout => \freqDiv3|Add0~23\);

-- Location: LCCOMB_X111_Y40_N16
\freqDiv3|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~3_combout\ = (\freqDiv3|Add0~22_combout\ & ((!\freqDiv3|Equal0~9_combout\) # (!\freqDiv3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|Add0~22_combout\,
	datad => \freqDiv3|Equal0~9_combout\,
	combout => \freqDiv3|s_count~3_combout\);

-- Location: FF_X111_Y40_N17
\freqDiv3|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(12));

-- Location: LCCOMB_X110_Y41_N26
\freqDiv3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~24_combout\ = (\freqDiv3|s_count\(13) & (\freqDiv3|Add0~23\ $ (GND))) # (!\freqDiv3|s_count\(13) & (!\freqDiv3|Add0~23\ & VCC))
-- \freqDiv3|Add0~25\ = CARRY((\freqDiv3|s_count\(13) & !\freqDiv3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(13),
	datad => VCC,
	cin => \freqDiv3|Add0~23\,
	combout => \freqDiv3|Add0~24_combout\,
	cout => \freqDiv3|Add0~25\);

-- Location: FF_X110_Y41_N27
\freqDiv3|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(13));

-- Location: LCCOMB_X110_Y41_N28
\freqDiv3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~26_combout\ = (\freqDiv3|s_count\(14) & (!\freqDiv3|Add0~25\)) # (!\freqDiv3|s_count\(14) & ((\freqDiv3|Add0~25\) # (GND)))
-- \freqDiv3|Add0~27\ = CARRY((!\freqDiv3|Add0~25\) # (!\freqDiv3|s_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(14),
	datad => VCC,
	cin => \freqDiv3|Add0~25\,
	combout => \freqDiv3|Add0~26_combout\,
	cout => \freqDiv3|Add0~27\);

-- Location: FF_X110_Y41_N29
\freqDiv3|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(14));

-- Location: LCCOMB_X110_Y41_N30
\freqDiv3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~28_combout\ = (\freqDiv3|s_count\(15) & (\freqDiv3|Add0~27\ $ (GND))) # (!\freqDiv3|s_count\(15) & (!\freqDiv3|Add0~27\ & VCC))
-- \freqDiv3|Add0~29\ = CARRY((\freqDiv3|s_count\(15) & !\freqDiv3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(15),
	datad => VCC,
	cin => \freqDiv3|Add0~27\,
	combout => \freqDiv3|Add0~28_combout\,
	cout => \freqDiv3|Add0~29\);

-- Location: LCCOMB_X110_Y41_N0
\freqDiv3|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~2_combout\ = (\freqDiv3|Add0~28_combout\ & ((!\freqDiv3|Equal0~3_combout\) # (!\freqDiv3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~9_combout\,
	datac => \freqDiv3|Add0~28_combout\,
	datad => \freqDiv3|Equal0~3_combout\,
	combout => \freqDiv3|s_count~2_combout\);

-- Location: FF_X110_Y41_N1
\freqDiv3|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(15));

-- Location: LCCOMB_X110_Y40_N0
\freqDiv3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~30_combout\ = (\freqDiv3|s_count\(16) & (!\freqDiv3|Add0~29\)) # (!\freqDiv3|s_count\(16) & ((\freqDiv3|Add0~29\) # (GND)))
-- \freqDiv3|Add0~31\ = CARRY((!\freqDiv3|Add0~29\) # (!\freqDiv3|s_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(16),
	datad => VCC,
	cin => \freqDiv3|Add0~29\,
	combout => \freqDiv3|Add0~30_combout\,
	cout => \freqDiv3|Add0~31\);

-- Location: FF_X110_Y40_N1
\freqDiv3|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(16));

-- Location: LCCOMB_X110_Y40_N2
\freqDiv3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~32_combout\ = (\freqDiv3|s_count\(17) & (\freqDiv3|Add0~31\ $ (GND))) # (!\freqDiv3|s_count\(17) & (!\freqDiv3|Add0~31\ & VCC))
-- \freqDiv3|Add0~33\ = CARRY((\freqDiv3|s_count\(17) & !\freqDiv3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(17),
	datad => VCC,
	cin => \freqDiv3|Add0~31\,
	combout => \freqDiv3|Add0~32_combout\,
	cout => \freqDiv3|Add0~33\);

-- Location: FF_X110_Y40_N3
\freqDiv3|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(17));

-- Location: LCCOMB_X110_Y40_N4
\freqDiv3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~34_combout\ = (\freqDiv3|s_count\(18) & (!\freqDiv3|Add0~33\)) # (!\freqDiv3|s_count\(18) & ((\freqDiv3|Add0~33\) # (GND)))
-- \freqDiv3|Add0~35\ = CARRY((!\freqDiv3|Add0~33\) # (!\freqDiv3|s_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(18),
	datad => VCC,
	cin => \freqDiv3|Add0~33\,
	combout => \freqDiv3|Add0~34_combout\,
	cout => \freqDiv3|Add0~35\);

-- Location: FF_X110_Y40_N5
\freqDiv3|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(18));

-- Location: LCCOMB_X110_Y40_N12
\freqDiv3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~42_combout\ = (\freqDiv3|s_count\(22) & (!\freqDiv3|Add0~41\)) # (!\freqDiv3|s_count\(22) & ((\freqDiv3|Add0~41\) # (GND)))
-- \freqDiv3|Add0~43\ = CARRY((!\freqDiv3|Add0~41\) # (!\freqDiv3|s_count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(22),
	datad => VCC,
	cin => \freqDiv3|Add0~41\,
	combout => \freqDiv3|Add0~42_combout\,
	cout => \freqDiv3|Add0~43\);

-- Location: LCCOMB_X110_Y40_N14
\freqDiv3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~44_combout\ = (\freqDiv3|s_count\(23) & (\freqDiv3|Add0~43\ $ (GND))) # (!\freqDiv3|s_count\(23) & (!\freqDiv3|Add0~43\ & VCC))
-- \freqDiv3|Add0~45\ = CARRY((\freqDiv3|s_count\(23) & !\freqDiv3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(23),
	datad => VCC,
	cin => \freqDiv3|Add0~43\,
	combout => \freqDiv3|Add0~44_combout\,
	cout => \freqDiv3|Add0~45\);

-- Location: LCCOMB_X110_Y40_N30
\freqDiv3|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~0_combout\ = (\freqDiv3|Add0~44_combout\ & ((!\freqDiv3|Equal0~3_combout\) # (!\freqDiv3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|Equal0~9_combout\,
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|Add0~44_combout\,
	combout => \freqDiv3|s_count~0_combout\);

-- Location: FF_X110_Y40_N31
\freqDiv3|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(23));

-- Location: LCCOMB_X111_Y40_N18
\freqDiv3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~0_combout\ = (!\freqDiv3|s_count\(22) & (\freqDiv3|s_count\(20) & (!\freqDiv3|s_count\(18) & \freqDiv3|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(22),
	datab => \freqDiv3|s_count\(20),
	datac => \freqDiv3|s_count\(18),
	datad => \freqDiv3|s_count\(23),
	combout => \freqDiv3|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y40_N22
\freqDiv3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~1_combout\ = (\freqDiv3|s_count\(12) & (!\freqDiv3|s_count\(14) & (\freqDiv3|s_count\(15) & !\freqDiv3|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(12),
	datab => \freqDiv3|s_count\(14),
	datac => \freqDiv3|s_count\(15),
	datad => \freqDiv3|s_count\(11),
	combout => \freqDiv3|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y40_N10
\freqDiv3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~2_combout\ = (\freqDiv3|s_count\(10) & (!\freqDiv3|s_count\(8) & \clkIn|freqDiv|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(10),
	datac => \freqDiv3|s_count\(8),
	datad => \clkIn|freqDiv|s_count\(6),
	combout => \freqDiv3|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y40_N0
\freqDiv3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~3_combout\ = (\freqDiv3|Equal0~0_combout\ & (\freqDiv3|Equal0~1_combout\ & \freqDiv3|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~0_combout\,
	datac => \freqDiv3|Equal0~1_combout\,
	datad => \freqDiv3|Equal0~2_combout\,
	combout => \freqDiv3|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y40_N30
\freqDiv3|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~6_combout\ = (\freqDiv3|Add0~16_combout\ & ((!\freqDiv3|Equal0~9_combout\) # (!\freqDiv3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|Add0~16_combout\,
	datad => \freqDiv3|Equal0~9_combout\,
	combout => \freqDiv3|s_count~6_combout\);

-- Location: FF_X111_Y40_N31
\freqDiv3|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(9));

-- Location: LCCOMB_X110_Y40_N16
\freqDiv3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~46_combout\ = (\freqDiv3|s_count\(24) & (!\freqDiv3|Add0~45\)) # (!\freqDiv3|s_count\(24) & ((\freqDiv3|Add0~45\) # (GND)))
-- \freqDiv3|Add0~47\ = CARRY((!\freqDiv3|Add0~45\) # (!\freqDiv3|s_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(24),
	datad => VCC,
	cin => \freqDiv3|Add0~45\,
	combout => \freqDiv3|Add0~46_combout\,
	cout => \freqDiv3|Add0~47\);

-- Location: FF_X110_Y40_N17
\freqDiv3|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(24));

-- Location: LCCOMB_X110_Y40_N18
\freqDiv3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~48_combout\ = (\freqDiv3|s_count\(25) & (\freqDiv3|Add0~47\ $ (GND))) # (!\freqDiv3|s_count\(25) & (!\freqDiv3|Add0~47\ & VCC))
-- \freqDiv3|Add0~49\ = CARRY((\freqDiv3|s_count\(25) & !\freqDiv3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(25),
	datad => VCC,
	cin => \freqDiv3|Add0~47\,
	combout => \freqDiv3|Add0~48_combout\,
	cout => \freqDiv3|Add0~49\);

-- Location: FF_X110_Y40_N19
\freqDiv3|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(25));

-- Location: LCCOMB_X110_Y40_N20
\freqDiv3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~50_combout\ = (\freqDiv3|s_count\(26) & (!\freqDiv3|Add0~49\)) # (!\freqDiv3|s_count\(26) & ((\freqDiv3|Add0~49\) # (GND)))
-- \freqDiv3|Add0~51\ = CARRY((!\freqDiv3|Add0~49\) # (!\freqDiv3|s_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(26),
	datad => VCC,
	cin => \freqDiv3|Add0~49\,
	combout => \freqDiv3|Add0~50_combout\,
	cout => \freqDiv3|Add0~51\);

-- Location: FF_X110_Y40_N21
\freqDiv3|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(26));

-- Location: LCCOMB_X110_Y40_N22
\freqDiv3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~52_combout\ = (\freqDiv3|s_count\(27) & (\freqDiv3|Add0~51\ $ (GND))) # (!\freqDiv3|s_count\(27) & (!\freqDiv3|Add0~51\ & VCC))
-- \freqDiv3|Add0~53\ = CARRY((\freqDiv3|s_count\(27) & !\freqDiv3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(27),
	datad => VCC,
	cin => \freqDiv3|Add0~51\,
	combout => \freqDiv3|Add0~52_combout\,
	cout => \freqDiv3|Add0~53\);

-- Location: FF_X110_Y40_N23
\freqDiv3|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(27));

-- Location: LCCOMB_X110_Y40_N24
\freqDiv3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~54_combout\ = (\freqDiv3|s_count\(28) & (!\freqDiv3|Add0~53\)) # (!\freqDiv3|s_count\(28) & ((\freqDiv3|Add0~53\) # (GND)))
-- \freqDiv3|Add0~55\ = CARRY((!\freqDiv3|Add0~53\) # (!\freqDiv3|s_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(28),
	datad => VCC,
	cin => \freqDiv3|Add0~53\,
	combout => \freqDiv3|Add0~54_combout\,
	cout => \freqDiv3|Add0~55\);

-- Location: FF_X110_Y40_N25
\freqDiv3|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(28));

-- Location: LCCOMB_X111_Y41_N26
\freqDiv3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~7_combout\ = (\freqDiv3|s_count\(9) & (!\freqDiv3|s_count\(27) & (!\freqDiv3|s_count\(7) & !\freqDiv3|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(9),
	datab => \freqDiv3|s_count\(27),
	datac => \freqDiv3|s_count\(7),
	datad => \freqDiv3|s_count\(28),
	combout => \freqDiv3|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y40_N6
\freqDiv3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~36_combout\ = (\freqDiv3|s_count\(19) & (\freqDiv3|Add0~35\ $ (GND))) # (!\freqDiv3|s_count\(19) & (!\freqDiv3|Add0~35\ & VCC))
-- \freqDiv3|Add0~37\ = CARRY((\freqDiv3|s_count\(19) & !\freqDiv3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(19),
	datad => VCC,
	cin => \freqDiv3|Add0~35\,
	combout => \freqDiv3|Add0~36_combout\,
	cout => \freqDiv3|Add0~37\);

-- Location: LCCOMB_X111_Y40_N4
\freqDiv3|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~5_combout\ = (\freqDiv3|Add0~36_combout\ & ((!\freqDiv3|Equal0~9_combout\) # (!\freqDiv3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|Add0~36_combout\,
	datad => \freqDiv3|Equal0~9_combout\,
	combout => \freqDiv3|s_count~5_combout\);

-- Location: FF_X111_Y40_N5
\freqDiv3|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(19));

-- Location: LCCOMB_X111_Y41_N24
\freqDiv3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~6_combout\ = (!\freqDiv3|s_count\(16) & (!\freqDiv3|s_count\(17) & (\freqDiv3|s_count\(19) & !\freqDiv3|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(16),
	datab => \freqDiv3|s_count\(17),
	datac => \freqDiv3|s_count\(19),
	datad => \freqDiv3|s_count\(13),
	combout => \freqDiv3|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y40_N26
\freqDiv3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~56_combout\ = (\freqDiv3|s_count\(29) & (\freqDiv3|Add0~55\ $ (GND))) # (!\freqDiv3|s_count\(29) & (!\freqDiv3|Add0~55\ & VCC))
-- \freqDiv3|Add0~57\ = CARRY((\freqDiv3|s_count\(29) & !\freqDiv3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(29),
	datad => VCC,
	cin => \freqDiv3|Add0~55\,
	combout => \freqDiv3|Add0~56_combout\,
	cout => \freqDiv3|Add0~57\);

-- Location: FF_X110_Y40_N27
\freqDiv3|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(29));

-- Location: LCCOMB_X110_Y40_N28
\freqDiv3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~58_combout\ = \freqDiv3|Add0~57\ $ (\freqDiv3|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv3|s_count\(30),
	cin => \freqDiv3|Add0~57\,
	combout => \freqDiv3|Add0~58_combout\);

-- Location: FF_X110_Y40_N29
\freqDiv3|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(30));

-- Location: LCCOMB_X111_Y40_N24
\freqDiv3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~8_combout\ = (!\freqDiv3|s_count\(29) & !\freqDiv3|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv3|s_count\(29),
	datad => \freqDiv3|s_count\(30),
	combout => \freqDiv3|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y40_N2
\freqDiv3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~4_combout\ = (!\freqDiv3|s_count\(21) & (!\freqDiv3|s_count\(25) & (!\freqDiv3|s_count\(24) & !\freqDiv3|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(21),
	datab => \freqDiv3|s_count\(25),
	datac => \freqDiv3|s_count\(24),
	datad => \freqDiv3|s_count\(26),
	combout => \freqDiv3|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y38_N24
\freqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~0_combout\ = (\clkIn|freqDiv|s_count\(3) & (\clkIn|freqDiv|s_count\(4) & (\clkIn|freqDiv|s_count\(1) & \clkIn|freqDiv|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(3),
	datab => \clkIn|freqDiv|s_count\(4),
	datac => \clkIn|freqDiv|s_count\(1),
	datad => \clkIn|freqDiv|s_count\(2),
	combout => \freqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y41_N18
\freqDiv3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~5_combout\ = (\clkIn|freqDiv|s_count\(0) & (\clkIn|freqDiv|s_count\(5) & (\freqDiv3|Equal0~4_combout\ & \freqDiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(0),
	datab => \clkIn|freqDiv|s_count\(5),
	datac => \freqDiv3|Equal0~4_combout\,
	datad => \freqDiv|Equal0~0_combout\,
	combout => \freqDiv3|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y41_N2
\freqDiv3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal0~9_combout\ = (\freqDiv3|Equal0~7_combout\ & (\freqDiv3|Equal0~6_combout\ & (\freqDiv3|Equal0~8_combout\ & \freqDiv3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|Equal0~7_combout\,
	datab => \freqDiv3|Equal0~6_combout\,
	datac => \freqDiv3|Equal0~8_combout\,
	datad => \freqDiv3|Equal0~5_combout\,
	combout => \freqDiv3|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y40_N8
\freqDiv3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~38_combout\ = (\freqDiv3|s_count\(20) & (!\freqDiv3|Add0~37\)) # (!\freqDiv3|s_count\(20) & ((\freqDiv3|Add0~37\) # (GND)))
-- \freqDiv3|Add0~39\ = CARRY((!\freqDiv3|Add0~37\) # (!\freqDiv3|s_count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(20),
	datad => VCC,
	cin => \freqDiv3|Add0~37\,
	combout => \freqDiv3|Add0~38_combout\,
	cout => \freqDiv3|Add0~39\);

-- Location: LCCOMB_X111_Y40_N20
\freqDiv3|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|s_count~1_combout\ = (\freqDiv3|Add0~38_combout\ & ((!\freqDiv3|Equal0~3_combout\) # (!\freqDiv3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|Equal0~9_combout\,
	datab => \freqDiv3|Equal0~3_combout\,
	datad => \freqDiv3|Add0~38_combout\,
	combout => \freqDiv3|s_count~1_combout\);

-- Location: FF_X111_Y40_N21
\freqDiv3|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(20));

-- Location: LCCOMB_X110_Y40_N10
\freqDiv3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Add0~40_combout\ = (\freqDiv3|s_count\(21) & (\freqDiv3|Add0~39\ $ (GND))) # (!\freqDiv3|s_count\(21) & (!\freqDiv3|Add0~39\ & VCC))
-- \freqDiv3|Add0~41\ = CARRY((\freqDiv3|s_count\(21) & !\freqDiv3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(21),
	datad => VCC,
	cin => \freqDiv3|Add0~39\,
	combout => \freqDiv3|Add0~40_combout\,
	cout => \freqDiv3|Add0~41\);

-- Location: FF_X110_Y40_N11
\freqDiv3|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(21));

-- Location: FF_X110_Y40_N13
\freqDiv3|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|s_count\(22));

-- Location: LCCOMB_X111_Y40_N6
\freqDiv3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal1~0_combout\ = (\freqDiv3|s_count\(22) & (!\freqDiv3|s_count\(20) & (\freqDiv3|s_count\(18) & !\freqDiv3|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(22),
	datab => \freqDiv3|s_count\(20),
	datac => \freqDiv3|s_count\(18),
	datad => \freqDiv3|s_count\(23),
	combout => \freqDiv3|Equal1~0_combout\);

-- Location: LCCOMB_X111_Y40_N26
\freqDiv3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal1~2_combout\ = (!\freqDiv3|s_count\(10) & (\freqDiv3|s_count\(8) & !\clkIn|freqDiv|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|s_count\(10),
	datac => \freqDiv3|s_count\(8),
	datad => \clkIn|freqDiv|s_count\(6),
	combout => \freqDiv3|Equal1~2_combout\);

-- Location: LCCOMB_X111_Y40_N28
\freqDiv3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal1~1_combout\ = (!\freqDiv3|s_count\(15) & (!\freqDiv3|s_count\(12) & (\freqDiv3|s_count\(14) & \freqDiv3|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|s_count\(15),
	datab => \freqDiv3|s_count\(12),
	datac => \freqDiv3|s_count\(14),
	datad => \freqDiv3|s_count\(11),
	combout => \freqDiv3|Equal1~1_combout\);

-- Location: LCCOMB_X111_Y40_N12
\freqDiv3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|Equal1~3_combout\ = (\freqDiv3|Equal1~0_combout\ & (\freqDiv3|Equal1~2_combout\ & \freqDiv3|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|Equal1~0_combout\,
	datac => \freqDiv3|Equal1~2_combout\,
	datad => \freqDiv3|Equal1~1_combout\,
	combout => \freqDiv3|Equal1~3_combout\);

-- Location: LCCOMB_X111_Y41_N16
\freqDiv3|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|clkOut~0_combout\ = (\freqDiv3|Equal0~9_combout\ & ((\freqDiv3|Equal0~3_combout\) # ((!\freqDiv3|Equal1~3_combout\ & \freqDiv3|clkOut~q\)))) # (!\freqDiv3|Equal0~9_combout\ & (((\freqDiv3|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv3|Equal1~3_combout\,
	datab => \freqDiv3|Equal0~3_combout\,
	datac => \freqDiv3|clkOut~q\,
	datad => \freqDiv3|Equal0~9_combout\,
	combout => \freqDiv3|clkOut~0_combout\);

-- Location: LCCOMB_X111_Y41_N28
\freqDiv3|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv3|clkOut~feeder_combout\ = \freqDiv3|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv3|clkOut~0_combout\,
	combout => \freqDiv3|clkOut~feeder_combout\);

-- Location: FF_X111_Y41_N29
\freqDiv3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv3|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv3|clkOut~q\);

-- Location: CLKCTRL_G6
\freqDiv3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv3|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X96_Y19_N26
\db0|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db0|sampled_dirty~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \db0|sampled_dirty~0_combout\);

-- Location: FF_X96_Y19_N27
\db0|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db0|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db0|sampled_dirty~q\);

-- Location: FF_X96_Y19_N13
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

-- Location: LCCOMB_X96_Y19_N22
\db1|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db1|sampled_dirty~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \db1|sampled_dirty~0_combout\);

-- Location: FF_X96_Y19_N23
\db1|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db1|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db1|sampled_dirty~q\);

-- Location: FF_X96_Y19_N29
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

-- Location: LCCOMB_X100_Y21_N0
\almsetMin|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~0_combout\ = \almsetMin|s_count\(0) $ (VCC)
-- \almsetMin|Add1~1\ = CARRY(\almsetMin|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(0),
	datad => VCC,
	combout => \almsetMin|Add1~0_combout\,
	cout => \almsetMin|Add1~1\);

-- Location: LCCOMB_X98_Y21_N0
\almsetMin|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~0_combout\ = \almsetMin|s_count\(0) $ (VCC)
-- \almsetMin|Add0~1\ = CARRY(\almsetMin|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(0),
	datad => VCC,
	combout => \almsetMin|Add0~0_combout\,
	cout => \almsetMin|Add0~1\);

-- Location: LCCOMB_X99_Y20_N10
\almsetMin|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~13_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|Add0~0_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Add1~0_combout\,
	datac => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|Add0~0_combout\,
	combout => \almsetMin|Add1~13_combout\);

-- Location: FF_X99_Y20_N11
\almsetMin|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|Add1~13_combout\,
	ena => \almsetMin|ALT_INV_s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(0));

-- Location: LCCOMB_X98_Y21_N2
\almsetMin|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~2_combout\ = (\almsetMin|s_count\(1) & (\almsetMin|Add0~1\ & VCC)) # (!\almsetMin|s_count\(1) & (!\almsetMin|Add0~1\))
-- \almsetMin|Add0~3\ = CARRY((!\almsetMin|s_count\(1) & !\almsetMin|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(1),
	datad => VCC,
	cin => \almsetMin|Add0~1\,
	combout => \almsetMin|Add0~2_combout\,
	cout => \almsetMin|Add0~3\);

-- Location: LCCOMB_X100_Y21_N2
\almsetMin|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~2_combout\ = (\almsetMin|s_count\(1) & (!\almsetMin|Add1~1\)) # (!\almsetMin|s_count\(1) & ((\almsetMin|Add1~1\) # (GND)))
-- \almsetMin|Add1~3\ = CARRY((!\almsetMin|Add1~1\) # (!\almsetMin|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(1),
	datad => VCC,
	cin => \almsetMin|Add1~1\,
	combout => \almsetMin|Add1~2_combout\,
	cout => \almsetMin|Add1~3\);

-- Location: LCCOMB_X99_Y20_N0
\almsetMin|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~12_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|Add0~2_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Add0~2_combout\,
	datac => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|Add1~2_combout\,
	combout => \almsetMin|Add1~12_combout\);

-- Location: FF_X99_Y20_N1
\almsetMin|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|Add1~12_combout\,
	ena => \almsetMin|ALT_INV_s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(1));

-- Location: LCCOMB_X100_Y21_N4
\almsetMin|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~4_combout\ = (\almsetMin|s_count\(2) & (\almsetMin|Add1~3\ $ (GND))) # (!\almsetMin|s_count\(2) & (!\almsetMin|Add1~3\ & VCC))
-- \almsetMin|Add1~5\ = CARRY((\almsetMin|s_count\(2) & !\almsetMin|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(2),
	datad => VCC,
	cin => \almsetMin|Add1~3\,
	combout => \almsetMin|Add1~4_combout\,
	cout => \almsetMin|Add1~5\);

-- Location: LCCOMB_X98_Y21_N4
\almsetMin|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~4_combout\ = (\almsetMin|s_count\(2) & ((GND) # (!\almsetMin|Add0~3\))) # (!\almsetMin|s_count\(2) & (\almsetMin|Add0~3\ $ (GND)))
-- \almsetMin|Add0~5\ = CARRY((\almsetMin|s_count\(2)) # (!\almsetMin|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(2),
	datad => VCC,
	cin => \almsetMin|Add0~3\,
	combout => \almsetMin|Add0~4_combout\,
	cout => \almsetMin|Add0~5\);

-- Location: LCCOMB_X97_Y20_N24
\almsetMin|s_count[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[2]~51_combout\ = (\almsetMin|process_0~0_combout\ & (!\almsetMin|Equal0~10_combout\ & ((\almsetMin|Add0~4_combout\)))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~10_combout\,
	datab => \almsetMin|Add1~4_combout\,
	datac => \almsetMin|Add0~4_combout\,
	datad => \almsetMin|process_0~0_combout\,
	combout => \almsetMin|s_count[2]~51_combout\);

-- Location: LCCOMB_X97_Y20_N26
\almsetMin|s_count[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[2]~52_combout\ = (\almsetMin|s_count[5]~45_combout\ & ((\almsetMin|s_count\(2)) # ((\almsetMin|s_count[2]~51_combout\ & \almsetMin|s_count[5]~44_combout\)))) # (!\almsetMin|s_count[5]~45_combout\ & (\almsetMin|s_count[2]~51_combout\ & 
-- ((\almsetMin|s_count[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count[5]~45_combout\,
	datab => \almsetMin|s_count[2]~51_combout\,
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count[5]~44_combout\,
	combout => \almsetMin|s_count[2]~52_combout\);

-- Location: FF_X97_Y20_N27
\almsetMin|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(2));

-- Location: LCCOMB_X100_Y21_N6
\almsetMin|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~6_combout\ = (\almsetMin|s_count\(3) & (!\almsetMin|Add1~5\)) # (!\almsetMin|s_count\(3) & ((\almsetMin|Add1~5\) # (GND)))
-- \almsetMin|Add1~7\ = CARRY((!\almsetMin|Add1~5\) # (!\almsetMin|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(3),
	datad => VCC,
	cin => \almsetMin|Add1~5\,
	combout => \almsetMin|Add1~6_combout\,
	cout => \almsetMin|Add1~7\);

-- Location: LCCOMB_X100_Y21_N8
\almsetMin|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~8_combout\ = (\almsetMin|s_count\(4) & (\almsetMin|Add1~7\ $ (GND))) # (!\almsetMin|s_count\(4) & (!\almsetMin|Add1~7\ & VCC))
-- \almsetMin|Add1~9\ = CARRY((\almsetMin|s_count\(4) & !\almsetMin|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(4),
	datad => VCC,
	cin => \almsetMin|Add1~7\,
	combout => \almsetMin|Add1~8_combout\,
	cout => \almsetMin|Add1~9\);

-- Location: LCCOMB_X98_Y21_N6
\almsetMin|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~6_combout\ = (\almsetMin|s_count\(3) & (\almsetMin|Add0~5\ & VCC)) # (!\almsetMin|s_count\(3) & (!\almsetMin|Add0~5\))
-- \almsetMin|Add0~7\ = CARRY((!\almsetMin|s_count\(3) & !\almsetMin|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(3),
	datad => VCC,
	cin => \almsetMin|Add0~5\,
	combout => \almsetMin|Add0~6_combout\,
	cout => \almsetMin|Add0~7\);

-- Location: LCCOMB_X98_Y21_N8
\almsetMin|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~8_combout\ = (\almsetMin|s_count\(4) & ((GND) # (!\almsetMin|Add0~7\))) # (!\almsetMin|s_count\(4) & (\almsetMin|Add0~7\ $ (GND)))
-- \almsetMin|Add0~9\ = CARRY((\almsetMin|s_count\(4)) # (!\almsetMin|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(4),
	datad => VCC,
	cin => \almsetMin|Add0~7\,
	combout => \almsetMin|Add0~8_combout\,
	cout => \almsetMin|Add0~9\);

-- Location: LCCOMB_X97_Y19_N28
\almsetMin|s_count[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[4]~47_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|Add0~8_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|process_0~0_combout\,
	datac => \almsetMin|Add1~8_combout\,
	datad => \almsetMin|Add0~8_combout\,
	combout => \almsetMin|s_count[4]~47_combout\);

-- Location: LCCOMB_X97_Y19_N2
\almsetMin|s_count[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[4]~48_combout\ = (\almsetMin|s_count[5]~44_combout\ & ((\almsetMin|s_count[4]~47_combout\) # ((\almsetMin|s_count[5]~45_combout\ & \almsetMin|s_count\(4))))) # (!\almsetMin|s_count[5]~44_combout\ & (\almsetMin|s_count[5]~45_combout\ & 
-- (\almsetMin|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count[5]~44_combout\,
	datab => \almsetMin|s_count[5]~45_combout\,
	datac => \almsetMin|s_count\(4),
	datad => \almsetMin|s_count[4]~47_combout\,
	combout => \almsetMin|s_count[4]~48_combout\);

-- Location: FF_X97_Y19_N3
\almsetMin|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[4]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(4));

-- Location: LCCOMB_X97_Y19_N8
\almsetMin|s_count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~39_combout\ = (\almsetMin|s_count\(4) & (\almsetMin|s_count\(2) & (\almsetMin|s_count\(3) & \almsetMin|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(4),
	datab => \almsetMin|s_count\(2),
	datac => \almsetMin|s_count\(3),
	datad => \almsetMin|s_count\(5),
	combout => \almsetMin|s_count[5]~39_combout\);

-- Location: LCCOMB_X96_Y19_N8
\almsetMin|s_count[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~40_combout\ = (\almsetMin|s_count[5]~39_combout\) # ((\almsetMin|s_count\(31) & !\db0|level~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count[5]~39_combout\,
	datac => \almsetMin|s_count\(31),
	datad => \db0|level~q\,
	combout => \almsetMin|s_count[5]~40_combout\);

-- Location: LCCOMB_X113_Y39_N2
\freqDiv2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~1_cout\ = CARRY((\clkIn|freqDiv|s_count\(1) & \clkIn|freqDiv|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(1),
	datab => \clkIn|freqDiv|s_count\(0),
	datad => VCC,
	cout => \freqDiv2|Add0~1_cout\);

-- Location: LCCOMB_X113_Y39_N4
\freqDiv2|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~3_cout\ = CARRY((!\freqDiv2|Add0~1_cout\) # (!\clkIn|freqDiv|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(2),
	datad => VCC,
	cin => \freqDiv2|Add0~1_cout\,
	cout => \freqDiv2|Add0~3_cout\);

-- Location: LCCOMB_X113_Y39_N6
\freqDiv2|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~5_cout\ = CARRY((\clkIn|freqDiv|s_count\(3) & !\freqDiv2|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(3),
	datad => VCC,
	cin => \freqDiv2|Add0~3_cout\,
	cout => \freqDiv2|Add0~5_cout\);

-- Location: LCCOMB_X113_Y39_N8
\freqDiv2|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~7_cout\ = CARRY((!\freqDiv2|Add0~5_cout\) # (!\clkIn|freqDiv|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(4),
	datad => VCC,
	cin => \freqDiv2|Add0~5_cout\,
	cout => \freqDiv2|Add0~7_cout\);

-- Location: LCCOMB_X113_Y39_N10
\freqDiv2|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~9_cout\ = CARRY((\clkIn|freqDiv|s_count\(5) & !\freqDiv2|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(5),
	datad => VCC,
	cin => \freqDiv2|Add0~7_cout\,
	cout => \freqDiv2|Add0~9_cout\);

-- Location: LCCOMB_X113_Y39_N12
\freqDiv2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~10_combout\ = (\freqDiv2|s_count\(6) & (!\freqDiv2|Add0~9_cout\)) # (!\freqDiv2|s_count\(6) & ((\freqDiv2|Add0~9_cout\) # (GND)))
-- \freqDiv2|Add0~11\ = CARRY((!\freqDiv2|Add0~9_cout\) # (!\freqDiv2|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(6),
	datad => VCC,
	cin => \freqDiv2|Add0~9_cout\,
	combout => \freqDiv2|Add0~10_combout\,
	cout => \freqDiv2|Add0~11\);

-- Location: LCCOMB_X113_Y39_N0
\freqDiv2|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~4_combout\ = (\freqDiv2|Add0~10_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~8_combout\,
	datac => \freqDiv2|Equal0~2_combout\,
	datad => \freqDiv2|Add0~10_combout\,
	combout => \freqDiv2|s_count~4_combout\);

-- Location: FF_X113_Y39_N1
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

-- Location: LCCOMB_X113_Y39_N14
\freqDiv2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~12_combout\ = (\freqDiv2|s_count\(7) & (\freqDiv2|Add0~11\ $ (GND))) # (!\freqDiv2|s_count\(7) & (!\freqDiv2|Add0~11\ & VCC))
-- \freqDiv2|Add0~13\ = CARRY((\freqDiv2|s_count\(7) & !\freqDiv2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(7),
	datad => VCC,
	cin => \freqDiv2|Add0~11\,
	combout => \freqDiv2|Add0~12_combout\,
	cout => \freqDiv2|Add0~13\);

-- Location: LCCOMB_X112_Y39_N16
\freqDiv2|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~9_combout\ = (\freqDiv2|Add0~12_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~8_combout\,
	datac => \freqDiv2|Add0~12_combout\,
	datad => \freqDiv2|Equal0~2_combout\,
	combout => \freqDiv2|s_count~9_combout\);

-- Location: FF_X112_Y39_N17
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

-- Location: LCCOMB_X113_Y39_N16
\freqDiv2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~14_combout\ = (\freqDiv2|s_count\(8) & (!\freqDiv2|Add0~13\)) # (!\freqDiv2|s_count\(8) & ((\freqDiv2|Add0~13\) # (GND)))
-- \freqDiv2|Add0~15\ = CARRY((!\freqDiv2|Add0~13\) # (!\freqDiv2|s_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(8),
	datad => VCC,
	cin => \freqDiv2|Add0~13\,
	combout => \freqDiv2|Add0~14_combout\,
	cout => \freqDiv2|Add0~15\);

-- Location: LCCOMB_X113_Y39_N18
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

-- Location: FF_X113_Y39_N19
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

-- Location: LCCOMB_X113_Y39_N20
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

-- Location: FF_X113_Y39_N21
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

-- Location: LCCOMB_X113_Y39_N22
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

-- Location: FF_X113_Y39_N23
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

-- Location: LCCOMB_X113_Y39_N24
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

-- Location: FF_X113_Y39_N25
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

-- Location: LCCOMB_X113_Y39_N26
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

-- Location: LCCOMB_X114_Y39_N4
\freqDiv2|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~8_combout\ = (\freqDiv2|Add0~24_combout\ & ((!\freqDiv2|Equal0~8_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~24_combout\,
	datad => \freqDiv2|Equal0~8_combout\,
	combout => \freqDiv2|s_count~8_combout\);

-- Location: FF_X114_Y39_N5
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

-- Location: LCCOMB_X113_Y39_N28
\freqDiv2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~26_combout\ = (\freqDiv2|s_count\(14) & (!\freqDiv2|Add0~25\)) # (!\freqDiv2|s_count\(14) & ((\freqDiv2|Add0~25\) # (GND)))
-- \freqDiv2|Add0~27\ = CARRY((!\freqDiv2|Add0~25\) # (!\freqDiv2|s_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(14),
	datad => VCC,
	cin => \freqDiv2|Add0~25\,
	combout => \freqDiv2|Add0~26_combout\,
	cout => \freqDiv2|Add0~27\);

-- Location: LCCOMB_X112_Y39_N2
\freqDiv2|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~7_combout\ = (\freqDiv2|Add0~26_combout\ & ((!\freqDiv2|Equal0~8_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Equal0~8_combout\,
	datad => \freqDiv2|Add0~26_combout\,
	combout => \freqDiv2|s_count~7_combout\);

-- Location: FF_X112_Y39_N3
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

-- Location: LCCOMB_X113_Y39_N30
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

-- Location: LCCOMB_X113_Y38_N0
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

-- Location: FF_X113_Y38_N1
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

-- Location: LCCOMB_X112_Y39_N12
\freqDiv2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~6_combout\ = (!\freqDiv2|s_count\(16) & (!\freqDiv2|s_count\(11) & (\freqDiv2|s_count\(13) & \freqDiv2|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(16),
	datab => \freqDiv2|s_count\(11),
	datac => \freqDiv2|s_count\(13),
	datad => \freqDiv2|s_count\(14),
	combout => \freqDiv2|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y38_N2
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

-- Location: FF_X113_Y38_N3
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

-- Location: LCCOMB_X113_Y38_N4
\freqDiv2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~34_combout\ = (\freqDiv2|s_count\(18) & (!\freqDiv2|Add0~33\)) # (!\freqDiv2|s_count\(18) & ((\freqDiv2|Add0~33\) # (GND)))
-- \freqDiv2|Add0~35\ = CARRY((!\freqDiv2|Add0~33\) # (!\freqDiv2|s_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(18),
	datad => VCC,
	cin => \freqDiv2|Add0~33\,
	combout => \freqDiv2|Add0~34_combout\,
	cout => \freqDiv2|Add0~35\);

-- Location: LCCOMB_X112_Y39_N28
\freqDiv2|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~1_combout\ = (\freqDiv2|Add0~34_combout\ & ((!\freqDiv2|Equal0~8_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Equal0~8_combout\,
	datad => \freqDiv2|Add0~34_combout\,
	combout => \freqDiv2|s_count~1_combout\);

-- Location: FF_X112_Y39_N29
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

-- Location: LCCOMB_X113_Y38_N6
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

-- Location: FF_X113_Y38_N7
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

-- Location: LCCOMB_X113_Y38_N8
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

-- Location: FF_X113_Y38_N9
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

-- Location: LCCOMB_X113_Y38_N10
\freqDiv2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~40_combout\ = (\freqDiv2|s_count\(21) & (\freqDiv2|Add0~39\ $ (GND))) # (!\freqDiv2|s_count\(21) & (!\freqDiv2|Add0~39\ & VCC))
-- \freqDiv2|Add0~41\ = CARRY((\freqDiv2|s_count\(21) & !\freqDiv2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(21),
	datad => VCC,
	cin => \freqDiv2|Add0~39\,
	combout => \freqDiv2|Add0~40_combout\,
	cout => \freqDiv2|Add0~41\);

-- Location: LCCOMB_X112_Y38_N28
\freqDiv2|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~6_combout\ = (\freqDiv2|Add0~40_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~8_combout\,
	datac => \freqDiv2|Add0~40_combout\,
	datad => \freqDiv2|Equal0~2_combout\,
	combout => \freqDiv2|s_count~6_combout\);

-- Location: FF_X112_Y38_N29
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

-- Location: LCCOMB_X113_Y38_N12
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

-- Location: LCCOMB_X112_Y38_N22
\freqDiv2|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~5_combout\ = (\freqDiv2|Add0~42_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~8_combout\,
	datac => \freqDiv2|Add0~42_combout\,
	datad => \freqDiv2|Equal0~2_combout\,
	combout => \freqDiv2|s_count~5_combout\);

-- Location: FF_X112_Y38_N23
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

-- Location: LCCOMB_X113_Y38_N14
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

-- Location: LCCOMB_X113_Y38_N30
\freqDiv2|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~0_combout\ = (\freqDiv2|Add0~44_combout\ & ((!\freqDiv2|Equal0~8_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Add0~44_combout\,
	datad => \freqDiv2|Equal0~8_combout\,
	combout => \freqDiv2|s_count~0_combout\);

-- Location: FF_X113_Y38_N31
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

-- Location: LCCOMB_X113_Y38_N16
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

-- Location: FF_X113_Y38_N17
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

-- Location: LCCOMB_X113_Y38_N18
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

-- Location: FF_X113_Y38_N19
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

-- Location: LCCOMB_X113_Y38_N20
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

-- Location: FF_X113_Y38_N21
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

-- Location: LCCOMB_X113_Y38_N22
\freqDiv2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Add0~52_combout\ = (\freqDiv2|s_count\(27) & (\freqDiv2|Add0~51\ $ (GND))) # (!\freqDiv2|s_count\(27) & (!\freqDiv2|Add0~51\ & VCC))
-- \freqDiv2|Add0~53\ = CARRY((\freqDiv2|s_count\(27) & !\freqDiv2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|s_count\(27),
	datad => VCC,
	cin => \freqDiv2|Add0~51\,
	combout => \freqDiv2|Add0~52_combout\,
	cout => \freqDiv2|Add0~53\);

-- Location: FF_X113_Y38_N23
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

-- Location: LCCOMB_X113_Y38_N24
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

-- Location: FF_X113_Y38_N25
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

-- Location: LCCOMB_X113_Y38_N26
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

-- Location: FF_X113_Y38_N27
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

-- Location: LCCOMB_X112_Y39_N8
\freqDiv2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~7_combout\ = (!\freqDiv2|s_count\(10) & (\freqDiv2|s_count\(7) & (!\freqDiv2|s_count\(29) & !\freqDiv2|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(10),
	datab => \freqDiv2|s_count\(7),
	datac => \freqDiv2|s_count\(29),
	datad => \freqDiv2|s_count\(9),
	combout => \freqDiv2|Equal0~7_combout\);

-- Location: LCCOMB_X113_Y38_N28
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

-- Location: FF_X113_Y38_N29
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

-- Location: LCCOMB_X112_Y38_N18
\freqDiv2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~4_combout\ = (\freqDiv2|s_count\(22) & (\freqDiv2|s_count\(21) & (!\freqDiv2|s_count\(24) & !\freqDiv2|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(22),
	datab => \freqDiv2|s_count\(21),
	datac => \freqDiv2|s_count\(24),
	datad => \freqDiv2|s_count\(19),
	combout => \freqDiv2|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y38_N8
\freqDiv2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~3_combout\ = (!\freqDiv2|s_count\(26) & (!\freqDiv2|s_count\(28) & (!\freqDiv2|s_count\(25) & !\freqDiv2|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(26),
	datab => \freqDiv2|s_count\(28),
	datac => \freqDiv2|s_count\(25),
	datad => \freqDiv2|s_count\(27),
	combout => \freqDiv2|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y38_N0
\freqDiv2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~5_combout\ = (\clkIn|freqDiv|s_count\(0) & (\freqDiv2|Equal0~4_combout\ & (\freqDiv2|Equal0~3_combout\ & \freqDiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(0),
	datab => \freqDiv2|Equal0~4_combout\,
	datac => \freqDiv2|Equal0~3_combout\,
	datad => \freqDiv|Equal0~0_combout\,
	combout => \freqDiv2|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y39_N18
\freqDiv2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~8_combout\ = (\freqDiv2|Equal0~6_combout\ & (\freqDiv2|Equal0~7_combout\ & (!\freqDiv2|s_count\(30) & \freqDiv2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~6_combout\,
	datab => \freqDiv2|Equal0~7_combout\,
	datac => \freqDiv2|s_count\(30),
	datad => \freqDiv2|Equal0~5_combout\,
	combout => \freqDiv2|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y39_N24
\freqDiv2|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~2_combout\ = (\freqDiv2|Add0~28_combout\ & ((!\freqDiv2|Equal0~2_combout\) # (!\freqDiv2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~8_combout\,
	datac => \freqDiv2|Add0~28_combout\,
	datad => \freqDiv2|Equal0~2_combout\,
	combout => \freqDiv2|s_count~2_combout\);

-- Location: FF_X112_Y39_N25
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

-- Location: LCCOMB_X112_Y39_N6
\freqDiv2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~1_combout\ = (\freqDiv2|s_count\(8) & (\freqDiv2|s_count\(15) & (!\freqDiv2|s_count\(6) & !\freqDiv2|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(8),
	datab => \freqDiv2|s_count\(15),
	datac => \freqDiv2|s_count\(6),
	datad => \freqDiv2|s_count\(12),
	combout => \freqDiv2|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y39_N0
\freqDiv2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~0_combout\ = (\freqDiv2|s_count\(18) & (!\freqDiv2|s_count\(17) & (!\freqDiv2|s_count\(20) & \freqDiv2|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(18),
	datab => \freqDiv2|s_count\(17),
	datac => \freqDiv2|s_count\(20),
	datad => \freqDiv2|s_count\(23),
	combout => \freqDiv2|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y39_N20
\freqDiv2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal0~2_combout\ = (\freqDiv2|Equal0~1_combout\ & (\clkIn|freqDiv|s_count\(5) & \freqDiv2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal0~1_combout\,
	datac => \clkIn|freqDiv|s_count\(5),
	datad => \freqDiv2|Equal0~0_combout\,
	combout => \freqDiv2|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y39_N22
\freqDiv2|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|s_count~3_combout\ = (\freqDiv2|Add0~14_combout\ & ((!\freqDiv2|Equal0~8_combout\) # (!\freqDiv2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|Equal0~8_combout\,
	datad => \freqDiv2|Add0~14_combout\,
	combout => \freqDiv2|s_count~3_combout\);

-- Location: FF_X112_Y39_N23
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

-- Location: LCCOMB_X112_Y39_N26
\freqDiv2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal1~1_combout\ = (!\freqDiv2|s_count\(8) & (!\freqDiv2|s_count\(15) & (\freqDiv2|s_count\(6) & \freqDiv2|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(8),
	datab => \freqDiv2|s_count\(15),
	datac => \freqDiv2|s_count\(6),
	datad => \freqDiv2|s_count\(12),
	combout => \freqDiv2|Equal1~1_combout\);

-- Location: LCCOMB_X112_Y39_N4
\freqDiv2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal1~0_combout\ = (!\freqDiv2|s_count\(18) & (\freqDiv2|s_count\(20) & (\freqDiv2|s_count\(17) & !\freqDiv2|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|s_count\(18),
	datab => \freqDiv2|s_count\(20),
	datac => \freqDiv2|s_count\(17),
	datad => \freqDiv2|s_count\(23),
	combout => \freqDiv2|Equal1~0_combout\);

-- Location: LCCOMB_X112_Y39_N30
\freqDiv2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|Equal1~2_combout\ = (!\clkIn|freqDiv|s_count\(5) & (\freqDiv2|Equal1~1_combout\ & \freqDiv2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(5),
	datac => \freqDiv2|Equal1~1_combout\,
	datad => \freqDiv2|Equal1~0_combout\,
	combout => \freqDiv2|Equal1~2_combout\);

-- Location: LCCOMB_X112_Y39_N14
\freqDiv2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|clkOut~0_combout\ = (\freqDiv2|Equal0~8_combout\ & ((\freqDiv2|Equal0~2_combout\) # ((!\freqDiv2|Equal1~2_combout\ & \freqDiv2|clkOut~q\)))) # (!\freqDiv2|Equal0~8_combout\ & (((\freqDiv2|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv2|Equal1~2_combout\,
	datab => \freqDiv2|Equal0~2_combout\,
	datac => \freqDiv2|clkOut~q\,
	datad => \freqDiv2|Equal0~8_combout\,
	combout => \freqDiv2|clkOut~0_combout\);

-- Location: LCCOMB_X112_Y39_N10
\freqDiv2|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv2|clkOut~feeder_combout\ = \freqDiv2|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv2|clkOut~0_combout\,
	combout => \freqDiv2|clkOut~feeder_combout\);

-- Location: FF_X112_Y39_N11
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

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X96_Y19_N14
\db3|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db3|sampled_dirty~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	combout => \db3|sampled_dirty~0_combout\);

-- Location: FF_X96_Y19_N15
\db3|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db3|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db3|sampled_dirty~q\);

-- Location: FF_X96_Y19_N19
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

-- Location: LCCOMB_X96_Y19_N2
\setHour~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \setHour~0_combout\ = (\db3|level~q\ & (!\setHour~q\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datac => \setHour~q\,
	datad => \SW[0]~input_o\,
	combout => \setHour~0_combout\);

-- Location: LCCOMB_X96_Y19_N16
\setMin~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \setMin~1_combout\ = (\db3|level~q\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \db3|level~q\,
	combout => \setMin~1_combout\);

-- Location: FF_X96_Y19_N3
setHour : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \setHour~0_combout\,
	ena => \setMin~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \setHour~q\);

-- Location: LCCOMB_X96_Y19_N10
\setMin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \setMin~0_combout\ = (\db3|level~q\ & (\SW[0]~input_o\ & \setHour~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db3|level~q\,
	datac => \SW[0]~input_o\,
	datad => \setHour~q\,
	combout => \setMin~0_combout\);

-- Location: FF_X96_Y19_N11
setMin : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv2|clkOut~clkctrl_outclk\,
	d => \setMin~0_combout\,
	ena => \setMin~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \setMin~q\);

-- Location: LCCOMB_X96_Y19_N20
\almsetMin|s_count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~41_combout\ = (\almsetMin|s_count[5]~40_combout\) # (((!\db0|level~q\ & !\db1|level~q\)) # (!\setMin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db0|level~q\,
	datab => \db1|level~q\,
	datac => \almsetMin|s_count[5]~40_combout\,
	datad => \setMin~q\,
	combout => \almsetMin|s_count[5]~41_combout\);

-- Location: LCCOMB_X96_Y19_N0
\almsetMin|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~45_combout\ = ((\almsetMin|s_count[5]~41_combout\) # (!\almsetMin|Equal0~5_combout\)) # (!\almsetMin|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|s_count[5]~41_combout\,
	combout => \almsetMin|s_count[5]~45_combout\);

-- Location: LCCOMB_X100_Y21_N10
\almsetMin|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~10_combout\ = (\almsetMin|s_count\(5) & (!\almsetMin|Add1~9\)) # (!\almsetMin|s_count\(5) & ((\almsetMin|Add1~9\) # (GND)))
-- \almsetMin|Add1~11\ = CARRY((!\almsetMin|Add1~9\) # (!\almsetMin|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(5),
	datad => VCC,
	cin => \almsetMin|Add1~9\,
	combout => \almsetMin|Add1~10_combout\,
	cout => \almsetMin|Add1~11\);

-- Location: LCCOMB_X98_Y21_N10
\almsetMin|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~10_combout\ = (\almsetMin|s_count\(5) & (\almsetMin|Add0~9\ & VCC)) # (!\almsetMin|s_count\(5) & (!\almsetMin|Add0~9\))
-- \almsetMin|Add0~11\ = CARRY((!\almsetMin|s_count\(5) & !\almsetMin|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(5),
	datad => VCC,
	cin => \almsetMin|Add0~9\,
	combout => \almsetMin|Add0~10_combout\,
	cout => \almsetMin|Add0~11\);

-- Location: LCCOMB_X97_Y19_N18
\almsetMin|s_count[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~38_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|Add0~10_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|process_0~0_combout\,
	datac => \almsetMin|Add1~10_combout\,
	datad => \almsetMin|Add0~10_combout\,
	combout => \almsetMin|s_count[5]~38_combout\);

-- Location: LCCOMB_X97_Y19_N20
\almsetMin|s_count[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~46_combout\ = (\almsetMin|s_count[5]~44_combout\ & ((\almsetMin|s_count[5]~38_combout\) # ((\almsetMin|s_count[5]~45_combout\ & \almsetMin|s_count\(5))))) # (!\almsetMin|s_count[5]~44_combout\ & (\almsetMin|s_count[5]~45_combout\ & 
-- (\almsetMin|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count[5]~44_combout\,
	datab => \almsetMin|s_count[5]~45_combout\,
	datac => \almsetMin|s_count\(5),
	datad => \almsetMin|s_count[5]~38_combout\,
	combout => \almsetMin|s_count[5]~46_combout\);

-- Location: FF_X97_Y19_N21
\almsetMin|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[5]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(5));

-- Location: LCCOMB_X100_Y21_N12
\almsetMin|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~14_combout\ = (\almsetMin|s_count\(6) & (\almsetMin|Add1~11\ $ (GND))) # (!\almsetMin|s_count\(6) & (!\almsetMin|Add1~11\ & VCC))
-- \almsetMin|Add1~15\ = CARRY((\almsetMin|s_count\(6) & !\almsetMin|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(6),
	datad => VCC,
	cin => \almsetMin|Add1~11\,
	combout => \almsetMin|Add1~14_combout\,
	cout => \almsetMin|Add1~15\);

-- Location: LCCOMB_X97_Y19_N30
\almsetMin|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~0_combout\ = (!\almsetMin|s_count\(1) & (!\almsetMin|s_count\(3) & !\almsetMin|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(1),
	datac => \almsetMin|s_count\(3),
	datad => \almsetMin|s_count\(2),
	combout => \almsetMin|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y19_N24
\almsetMin|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~9_combout\ = (!\almsetMin|s_count\(0) & (!\almsetMin|s_count\(4) & (\almsetMin|Equal0~0_combout\ & !\almsetMin|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(0),
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|Equal0~0_combout\,
	datad => \almsetMin|s_count\(5),
	combout => \almsetMin|Equal0~9_combout\);

-- Location: LCCOMB_X98_Y21_N12
\almsetMin|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~12_combout\ = (\almsetMin|s_count\(6) & ((GND) # (!\almsetMin|Add0~11\))) # (!\almsetMin|s_count\(6) & (\almsetMin|Add0~11\ $ (GND)))
-- \almsetMin|Add0~13\ = CARRY((\almsetMin|s_count\(6)) # (!\almsetMin|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(6),
	datad => VCC,
	cin => \almsetMin|Add0~11\,
	combout => \almsetMin|Add0~12_combout\,
	cout => \almsetMin|Add0~13\);

-- Location: LCCOMB_X95_Y21_N10
\almsetMin|s_count~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~67_combout\ = (\almsetMin|Add0~12_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~12_combout\,
	combout => \almsetMin|s_count~67_combout\);

-- Location: LCCOMB_X95_Y21_N22
\almsetMin|s_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[6]~25_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~67_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Add1~14_combout\,
	datab => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|s_count~67_combout\,
	combout => \almsetMin|s_count[6]~25_combout\);

-- Location: FF_X95_Y21_N23
\almsetMin|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[6]~25_combout\,
	asdata => \almsetMin|s_count\(6),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(6));

-- Location: LCCOMB_X100_Y21_N14
\almsetMin|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~16_combout\ = (\almsetMin|s_count\(7) & (!\almsetMin|Add1~15\)) # (!\almsetMin|s_count\(7) & ((\almsetMin|Add1~15\) # (GND)))
-- \almsetMin|Add1~17\ = CARRY((!\almsetMin|Add1~15\) # (!\almsetMin|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(7),
	datad => VCC,
	cin => \almsetMin|Add1~15\,
	combout => \almsetMin|Add1~16_combout\,
	cout => \almsetMin|Add1~17\);

-- Location: LCCOMB_X98_Y21_N14
\almsetMin|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~14_combout\ = (\almsetMin|s_count\(7) & (\almsetMin|Add0~13\ & VCC)) # (!\almsetMin|s_count\(7) & (!\almsetMin|Add0~13\))
-- \almsetMin|Add0~15\ = CARRY((!\almsetMin|s_count\(7) & !\almsetMin|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(7),
	datad => VCC,
	cin => \almsetMin|Add0~13\,
	combout => \almsetMin|Add0~14_combout\,
	cout => \almsetMin|Add0~15\);

-- Location: LCCOMB_X95_Y21_N20
\almsetMin|s_count~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~66_combout\ = (\almsetMin|Add0~14_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~14_combout\,
	combout => \almsetMin|s_count~66_combout\);

-- Location: LCCOMB_X95_Y21_N12
\almsetMin|s_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[7]~24_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~66_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~16_combout\,
	datad => \almsetMin|s_count~66_combout\,
	combout => \almsetMin|s_count[7]~24_combout\);

-- Location: FF_X95_Y21_N13
\almsetMin|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[7]~24_combout\,
	asdata => \almsetMin|s_count\(7),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(7));

-- Location: LCCOMB_X98_Y21_N16
\almsetMin|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~16_combout\ = (\almsetMin|s_count\(8) & ((GND) # (!\almsetMin|Add0~15\))) # (!\almsetMin|s_count\(8) & (\almsetMin|Add0~15\ $ (GND)))
-- \almsetMin|Add0~17\ = CARRY((\almsetMin|s_count\(8)) # (!\almsetMin|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(8),
	datad => VCC,
	cin => \almsetMin|Add0~15\,
	combout => \almsetMin|Add0~16_combout\,
	cout => \almsetMin|Add0~17\);

-- Location: LCCOMB_X95_Y21_N26
\almsetMin|s_count~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~65_combout\ = (\almsetMin|Add0~16_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~16_combout\,
	combout => \almsetMin|s_count~65_combout\);

-- Location: LCCOMB_X100_Y21_N16
\almsetMin|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~18_combout\ = (\almsetMin|s_count\(8) & (\almsetMin|Add1~17\ $ (GND))) # (!\almsetMin|s_count\(8) & (!\almsetMin|Add1~17\ & VCC))
-- \almsetMin|Add1~19\ = CARRY((\almsetMin|s_count\(8) & !\almsetMin|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(8),
	datad => VCC,
	cin => \almsetMin|Add1~17\,
	combout => \almsetMin|Add1~18_combout\,
	cout => \almsetMin|Add1~19\);

-- Location: LCCOMB_X95_Y21_N14
\almsetMin|s_count[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[8]~23_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count~65_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count~65_combout\,
	datab => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|Add1~18_combout\,
	combout => \almsetMin|s_count[8]~23_combout\);

-- Location: FF_X95_Y21_N15
\almsetMin|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[8]~23_combout\,
	asdata => \almsetMin|s_count\(8),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(8));

-- Location: LCCOMB_X98_Y21_N18
\almsetMin|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~18_combout\ = (\almsetMin|s_count\(9) & (\almsetMin|Add0~17\ & VCC)) # (!\almsetMin|s_count\(9) & (!\almsetMin|Add0~17\))
-- \almsetMin|Add0~19\ = CARRY((!\almsetMin|s_count\(9) & !\almsetMin|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(9),
	datad => VCC,
	cin => \almsetMin|Add0~17\,
	combout => \almsetMin|Add0~18_combout\,
	cout => \almsetMin|Add0~19\);

-- Location: LCCOMB_X95_Y21_N8
\almsetMin|s_count~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~64_combout\ = (\almsetMin|Add0~18_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~18_combout\,
	combout => \almsetMin|s_count~64_combout\);

-- Location: LCCOMB_X100_Y21_N18
\almsetMin|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~20_combout\ = (\almsetMin|s_count\(9) & (!\almsetMin|Add1~19\)) # (!\almsetMin|s_count\(9) & ((\almsetMin|Add1~19\) # (GND)))
-- \almsetMin|Add1~21\ = CARRY((!\almsetMin|Add1~19\) # (!\almsetMin|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(9),
	datad => VCC,
	cin => \almsetMin|Add1~19\,
	combout => \almsetMin|Add1~20_combout\,
	cout => \almsetMin|Add1~21\);

-- Location: LCCOMB_X95_Y21_N16
\almsetMin|s_count[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[9]~22_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count~64_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|s_count~64_combout\,
	datad => \almsetMin|Add1~20_combout\,
	combout => \almsetMin|s_count[9]~22_combout\);

-- Location: FF_X95_Y21_N17
\almsetMin|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[9]~22_combout\,
	asdata => \almsetMin|s_count\(9),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(9));

-- Location: LCCOMB_X98_Y21_N20
\almsetMin|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~20_combout\ = (\almsetMin|s_count\(10) & ((GND) # (!\almsetMin|Add0~19\))) # (!\almsetMin|s_count\(10) & (\almsetMin|Add0~19\ $ (GND)))
-- \almsetMin|Add0~21\ = CARRY((\almsetMin|s_count\(10)) # (!\almsetMin|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(10),
	datad => VCC,
	cin => \almsetMin|Add0~19\,
	combout => \almsetMin|Add0~20_combout\,
	cout => \almsetMin|Add0~21\);

-- Location: LCCOMB_X95_Y21_N18
\almsetMin|s_count~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~63_combout\ = (\almsetMin|Add0~20_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~20_combout\,
	combout => \almsetMin|s_count~63_combout\);

-- Location: LCCOMB_X100_Y21_N20
\almsetMin|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~22_combout\ = (\almsetMin|s_count\(10) & (\almsetMin|Add1~21\ $ (GND))) # (!\almsetMin|s_count\(10) & (!\almsetMin|Add1~21\ & VCC))
-- \almsetMin|Add1~23\ = CARRY((\almsetMin|s_count\(10) & !\almsetMin|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(10),
	datad => VCC,
	cin => \almsetMin|Add1~21\,
	combout => \almsetMin|Add1~22_combout\,
	cout => \almsetMin|Add1~23\);

-- Location: LCCOMB_X95_Y21_N6
\almsetMin|s_count[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[10]~21_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count~63_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|s_count~63_combout\,
	datad => \almsetMin|Add1~22_combout\,
	combout => \almsetMin|s_count[10]~21_combout\);

-- Location: FF_X95_Y21_N7
\almsetMin|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[10]~21_combout\,
	asdata => \almsetMin|s_count\(10),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(10));

-- Location: LCCOMB_X100_Y21_N22
\almsetMin|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~24_combout\ = (\almsetMin|s_count\(11) & (!\almsetMin|Add1~23\)) # (!\almsetMin|s_count\(11) & ((\almsetMin|Add1~23\) # (GND)))
-- \almsetMin|Add1~25\ = CARRY((!\almsetMin|Add1~23\) # (!\almsetMin|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(11),
	datad => VCC,
	cin => \almsetMin|Add1~23\,
	combout => \almsetMin|Add1~24_combout\,
	cout => \almsetMin|Add1~25\);

-- Location: LCCOMB_X98_Y21_N22
\almsetMin|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~22_combout\ = (\almsetMin|s_count\(11) & (\almsetMin|Add0~21\ & VCC)) # (!\almsetMin|s_count\(11) & (!\almsetMin|Add0~21\))
-- \almsetMin|Add0~23\ = CARRY((!\almsetMin|s_count\(11) & !\almsetMin|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(11),
	datad => VCC,
	cin => \almsetMin|Add0~21\,
	combout => \almsetMin|Add0~22_combout\,
	cout => \almsetMin|Add0~23\);

-- Location: LCCOMB_X95_Y21_N28
\almsetMin|s_count~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~62_combout\ = (\almsetMin|Add0~22_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~22_combout\,
	combout => \almsetMin|s_count~62_combout\);

-- Location: LCCOMB_X95_Y21_N4
\almsetMin|s_count[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[11]~20_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~62_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~24_combout\,
	datad => \almsetMin|s_count~62_combout\,
	combout => \almsetMin|s_count[11]~20_combout\);

-- Location: FF_X95_Y21_N5
\almsetMin|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[11]~20_combout\,
	asdata => \almsetMin|s_count\(11),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(11));

-- Location: LCCOMB_X100_Y21_N24
\almsetMin|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~26_combout\ = (\almsetMin|s_count\(12) & (\almsetMin|Add1~25\ $ (GND))) # (!\almsetMin|s_count\(12) & (!\almsetMin|Add1~25\ & VCC))
-- \almsetMin|Add1~27\ = CARRY((\almsetMin|s_count\(12) & !\almsetMin|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(12),
	datad => VCC,
	cin => \almsetMin|Add1~25\,
	combout => \almsetMin|Add1~26_combout\,
	cout => \almsetMin|Add1~27\);

-- Location: LCCOMB_X98_Y21_N24
\almsetMin|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~24_combout\ = (\almsetMin|s_count\(12) & ((GND) # (!\almsetMin|Add0~23\))) # (!\almsetMin|s_count\(12) & (\almsetMin|Add0~23\ $ (GND)))
-- \almsetMin|Add0~25\ = CARRY((\almsetMin|s_count\(12)) # (!\almsetMin|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(12),
	datad => VCC,
	cin => \almsetMin|Add0~23\,
	combout => \almsetMin|Add0~24_combout\,
	cout => \almsetMin|Add0~25\);

-- Location: LCCOMB_X97_Y21_N12
\almsetMin|s_count~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~61_combout\ = (\almsetMin|Add0~24_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Add0~24_combout\,
	combout => \almsetMin|s_count~61_combout\);

-- Location: LCCOMB_X97_Y21_N22
\almsetMin|s_count[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[12]~19_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~61_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~26_combout\,
	datad => \almsetMin|s_count~61_combout\,
	combout => \almsetMin|s_count[12]~19_combout\);

-- Location: FF_X97_Y21_N23
\almsetMin|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[12]~19_combout\,
	asdata => \almsetMin|s_count\(12),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(12));

-- Location: LCCOMB_X98_Y21_N26
\almsetMin|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~26_combout\ = (\almsetMin|s_count\(13) & (\almsetMin|Add0~25\ & VCC)) # (!\almsetMin|s_count\(13) & (!\almsetMin|Add0~25\))
-- \almsetMin|Add0~27\ = CARRY((!\almsetMin|s_count\(13) & !\almsetMin|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(13),
	datad => VCC,
	cin => \almsetMin|Add0~25\,
	combout => \almsetMin|Add0~26_combout\,
	cout => \almsetMin|Add0~27\);

-- Location: LCCOMB_X97_Y21_N14
\almsetMin|s_count~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~60_combout\ = (\almsetMin|Add0~26_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Add0~26_combout\,
	datad => \almsetMin|Equal0~9_combout\,
	combout => \almsetMin|s_count~60_combout\);

-- Location: LCCOMB_X100_Y21_N26
\almsetMin|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~28_combout\ = (\almsetMin|s_count\(13) & (!\almsetMin|Add1~27\)) # (!\almsetMin|s_count\(13) & ((\almsetMin|Add1~27\) # (GND)))
-- \almsetMin|Add1~29\ = CARRY((!\almsetMin|Add1~27\) # (!\almsetMin|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(13),
	datad => VCC,
	cin => \almsetMin|Add1~27\,
	combout => \almsetMin|Add1~28_combout\,
	cout => \almsetMin|Add1~29\);

-- Location: LCCOMB_X97_Y21_N24
\almsetMin|s_count[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[13]~18_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count~60_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|s_count~60_combout\,
	datad => \almsetMin|Add1~28_combout\,
	combout => \almsetMin|s_count[13]~18_combout\);

-- Location: FF_X97_Y21_N25
\almsetMin|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[13]~18_combout\,
	asdata => \almsetMin|s_count\(13),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(13));

-- Location: LCCOMB_X98_Y21_N28
\almsetMin|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~28_combout\ = (\almsetMin|s_count\(14) & ((GND) # (!\almsetMin|Add0~27\))) # (!\almsetMin|s_count\(14) & (\almsetMin|Add0~27\ $ (GND)))
-- \almsetMin|Add0~29\ = CARRY((\almsetMin|s_count\(14)) # (!\almsetMin|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(14),
	datad => VCC,
	cin => \almsetMin|Add0~27\,
	combout => \almsetMin|Add0~28_combout\,
	cout => \almsetMin|Add0~29\);

-- Location: LCCOMB_X97_Y21_N28
\almsetMin|s_count~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~59_combout\ = (\almsetMin|Add0~28_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Add0~28_combout\,
	combout => \almsetMin|s_count~59_combout\);

-- Location: LCCOMB_X100_Y21_N28
\almsetMin|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~30_combout\ = (\almsetMin|s_count\(14) & (\almsetMin|Add1~29\ $ (GND))) # (!\almsetMin|s_count\(14) & (!\almsetMin|Add1~29\ & VCC))
-- \almsetMin|Add1~31\ = CARRY((\almsetMin|s_count\(14) & !\almsetMin|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(14),
	datad => VCC,
	cin => \almsetMin|Add1~29\,
	combout => \almsetMin|Add1~30_combout\,
	cout => \almsetMin|Add1~31\);

-- Location: LCCOMB_X97_Y21_N26
\almsetMin|s_count[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[14]~17_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count~59_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|s_count~59_combout\,
	datad => \almsetMin|Add1~30_combout\,
	combout => \almsetMin|s_count[14]~17_combout\);

-- Location: FF_X97_Y21_N27
\almsetMin|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[14]~17_combout\,
	asdata => \almsetMin|s_count\(14),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(14));

-- Location: LCCOMB_X100_Y21_N30
\almsetMin|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~32_combout\ = (\almsetMin|s_count\(15) & (!\almsetMin|Add1~31\)) # (!\almsetMin|s_count\(15) & ((\almsetMin|Add1~31\) # (GND)))
-- \almsetMin|Add1~33\ = CARRY((!\almsetMin|Add1~31\) # (!\almsetMin|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(15),
	datad => VCC,
	cin => \almsetMin|Add1~31\,
	combout => \almsetMin|Add1~32_combout\,
	cout => \almsetMin|Add1~33\);

-- Location: LCCOMB_X98_Y21_N30
\almsetMin|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~30_combout\ = (\almsetMin|s_count\(15) & (\almsetMin|Add0~29\ & VCC)) # (!\almsetMin|s_count\(15) & (!\almsetMin|Add0~29\))
-- \almsetMin|Add0~31\ = CARRY((!\almsetMin|s_count\(15) & !\almsetMin|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(15),
	datad => VCC,
	cin => \almsetMin|Add0~29\,
	combout => \almsetMin|Add0~30_combout\,
	cout => \almsetMin|Add0~31\);

-- Location: LCCOMB_X97_Y21_N18
\almsetMin|s_count~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~58_combout\ = (\almsetMin|Add0~30_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Add0~30_combout\,
	datad => \almsetMin|Equal0~9_combout\,
	combout => \almsetMin|s_count~58_combout\);

-- Location: LCCOMB_X97_Y21_N16
\almsetMin|s_count[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[15]~16_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~58_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Add1~32_combout\,
	datab => \almsetMin|s_count~58_combout\,
	datad => \almsetMin|process_0~0_combout\,
	combout => \almsetMin|s_count[15]~16_combout\);

-- Location: FF_X97_Y21_N17
\almsetMin|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[15]~16_combout\,
	asdata => \almsetMin|s_count\(15),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(15));

-- Location: LCCOMB_X97_Y21_N4
\almsetMin|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~6_combout\ = (!\almsetMin|s_count\(12) & (!\almsetMin|s_count\(13) & (!\almsetMin|s_count\(14) & !\almsetMin|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(12),
	datab => \almsetMin|s_count\(13),
	datac => \almsetMin|s_count\(14),
	datad => \almsetMin|s_count\(15),
	combout => \almsetMin|Equal0~6_combout\);

-- Location: LCCOMB_X95_Y21_N24
\almsetMin|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~7_combout\ = (!\almsetMin|s_count\(10) & (!\almsetMin|s_count\(9) & (!\almsetMin|s_count\(8) & !\almsetMin|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(10),
	datab => \almsetMin|s_count\(9),
	datac => \almsetMin|s_count\(8),
	datad => \almsetMin|s_count\(11),
	combout => \almsetMin|Equal0~7_combout\);

-- Location: LCCOMB_X95_Y21_N30
\almsetMin|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~8_combout\ = (!\almsetMin|s_count\(6) & (!\almsetMin|s_count\(7) & (\almsetMin|Equal0~6_combout\ & \almsetMin|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(6),
	datab => \almsetMin|s_count\(7),
	datac => \almsetMin|Equal0~6_combout\,
	datad => \almsetMin|Equal0~7_combout\,
	combout => \almsetMin|Equal0~8_combout\);

-- Location: LCCOMB_X97_Y20_N6
\almsetMin|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~10_combout\ = (\almsetMin|Equal0~8_combout\ & (\almsetMin|Equal0~5_combout\ & \almsetMin|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~5_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	combout => \almsetMin|Equal0~10_combout\);

-- Location: LCCOMB_X96_Y20_N26
\almsetMin|s_count[29]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[29]~53_combout\ = ((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~5_combout\)) # (!\almsetMin|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Equal0~9_combout\,
	combout => \almsetMin|s_count[29]~53_combout\);

-- Location: LCCOMB_X100_Y20_N0
\almsetMin|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~34_combout\ = (\almsetMin|s_count\(16) & (\almsetMin|Add1~33\ $ (GND))) # (!\almsetMin|s_count\(16) & (!\almsetMin|Add1~33\ & VCC))
-- \almsetMin|Add1~35\ = CARRY((\almsetMin|s_count\(16) & !\almsetMin|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(16),
	datad => VCC,
	cin => \almsetMin|Add1~33\,
	combout => \almsetMin|Add1~34_combout\,
	cout => \almsetMin|Add1~35\);

-- Location: LCCOMB_X98_Y20_N0
\almsetMin|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~32_combout\ = (\almsetMin|s_count\(16) & ((GND) # (!\almsetMin|Add0~31\))) # (!\almsetMin|s_count\(16) & (\almsetMin|Add0~31\ $ (GND)))
-- \almsetMin|Add0~33\ = CARRY((\almsetMin|s_count\(16)) # (!\almsetMin|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(16),
	datad => VCC,
	cin => \almsetMin|Add0~31\,
	combout => \almsetMin|Add0~32_combout\,
	cout => \almsetMin|Add0~33\);

-- Location: LCCOMB_X97_Y20_N2
\almsetMin|s_count~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~57_combout\ = (\almsetMin|Add0~32_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Add0~32_combout\,
	datad => \almsetMin|Equal0~5_combout\,
	combout => \almsetMin|s_count~57_combout\);

-- Location: LCCOMB_X97_Y20_N8
\almsetMin|s_count[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[16]~15_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~57_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~34_combout\,
	datad => \almsetMin|s_count~57_combout\,
	combout => \almsetMin|s_count[16]~15_combout\);

-- Location: FF_X97_Y20_N9
\almsetMin|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[16]~15_combout\,
	asdata => \almsetMin|s_count\(16),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(16));

-- Location: LCCOMB_X100_Y20_N2
\almsetMin|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~36_combout\ = (\almsetMin|s_count\(17) & (!\almsetMin|Add1~35\)) # (!\almsetMin|s_count\(17) & ((\almsetMin|Add1~35\) # (GND)))
-- \almsetMin|Add1~37\ = CARRY((!\almsetMin|Add1~35\) # (!\almsetMin|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(17),
	datad => VCC,
	cin => \almsetMin|Add1~35\,
	combout => \almsetMin|Add1~36_combout\,
	cout => \almsetMin|Add1~37\);

-- Location: LCCOMB_X98_Y20_N2
\almsetMin|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~34_combout\ = (\almsetMin|s_count\(17) & (\almsetMin|Add0~33\ & VCC)) # (!\almsetMin|s_count\(17) & (!\almsetMin|Add0~33\))
-- \almsetMin|Add0~35\ = CARRY((!\almsetMin|s_count\(17) & !\almsetMin|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(17),
	datad => VCC,
	cin => \almsetMin|Add0~33\,
	combout => \almsetMin|Add0~34_combout\,
	cout => \almsetMin|Add0~35\);

-- Location: LCCOMB_X96_Y20_N28
\almsetMin|s_count~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~56_combout\ = (\almsetMin|Add0~34_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~5_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Add0~34_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Equal0~9_combout\,
	combout => \almsetMin|s_count~56_combout\);

-- Location: LCCOMB_X96_Y20_N8
\almsetMin|s_count[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[17]~14_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~56_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~36_combout\,
	datad => \almsetMin|s_count~56_combout\,
	combout => \almsetMin|s_count[17]~14_combout\);

-- Location: FF_X96_Y20_N9
\almsetMin|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[17]~14_combout\,
	asdata => \almsetMin|s_count\(17),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(17));

-- Location: LCCOMB_X100_Y20_N4
\almsetMin|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~38_combout\ = (\almsetMin|s_count\(18) & (\almsetMin|Add1~37\ $ (GND))) # (!\almsetMin|s_count\(18) & (!\almsetMin|Add1~37\ & VCC))
-- \almsetMin|Add1~39\ = CARRY((\almsetMin|s_count\(18) & !\almsetMin|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(18),
	datad => VCC,
	cin => \almsetMin|Add1~37\,
	combout => \almsetMin|Add1~38_combout\,
	cout => \almsetMin|Add1~39\);

-- Location: LCCOMB_X98_Y20_N4
\almsetMin|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~36_combout\ = (\almsetMin|s_count\(18) & ((GND) # (!\almsetMin|Add0~35\))) # (!\almsetMin|s_count\(18) & (\almsetMin|Add0~35\ $ (GND)))
-- \almsetMin|Add0~37\ = CARRY((\almsetMin|s_count\(18)) # (!\almsetMin|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(18),
	datad => VCC,
	cin => \almsetMin|Add0~35\,
	combout => \almsetMin|Add0~36_combout\,
	cout => \almsetMin|Add0~37\);

-- Location: LCCOMB_X96_Y20_N18
\almsetMin|s_count~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~55_combout\ = (\almsetMin|Add0~36_combout\ & (((!\almsetMin|Equal0~8_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Add0~36_combout\,
	datad => \almsetMin|Equal0~8_combout\,
	combout => \almsetMin|s_count~55_combout\);

-- Location: LCCOMB_X96_Y20_N14
\almsetMin|s_count[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[18]~13_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~55_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~38_combout\,
	datad => \almsetMin|s_count~55_combout\,
	combout => \almsetMin|s_count[18]~13_combout\);

-- Location: FF_X96_Y20_N15
\almsetMin|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[18]~13_combout\,
	asdata => \almsetMin|s_count\(18),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(18));

-- Location: LCCOMB_X100_Y20_N6
\almsetMin|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~40_combout\ = (\almsetMin|s_count\(19) & (!\almsetMin|Add1~39\)) # (!\almsetMin|s_count\(19) & ((\almsetMin|Add1~39\) # (GND)))
-- \almsetMin|Add1~41\ = CARRY((!\almsetMin|Add1~39\) # (!\almsetMin|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(19),
	datad => VCC,
	cin => \almsetMin|Add1~39\,
	combout => \almsetMin|Add1~40_combout\,
	cout => \almsetMin|Add1~41\);

-- Location: LCCOMB_X98_Y20_N6
\almsetMin|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~38_combout\ = (\almsetMin|s_count\(19) & (\almsetMin|Add0~37\ & VCC)) # (!\almsetMin|s_count\(19) & (!\almsetMin|Add0~37\))
-- \almsetMin|Add0~39\ = CARRY((!\almsetMin|s_count\(19) & !\almsetMin|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(19),
	datad => VCC,
	cin => \almsetMin|Add0~37\,
	combout => \almsetMin|Add0~38_combout\,
	cout => \almsetMin|Add0~39\);

-- Location: LCCOMB_X96_Y20_N12
\almsetMin|s_count~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~54_combout\ = (\almsetMin|Add0~38_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Add0~38_combout\,
	combout => \almsetMin|s_count~54_combout\);

-- Location: LCCOMB_X96_Y20_N24
\almsetMin|s_count[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[19]~12_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~54_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~40_combout\,
	datad => \almsetMin|s_count~54_combout\,
	combout => \almsetMin|s_count[19]~12_combout\);

-- Location: FF_X96_Y20_N25
\almsetMin|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[19]~12_combout\,
	asdata => \almsetMin|s_count\(19),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(19));

-- Location: LCCOMB_X100_Y20_N8
\almsetMin|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~42_combout\ = (\almsetMin|s_count\(20) & (\almsetMin|Add1~41\ $ (GND))) # (!\almsetMin|s_count\(20) & (!\almsetMin|Add1~41\ & VCC))
-- \almsetMin|Add1~43\ = CARRY((\almsetMin|s_count\(20) & !\almsetMin|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(20),
	datad => VCC,
	cin => \almsetMin|Add1~41\,
	combout => \almsetMin|Add1~42_combout\,
	cout => \almsetMin|Add1~43\);

-- Location: LCCOMB_X98_Y20_N8
\almsetMin|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~40_combout\ = (\almsetMin|s_count\(20) & ((GND) # (!\almsetMin|Add0~39\))) # (!\almsetMin|s_count\(20) & (\almsetMin|Add0~39\ $ (GND)))
-- \almsetMin|Add0~41\ = CARRY((\almsetMin|s_count\(20)) # (!\almsetMin|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(20),
	datad => VCC,
	cin => \almsetMin|Add0~39\,
	combout => \almsetMin|Add0~40_combout\,
	cout => \almsetMin|Add0~41\);

-- Location: LCCOMB_X97_Y21_N0
\almsetMin|s_count~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~73_combout\ = (\almsetMin|Add0~40_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~8_combout\)) # (!\almsetMin|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|Add0~40_combout\,
	datad => \almsetMin|Equal0~9_combout\,
	combout => \almsetMin|s_count~73_combout\);

-- Location: LCCOMB_X97_Y21_N30
\almsetMin|s_count[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[20]~11_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~73_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~42_combout\,
	datad => \almsetMin|s_count~73_combout\,
	combout => \almsetMin|s_count[20]~11_combout\);

-- Location: FF_X97_Y21_N31
\almsetMin|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[20]~11_combout\,
	asdata => \almsetMin|s_count\(20),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(20));

-- Location: LCCOMB_X100_Y20_N10
\almsetMin|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~44_combout\ = (\almsetMin|s_count\(21) & (!\almsetMin|Add1~43\)) # (!\almsetMin|s_count\(21) & ((\almsetMin|Add1~43\) # (GND)))
-- \almsetMin|Add1~45\ = CARRY((!\almsetMin|Add1~43\) # (!\almsetMin|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(21),
	datad => VCC,
	cin => \almsetMin|Add1~43\,
	combout => \almsetMin|Add1~44_combout\,
	cout => \almsetMin|Add1~45\);

-- Location: LCCOMB_X98_Y20_N10
\almsetMin|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~42_combout\ = (\almsetMin|s_count\(21) & (\almsetMin|Add0~41\ & VCC)) # (!\almsetMin|s_count\(21) & (!\almsetMin|Add0~41\))
-- \almsetMin|Add0~43\ = CARRY((!\almsetMin|s_count\(21) & !\almsetMin|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(21),
	datad => VCC,
	cin => \almsetMin|Add0~41\,
	combout => \almsetMin|Add0~42_combout\,
	cout => \almsetMin|Add0~43\);

-- Location: LCCOMB_X97_Y21_N6
\almsetMin|s_count~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~72_combout\ = (\almsetMin|Add0~42_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Add0~42_combout\,
	combout => \almsetMin|s_count~72_combout\);

-- Location: LCCOMB_X97_Y21_N20
\almsetMin|s_count[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[21]~10_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~72_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~44_combout\,
	datad => \almsetMin|s_count~72_combout\,
	combout => \almsetMin|s_count[21]~10_combout\);

-- Location: FF_X97_Y21_N21
\almsetMin|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[21]~10_combout\,
	asdata => \almsetMin|s_count\(21),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(21));

-- Location: LCCOMB_X100_Y20_N12
\almsetMin|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~46_combout\ = (\almsetMin|s_count\(22) & (\almsetMin|Add1~45\ $ (GND))) # (!\almsetMin|s_count\(22) & (!\almsetMin|Add1~45\ & VCC))
-- \almsetMin|Add1~47\ = CARRY((\almsetMin|s_count\(22) & !\almsetMin|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(22),
	datad => VCC,
	cin => \almsetMin|Add1~45\,
	combout => \almsetMin|Add1~46_combout\,
	cout => \almsetMin|Add1~47\);

-- Location: LCCOMB_X100_Y20_N14
\almsetMin|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~48_combout\ = (\almsetMin|s_count\(23) & (!\almsetMin|Add1~47\)) # (!\almsetMin|s_count\(23) & ((\almsetMin|Add1~47\) # (GND)))
-- \almsetMin|Add1~49\ = CARRY((!\almsetMin|Add1~47\) # (!\almsetMin|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(23),
	datad => VCC,
	cin => \almsetMin|Add1~47\,
	combout => \almsetMin|Add1~48_combout\,
	cout => \almsetMin|Add1~49\);

-- Location: LCCOMB_X98_Y20_N12
\almsetMin|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~44_combout\ = (\almsetMin|s_count\(22) & ((GND) # (!\almsetMin|Add0~43\))) # (!\almsetMin|s_count\(22) & (\almsetMin|Add0~43\ $ (GND)))
-- \almsetMin|Add0~45\ = CARRY((\almsetMin|s_count\(22)) # (!\almsetMin|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(22),
	datad => VCC,
	cin => \almsetMin|Add0~43\,
	combout => \almsetMin|Add0~44_combout\,
	cout => \almsetMin|Add0~45\);

-- Location: LCCOMB_X98_Y20_N14
\almsetMin|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~46_combout\ = (\almsetMin|s_count\(23) & (\almsetMin|Add0~45\ & VCC)) # (!\almsetMin|s_count\(23) & (!\almsetMin|Add0~45\))
-- \almsetMin|Add0~47\ = CARRY((!\almsetMin|s_count\(23) & !\almsetMin|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(23),
	datad => VCC,
	cin => \almsetMin|Add0~45\,
	combout => \almsetMin|Add0~46_combout\,
	cout => \almsetMin|Add0~47\);

-- Location: LCCOMB_X96_Y20_N6
\almsetMin|s_count~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~70_combout\ = (\almsetMin|Add0~46_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Add0~46_combout\,
	combout => \almsetMin|s_count~70_combout\);

-- Location: LCCOMB_X96_Y20_N16
\almsetMin|s_count[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[23]~8_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~70_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~48_combout\,
	datad => \almsetMin|s_count~70_combout\,
	combout => \almsetMin|s_count[23]~8_combout\);

-- Location: FF_X96_Y20_N17
\almsetMin|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[23]~8_combout\,
	asdata => \almsetMin|s_count\(23),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(23));

-- Location: LCCOMB_X98_Y20_N16
\almsetMin|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~48_combout\ = (\almsetMin|s_count\(24) & ((GND) # (!\almsetMin|Add0~47\))) # (!\almsetMin|s_count\(24) & (\almsetMin|Add0~47\ $ (GND)))
-- \almsetMin|Add0~49\ = CARRY((\almsetMin|s_count\(24)) # (!\almsetMin|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(24),
	datad => VCC,
	cin => \almsetMin|Add0~47\,
	combout => \almsetMin|Add0~48_combout\,
	cout => \almsetMin|Add0~49\);

-- Location: LCCOMB_X97_Y20_N10
\almsetMin|s_count~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~69_combout\ = (\almsetMin|Add0~48_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~5_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~5_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~48_combout\,
	combout => \almsetMin|s_count~69_combout\);

-- Location: LCCOMB_X100_Y20_N16
\almsetMin|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~50_combout\ = (\almsetMin|s_count\(24) & (\almsetMin|Add1~49\ $ (GND))) # (!\almsetMin|s_count\(24) & (!\almsetMin|Add1~49\ & VCC))
-- \almsetMin|Add1~51\ = CARRY((\almsetMin|s_count\(24) & !\almsetMin|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(24),
	datad => VCC,
	cin => \almsetMin|Add1~49\,
	combout => \almsetMin|Add1~50_combout\,
	cout => \almsetMin|Add1~51\);

-- Location: LCCOMB_X97_Y20_N22
\almsetMin|s_count[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[24]~7_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count~69_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count~69_combout\,
	datab => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|Add1~50_combout\,
	combout => \almsetMin|s_count[24]~7_combout\);

-- Location: FF_X97_Y20_N23
\almsetMin|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[24]~7_combout\,
	asdata => \almsetMin|s_count\(24),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(24));

-- Location: LCCOMB_X100_Y20_N18
\almsetMin|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~52_combout\ = (\almsetMin|s_count\(25) & (!\almsetMin|Add1~51\)) # (!\almsetMin|s_count\(25) & ((\almsetMin|Add1~51\) # (GND)))
-- \almsetMin|Add1~53\ = CARRY((!\almsetMin|Add1~51\) # (!\almsetMin|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(25),
	datad => VCC,
	cin => \almsetMin|Add1~51\,
	combout => \almsetMin|Add1~52_combout\,
	cout => \almsetMin|Add1~53\);

-- Location: LCCOMB_X98_Y20_N18
\almsetMin|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~50_combout\ = (\almsetMin|s_count\(25) & (\almsetMin|Add0~49\ & VCC)) # (!\almsetMin|s_count\(25) & (!\almsetMin|Add0~49\))
-- \almsetMin|Add0~51\ = CARRY((!\almsetMin|s_count\(25) & !\almsetMin|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(25),
	datad => VCC,
	cin => \almsetMin|Add0~49\,
	combout => \almsetMin|Add0~50_combout\,
	cout => \almsetMin|Add0~51\);

-- Location: LCCOMB_X97_Y20_N0
\almsetMin|s_count~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~68_combout\ = (\almsetMin|Add0~50_combout\ & (((!\almsetMin|Equal0~9_combout\) # (!\almsetMin|Equal0~5_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~5_combout\,
	datac => \almsetMin|Equal0~9_combout\,
	datad => \almsetMin|Add0~50_combout\,
	combout => \almsetMin|s_count~68_combout\);

-- Location: LCCOMB_X97_Y20_N16
\almsetMin|s_count[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[25]~6_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~68_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~52_combout\,
	datad => \almsetMin|s_count~68_combout\,
	combout => \almsetMin|s_count[25]~6_combout\);

-- Location: FF_X97_Y20_N17
\almsetMin|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[25]~6_combout\,
	asdata => \almsetMin|s_count\(25),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(25));

-- Location: LCCOMB_X98_Y20_N20
\almsetMin|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~52_combout\ = (\almsetMin|s_count\(26) & ((GND) # (!\almsetMin|Add0~51\))) # (!\almsetMin|s_count\(26) & (\almsetMin|Add0~51\ $ (GND)))
-- \almsetMin|Add0~53\ = CARRY((\almsetMin|s_count\(26)) # (!\almsetMin|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(26),
	datad => VCC,
	cin => \almsetMin|Add0~51\,
	combout => \almsetMin|Add0~52_combout\,
	cout => \almsetMin|Add0~53\);

-- Location: LCCOMB_X100_Y20_N20
\almsetMin|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~54_combout\ = (\almsetMin|s_count\(26) & (\almsetMin|Add1~53\ $ (GND))) # (!\almsetMin|s_count\(26) & (!\almsetMin|Add1~53\ & VCC))
-- \almsetMin|Add1~55\ = CARRY((\almsetMin|s_count\(26) & !\almsetMin|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(26),
	datad => VCC,
	cin => \almsetMin|Add1~53\,
	combout => \almsetMin|Add1~54_combout\,
	cout => \almsetMin|Add1~55\);

-- Location: LCCOMB_X97_Y20_N20
\almsetMin|s_count[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[26]~5_combout\ = (\almsetMin|process_0~0_combout\ & (!\almsetMin|Equal0~10_combout\ & (\almsetMin|Add0~52_combout\))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Equal0~10_combout\,
	datac => \almsetMin|Add0~52_combout\,
	datad => \almsetMin|Add1~54_combout\,
	combout => \almsetMin|s_count[26]~5_combout\);

-- Location: LCCOMB_X97_Y20_N14
\almsetMin|s_count[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[26]~feeder_combout\ = \almsetMin|s_count[26]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count[26]~5_combout\,
	combout => \almsetMin|s_count[26]~feeder_combout\);

-- Location: FF_X97_Y20_N15
\almsetMin|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[26]~feeder_combout\,
	asdata => \almsetMin|s_count\(26),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(26));

-- Location: LCCOMB_X98_Y20_N22
\almsetMin|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~54_combout\ = (\almsetMin|s_count\(27) & (\almsetMin|Add0~53\ & VCC)) # (!\almsetMin|s_count\(27) & (!\almsetMin|Add0~53\))
-- \almsetMin|Add0~55\ = CARRY((!\almsetMin|s_count\(27) & !\almsetMin|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(27),
	datad => VCC,
	cin => \almsetMin|Add0~53\,
	combout => \almsetMin|Add0~54_combout\,
	cout => \almsetMin|Add0~55\);

-- Location: LCCOMB_X100_Y20_N22
\almsetMin|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~56_combout\ = (\almsetMin|s_count\(27) & (!\almsetMin|Add1~55\)) # (!\almsetMin|s_count\(27) & ((\almsetMin|Add1~55\) # (GND)))
-- \almsetMin|Add1~57\ = CARRY((!\almsetMin|Add1~55\) # (!\almsetMin|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(27),
	datad => VCC,
	cin => \almsetMin|Add1~55\,
	combout => \almsetMin|Add1~56_combout\,
	cout => \almsetMin|Add1~57\);

-- Location: LCCOMB_X97_Y20_N18
\almsetMin|s_count[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[27]~4_combout\ = (\almsetMin|process_0~0_combout\ & (!\almsetMin|Equal0~10_combout\ & (\almsetMin|Add0~54_combout\))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Equal0~10_combout\,
	datac => \almsetMin|Add0~54_combout\,
	datad => \almsetMin|Add1~56_combout\,
	combout => \almsetMin|s_count[27]~4_combout\);

-- Location: LCCOMB_X97_Y20_N28
\almsetMin|s_count[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[27]~feeder_combout\ = \almsetMin|s_count[27]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count[27]~4_combout\,
	combout => \almsetMin|s_count[27]~feeder_combout\);

-- Location: FF_X97_Y20_N29
\almsetMin|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[27]~feeder_combout\,
	asdata => \almsetMin|s_count\(27),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(27));

-- Location: LCCOMB_X98_Y20_N24
\almsetMin|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~56_combout\ = (\almsetMin|s_count\(28) & ((GND) # (!\almsetMin|Add0~55\))) # (!\almsetMin|s_count\(28) & (\almsetMin|Add0~55\ $ (GND)))
-- \almsetMin|Add0~57\ = CARRY((\almsetMin|s_count\(28)) # (!\almsetMin|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(28),
	datad => VCC,
	cin => \almsetMin|Add0~55\,
	combout => \almsetMin|Add0~56_combout\,
	cout => \almsetMin|Add0~57\);

-- Location: LCCOMB_X100_Y20_N24
\almsetMin|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~58_combout\ = (\almsetMin|s_count\(28) & (\almsetMin|Add1~57\ $ (GND))) # (!\almsetMin|s_count\(28) & (!\almsetMin|Add1~57\ & VCC))
-- \almsetMin|Add1~59\ = CARRY((\almsetMin|s_count\(28) & !\almsetMin|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(28),
	datad => VCC,
	cin => \almsetMin|Add1~57\,
	combout => \almsetMin|Add1~58_combout\,
	cout => \almsetMin|Add1~59\);

-- Location: LCCOMB_X99_Y20_N18
\almsetMin|s_count[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[28]~3_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count[29]~53_combout\ & (\almsetMin|Add0~56_combout\))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count[29]~53_combout\,
	datab => \almsetMin|Add0~56_combout\,
	datac => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|Add1~58_combout\,
	combout => \almsetMin|s_count[28]~3_combout\);

-- Location: LCCOMB_X99_Y20_N14
\almsetMin|s_count[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[28]~feeder_combout\ = \almsetMin|s_count[28]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count[28]~3_combout\,
	combout => \almsetMin|s_count[28]~feeder_combout\);

-- Location: FF_X99_Y20_N15
\almsetMin|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[28]~feeder_combout\,
	asdata => \almsetMin|s_count\(28),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(28));

-- Location: LCCOMB_X98_Y20_N26
\almsetMin|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~58_combout\ = (\almsetMin|s_count\(29) & (\almsetMin|Add0~57\ & VCC)) # (!\almsetMin|s_count\(29) & (!\almsetMin|Add0~57\))
-- \almsetMin|Add0~59\ = CARRY((!\almsetMin|s_count\(29) & !\almsetMin|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(29),
	datad => VCC,
	cin => \almsetMin|Add0~57\,
	combout => \almsetMin|Add0~58_combout\,
	cout => \almsetMin|Add0~59\);

-- Location: LCCOMB_X100_Y20_N26
\almsetMin|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~60_combout\ = (\almsetMin|s_count\(29) & (!\almsetMin|Add1~59\)) # (!\almsetMin|s_count\(29) & ((\almsetMin|Add1~59\) # (GND)))
-- \almsetMin|Add1~61\ = CARRY((!\almsetMin|Add1~59\) # (!\almsetMin|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(29),
	datad => VCC,
	cin => \almsetMin|Add1~59\,
	combout => \almsetMin|Add1~60_combout\,
	cout => \almsetMin|Add1~61\);

-- Location: LCCOMB_X99_Y20_N28
\almsetMin|s_count[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[29]~2_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|s_count[29]~53_combout\ & (\almsetMin|Add0~58_combout\))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count[29]~53_combout\,
	datab => \almsetMin|process_0~0_combout\,
	datac => \almsetMin|Add0~58_combout\,
	datad => \almsetMin|Add1~60_combout\,
	combout => \almsetMin|s_count[29]~2_combout\);

-- Location: LCCOMB_X99_Y20_N12
\almsetMin|s_count[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[29]~feeder_combout\ = \almsetMin|s_count[29]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count[29]~2_combout\,
	combout => \almsetMin|s_count[29]~feeder_combout\);

-- Location: FF_X99_Y20_N13
\almsetMin|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[29]~feeder_combout\,
	asdata => \almsetMin|s_count\(29),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(29));

-- Location: LCCOMB_X98_Y20_N28
\almsetMin|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~60_combout\ = (\almsetMin|s_count\(30) & ((GND) # (!\almsetMin|Add0~59\))) # (!\almsetMin|s_count\(30) & (\almsetMin|Add0~59\ $ (GND)))
-- \almsetMin|Add0~61\ = CARRY((\almsetMin|s_count\(30)) # (!\almsetMin|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(30),
	datad => VCC,
	cin => \almsetMin|Add0~59\,
	combout => \almsetMin|Add0~60_combout\,
	cout => \almsetMin|Add0~61\);

-- Location: LCCOMB_X100_Y20_N28
\almsetMin|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~62_combout\ = (\almsetMin|s_count\(30) & (\almsetMin|Add1~61\ $ (GND))) # (!\almsetMin|s_count\(30) & (!\almsetMin|Add1~61\ & VCC))
-- \almsetMin|Add1~63\ = CARRY((\almsetMin|s_count\(30) & !\almsetMin|Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(30),
	datad => VCC,
	cin => \almsetMin|Add1~61\,
	combout => \almsetMin|Add1~62_combout\,
	cout => \almsetMin|Add1~63\);

-- Location: LCCOMB_X99_Y20_N2
\almsetMin|s_count[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[30]~1_combout\ = (\almsetMin|process_0~0_combout\ & (!\almsetMin|Equal0~10_combout\ & (\almsetMin|Add0~60_combout\))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~10_combout\,
	datab => \almsetMin|Add0~60_combout\,
	datac => \almsetMin|process_0~0_combout\,
	datad => \almsetMin|Add1~62_combout\,
	combout => \almsetMin|s_count[30]~1_combout\);

-- Location: LCCOMB_X99_Y20_N30
\almsetMin|s_count[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[30]~feeder_combout\ = \almsetMin|s_count[30]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count[30]~1_combout\,
	combout => \almsetMin|s_count[30]~feeder_combout\);

-- Location: FF_X99_Y20_N31
\almsetMin|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[30]~feeder_combout\,
	asdata => \almsetMin|s_count\(30),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(30));

-- Location: LCCOMB_X100_Y20_N30
\almsetMin|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add1~64_combout\ = \almsetMin|Add1~63\ $ (\almsetMin|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count\(31),
	cin => \almsetMin|Add1~63\,
	combout => \almsetMin|Add1~64_combout\);

-- Location: LCCOMB_X98_Y20_N30
\almsetMin|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Add0~62_combout\ = \almsetMin|s_count\(31) $ (!\almsetMin|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(31),
	cin => \almsetMin|Add0~61\,
	combout => \almsetMin|Add0~62_combout\);

-- Location: LCCOMB_X99_Y20_N24
\almsetMin|s_count[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[31]~0_combout\ = (\almsetMin|process_0~0_combout\ & (!\almsetMin|Equal0~10_combout\ & ((\almsetMin|Add0~62_combout\)))) # (!\almsetMin|process_0~0_combout\ & (((\almsetMin|Add1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~10_combout\,
	datab => \almsetMin|process_0~0_combout\,
	datac => \almsetMin|Add1~64_combout\,
	datad => \almsetMin|Add0~62_combout\,
	combout => \almsetMin|s_count[31]~0_combout\);

-- Location: LCCOMB_X99_Y20_N8
\almsetMin|s_count[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[31]~feeder_combout\ = \almsetMin|s_count[31]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetMin|s_count[31]~0_combout\,
	combout => \almsetMin|s_count[31]~feeder_combout\);

-- Location: FF_X99_Y20_N9
\almsetMin|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[31]~feeder_combout\,
	asdata => \almsetMin|s_count\(31),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(31));

-- Location: LCCOMB_X96_Y19_N18
\almsetMin|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|process_0~0_combout\ = (!\almsetMin|s_count\(31) & (\db1|level~q\ & \setMin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(31),
	datab => \db1|level~q\,
	datad => \setMin~q\,
	combout => \almsetMin|process_0~0_combout\);

-- Location: LCCOMB_X96_Y20_N20
\almsetMin|s_count~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count~71_combout\ = (\almsetMin|Add0~44_combout\ & (((!\almsetMin|Equal0~5_combout\) # (!\almsetMin|Equal0~9_combout\)) # (!\almsetMin|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~8_combout\,
	datab => \almsetMin|Equal0~9_combout\,
	datac => \almsetMin|Equal0~5_combout\,
	datad => \almsetMin|Add0~44_combout\,
	combout => \almsetMin|s_count~71_combout\);

-- Location: LCCOMB_X96_Y20_N22
\almsetMin|s_count[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[22]~9_combout\ = (\almsetMin|process_0~0_combout\ & ((\almsetMin|s_count~71_combout\))) # (!\almsetMin|process_0~0_combout\ & (\almsetMin|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|process_0~0_combout\,
	datab => \almsetMin|Add1~46_combout\,
	datad => \almsetMin|s_count~71_combout\,
	combout => \almsetMin|s_count[22]~9_combout\);

-- Location: FF_X96_Y20_N23
\almsetMin|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[22]~9_combout\,
	asdata => \almsetMin|s_count\(22),
	sload => \almsetMin|s_count[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(22));

-- Location: LCCOMB_X96_Y20_N10
\almsetMin|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~3_combout\ = (!\almsetMin|s_count\(22) & (!\almsetMin|s_count\(23) & (!\almsetMin|s_count\(20) & !\almsetMin|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(22),
	datab => \almsetMin|s_count\(23),
	datac => \almsetMin|s_count\(20),
	datad => \almsetMin|s_count\(21),
	combout => \almsetMin|Equal0~3_combout\);

-- Location: LCCOMB_X96_Y20_N4
\almsetMin|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~4_combout\ = (!\almsetMin|s_count\(16) & (!\almsetMin|s_count\(18) & (!\almsetMin|s_count\(17) & !\almsetMin|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(16),
	datab => \almsetMin|s_count\(18),
	datac => \almsetMin|s_count\(17),
	datad => \almsetMin|s_count\(19),
	combout => \almsetMin|Equal0~4_combout\);

-- Location: LCCOMB_X97_Y20_N12
\almsetMin|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~2_combout\ = (!\almsetMin|s_count\(24) & (!\almsetMin|s_count\(26) & (!\almsetMin|s_count\(25) & !\almsetMin|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(24),
	datab => \almsetMin|s_count\(26),
	datac => \almsetMin|s_count\(25),
	datad => \almsetMin|s_count\(27),
	combout => \almsetMin|Equal0~2_combout\);

-- Location: LCCOMB_X99_Y20_N26
\almsetMin|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~1_combout\ = (!\almsetMin|s_count\(30) & (!\almsetMin|s_count\(28) & (!\almsetMin|s_count\(31) & !\almsetMin|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(30),
	datab => \almsetMin|s_count\(28),
	datac => \almsetMin|s_count\(31),
	datad => \almsetMin|s_count\(29),
	combout => \almsetMin|Equal0~1_combout\);

-- Location: LCCOMB_X96_Y20_N30
\almsetMin|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|Equal0~5_combout\ = (\almsetMin|Equal0~3_combout\ & (\almsetMin|Equal0~4_combout\ & (\almsetMin|Equal0~2_combout\ & \almsetMin|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~3_combout\,
	datab => \almsetMin|Equal0~4_combout\,
	datac => \almsetMin|Equal0~2_combout\,
	datad => \almsetMin|Equal0~1_combout\,
	combout => \almsetMin|Equal0~5_combout\);

-- Location: LCCOMB_X97_Y19_N26
\almsetMin|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~42_combout\ = (\almsetMin|s_count\(4) & (!\almsetMin|s_count\(2) & (\almsetMin|s_count\(3) & \almsetMin|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(4),
	datab => \almsetMin|s_count\(2),
	datac => \almsetMin|s_count\(3),
	datad => \almsetMin|s_count\(5),
	combout => \almsetMin|s_count[5]~42_combout\);

-- Location: LCCOMB_X97_Y19_N12
\almsetMin|s_count[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~43_combout\ = (\almsetMin|s_count\(0) & (\almsetMin|s_count\(1) & (\almsetMin|s_count[5]~42_combout\ & !\almsetMin|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(0),
	datab => \almsetMin|s_count\(1),
	datac => \almsetMin|s_count[5]~42_combout\,
	datad => \almsetMin|process_0~0_combout\,
	combout => \almsetMin|s_count[5]~43_combout\);

-- Location: LCCOMB_X97_Y19_N22
\almsetMin|s_count[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[5]~44_combout\ = (\almsetMin|Equal0~5_combout\ & (\almsetMin|Equal0~8_combout\ & (!\almsetMin|s_count[5]~41_combout\ & !\almsetMin|s_count[5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|Equal0~5_combout\,
	datab => \almsetMin|Equal0~8_combout\,
	datac => \almsetMin|s_count[5]~41_combout\,
	datad => \almsetMin|s_count[5]~43_combout\,
	combout => \almsetMin|s_count[5]~44_combout\);

-- Location: LCCOMB_X97_Y19_N10
\almsetMin|s_count[3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[3]~49_combout\ = (\almsetMin|process_0~0_combout\ & (\almsetMin|Add0~6_combout\)) # (!\almsetMin|process_0~0_combout\ & ((\almsetMin|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|process_0~0_combout\,
	datac => \almsetMin|Add0~6_combout\,
	datad => \almsetMin|Add1~6_combout\,
	combout => \almsetMin|s_count[3]~49_combout\);

-- Location: LCCOMB_X97_Y19_N4
\almsetMin|s_count[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetMin|s_count[3]~50_combout\ = (\almsetMin|s_count[5]~44_combout\ & ((\almsetMin|s_count[3]~49_combout\) # ((\almsetMin|s_count[5]~45_combout\ & \almsetMin|s_count\(3))))) # (!\almsetMin|s_count[5]~44_combout\ & (\almsetMin|s_count[5]~45_combout\ & 
-- (\almsetMin|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count[5]~44_combout\,
	datab => \almsetMin|s_count[5]~45_combout\,
	datac => \almsetMin|s_count\(3),
	datad => \almsetMin|s_count[3]~49_combout\,
	combout => \almsetMin|s_count[3]~50_combout\);

-- Location: FF_X97_Y19_N5
\almsetMin|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetMin|s_count[3]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetMin|s_count\(3));

-- Location: LCCOMB_X94_Y18_N10
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \almsetMin|s_count\(3) $ (VCC)
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\almsetMin|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(3),
	datad => VCC,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X94_Y18_N12
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\almsetMin|s_count\(4) & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\almsetMin|s_count\(4) & 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\almsetMin|s_count\(4) & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(4),
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X94_Y18_N14
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\almsetMin|s_count\(5) & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\almsetMin|s_count\(5) & 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\almsetMin|s_count\(5) & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(5),
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X94_Y18_N16
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X94_Y18_N18
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X94_Y18_N20
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X94_Y18_N24
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ = (\almsetMin|s_count\(3) & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(3),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\);

-- Location: LCCOMB_X95_Y18_N4
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\);

-- Location: LCCOMB_X95_Y18_N30
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\ = (\almsetMin|s_count\(2) & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(2),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\);

-- Location: LCCOMB_X95_Y18_N28
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\ = (\almsetMin|s_count\(2) & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(2),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\);

-- Location: LCCOMB_X95_Y18_N10
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\) # (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\)))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\) # (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~37_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[40]~36_combout\,
	datad => VCC,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X95_Y18_N12
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ & 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\)))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\ & 
-- !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~34_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[41]~35_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X95_Y18_N24
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\);

-- Location: LCCOMB_X95_Y18_N6
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\);

-- Location: LCCOMB_X94_Y18_N28
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ = (\almsetMin|s_count\(5) & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(5),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\);

-- Location: LCCOMB_X95_Y18_N0
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\);

-- Location: LCCOMB_X94_Y18_N2
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\ = (\almsetMin|s_count\(4) & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(4),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\);

-- Location: LCCOMB_X95_Y18_N2
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\);

-- Location: LCCOMB_X95_Y18_N14
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\)))))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~32_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[42]~33_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X95_Y18_N16
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ & 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\)))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\ & 
-- !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~30_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[43]~31_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X95_Y18_N18
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ & ((GND) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[44]~29_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X95_Y18_N20
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[45]~28_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X95_Y18_N22
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X94_Y15_N12
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\);

-- Location: LCCOMB_X94_Y18_N22
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\almsetMin|s_count\(3)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \almsetMin|s_count\(3),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\);

-- Location: LCCOMB_X94_Y15_N10
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ = (\almsetMin|s_count\(2) & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(2),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\);

-- Location: LCCOMB_X94_Y15_N4
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\);

-- Location: LCCOMB_X94_Y15_N6
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\ = (\almsetMin|s_count\(1) & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(1),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\);

-- Location: LCCOMB_X94_Y15_N8
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\ = (\almsetMin|s_count\(1) & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(1),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\);

-- Location: LCCOMB_X94_Y15_N16
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\) # (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\)))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\) # (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~41_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[48]~42_combout\,
	datad => VCC,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X94_Y15_N18
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ & 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\)))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\ & 
-- !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X94_Y15_N20
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\)))))
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X94_Y18_N6
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\);

-- Location: LCCOMB_X94_Y18_N26
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\);

-- Location: LCCOMB_X94_Y18_N4
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\);

-- Location: LCCOMB_X95_Y18_N8
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\);

-- Location: LCCOMB_X94_Y18_N0
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\almsetMin|s_count\(5)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \almsetMin|s_count\(5),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\);

-- Location: LCCOMB_X95_Y18_N26
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

-- Location: LCCOMB_X94_Y18_N30
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\almsetMin|s_count\(4)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \almsetMin|s_count\(4),
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\);

-- Location: LCCOMB_X94_Y18_N8
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

-- Location: LCCOMB_X94_Y15_N22
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ & 
-- !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~54_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X94_Y15_N24
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\) # ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~53_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X94_Y15_N26
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\ & 
-- !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[53]~44_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X94_Y15_N28
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\) # ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~50_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[54]~43_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X94_Y15_N30
\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X94_Y15_N2
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\) # 
-- ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~38_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[50]~52_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\);

-- Location: LCCOMB_X94_Y15_N14
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\) # 
-- ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~39_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[49]~40_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\);

-- Location: LCCOMB_X94_Y15_N0
\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\almsetMin|s_count\(1))) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(1),
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \a_bin2BCD|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\);

-- Location: LCCOMB_X89_Y9_N0
\a_b7segL1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[0]~0_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\almsetMin|s_count\(0) & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ $ 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ $ (\almsetMin|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \a_b7segL1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X111_Y39_N16
\clkIn|freqDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~14_combout\ = (\clkIn|freqDiv|s_count\(7) & (!\clkIn|freqDiv|Add0~13\)) # (!\clkIn|freqDiv|s_count\(7) & ((\clkIn|freqDiv|Add0~13\) # (GND)))
-- \clkIn|freqDiv|Add0~15\ = CARRY((!\clkIn|freqDiv|Add0~13\) # (!\clkIn|freqDiv|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(7),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~13\,
	combout => \clkIn|freqDiv|Add0~14_combout\,
	cout => \clkIn|freqDiv|Add0~15\);

-- Location: LCCOMB_X111_Y39_N0
\clkIn|freqDiv|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~7_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \clkIn|freqDiv|Add0~14_combout\,
	combout => \clkIn|freqDiv|s_count~7_combout\);

-- Location: FF_X111_Y39_N1
\clkIn|freqDiv|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(7));

-- Location: LCCOMB_X111_Y39_N18
\clkIn|freqDiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~16_combout\ = (\clkIn|freqDiv|s_count\(8) & (\clkIn|freqDiv|Add0~15\ $ (GND))) # (!\clkIn|freqDiv|s_count\(8) & (!\clkIn|freqDiv|Add0~15\ & VCC))
-- \clkIn|freqDiv|Add0~17\ = CARRY((\clkIn|freqDiv|s_count\(8) & !\clkIn|freqDiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(8),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~15\,
	combout => \clkIn|freqDiv|Add0~16_combout\,
	cout => \clkIn|freqDiv|Add0~17\);

-- Location: FF_X111_Y39_N19
\clkIn|freqDiv|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(8));

-- Location: LCCOMB_X111_Y39_N20
\clkIn|freqDiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~18_combout\ = (\clkIn|freqDiv|s_count\(9) & (!\clkIn|freqDiv|Add0~17\)) # (!\clkIn|freqDiv|s_count\(9) & ((\clkIn|freqDiv|Add0~17\) # (GND)))
-- \clkIn|freqDiv|Add0~19\ = CARRY((!\clkIn|freqDiv|Add0~17\) # (!\clkIn|freqDiv|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(9),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~17\,
	combout => \clkIn|freqDiv|Add0~18_combout\,
	cout => \clkIn|freqDiv|Add0~19\);

-- Location: FF_X111_Y39_N21
\clkIn|freqDiv|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(9));

-- Location: LCCOMB_X111_Y39_N22
\clkIn|freqDiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~20_combout\ = (\clkIn|freqDiv|s_count\(10) & (\clkIn|freqDiv|Add0~19\ $ (GND))) # (!\clkIn|freqDiv|s_count\(10) & (!\clkIn|freqDiv|Add0~19\ & VCC))
-- \clkIn|freqDiv|Add0~21\ = CARRY((\clkIn|freqDiv|s_count\(10) & !\clkIn|freqDiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(10),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~19\,
	combout => \clkIn|freqDiv|Add0~20_combout\,
	cout => \clkIn|freqDiv|Add0~21\);

-- Location: FF_X111_Y39_N23
\clkIn|freqDiv|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(10));

-- Location: LCCOMB_X111_Y39_N24
\clkIn|freqDiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~22_combout\ = (\clkIn|freqDiv|s_count\(11) & (!\clkIn|freqDiv|Add0~21\)) # (!\clkIn|freqDiv|s_count\(11) & ((\clkIn|freqDiv|Add0~21\) # (GND)))
-- \clkIn|freqDiv|Add0~23\ = CARRY((!\clkIn|freqDiv|Add0~21\) # (!\clkIn|freqDiv|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(11),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~21\,
	combout => \clkIn|freqDiv|Add0~22_combout\,
	cout => \clkIn|freqDiv|Add0~23\);

-- Location: FF_X111_Y39_N25
\clkIn|freqDiv|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(11));

-- Location: LCCOMB_X111_Y39_N26
\clkIn|freqDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~24_combout\ = (\clkIn|freqDiv|s_count\(12) & (\clkIn|freqDiv|Add0~23\ $ (GND))) # (!\clkIn|freqDiv|s_count\(12) & (!\clkIn|freqDiv|Add0~23\ & VCC))
-- \clkIn|freqDiv|Add0~25\ = CARRY((\clkIn|freqDiv|s_count\(12) & !\clkIn|freqDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(12),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~23\,
	combout => \clkIn|freqDiv|Add0~24_combout\,
	cout => \clkIn|freqDiv|Add0~25\);

-- Location: LCCOMB_X112_Y38_N20
\clkIn|freqDiv|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~6_combout\ = (\clkIn|freqDiv|Add0~24_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|Add0~24_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \clkIn|freqDiv|s_count~6_combout\);

-- Location: FF_X112_Y38_N21
\clkIn|freqDiv|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(12));

-- Location: LCCOMB_X111_Y39_N28
\clkIn|freqDiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~26_combout\ = (\clkIn|freqDiv|s_count\(13) & (!\clkIn|freqDiv|Add0~25\)) # (!\clkIn|freqDiv|s_count\(13) & ((\clkIn|freqDiv|Add0~25\) # (GND)))
-- \clkIn|freqDiv|Add0~27\ = CARRY((!\clkIn|freqDiv|Add0~25\) # (!\clkIn|freqDiv|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(13),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~25\,
	combout => \clkIn|freqDiv|Add0~26_combout\,
	cout => \clkIn|freqDiv|Add0~27\);

-- Location: LCCOMB_X112_Y38_N26
\clkIn|freqDiv|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~5_combout\ = (\clkIn|freqDiv|Add0~26_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|Add0~26_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \clkIn|freqDiv|s_count~5_combout\);

-- Location: FF_X112_Y38_N27
\clkIn|freqDiv|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(13));

-- Location: LCCOMB_X111_Y39_N30
\clkIn|freqDiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~28_combout\ = (\clkIn|freqDiv|s_count\(14) & (\clkIn|freqDiv|Add0~27\ $ (GND))) # (!\clkIn|freqDiv|s_count\(14) & (!\clkIn|freqDiv|Add0~27\ & VCC))
-- \clkIn|freqDiv|Add0~29\ = CARRY((\clkIn|freqDiv|s_count\(14) & !\clkIn|freqDiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(14),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~27\,
	combout => \clkIn|freqDiv|Add0~28_combout\,
	cout => \clkIn|freqDiv|Add0~29\);

-- Location: LCCOMB_X112_Y38_N12
\clkIn|freqDiv|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~4_combout\ = (\clkIn|freqDiv|Add0~28_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|Add0~28_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \clkIn|freqDiv|s_count~4_combout\);

-- Location: FF_X112_Y38_N13
\clkIn|freqDiv|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(14));

-- Location: LCCOMB_X111_Y38_N0
\clkIn|freqDiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~30_combout\ = (\clkIn|freqDiv|s_count\(15) & (!\clkIn|freqDiv|Add0~29\)) # (!\clkIn|freqDiv|s_count\(15) & ((\clkIn|freqDiv|Add0~29\) # (GND)))
-- \clkIn|freqDiv|Add0~31\ = CARRY((!\clkIn|freqDiv|Add0~29\) # (!\clkIn|freqDiv|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(15),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~29\,
	combout => \clkIn|freqDiv|Add0~30_combout\,
	cout => \clkIn|freqDiv|Add0~31\);

-- Location: LCCOMB_X110_Y38_N20
\clkIn|freqDiv|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~11_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~9_combout\,
	datac => \clkIn|freqDiv|Add0~30_combout\,
	combout => \clkIn|freqDiv|s_count~11_combout\);

-- Location: FF_X110_Y38_N21
\clkIn|freqDiv|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(15));

-- Location: LCCOMB_X111_Y38_N2
\clkIn|freqDiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~32_combout\ = (\clkIn|freqDiv|s_count\(16) & (\clkIn|freqDiv|Add0~31\ $ (GND))) # (!\clkIn|freqDiv|s_count\(16) & (!\clkIn|freqDiv|Add0~31\ & VCC))
-- \clkIn|freqDiv|Add0~33\ = CARRY((\clkIn|freqDiv|s_count\(16) & !\clkIn|freqDiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(16),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~31\,
	combout => \clkIn|freqDiv|Add0~32_combout\,
	cout => \clkIn|freqDiv|Add0~33\);

-- Location: FF_X111_Y38_N3
\clkIn|freqDiv|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(16));

-- Location: LCCOMB_X111_Y38_N4
\clkIn|freqDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~34_combout\ = (\clkIn|freqDiv|s_count\(17) & (!\clkIn|freqDiv|Add0~33\)) # (!\clkIn|freqDiv|s_count\(17) & ((\clkIn|freqDiv|Add0~33\) # (GND)))
-- \clkIn|freqDiv|Add0~35\ = CARRY((!\clkIn|freqDiv|Add0~33\) # (!\clkIn|freqDiv|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(17),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~33\,
	combout => \clkIn|freqDiv|Add0~34_combout\,
	cout => \clkIn|freqDiv|Add0~35\);

-- Location: LCCOMB_X110_Y38_N0
\clkIn|freqDiv|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~10_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \clkIn|freqDiv|Add0~34_combout\,
	combout => \clkIn|freqDiv|s_count~10_combout\);

-- Location: FF_X110_Y38_N1
\clkIn|freqDiv|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(17));

-- Location: LCCOMB_X111_Y38_N6
\clkIn|freqDiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~36_combout\ = (\clkIn|freqDiv|s_count\(18) & (\clkIn|freqDiv|Add0~35\ $ (GND))) # (!\clkIn|freqDiv|s_count\(18) & (!\clkIn|freqDiv|Add0~35\ & VCC))
-- \clkIn|freqDiv|Add0~37\ = CARRY((\clkIn|freqDiv|s_count\(18) & !\clkIn|freqDiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(18),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~35\,
	combout => \clkIn|freqDiv|Add0~36_combout\,
	cout => \clkIn|freqDiv|Add0~37\);

-- Location: FF_X111_Y38_N7
\clkIn|freqDiv|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(18));

-- Location: LCCOMB_X111_Y38_N8
\clkIn|freqDiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~38_combout\ = (\clkIn|freqDiv|s_count\(19) & (!\clkIn|freqDiv|Add0~37\)) # (!\clkIn|freqDiv|s_count\(19) & ((\clkIn|freqDiv|Add0~37\) # (GND)))
-- \clkIn|freqDiv|Add0~39\ = CARRY((!\clkIn|freqDiv|Add0~37\) # (!\clkIn|freqDiv|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(19),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~37\,
	combout => \clkIn|freqDiv|Add0~38_combout\,
	cout => \clkIn|freqDiv|Add0~39\);

-- Location: LCCOMB_X112_Y38_N6
\clkIn|freqDiv|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~3_combout\ = (\clkIn|freqDiv|Add0~38_combout\ & !\freqDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|Add0~38_combout\,
	datad => \freqDiv|Equal0~9_combout\,
	combout => \clkIn|freqDiv|s_count~3_combout\);

-- Location: FF_X112_Y38_N7
\clkIn|freqDiv|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(19));

-- Location: LCCOMB_X111_Y38_N10
\clkIn|freqDiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~40_combout\ = (\clkIn|freqDiv|s_count\(20) & (\clkIn|freqDiv|Add0~39\ $ (GND))) # (!\clkIn|freqDiv|s_count\(20) & (!\clkIn|freqDiv|Add0~39\ & VCC))
-- \clkIn|freqDiv|Add0~41\ = CARRY((\clkIn|freqDiv|s_count\(20) & !\clkIn|freqDiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(20),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~39\,
	combout => \clkIn|freqDiv|Add0~40_combout\,
	cout => \clkIn|freqDiv|Add0~41\);

-- Location: LCCOMB_X110_Y38_N10
\clkIn|freqDiv|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~2_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~9_combout\,
	datac => \clkIn|freqDiv|Add0~40_combout\,
	combout => \clkIn|freqDiv|s_count~2_combout\);

-- Location: FF_X110_Y38_N11
\clkIn|freqDiv|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(20));

-- Location: LCCOMB_X111_Y38_N12
\clkIn|freqDiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~42_combout\ = (\clkIn|freqDiv|s_count\(21) & (!\clkIn|freqDiv|Add0~41\)) # (!\clkIn|freqDiv|s_count\(21) & ((\clkIn|freqDiv|Add0~41\) # (GND)))
-- \clkIn|freqDiv|Add0~43\ = CARRY((!\clkIn|freqDiv|Add0~41\) # (!\clkIn|freqDiv|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(21),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~41\,
	combout => \clkIn|freqDiv|Add0~42_combout\,
	cout => \clkIn|freqDiv|Add0~43\);

-- Location: LCCOMB_X110_Y38_N18
\clkIn|freqDiv|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~1_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~9_combout\,
	datac => \clkIn|freqDiv|Add0~42_combout\,
	combout => \clkIn|freqDiv|s_count~1_combout\);

-- Location: FF_X110_Y38_N19
\clkIn|freqDiv|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(21));

-- Location: LCCOMB_X111_Y38_N14
\clkIn|freqDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~44_combout\ = (\clkIn|freqDiv|s_count\(22) & (\clkIn|freqDiv|Add0~43\ $ (GND))) # (!\clkIn|freqDiv|s_count\(22) & (!\clkIn|freqDiv|Add0~43\ & VCC))
-- \clkIn|freqDiv|Add0~45\ = CARRY((\clkIn|freqDiv|s_count\(22) & !\clkIn|freqDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(22),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~43\,
	combout => \clkIn|freqDiv|Add0~44_combout\,
	cout => \clkIn|freqDiv|Add0~45\);

-- Location: LCCOMB_X110_Y38_N12
\clkIn|freqDiv|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~0_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~9_combout\,
	datac => \clkIn|freqDiv|Add0~44_combout\,
	combout => \clkIn|freqDiv|s_count~0_combout\);

-- Location: FF_X110_Y38_N13
\clkIn|freqDiv|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(22));

-- Location: LCCOMB_X111_Y38_N16
\clkIn|freqDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~46_combout\ = (\clkIn|freqDiv|s_count\(23) & (!\clkIn|freqDiv|Add0~45\)) # (!\clkIn|freqDiv|s_count\(23) & ((\clkIn|freqDiv|Add0~45\) # (GND)))
-- \clkIn|freqDiv|Add0~47\ = CARRY((!\clkIn|freqDiv|Add0~45\) # (!\clkIn|freqDiv|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(23),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~45\,
	combout => \clkIn|freqDiv|Add0~46_combout\,
	cout => \clkIn|freqDiv|Add0~47\);

-- Location: LCCOMB_X110_Y38_N6
\clkIn|freqDiv|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~9_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \clkIn|freqDiv|Add0~46_combout\,
	combout => \clkIn|freqDiv|s_count~9_combout\);

-- Location: FF_X110_Y38_N7
\clkIn|freqDiv|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(23));

-- Location: LCCOMB_X111_Y38_N18
\clkIn|freqDiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~48_combout\ = (\clkIn|freqDiv|s_count\(24) & (\clkIn|freqDiv|Add0~47\ $ (GND))) # (!\clkIn|freqDiv|s_count\(24) & (!\clkIn|freqDiv|Add0~47\ & VCC))
-- \clkIn|freqDiv|Add0~49\ = CARRY((\clkIn|freqDiv|s_count\(24) & !\clkIn|freqDiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(24),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~47\,
	combout => \clkIn|freqDiv|Add0~48_combout\,
	cout => \clkIn|freqDiv|Add0~49\);

-- Location: FF_X111_Y38_N19
\clkIn|freqDiv|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(24));

-- Location: LCCOMB_X111_Y38_N20
\clkIn|freqDiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~50_combout\ = (\clkIn|freqDiv|s_count\(25) & (!\clkIn|freqDiv|Add0~49\)) # (!\clkIn|freqDiv|s_count\(25) & ((\clkIn|freqDiv|Add0~49\) # (GND)))
-- \clkIn|freqDiv|Add0~51\ = CARRY((!\clkIn|freqDiv|Add0~49\) # (!\clkIn|freqDiv|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(25),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~49\,
	combout => \clkIn|freqDiv|Add0~50_combout\,
	cout => \clkIn|freqDiv|Add0~51\);

-- Location: LCCOMB_X110_Y38_N8
\clkIn|freqDiv|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|s_count~8_combout\ = (!\freqDiv|Equal0~9_combout\ & \clkIn|freqDiv|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqDiv|Equal0~9_combout\,
	datad => \clkIn|freqDiv|Add0~50_combout\,
	combout => \clkIn|freqDiv|s_count~8_combout\);

-- Location: FF_X110_Y38_N9
\clkIn|freqDiv|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(25));

-- Location: LCCOMB_X110_Y38_N16
\freqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~7_combout\ = (!\clkIn|freqDiv|s_count\(18) & (\clkIn|freqDiv|s_count\(23) & (\clkIn|freqDiv|s_count\(25) & !\clkIn|freqDiv|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(18),
	datab => \clkIn|freqDiv|s_count\(23),
	datac => \clkIn|freqDiv|s_count\(25),
	datad => \clkIn|freqDiv|s_count\(24),
	combout => \freqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y38_N26
\freqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~8_combout\ = (\clkIn|freqDiv|s_count\(15) & (\clkIn|freqDiv|s_count\(17) & (!\clkIn|freqDiv|s_count\(16) & !\clkIn|freqDiv|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(15),
	datab => \clkIn|freqDiv|s_count\(17),
	datac => \clkIn|freqDiv|s_count\(16),
	datad => \clkIn|freqDiv|s_count\(11),
	combout => \freqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y38_N30
\freqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~4_combout\ = (\clkIn|freqDiv|s_count\(14) & (\clkIn|freqDiv|s_count\(12) & (\clkIn|freqDiv|s_count\(13) & \clkIn|freqDiv|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(14),
	datab => \clkIn|freqDiv|s_count\(12),
	datac => \clkIn|freqDiv|s_count\(13),
	datad => \clkIn|freqDiv|s_count\(19),
	combout => \freqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y38_N4
\freqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~5_combout\ = (!\clkIn|freqDiv|s_count\(8) & (!\clkIn|freqDiv|s_count\(9) & (!\clkIn|freqDiv|s_count\(10) & !\clkIn|freqDiv|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(8),
	datab => \clkIn|freqDiv|s_count\(9),
	datac => \clkIn|freqDiv|s_count\(10),
	datad => \clkIn|freqDiv|s_count\(7),
	combout => \freqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y38_N22
\clkIn|freqDiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~52_combout\ = (\clkIn|freqDiv|s_count\(26) & (\clkIn|freqDiv|Add0~51\ $ (GND))) # (!\clkIn|freqDiv|s_count\(26) & (!\clkIn|freqDiv|Add0~51\ & VCC))
-- \clkIn|freqDiv|Add0~53\ = CARRY((\clkIn|freqDiv|s_count\(26) & !\clkIn|freqDiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(26),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~51\,
	combout => \clkIn|freqDiv|Add0~52_combout\,
	cout => \clkIn|freqDiv|Add0~53\);

-- Location: FF_X111_Y38_N23
\clkIn|freqDiv|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(26));

-- Location: LCCOMB_X110_Y38_N4
\freqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~3_combout\ = (\clkIn|freqDiv|s_count\(22) & (\clkIn|freqDiv|s_count\(21) & (\clkIn|freqDiv|s_count\(20) & !\clkIn|freqDiv|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(22),
	datab => \clkIn|freqDiv|s_count\(21),
	datac => \clkIn|freqDiv|s_count\(20),
	datad => \clkIn|freqDiv|s_count\(26),
	combout => \freqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y38_N24
\clkIn|freqDiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~54_combout\ = (\clkIn|freqDiv|s_count\(27) & (!\clkIn|freqDiv|Add0~53\)) # (!\clkIn|freqDiv|s_count\(27) & ((\clkIn|freqDiv|Add0~53\) # (GND)))
-- \clkIn|freqDiv|Add0~55\ = CARRY((!\clkIn|freqDiv|Add0~53\) # (!\clkIn|freqDiv|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(27),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~53\,
	combout => \clkIn|freqDiv|Add0~54_combout\,
	cout => \clkIn|freqDiv|Add0~55\);

-- Location: FF_X111_Y38_N25
\clkIn|freqDiv|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(27));

-- Location: LCCOMB_X111_Y38_N26
\clkIn|freqDiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~56_combout\ = (\clkIn|freqDiv|s_count\(28) & (\clkIn|freqDiv|Add0~55\ $ (GND))) # (!\clkIn|freqDiv|s_count\(28) & (!\clkIn|freqDiv|Add0~55\ & VCC))
-- \clkIn|freqDiv|Add0~57\ = CARRY((\clkIn|freqDiv|s_count\(28) & !\clkIn|freqDiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(28),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~55\,
	combout => \clkIn|freqDiv|Add0~56_combout\,
	cout => \clkIn|freqDiv|Add0~57\);

-- Location: FF_X111_Y38_N27
\clkIn|freqDiv|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(28));

-- Location: LCCOMB_X111_Y38_N28
\clkIn|freqDiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~58_combout\ = (\clkIn|freqDiv|s_count\(29) & (!\clkIn|freqDiv|Add0~57\)) # (!\clkIn|freqDiv|s_count\(29) & ((\clkIn|freqDiv|Add0~57\) # (GND)))
-- \clkIn|freqDiv|Add0~59\ = CARRY((!\clkIn|freqDiv|Add0~57\) # (!\clkIn|freqDiv|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|freqDiv|s_count\(29),
	datad => VCC,
	cin => \clkIn|freqDiv|Add0~57\,
	combout => \clkIn|freqDiv|Add0~58_combout\,
	cout => \clkIn|freqDiv|Add0~59\);

-- Location: FF_X111_Y38_N29
\clkIn|freqDiv|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(29));

-- Location: LCCOMB_X111_Y38_N30
\clkIn|freqDiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|freqDiv|Add0~60_combout\ = \clkIn|freqDiv|s_count\(30) $ (!\clkIn|freqDiv|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(30),
	cin => \clkIn|freqDiv|Add0~59\,
	combout => \clkIn|freqDiv|Add0~60_combout\);

-- Location: FF_X111_Y38_N31
\clkIn|freqDiv|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkIn|freqDiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|s_count\(30));

-- Location: LCCOMB_X112_Y38_N14
\freqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~1_combout\ = (!\clkIn|freqDiv|s_count\(28) & (!\clkIn|freqDiv|s_count\(27) & (!\clkIn|freqDiv|s_count\(29) & !\clkIn|freqDiv|s_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(28),
	datab => \clkIn|freqDiv|s_count\(27),
	datac => \clkIn|freqDiv|s_count\(29),
	datad => \clkIn|freqDiv|s_count\(30),
	combout => \freqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y38_N16
\freqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~2_combout\ = (\clkIn|freqDiv|s_count\(0) & (\clkIn|freqDiv|s_count\(5) & (\freqDiv|Equal0~1_combout\ & \freqDiv|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(0),
	datab => \clkIn|freqDiv|s_count\(5),
	datac => \freqDiv|Equal0~1_combout\,
	datad => \freqDiv|Equal0~0_combout\,
	combout => \freqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y38_N10
\freqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~6_combout\ = (\freqDiv|Equal0~4_combout\ & (\freqDiv|Equal0~5_combout\ & (\freqDiv|Equal0~3_combout\ & \freqDiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~4_combout\,
	datab => \freqDiv|Equal0~5_combout\,
	datac => \freqDiv|Equal0~3_combout\,
	datad => \freqDiv|Equal0~2_combout\,
	combout => \freqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y38_N30
\freqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal0~9_combout\ = (\clkIn|freqDiv|s_count\(6) & (\freqDiv|Equal0~7_combout\ & (\freqDiv|Equal0~8_combout\ & \freqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(6),
	datab => \freqDiv|Equal0~7_combout\,
	datac => \freqDiv|Equal0~8_combout\,
	datad => \freqDiv|Equal0~6_combout\,
	combout => \freqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y38_N22
\freqDiv|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~1_combout\ = (\clkIn|freqDiv|s_count\(16) & !\clkIn|freqDiv|s_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(16),
	datad => \clkIn|freqDiv|s_count\(17),
	combout => \freqDiv|Equal1~1_combout\);

-- Location: LCCOMB_X110_Y38_N24
\freqDiv|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~2_combout\ = (!\clkIn|freqDiv|s_count\(15) & (!\clkIn|freqDiv|s_count\(6) & (\freqDiv|Equal1~1_combout\ & \clkIn|freqDiv|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(15),
	datab => \clkIn|freqDiv|s_count\(6),
	datac => \freqDiv|Equal1~1_combout\,
	datad => \clkIn|freqDiv|s_count\(11),
	combout => \freqDiv|Equal1~2_combout\);

-- Location: LCCOMB_X110_Y38_N2
\freqDiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|Equal1~0_combout\ = (\clkIn|freqDiv|s_count\(18) & (!\clkIn|freqDiv|s_count\(23) & (!\clkIn|freqDiv|s_count\(25) & \clkIn|freqDiv|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|freqDiv|s_count\(18),
	datab => \clkIn|freqDiv|s_count\(23),
	datac => \clkIn|freqDiv|s_count\(25),
	datad => \clkIn|freqDiv|s_count\(24),
	combout => \freqDiv|Equal1~0_combout\);

-- Location: LCCOMB_X110_Y38_N14
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|Equal0~9_combout\) # ((\freqDiv|Equal0~6_combout\ & (\freqDiv|Equal1~2_combout\ & \freqDiv|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|Equal0~6_combout\,
	datab => \freqDiv|Equal1~2_combout\,
	datac => \freqDiv|Equal0~9_combout\,
	datad => \freqDiv|Equal1~0_combout\,
	combout => \freqDiv|clkOut~0_combout\);

-- Location: FF_X110_Y38_N23
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|Equal0~9_combout\,
	sload => VCC,
	ena => \freqDiv|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: LCCOMB_X106_Y19_N8
\HEX6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~0_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \freqDiv|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \freqDiv|clkOut~q\,
	combout => \HEX6~0_combout\);

-- Location: LCCOMB_X94_Y23_N0
\almsetHour|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~0_combout\ = \almsetHour|s_count\(0) $ (VCC)
-- \almsetHour|Add1~1\ = CARRY(\almsetHour|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(0),
	datad => VCC,
	combout => \almsetHour|Add1~0_combout\,
	cout => \almsetHour|Add1~1\);

-- Location: LCCOMB_X96_Y23_N0
\almsetHour|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~0_combout\ = \almsetHour|s_count\(0) $ (VCC)
-- \almsetHour|Add0~1\ = CARRY(\almsetHour|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(0),
	datad => VCC,
	combout => \almsetHour|Add0~0_combout\,
	cout => \almsetHour|Add0~1\);

-- Location: LCCOMB_X96_Y23_N4
\almsetHour|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~4_combout\ = (\almsetHour|s_count\(2) & ((GND) # (!\almsetHour|Add0~3\))) # (!\almsetHour|s_count\(2) & (\almsetHour|Add0~3\ $ (GND)))
-- \almsetHour|Add0~5\ = CARRY((\almsetHour|s_count\(2)) # (!\almsetHour|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(2),
	datad => VCC,
	cin => \almsetHour|Add0~3\,
	combout => \almsetHour|Add0~4_combout\,
	cout => \almsetHour|Add0~5\);

-- Location: LCCOMB_X96_Y23_N6
\almsetHour|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~6_combout\ = (\almsetHour|s_count\(3) & (\almsetHour|Add0~5\ & VCC)) # (!\almsetHour|s_count\(3) & (!\almsetHour|Add0~5\))
-- \almsetHour|Add0~7\ = CARRY((!\almsetHour|s_count\(3) & !\almsetHour|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(3),
	datad => VCC,
	cin => \almsetHour|Add0~5\,
	combout => \almsetHour|Add0~6_combout\,
	cout => \almsetHour|Add0~7\);

-- Location: LCCOMB_X94_Y23_N2
\almsetHour|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~3_combout\ = (\almsetHour|s_count\(1) & (!\almsetHour|Add1~1\)) # (!\almsetHour|s_count\(1) & ((\almsetHour|Add1~1\) # (GND)))
-- \almsetHour|Add1~4\ = CARRY((!\almsetHour|Add1~1\) # (!\almsetHour|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datad => VCC,
	cin => \almsetHour|Add1~1\,
	combout => \almsetHour|Add1~3_combout\,
	cout => \almsetHour|Add1~4\);

-- Location: LCCOMB_X94_Y23_N4
\almsetHour|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~6_combout\ = (\almsetHour|s_count\(2) & (\almsetHour|Add1~4\ $ (GND))) # (!\almsetHour|s_count\(2) & (!\almsetHour|Add1~4\ & VCC))
-- \almsetHour|Add1~7\ = CARRY((\almsetHour|s_count\(2) & !\almsetHour|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(2),
	datad => VCC,
	cin => \almsetHour|Add1~4\,
	combout => \almsetHour|Add1~6_combout\,
	cout => \almsetHour|Add1~7\);

-- Location: LCCOMB_X94_Y23_N6
\almsetHour|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~9_combout\ = (\almsetHour|s_count\(3) & (!\almsetHour|Add1~7\)) # (!\almsetHour|s_count\(3) & ((\almsetHour|Add1~7\) # (GND)))
-- \almsetHour|Add1~10\ = CARRY((!\almsetHour|Add1~7\) # (!\almsetHour|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(3),
	datad => VCC,
	cin => \almsetHour|Add1~7\,
	combout => \almsetHour|Add1~9_combout\,
	cout => \almsetHour|Add1~10\);

-- Location: LCCOMB_X95_Y23_N22
\almsetHour|s_count[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[3]~30_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|Add0~6_combout\ & ((!\almsetHour|Equal0~10_combout\)))) # (!\almsetHour|process_0~0_combout\ & (((\almsetHour|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~6_combout\,
	datab => \almsetHour|Add1~9_combout\,
	datac => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|Equal0~10_combout\,
	combout => \almsetHour|s_count[3]~30_combout\);

-- Location: LCCOMB_X94_Y23_N8
\almsetHour|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~11_combout\ = (\almsetHour|s_count\(4) & (\almsetHour|Add1~10\ $ (GND))) # (!\almsetHour|s_count\(4) & (!\almsetHour|Add1~10\ & VCC))
-- \almsetHour|Add1~12\ = CARRY((\almsetHour|s_count\(4) & !\almsetHour|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(4),
	datad => VCC,
	cin => \almsetHour|Add1~10\,
	combout => \almsetHour|Add1~11_combout\,
	cout => \almsetHour|Add1~12\);

-- Location: LCCOMB_X94_Y23_N10
\almsetHour|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~13_combout\ = (\almsetHour|s_count\(5) & (!\almsetHour|Add1~12\)) # (!\almsetHour|s_count\(5) & ((\almsetHour|Add1~12\) # (GND)))
-- \almsetHour|Add1~14\ = CARRY((!\almsetHour|Add1~12\) # (!\almsetHour|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(5),
	datad => VCC,
	cin => \almsetHour|Add1~12\,
	combout => \almsetHour|Add1~13_combout\,
	cout => \almsetHour|Add1~14\);

-- Location: LCCOMB_X96_Y23_N8
\almsetHour|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~8_combout\ = (\almsetHour|s_count\(4) & ((GND) # (!\almsetHour|Add0~7\))) # (!\almsetHour|s_count\(4) & (\almsetHour|Add0~7\ $ (GND)))
-- \almsetHour|Add0~9\ = CARRY((\almsetHour|s_count\(4)) # (!\almsetHour|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(4),
	datad => VCC,
	cin => \almsetHour|Add0~7\,
	combout => \almsetHour|Add0~8_combout\,
	cout => \almsetHour|Add0~9\);

-- Location: LCCOMB_X96_Y23_N10
\almsetHour|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~10_combout\ = (\almsetHour|s_count\(5) & (\almsetHour|Add0~9\ & VCC)) # (!\almsetHour|s_count\(5) & (!\almsetHour|Add0~9\))
-- \almsetHour|Add0~11\ = CARRY((!\almsetHour|s_count\(5) & !\almsetHour|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(5),
	datad => VCC,
	cin => \almsetHour|Add0~9\,
	combout => \almsetHour|Add0~10_combout\,
	cout => \almsetHour|Add0~11\);

-- Location: LCCOMB_X97_Y23_N6
\almsetHour|s_count~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~55_combout\ = (\almsetHour|Add0~10_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Add0~10_combout\,
	combout => \almsetHour|s_count~55_combout\);

-- Location: LCCOMB_X97_Y23_N8
\almsetHour|s_count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[5]~26_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~55_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~13_combout\,
	datad => \almsetHour|s_count~55_combout\,
	combout => \almsetHour|s_count[5]~26_combout\);

-- Location: FF_X97_Y23_N9
\almsetHour|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[5]~26_combout\,
	asdata => \almsetHour|s_count\(5),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(5));

-- Location: LCCOMB_X94_Y23_N12
\almsetHour|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~15_combout\ = (\almsetHour|s_count\(6) & (\almsetHour|Add1~14\ $ (GND))) # (!\almsetHour|s_count\(6) & (!\almsetHour|Add1~14\ & VCC))
-- \almsetHour|Add1~16\ = CARRY((\almsetHour|s_count\(6) & !\almsetHour|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(6),
	datad => VCC,
	cin => \almsetHour|Add1~14\,
	combout => \almsetHour|Add1~15_combout\,
	cout => \almsetHour|Add1~16\);

-- Location: LCCOMB_X96_Y23_N12
\almsetHour|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~12_combout\ = (\almsetHour|s_count\(6) & ((GND) # (!\almsetHour|Add0~11\))) # (!\almsetHour|s_count\(6) & (\almsetHour|Add0~11\ $ (GND)))
-- \almsetHour|Add0~13\ = CARRY((\almsetHour|s_count\(6)) # (!\almsetHour|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(6),
	datad => VCC,
	cin => \almsetHour|Add0~11\,
	combout => \almsetHour|Add0~12_combout\,
	cout => \almsetHour|Add0~13\);

-- Location: LCCOMB_X97_Y23_N16
\almsetHour|s_count~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~54_combout\ = (\almsetHour|Add0~12_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Add0~12_combout\,
	combout => \almsetHour|s_count~54_combout\);

-- Location: LCCOMB_X97_Y23_N14
\almsetHour|s_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[6]~25_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~54_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~15_combout\,
	datad => \almsetHour|s_count~54_combout\,
	combout => \almsetHour|s_count[6]~25_combout\);

-- Location: FF_X97_Y23_N15
\almsetHour|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[6]~25_combout\,
	asdata => \almsetHour|s_count\(6),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(6));

-- Location: LCCOMB_X94_Y23_N14
\almsetHour|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~17_combout\ = (\almsetHour|s_count\(7) & (!\almsetHour|Add1~16\)) # (!\almsetHour|s_count\(7) & ((\almsetHour|Add1~16\) # (GND)))
-- \almsetHour|Add1~18\ = CARRY((!\almsetHour|Add1~16\) # (!\almsetHour|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(7),
	datad => VCC,
	cin => \almsetHour|Add1~16\,
	combout => \almsetHour|Add1~17_combout\,
	cout => \almsetHour|Add1~18\);

-- Location: LCCOMB_X96_Y23_N14
\almsetHour|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~14_combout\ = (\almsetHour|s_count\(7) & (\almsetHour|Add0~13\ & VCC)) # (!\almsetHour|s_count\(7) & (!\almsetHour|Add0~13\))
-- \almsetHour|Add0~15\ = CARRY((!\almsetHour|s_count\(7) & !\almsetHour|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(7),
	datad => VCC,
	cin => \almsetHour|Add0~13\,
	combout => \almsetHour|Add0~14_combout\,
	cout => \almsetHour|Add0~15\);

-- Location: LCCOMB_X97_Y23_N10
\almsetHour|s_count~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~53_combout\ = (\almsetHour|Add0~14_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Add0~14_combout\,
	combout => \almsetHour|s_count~53_combout\);

-- Location: LCCOMB_X97_Y23_N20
\almsetHour|s_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[7]~24_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~53_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~17_combout\,
	datad => \almsetHour|s_count~53_combout\,
	combout => \almsetHour|s_count[7]~24_combout\);

-- Location: FF_X97_Y23_N21
\almsetHour|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[7]~24_combout\,
	asdata => \almsetHour|s_count\(7),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(7));

-- Location: LCCOMB_X94_Y23_N16
\almsetHour|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~19_combout\ = (\almsetHour|s_count\(8) & (\almsetHour|Add1~18\ $ (GND))) # (!\almsetHour|s_count\(8) & (!\almsetHour|Add1~18\ & VCC))
-- \almsetHour|Add1~20\ = CARRY((\almsetHour|s_count\(8) & !\almsetHour|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(8),
	datad => VCC,
	cin => \almsetHour|Add1~18\,
	combout => \almsetHour|Add1~19_combout\,
	cout => \almsetHour|Add1~20\);

-- Location: LCCOMB_X96_Y23_N16
\almsetHour|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~16_combout\ = (\almsetHour|s_count\(8) & ((GND) # (!\almsetHour|Add0~15\))) # (!\almsetHour|s_count\(8) & (\almsetHour|Add0~15\ $ (GND)))
-- \almsetHour|Add0~17\ = CARRY((\almsetHour|s_count\(8)) # (!\almsetHour|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(8),
	datad => VCC,
	cin => \almsetHour|Add0~15\,
	combout => \almsetHour|Add0~16_combout\,
	cout => \almsetHour|Add0~17\);

-- Location: LCCOMB_X97_Y23_N0
\almsetHour|s_count~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~52_combout\ = (\almsetHour|Add0~16_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Add0~16_combout\,
	combout => \almsetHour|s_count~52_combout\);

-- Location: LCCOMB_X97_Y23_N30
\almsetHour|s_count[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[8]~23_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~52_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~19_combout\,
	datad => \almsetHour|s_count~52_combout\,
	combout => \almsetHour|s_count[8]~23_combout\);

-- Location: FF_X97_Y23_N31
\almsetHour|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[8]~23_combout\,
	asdata => \almsetHour|s_count\(8),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(8));

-- Location: LCCOMB_X94_Y23_N18
\almsetHour|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~21_combout\ = (\almsetHour|s_count\(9) & (!\almsetHour|Add1~20\)) # (!\almsetHour|s_count\(9) & ((\almsetHour|Add1~20\) # (GND)))
-- \almsetHour|Add1~22\ = CARRY((!\almsetHour|Add1~20\) # (!\almsetHour|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(9),
	datad => VCC,
	cin => \almsetHour|Add1~20\,
	combout => \almsetHour|Add1~21_combout\,
	cout => \almsetHour|Add1~22\);

-- Location: LCCOMB_X96_Y23_N18
\almsetHour|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~18_combout\ = (\almsetHour|s_count\(9) & (\almsetHour|Add0~17\ & VCC)) # (!\almsetHour|s_count\(9) & (!\almsetHour|Add0~17\))
-- \almsetHour|Add0~19\ = CARRY((!\almsetHour|s_count\(9) & !\almsetHour|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(9),
	datad => VCC,
	cin => \almsetHour|Add0~17\,
	combout => \almsetHour|Add0~18_combout\,
	cout => \almsetHour|Add0~19\);

-- Location: LCCOMB_X97_Y23_N2
\almsetHour|s_count~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~51_combout\ = (\almsetHour|Add0~18_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Add0~18_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~9_combout\,
	combout => \almsetHour|s_count~51_combout\);

-- Location: LCCOMB_X97_Y23_N4
\almsetHour|s_count[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[9]~22_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~51_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~21_combout\,
	datad => \almsetHour|s_count~51_combout\,
	combout => \almsetHour|s_count[9]~22_combout\);

-- Location: FF_X97_Y23_N5
\almsetHour|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[9]~22_combout\,
	asdata => \almsetHour|s_count\(9),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(9));

-- Location: LCCOMB_X94_Y23_N20
\almsetHour|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~23_combout\ = (\almsetHour|s_count\(10) & (\almsetHour|Add1~22\ $ (GND))) # (!\almsetHour|s_count\(10) & (!\almsetHour|Add1~22\ & VCC))
-- \almsetHour|Add1~24\ = CARRY((\almsetHour|s_count\(10) & !\almsetHour|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(10),
	datad => VCC,
	cin => \almsetHour|Add1~22\,
	combout => \almsetHour|Add1~23_combout\,
	cout => \almsetHour|Add1~24\);

-- Location: LCCOMB_X96_Y23_N20
\almsetHour|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~20_combout\ = (\almsetHour|s_count\(10) & ((GND) # (!\almsetHour|Add0~19\))) # (!\almsetHour|s_count\(10) & (\almsetHour|Add0~19\ $ (GND)))
-- \almsetHour|Add0~21\ = CARRY((\almsetHour|s_count\(10)) # (!\almsetHour|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(10),
	datad => VCC,
	cin => \almsetHour|Add0~19\,
	combout => \almsetHour|Add0~20_combout\,
	cout => \almsetHour|Add0~21\);

-- Location: LCCOMB_X97_Y23_N12
\almsetHour|s_count~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~50_combout\ = (\almsetHour|Add0~20_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Add0~20_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~9_combout\,
	combout => \almsetHour|s_count~50_combout\);

-- Location: LCCOMB_X97_Y23_N22
\almsetHour|s_count[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[10]~21_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~50_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~23_combout\,
	datad => \almsetHour|s_count~50_combout\,
	combout => \almsetHour|s_count[10]~21_combout\);

-- Location: FF_X97_Y23_N23
\almsetHour|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[10]~21_combout\,
	asdata => \almsetHour|s_count\(10),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(10));

-- Location: LCCOMB_X94_Y23_N22
\almsetHour|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~25_combout\ = (\almsetHour|s_count\(11) & (!\almsetHour|Add1~24\)) # (!\almsetHour|s_count\(11) & ((\almsetHour|Add1~24\) # (GND)))
-- \almsetHour|Add1~26\ = CARRY((!\almsetHour|Add1~24\) # (!\almsetHour|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(11),
	datad => VCC,
	cin => \almsetHour|Add1~24\,
	combout => \almsetHour|Add1~25_combout\,
	cout => \almsetHour|Add1~26\);

-- Location: LCCOMB_X96_Y23_N22
\almsetHour|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~22_combout\ = (\almsetHour|s_count\(11) & (\almsetHour|Add0~21\ & VCC)) # (!\almsetHour|s_count\(11) & (!\almsetHour|Add0~21\))
-- \almsetHour|Add0~23\ = CARRY((!\almsetHour|s_count\(11) & !\almsetHour|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(11),
	datad => VCC,
	cin => \almsetHour|Add0~21\,
	combout => \almsetHour|Add0~22_combout\,
	cout => \almsetHour|Add0~23\);

-- Location: LCCOMB_X97_Y23_N18
\almsetHour|s_count~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~49_combout\ = (\almsetHour|Add0~22_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~9_combout\)) # (!\almsetHour|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|Add0~22_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~9_combout\,
	combout => \almsetHour|s_count~49_combout\);

-- Location: LCCOMB_X97_Y23_N24
\almsetHour|s_count[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[11]~20_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~49_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~25_combout\,
	datad => \almsetHour|s_count~49_combout\,
	combout => \almsetHour|s_count[11]~20_combout\);

-- Location: FF_X97_Y23_N25
\almsetHour|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[11]~20_combout\,
	asdata => \almsetHour|s_count\(11),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(11));

-- Location: LCCOMB_X96_Y23_N24
\almsetHour|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~24_combout\ = (\almsetHour|s_count\(12) & ((GND) # (!\almsetHour|Add0~23\))) # (!\almsetHour|s_count\(12) & (\almsetHour|Add0~23\ $ (GND)))
-- \almsetHour|Add0~25\ = CARRY((\almsetHour|s_count\(12)) # (!\almsetHour|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(12),
	datad => VCC,
	cin => \almsetHour|Add0~23\,
	combout => \almsetHour|Add0~24_combout\,
	cout => \almsetHour|Add0~25\);

-- Location: LCCOMB_X95_Y20_N30
\almsetHour|s_count~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~59_combout\ = (\almsetHour|Add0~24_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|Add0~24_combout\,
	combout => \almsetHour|s_count~59_combout\);

-- Location: LCCOMB_X94_Y23_N24
\almsetHour|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~27_combout\ = (\almsetHour|s_count\(12) & (\almsetHour|Add1~26\ $ (GND))) # (!\almsetHour|s_count\(12) & (!\almsetHour|Add1~26\ & VCC))
-- \almsetHour|Add1~28\ = CARRY((\almsetHour|s_count\(12) & !\almsetHour|Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(12),
	datad => VCC,
	cin => \almsetHour|Add1~26\,
	combout => \almsetHour|Add1~27_combout\,
	cout => \almsetHour|Add1~28\);

-- Location: LCCOMB_X95_Y20_N20
\almsetHour|s_count[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[12]~19_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|s_count~59_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count~59_combout\,
	datab => \almsetHour|Add1~27_combout\,
	datad => \almsetHour|process_0~0_combout\,
	combout => \almsetHour|s_count[12]~19_combout\);

-- Location: FF_X95_Y20_N21
\almsetHour|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[12]~19_combout\,
	asdata => \almsetHour|s_count\(12),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(12));

-- Location: LCCOMB_X94_Y23_N26
\almsetHour|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~29_combout\ = (\almsetHour|s_count\(13) & (!\almsetHour|Add1~28\)) # (!\almsetHour|s_count\(13) & ((\almsetHour|Add1~28\) # (GND)))
-- \almsetHour|Add1~30\ = CARRY((!\almsetHour|Add1~28\) # (!\almsetHour|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(13),
	datad => VCC,
	cin => \almsetHour|Add1~28\,
	combout => \almsetHour|Add1~29_combout\,
	cout => \almsetHour|Add1~30\);

-- Location: LCCOMB_X96_Y23_N26
\almsetHour|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~26_combout\ = (\almsetHour|s_count\(13) & (\almsetHour|Add0~25\ & VCC)) # (!\almsetHour|s_count\(13) & (!\almsetHour|Add0~25\))
-- \almsetHour|Add0~27\ = CARRY((!\almsetHour|s_count\(13) & !\almsetHour|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(13),
	datad => VCC,
	cin => \almsetHour|Add0~25\,
	combout => \almsetHour|Add0~26_combout\,
	cout => \almsetHour|Add0~27\);

-- Location: LCCOMB_X95_Y20_N24
\almsetHour|s_count~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~58_combout\ = (\almsetHour|Add0~26_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|Add0~26_combout\,
	combout => \almsetHour|s_count~58_combout\);

-- Location: LCCOMB_X95_Y20_N22
\almsetHour|s_count[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[13]~18_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~58_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~29_combout\,
	datad => \almsetHour|s_count~58_combout\,
	combout => \almsetHour|s_count[13]~18_combout\);

-- Location: FF_X95_Y20_N23
\almsetHour|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[13]~18_combout\,
	asdata => \almsetHour|s_count\(13),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(13));

-- Location: LCCOMB_X96_Y23_N28
\almsetHour|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~28_combout\ = (\almsetHour|s_count\(14) & ((GND) # (!\almsetHour|Add0~27\))) # (!\almsetHour|s_count\(14) & (\almsetHour|Add0~27\ $ (GND)))
-- \almsetHour|Add0~29\ = CARRY((\almsetHour|s_count\(14)) # (!\almsetHour|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(14),
	datad => VCC,
	cin => \almsetHour|Add0~27\,
	combout => \almsetHour|Add0~28_combout\,
	cout => \almsetHour|Add0~29\);

-- Location: LCCOMB_X95_Y20_N26
\almsetHour|s_count~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~57_combout\ = (\almsetHour|Add0~28_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|Add0~28_combout\,
	combout => \almsetHour|s_count~57_combout\);

-- Location: LCCOMB_X94_Y23_N28
\almsetHour|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~31_combout\ = (\almsetHour|s_count\(14) & (\almsetHour|Add1~30\ $ (GND))) # (!\almsetHour|s_count\(14) & (!\almsetHour|Add1~30\ & VCC))
-- \almsetHour|Add1~32\ = CARRY((\almsetHour|s_count\(14) & !\almsetHour|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(14),
	datad => VCC,
	cin => \almsetHour|Add1~30\,
	combout => \almsetHour|Add1~31_combout\,
	cout => \almsetHour|Add1~32\);

-- Location: LCCOMB_X95_Y20_N16
\almsetHour|s_count[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[14]~17_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|s_count~57_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count~57_combout\,
	datab => \almsetHour|Add1~31_combout\,
	datad => \almsetHour|process_0~0_combout\,
	combout => \almsetHour|s_count[14]~17_combout\);

-- Location: FF_X95_Y20_N17
\almsetHour|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[14]~17_combout\,
	asdata => \almsetHour|s_count\(14),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(14));

-- Location: LCCOMB_X94_Y23_N30
\almsetHour|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~33_combout\ = (\almsetHour|s_count\(15) & (!\almsetHour|Add1~32\)) # (!\almsetHour|s_count\(15) & ((\almsetHour|Add1~32\) # (GND)))
-- \almsetHour|Add1~34\ = CARRY((!\almsetHour|Add1~32\) # (!\almsetHour|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(15),
	datad => VCC,
	cin => \almsetHour|Add1~32\,
	combout => \almsetHour|Add1~33_combout\,
	cout => \almsetHour|Add1~34\);

-- Location: LCCOMB_X96_Y23_N30
\almsetHour|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~30_combout\ = (\almsetHour|s_count\(15) & (\almsetHour|Add0~29\ & VCC)) # (!\almsetHour|s_count\(15) & (!\almsetHour|Add0~29\))
-- \almsetHour|Add0~31\ = CARRY((!\almsetHour|s_count\(15) & !\almsetHour|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(15),
	datad => VCC,
	cin => \almsetHour|Add0~29\,
	combout => \almsetHour|Add0~30_combout\,
	cout => \almsetHour|Add0~31\);

-- Location: LCCOMB_X95_Y20_N28
\almsetHour|s_count~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~56_combout\ = (\almsetHour|Add0~30_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|Add0~30_combout\,
	combout => \almsetHour|s_count~56_combout\);

-- Location: LCCOMB_X95_Y20_N14
\almsetHour|s_count[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[15]~16_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~56_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~33_combout\,
	datad => \almsetHour|s_count~56_combout\,
	combout => \almsetHour|s_count[15]~16_combout\);

-- Location: FF_X95_Y20_N15
\almsetHour|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[15]~16_combout\,
	asdata => \almsetHour|s_count\(15),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(15));

-- Location: LCCOMB_X95_Y20_N6
\almsetHour|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~7_combout\ = (!\almsetHour|s_count\(13) & (!\almsetHour|s_count\(12) & (!\almsetHour|s_count\(15) & !\almsetHour|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(13),
	datab => \almsetHour|s_count\(12),
	datac => \almsetHour|s_count\(15),
	datad => \almsetHour|s_count\(14),
	combout => \almsetHour|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y23_N26
\almsetHour|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~5_combout\ = (!\almsetHour|s_count\(8) & (!\almsetHour|s_count\(9) & (!\almsetHour|s_count\(10) & !\almsetHour|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(8),
	datab => \almsetHour|s_count\(9),
	datac => \almsetHour|s_count\(10),
	datad => \almsetHour|s_count\(11),
	combout => \almsetHour|Equal0~5_combout\);

-- Location: LCCOMB_X97_Y23_N28
\almsetHour|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~6_combout\ = (\almsetHour|Equal0~5_combout\ & (!\almsetHour|s_count\(5) & (!\almsetHour|s_count\(6) & !\almsetHour|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~5_combout\,
	datab => \almsetHour|s_count\(5),
	datac => \almsetHour|s_count\(6),
	datad => \almsetHour|s_count\(7),
	combout => \almsetHour|Equal0~6_combout\);

-- Location: LCCOMB_X96_Y20_N0
\almsetHour|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~8_combout\ = (\almsetHour|Equal0~7_combout\ & (\almsetHour|Equal0~6_combout\ & \almsetHour|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~7_combout\,
	datac => \almsetHour|Equal0~6_combout\,
	datad => \almsetHour|Equal0~4_combout\,
	combout => \almsetHour|Equal0~8_combout\);

-- Location: LCCOMB_X96_Y22_N0
\almsetHour|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~32_combout\ = (\almsetHour|s_count\(16) & ((GND) # (!\almsetHour|Add0~31\))) # (!\almsetHour|s_count\(16) & (\almsetHour|Add0~31\ $ (GND)))
-- \almsetHour|Add0~33\ = CARRY((\almsetHour|s_count\(16)) # (!\almsetHour|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(16),
	datad => VCC,
	cin => \almsetHour|Add0~31\,
	combout => \almsetHour|Add0~32_combout\,
	cout => \almsetHour|Add0~33\);

-- Location: LCCOMB_X97_Y22_N2
\almsetHour|s_count~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~48_combout\ = (\almsetHour|Add0~32_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Add0~32_combout\,
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~48_combout\);

-- Location: LCCOMB_X94_Y22_N0
\almsetHour|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~35_combout\ = (\almsetHour|s_count\(16) & (\almsetHour|Add1~34\ $ (GND))) # (!\almsetHour|s_count\(16) & (!\almsetHour|Add1~34\ & VCC))
-- \almsetHour|Add1~36\ = CARRY((\almsetHour|s_count\(16) & !\almsetHour|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(16),
	datad => VCC,
	cin => \almsetHour|Add1~34\,
	combout => \almsetHour|Add1~35_combout\,
	cout => \almsetHour|Add1~36\);

-- Location: LCCOMB_X97_Y22_N12
\almsetHour|s_count[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[16]~15_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|s_count~48_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|s_count~48_combout\,
	datad => \almsetHour|Add1~35_combout\,
	combout => \almsetHour|s_count[16]~15_combout\);

-- Location: FF_X97_Y22_N13
\almsetHour|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[16]~15_combout\,
	asdata => \almsetHour|s_count\(16),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(16));

-- Location: LCCOMB_X94_Y22_N2
\almsetHour|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~37_combout\ = (\almsetHour|s_count\(17) & (!\almsetHour|Add1~36\)) # (!\almsetHour|s_count\(17) & ((\almsetHour|Add1~36\) # (GND)))
-- \almsetHour|Add1~38\ = CARRY((!\almsetHour|Add1~36\) # (!\almsetHour|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(17),
	datad => VCC,
	cin => \almsetHour|Add1~36\,
	combout => \almsetHour|Add1~37_combout\,
	cout => \almsetHour|Add1~38\);

-- Location: LCCOMB_X96_Y22_N2
\almsetHour|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~34_combout\ = (\almsetHour|s_count\(17) & (\almsetHour|Add0~33\ & VCC)) # (!\almsetHour|s_count\(17) & (!\almsetHour|Add0~33\))
-- \almsetHour|Add0~35\ = CARRY((!\almsetHour|s_count\(17) & !\almsetHour|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(17),
	datad => VCC,
	cin => \almsetHour|Add0~33\,
	combout => \almsetHour|Add0~34_combout\,
	cout => \almsetHour|Add0~35\);

-- Location: LCCOMB_X97_Y22_N24
\almsetHour|s_count~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~47_combout\ = (\almsetHour|Add0~34_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~8_combout\)) # (!\almsetHour|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~34_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~47_combout\);

-- Location: LCCOMB_X97_Y22_N26
\almsetHour|s_count[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[17]~14_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~47_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~37_combout\,
	datad => \almsetHour|s_count~47_combout\,
	combout => \almsetHour|s_count[17]~14_combout\);

-- Location: FF_X97_Y22_N27
\almsetHour|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[17]~14_combout\,
	asdata => \almsetHour|s_count\(17),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(17));

-- Location: LCCOMB_X96_Y22_N4
\almsetHour|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~36_combout\ = (\almsetHour|s_count\(18) & ((GND) # (!\almsetHour|Add0~35\))) # (!\almsetHour|s_count\(18) & (\almsetHour|Add0~35\ $ (GND)))
-- \almsetHour|Add0~37\ = CARRY((\almsetHour|s_count\(18)) # (!\almsetHour|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(18),
	datad => VCC,
	cin => \almsetHour|Add0~35\,
	combout => \almsetHour|Add0~36_combout\,
	cout => \almsetHour|Add0~37\);

-- Location: LCCOMB_X97_Y22_N10
\almsetHour|s_count~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~46_combout\ = (\almsetHour|Add0~36_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Add0~36_combout\,
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~46_combout\);

-- Location: LCCOMB_X94_Y22_N4
\almsetHour|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~39_combout\ = (\almsetHour|s_count\(18) & (\almsetHour|Add1~38\ $ (GND))) # (!\almsetHour|s_count\(18) & (!\almsetHour|Add1~38\ & VCC))
-- \almsetHour|Add1~40\ = CARRY((\almsetHour|s_count\(18) & !\almsetHour|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(18),
	datad => VCC,
	cin => \almsetHour|Add1~38\,
	combout => \almsetHour|Add1~39_combout\,
	cout => \almsetHour|Add1~40\);

-- Location: LCCOMB_X97_Y22_N4
\almsetHour|s_count[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[18]~13_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|s_count~46_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count~46_combout\,
	datab => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|Add1~39_combout\,
	combout => \almsetHour|s_count[18]~13_combout\);

-- Location: FF_X97_Y22_N5
\almsetHour|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[18]~13_combout\,
	asdata => \almsetHour|s_count\(18),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(18));

-- Location: LCCOMB_X94_Y22_N6
\almsetHour|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~41_combout\ = (\almsetHour|s_count\(19) & (!\almsetHour|Add1~40\)) # (!\almsetHour|s_count\(19) & ((\almsetHour|Add1~40\) # (GND)))
-- \almsetHour|Add1~42\ = CARRY((!\almsetHour|Add1~40\) # (!\almsetHour|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(19),
	datad => VCC,
	cin => \almsetHour|Add1~40\,
	combout => \almsetHour|Add1~41_combout\,
	cout => \almsetHour|Add1~42\);

-- Location: LCCOMB_X96_Y22_N6
\almsetHour|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~38_combout\ = (\almsetHour|s_count\(19) & (\almsetHour|Add0~37\ & VCC)) # (!\almsetHour|s_count\(19) & (!\almsetHour|Add0~37\))
-- \almsetHour|Add0~39\ = CARRY((!\almsetHour|s_count\(19) & !\almsetHour|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(19),
	datad => VCC,
	cin => \almsetHour|Add0~37\,
	combout => \almsetHour|Add0~38_combout\,
	cout => \almsetHour|Add0~39\);

-- Location: LCCOMB_X97_Y22_N0
\almsetHour|s_count~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~45_combout\ = (\almsetHour|Add0~38_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Add0~38_combout\,
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~45_combout\);

-- Location: LCCOMB_X97_Y22_N22
\almsetHour|s_count[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[19]~12_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~45_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~41_combout\,
	datad => \almsetHour|s_count~45_combout\,
	combout => \almsetHour|s_count[19]~12_combout\);

-- Location: FF_X97_Y22_N23
\almsetHour|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[19]~12_combout\,
	asdata => \almsetHour|s_count\(19),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(19));

-- Location: LCCOMB_X94_Y22_N8
\almsetHour|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~43_combout\ = (\almsetHour|s_count\(20) & (\almsetHour|Add1~42\ $ (GND))) # (!\almsetHour|s_count\(20) & (!\almsetHour|Add1~42\ & VCC))
-- \almsetHour|Add1~44\ = CARRY((\almsetHour|s_count\(20) & !\almsetHour|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(20),
	datad => VCC,
	cin => \almsetHour|Add1~42\,
	combout => \almsetHour|Add1~43_combout\,
	cout => \almsetHour|Add1~44\);

-- Location: LCCOMB_X96_Y22_N8
\almsetHour|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~40_combout\ = (\almsetHour|s_count\(20) & ((GND) # (!\almsetHour|Add0~39\))) # (!\almsetHour|s_count\(20) & (\almsetHour|Add0~39\ $ (GND)))
-- \almsetHour|Add0~41\ = CARRY((\almsetHour|s_count\(20)) # (!\almsetHour|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(20),
	datad => VCC,
	cin => \almsetHour|Add0~39\,
	combout => \almsetHour|Add0~40_combout\,
	cout => \almsetHour|Add0~41\);

-- Location: LCCOMB_X97_Y22_N18
\almsetHour|s_count~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~44_combout\ = (\almsetHour|Add0~40_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~8_combout\)) # (!\almsetHour|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~40_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~44_combout\);

-- Location: LCCOMB_X97_Y22_N28
\almsetHour|s_count[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[20]~11_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~44_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add1~43_combout\,
	datab => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|s_count~44_combout\,
	combout => \almsetHour|s_count[20]~11_combout\);

-- Location: FF_X97_Y22_N29
\almsetHour|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[20]~11_combout\,
	asdata => \almsetHour|s_count\(20),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(20));

-- Location: LCCOMB_X94_Y22_N10
\almsetHour|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~45_combout\ = (\almsetHour|s_count\(21) & (!\almsetHour|Add1~44\)) # (!\almsetHour|s_count\(21) & ((\almsetHour|Add1~44\) # (GND)))
-- \almsetHour|Add1~46\ = CARRY((!\almsetHour|Add1~44\) # (!\almsetHour|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(21),
	datad => VCC,
	cin => \almsetHour|Add1~44\,
	combout => \almsetHour|Add1~45_combout\,
	cout => \almsetHour|Add1~46\);

-- Location: LCCOMB_X96_Y22_N10
\almsetHour|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~42_combout\ = (\almsetHour|s_count\(21) & (\almsetHour|Add0~41\ & VCC)) # (!\almsetHour|s_count\(21) & (!\almsetHour|Add0~41\))
-- \almsetHour|Add0~43\ = CARRY((!\almsetHour|s_count\(21) & !\almsetHour|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(21),
	datad => VCC,
	cin => \almsetHour|Add0~41\,
	combout => \almsetHour|Add0~42_combout\,
	cout => \almsetHour|Add0~43\);

-- Location: LCCOMB_X95_Y20_N10
\almsetHour|s_count~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~43_combout\ = (\almsetHour|Add0~42_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|Add0~42_combout\,
	combout => \almsetHour|s_count~43_combout\);

-- Location: LCCOMB_X95_Y20_N8
\almsetHour|s_count[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[21]~10_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~43_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~45_combout\,
	datad => \almsetHour|s_count~43_combout\,
	combout => \almsetHour|s_count[21]~10_combout\);

-- Location: FF_X95_Y20_N9
\almsetHour|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[21]~10_combout\,
	asdata => \almsetHour|s_count\(21),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(21));

-- Location: LCCOMB_X94_Y22_N12
\almsetHour|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~47_combout\ = (\almsetHour|s_count\(22) & (\almsetHour|Add1~46\ $ (GND))) # (!\almsetHour|s_count\(22) & (!\almsetHour|Add1~46\ & VCC))
-- \almsetHour|Add1~48\ = CARRY((\almsetHour|s_count\(22) & !\almsetHour|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(22),
	datad => VCC,
	cin => \almsetHour|Add1~46\,
	combout => \almsetHour|Add1~47_combout\,
	cout => \almsetHour|Add1~48\);

-- Location: LCCOMB_X96_Y22_N12
\almsetHour|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~44_combout\ = (\almsetHour|s_count\(22) & ((GND) # (!\almsetHour|Add0~43\))) # (!\almsetHour|s_count\(22) & (\almsetHour|Add0~43\ $ (GND)))
-- \almsetHour|Add0~45\ = CARRY((\almsetHour|s_count\(22)) # (!\almsetHour|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(22),
	datad => VCC,
	cin => \almsetHour|Add0~43\,
	combout => \almsetHour|Add0~44_combout\,
	cout => \almsetHour|Add0~45\);

-- Location: LCCOMB_X97_Y22_N20
\almsetHour|s_count~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~42_combout\ = (\almsetHour|Add0~44_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~8_combout\)) # (!\almsetHour|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~44_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~42_combout\);

-- Location: LCCOMB_X97_Y22_N14
\almsetHour|s_count[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[22]~9_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~42_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~47_combout\,
	datad => \almsetHour|s_count~42_combout\,
	combout => \almsetHour|s_count[22]~9_combout\);

-- Location: FF_X97_Y22_N15
\almsetHour|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[22]~9_combout\,
	asdata => \almsetHour|s_count\(22),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(22));

-- Location: LCCOMB_X96_Y22_N14
\almsetHour|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~46_combout\ = (\almsetHour|s_count\(23) & (\almsetHour|Add0~45\ & VCC)) # (!\almsetHour|s_count\(23) & (!\almsetHour|Add0~45\))
-- \almsetHour|Add0~47\ = CARRY((!\almsetHour|s_count\(23) & !\almsetHour|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(23),
	datad => VCC,
	cin => \almsetHour|Add0~45\,
	combout => \almsetHour|Add0~46_combout\,
	cout => \almsetHour|Add0~47\);

-- Location: LCCOMB_X97_Y22_N30
\almsetHour|s_count~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~41_combout\ = (\almsetHour|Add0~46_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~8_combout\)) # (!\almsetHour|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~46_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|s_count\(1),
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~41_combout\);

-- Location: LCCOMB_X94_Y22_N14
\almsetHour|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~49_combout\ = (\almsetHour|s_count\(23) & (!\almsetHour|Add1~48\)) # (!\almsetHour|s_count\(23) & ((\almsetHour|Add1~48\) # (GND)))
-- \almsetHour|Add1~50\ = CARRY((!\almsetHour|Add1~48\) # (!\almsetHour|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(23),
	datad => VCC,
	cin => \almsetHour|Add1~48\,
	combout => \almsetHour|Add1~49_combout\,
	cout => \almsetHour|Add1~50\);

-- Location: LCCOMB_X97_Y22_N8
\almsetHour|s_count[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[23]~8_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|s_count~41_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count~41_combout\,
	datab => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|Add1~49_combout\,
	combout => \almsetHour|s_count[23]~8_combout\);

-- Location: FF_X97_Y22_N9
\almsetHour|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[23]~8_combout\,
	asdata => \almsetHour|s_count\(23),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(23));

-- Location: LCCOMB_X94_Y22_N16
\almsetHour|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~51_combout\ = (\almsetHour|s_count\(24) & (\almsetHour|Add1~50\ $ (GND))) # (!\almsetHour|s_count\(24) & (!\almsetHour|Add1~50\ & VCC))
-- \almsetHour|Add1~52\ = CARRY((\almsetHour|s_count\(24) & !\almsetHour|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(24),
	datad => VCC,
	cin => \almsetHour|Add1~50\,
	combout => \almsetHour|Add1~51_combout\,
	cout => \almsetHour|Add1~52\);

-- Location: LCCOMB_X96_Y22_N16
\almsetHour|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~48_combout\ = (\almsetHour|s_count\(24) & ((GND) # (!\almsetHour|Add0~47\))) # (!\almsetHour|s_count\(24) & (\almsetHour|Add0~47\ $ (GND)))
-- \almsetHour|Add0~49\ = CARRY((\almsetHour|s_count\(24)) # (!\almsetHour|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(24),
	datad => VCC,
	cin => \almsetHour|Add0~47\,
	combout => \almsetHour|Add0~48_combout\,
	cout => \almsetHour|Add0~49\);

-- Location: LCCOMB_X97_Y22_N16
\almsetHour|s_count~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~40_combout\ = (\almsetHour|Add0~48_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Add0~48_combout\,
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|s_count~40_combout\);

-- Location: LCCOMB_X95_Y22_N30
\almsetHour|s_count[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[24]~7_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~40_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add1~51_combout\,
	datab => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|s_count~40_combout\,
	combout => \almsetHour|s_count[24]~7_combout\);

-- Location: FF_X95_Y22_N31
\almsetHour|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[24]~7_combout\,
	asdata => \almsetHour|s_count\(24),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(24));

-- Location: LCCOMB_X96_Y22_N18
\almsetHour|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~50_combout\ = (\almsetHour|s_count\(25) & (\almsetHour|Add0~49\ & VCC)) # (!\almsetHour|s_count\(25) & (!\almsetHour|Add0~49\))
-- \almsetHour|Add0~51\ = CARRY((!\almsetHour|s_count\(25) & !\almsetHour|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(25),
	datad => VCC,
	cin => \almsetHour|Add0~49\,
	combout => \almsetHour|Add0~50_combout\,
	cout => \almsetHour|Add0~51\);

-- Location: LCCOMB_X95_Y22_N26
\almsetHour|s_count~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~39_combout\ = (\almsetHour|Add0~50_combout\ & ((\almsetHour|s_count\(1)) # ((!\almsetHour|Equal0~8_combout\) # (!\almsetHour|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|Add0~50_combout\,
	combout => \almsetHour|s_count~39_combout\);

-- Location: LCCOMB_X94_Y22_N18
\almsetHour|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~53_combout\ = (\almsetHour|s_count\(25) & (!\almsetHour|Add1~52\)) # (!\almsetHour|s_count\(25) & ((\almsetHour|Add1~52\) # (GND)))
-- \almsetHour|Add1~54\ = CARRY((!\almsetHour|Add1~52\) # (!\almsetHour|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(25),
	datad => VCC,
	cin => \almsetHour|Add1~52\,
	combout => \almsetHour|Add1~53_combout\,
	cout => \almsetHour|Add1~54\);

-- Location: LCCOMB_X95_Y22_N8
\almsetHour|s_count[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[25]~6_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|s_count~39_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count~39_combout\,
	datab => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|Add1~53_combout\,
	combout => \almsetHour|s_count[25]~6_combout\);

-- Location: FF_X95_Y22_N9
\almsetHour|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[25]~6_combout\,
	asdata => \almsetHour|s_count\(25),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(25));

-- Location: LCCOMB_X94_Y22_N20
\almsetHour|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~55_combout\ = (\almsetHour|s_count\(26) & (\almsetHour|Add1~54\ $ (GND))) # (!\almsetHour|s_count\(26) & (!\almsetHour|Add1~54\ & VCC))
-- \almsetHour|Add1~56\ = CARRY((\almsetHour|s_count\(26) & !\almsetHour|Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(26),
	datad => VCC,
	cin => \almsetHour|Add1~54\,
	combout => \almsetHour|Add1~55_combout\,
	cout => \almsetHour|Add1~56\);

-- Location: LCCOMB_X96_Y22_N20
\almsetHour|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~52_combout\ = (\almsetHour|s_count\(26) & ((GND) # (!\almsetHour|Add0~51\))) # (!\almsetHour|s_count\(26) & (\almsetHour|Add0~51\ $ (GND)))
-- \almsetHour|Add0~53\ = CARRY((\almsetHour|s_count\(26)) # (!\almsetHour|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(26),
	datad => VCC,
	cin => \almsetHour|Add0~51\,
	combout => \almsetHour|Add0~52_combout\,
	cout => \almsetHour|Add0~53\);

-- Location: LCCOMB_X95_Y22_N20
\almsetHour|s_count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count~38_combout\ = (\almsetHour|Add0~52_combout\ & (((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~8_combout\)) # (!\almsetHour|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~52_combout\,
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|s_count\(1),
	combout => \almsetHour|s_count~38_combout\);

-- Location: LCCOMB_X95_Y22_N18
\almsetHour|s_count[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[26]~5_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|s_count~38_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add1~55_combout\,
	datad => \almsetHour|s_count~38_combout\,
	combout => \almsetHour|s_count[26]~5_combout\);

-- Location: FF_X95_Y22_N19
\almsetHour|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[26]~5_combout\,
	asdata => \almsetHour|s_count\(26),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(26));

-- Location: LCCOMB_X96_Y22_N22
\almsetHour|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~54_combout\ = (\almsetHour|s_count\(27) & (\almsetHour|Add0~53\ & VCC)) # (!\almsetHour|s_count\(27) & (!\almsetHour|Add0~53\))
-- \almsetHour|Add0~55\ = CARRY((!\almsetHour|s_count\(27) & !\almsetHour|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(27),
	datad => VCC,
	cin => \almsetHour|Add0~53\,
	combout => \almsetHour|Add0~54_combout\,
	cout => \almsetHour|Add0~55\);

-- Location: LCCOMB_X94_Y22_N22
\almsetHour|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~57_combout\ = (\almsetHour|s_count\(27) & (!\almsetHour|Add1~56\)) # (!\almsetHour|s_count\(27) & ((\almsetHour|Add1~56\) # (GND)))
-- \almsetHour|Add1~58\ = CARRY((!\almsetHour|Add1~56\) # (!\almsetHour|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(27),
	datad => VCC,
	cin => \almsetHour|Add1~56\,
	combout => \almsetHour|Add1~57_combout\,
	cout => \almsetHour|Add1~58\);

-- Location: LCCOMB_X95_Y22_N14
\almsetHour|s_count[29]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[29]~37_combout\ = ((\almsetHour|s_count\(1)) # (!\almsetHour|Equal0~8_combout\)) # (!\almsetHour|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|Equal0~9_combout\,
	datac => \almsetHour|Equal0~8_combout\,
	datad => \almsetHour|s_count\(1),
	combout => \almsetHour|s_count[29]~37_combout\);

-- Location: LCCOMB_X95_Y22_N24
\almsetHour|s_count[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[27]~4_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|Add0~54_combout\ & ((\almsetHour|s_count[29]~37_combout\)))) # (!\almsetHour|process_0~0_combout\ & (((\almsetHour|Add1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~54_combout\,
	datab => \almsetHour|Add1~57_combout\,
	datac => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|s_count[29]~37_combout\,
	combout => \almsetHour|s_count[27]~4_combout\);

-- Location: LCCOMB_X95_Y22_N16
\almsetHour|s_count[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[27]~feeder_combout\ = \almsetHour|s_count[27]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count[27]~4_combout\,
	combout => \almsetHour|s_count[27]~feeder_combout\);

-- Location: FF_X95_Y22_N17
\almsetHour|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[27]~feeder_combout\,
	asdata => \almsetHour|s_count\(27),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(27));

-- Location: LCCOMB_X96_Y22_N24
\almsetHour|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~56_combout\ = (\almsetHour|s_count\(28) & ((GND) # (!\almsetHour|Add0~55\))) # (!\almsetHour|s_count\(28) & (\almsetHour|Add0~55\ $ (GND)))
-- \almsetHour|Add0~57\ = CARRY((\almsetHour|s_count\(28)) # (!\almsetHour|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(28),
	datad => VCC,
	cin => \almsetHour|Add0~55\,
	combout => \almsetHour|Add0~56_combout\,
	cout => \almsetHour|Add0~57\);

-- Location: LCCOMB_X94_Y22_N24
\almsetHour|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~59_combout\ = (\almsetHour|s_count\(28) & (\almsetHour|Add1~58\ $ (GND))) # (!\almsetHour|s_count\(28) & (!\almsetHour|Add1~58\ & VCC))
-- \almsetHour|Add1~60\ = CARRY((\almsetHour|s_count\(28) & !\almsetHour|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(28),
	datad => VCC,
	cin => \almsetHour|Add1~58\,
	combout => \almsetHour|Add1~59_combout\,
	cout => \almsetHour|Add1~60\);

-- Location: LCCOMB_X95_Y22_N2
\almsetHour|s_count[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[28]~3_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|Add0~56_combout\ & ((\almsetHour|s_count[29]~37_combout\)))) # (!\almsetHour|process_0~0_combout\ & (((\almsetHour|Add1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~56_combout\,
	datab => \almsetHour|Add1~59_combout\,
	datac => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|s_count[29]~37_combout\,
	combout => \almsetHour|s_count[28]~3_combout\);

-- Location: LCCOMB_X95_Y22_N22
\almsetHour|s_count[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[28]~feeder_combout\ = \almsetHour|s_count[28]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count[28]~3_combout\,
	combout => \almsetHour|s_count[28]~feeder_combout\);

-- Location: FF_X95_Y22_N23
\almsetHour|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[28]~feeder_combout\,
	asdata => \almsetHour|s_count\(28),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(28));

-- Location: LCCOMB_X94_Y22_N26
\almsetHour|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~61_combout\ = (\almsetHour|s_count\(29) & (!\almsetHour|Add1~60\)) # (!\almsetHour|s_count\(29) & ((\almsetHour|Add1~60\) # (GND)))
-- \almsetHour|Add1~62\ = CARRY((!\almsetHour|Add1~60\) # (!\almsetHour|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(29),
	datad => VCC,
	cin => \almsetHour|Add1~60\,
	combout => \almsetHour|Add1~61_combout\,
	cout => \almsetHour|Add1~62\);

-- Location: LCCOMB_X96_Y22_N26
\almsetHour|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~58_combout\ = (\almsetHour|s_count\(29) & (\almsetHour|Add0~57\ & VCC)) # (!\almsetHour|s_count\(29) & (!\almsetHour|Add0~57\))
-- \almsetHour|Add0~59\ = CARRY((!\almsetHour|s_count\(29) & !\almsetHour|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(29),
	datad => VCC,
	cin => \almsetHour|Add0~57\,
	combout => \almsetHour|Add0~58_combout\,
	cout => \almsetHour|Add0~59\);

-- Location: LCCOMB_X95_Y22_N28
\almsetHour|s_count[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[29]~2_combout\ = (\almsetHour|process_0~0_combout\ & (((\almsetHour|Add0~58_combout\ & \almsetHour|s_count[29]~37_combout\)))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add1~61_combout\,
	datab => \almsetHour|Add0~58_combout\,
	datac => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|s_count[29]~37_combout\,
	combout => \almsetHour|s_count[29]~2_combout\);

-- Location: LCCOMB_X95_Y22_N4
\almsetHour|s_count[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[29]~feeder_combout\ = \almsetHour|s_count[29]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count[29]~2_combout\,
	combout => \almsetHour|s_count[29]~feeder_combout\);

-- Location: FF_X95_Y22_N5
\almsetHour|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[29]~feeder_combout\,
	asdata => \almsetHour|s_count\(29),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(29));

-- Location: LCCOMB_X96_Y22_N28
\almsetHour|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~60_combout\ = (\almsetHour|s_count\(30) & ((GND) # (!\almsetHour|Add0~59\))) # (!\almsetHour|s_count\(30) & (\almsetHour|Add0~59\ $ (GND)))
-- \almsetHour|Add0~61\ = CARRY((\almsetHour|s_count\(30)) # (!\almsetHour|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(30),
	datad => VCC,
	cin => \almsetHour|Add0~59\,
	combout => \almsetHour|Add0~60_combout\,
	cout => \almsetHour|Add0~61\);

-- Location: LCCOMB_X94_Y22_N28
\almsetHour|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~63_combout\ = (\almsetHour|s_count\(30) & (\almsetHour|Add1~62\ $ (GND))) # (!\almsetHour|s_count\(30) & (!\almsetHour|Add1~62\ & VCC))
-- \almsetHour|Add1~64\ = CARRY((\almsetHour|s_count\(30) & !\almsetHour|Add1~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(30),
	datad => VCC,
	cin => \almsetHour|Add1~62\,
	combout => \almsetHour|Add1~63_combout\,
	cout => \almsetHour|Add1~64\);

-- Location: LCCOMB_X95_Y23_N18
\almsetHour|s_count[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[30]~1_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|Add0~60_combout\ & ((!\almsetHour|Equal0~10_combout\)))) # (!\almsetHour|process_0~0_combout\ & (((\almsetHour|Add1~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Add0~60_combout\,
	datac => \almsetHour|Add1~63_combout\,
	datad => \almsetHour|Equal0~10_combout\,
	combout => \almsetHour|s_count[30]~1_combout\);

-- Location: LCCOMB_X95_Y23_N30
\almsetHour|s_count[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[30]~feeder_combout\ = \almsetHour|s_count[30]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count[30]~1_combout\,
	combout => \almsetHour|s_count[30]~feeder_combout\);

-- Location: FF_X95_Y23_N31
\almsetHour|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[30]~feeder_combout\,
	asdata => \almsetHour|s_count\(30),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(30));

-- Location: LCCOMB_X95_Y22_N10
\almsetHour|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~0_combout\ = (!\almsetHour|s_count\(28) & (!\almsetHour|s_count\(29) & (!\almsetHour|s_count\(30) & !\almsetHour|s_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(28),
	datab => \almsetHour|s_count\(29),
	datac => \almsetHour|s_count\(30),
	datad => \almsetHour|s_count\(31),
	combout => \almsetHour|Equal0~0_combout\);

-- Location: LCCOMB_X95_Y22_N0
\almsetHour|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~1_combout\ = (!\almsetHour|s_count\(24) & (!\almsetHour|s_count\(27) & (!\almsetHour|s_count\(25) & !\almsetHour|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(24),
	datab => \almsetHour|s_count\(27),
	datac => \almsetHour|s_count\(25),
	datad => \almsetHour|s_count\(26),
	combout => \almsetHour|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y22_N6
\almsetHour|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~3_combout\ = (!\almsetHour|s_count\(17) & (!\almsetHour|s_count\(18) & (!\almsetHour|s_count\(19) & !\almsetHour|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(17),
	datab => \almsetHour|s_count\(18),
	datac => \almsetHour|s_count\(19),
	datad => \almsetHour|s_count\(16),
	combout => \almsetHour|Equal0~3_combout\);

-- Location: LCCOMB_X95_Y22_N6
\almsetHour|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~2_combout\ = (!\almsetHour|s_count\(21) & (!\almsetHour|s_count\(23) & (!\almsetHour|s_count\(20) & !\almsetHour|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(21),
	datab => \almsetHour|s_count\(23),
	datac => \almsetHour|s_count\(20),
	datad => \almsetHour|s_count\(22),
	combout => \almsetHour|Equal0~2_combout\);

-- Location: LCCOMB_X95_Y22_N12
\almsetHour|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~4_combout\ = (\almsetHour|Equal0~0_combout\ & (\almsetHour|Equal0~1_combout\ & (\almsetHour|Equal0~3_combout\ & \almsetHour|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~0_combout\,
	datab => \almsetHour|Equal0~1_combout\,
	datac => \almsetHour|Equal0~3_combout\,
	datad => \almsetHour|Equal0~2_combout\,
	combout => \almsetHour|Equal0~4_combout\);

-- Location: LCCOMB_X95_Y20_N4
\almsetHour|s_count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[4]~28_combout\ = ((\almsetHour|s_count\(3) & \almsetHour|s_count\(4))) # (!\almsetHour|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(3),
	datac => \almsetHour|s_count\(4),
	datad => \almsetHour|Equal0~7_combout\,
	combout => \almsetHour|s_count[4]~28_combout\);

-- Location: LCCOMB_X96_Y19_N24
\almsetHour|s_count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[4]~27_combout\ = ((!\db0|level~q\ & ((\almsetHour|s_count\(31)) # (!\db1|level~q\)))) # (!\setHour~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \db0|level~q\,
	datab => \db1|level~q\,
	datac => \almsetHour|s_count\(31),
	datad => \setHour~q\,
	combout => \almsetHour|s_count[4]~27_combout\);

-- Location: LCCOMB_X96_Y19_N6
\almsetHour|s_count[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[4]~29_combout\ = (((\almsetHour|s_count[4]~28_combout\) # (\almsetHour|s_count[4]~27_combout\)) # (!\almsetHour|Equal0~6_combout\)) # (!\almsetHour|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~4_combout\,
	datab => \almsetHour|Equal0~6_combout\,
	datac => \almsetHour|s_count[4]~28_combout\,
	datad => \almsetHour|s_count[4]~27_combout\,
	combout => \almsetHour|s_count[4]~29_combout\);

-- Location: LCCOMB_X96_Y19_N28
\almsetHour|s_count[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[11]~31_combout\ = (\almsetHour|s_count\(0) & ((\almsetHour|s_count\(31)) # ((!\setHour~q\) # (!\db1|level~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(31),
	datab => \almsetHour|s_count\(0),
	datac => \db1|level~q\,
	datad => \setHour~q\,
	combout => \almsetHour|s_count[11]~31_combout\);

-- Location: LCCOMB_X95_Y23_N28
\almsetHour|s_count[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[3]~32_combout\ = (\almsetHour|s_count\(3)) # ((\almsetHour|s_count\(1) & (\almsetHour|s_count\(2) & \almsetHour|s_count[11]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|s_count\(2),
	datac => \almsetHour|s_count\(3),
	datad => \almsetHour|s_count[11]~31_combout\,
	combout => \almsetHour|s_count[3]~32_combout\);

-- Location: LCCOMB_X95_Y23_N10
\almsetHour|s_count[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[3]~33_combout\ = (\almsetHour|Equal0~8_combout\ & (!\almsetHour|s_count[4]~27_combout\ & ((!\almsetHour|s_count[3]~32_combout\) # (!\almsetHour|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Equal0~8_combout\,
	datab => \almsetHour|s_count\(4),
	datac => \almsetHour|s_count[4]~27_combout\,
	datad => \almsetHour|s_count[3]~32_combout\,
	combout => \almsetHour|s_count[3]~33_combout\);

-- Location: LCCOMB_X95_Y23_N2
\almsetHour|s_count[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[3]~34_combout\ = (\almsetHour|s_count[3]~30_combout\ & ((\almsetHour|s_count[3]~33_combout\) # ((\almsetHour|s_count[4]~29_combout\ & \almsetHour|s_count\(3))))) # (!\almsetHour|s_count[3]~30_combout\ & 
-- (\almsetHour|s_count[4]~29_combout\ & (\almsetHour|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count[3]~30_combout\,
	datab => \almsetHour|s_count[4]~29_combout\,
	datac => \almsetHour|s_count\(3),
	datad => \almsetHour|s_count[3]~33_combout\,
	combout => \almsetHour|s_count[3]~34_combout\);

-- Location: FF_X95_Y23_N3
\almsetHour|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(3));

-- Location: LCCOMB_X95_Y23_N12
\almsetHour|s_count[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[4]~35_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|Add0~8_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add1~11_combout\,
	datac => \almsetHour|process_0~0_combout\,
	datad => \almsetHour|Add0~8_combout\,
	combout => \almsetHour|s_count[4]~35_combout\);

-- Location: LCCOMB_X95_Y23_N4
\almsetHour|s_count[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[4]~36_combout\ = (\almsetHour|s_count[4]~35_combout\ & ((\almsetHour|s_count[3]~33_combout\) # ((\almsetHour|s_count[4]~29_combout\ & \almsetHour|s_count\(4))))) # (!\almsetHour|s_count[4]~35_combout\ & 
-- (\almsetHour|s_count[4]~29_combout\ & (\almsetHour|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count[4]~35_combout\,
	datab => \almsetHour|s_count[4]~29_combout\,
	datac => \almsetHour|s_count\(4),
	datad => \almsetHour|s_count[3]~33_combout\,
	combout => \almsetHour|s_count[4]~36_combout\);

-- Location: FF_X95_Y23_N5
\almsetHour|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(4));

-- Location: LCCOMB_X95_Y23_N26
\almsetHour|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~9_combout\ = (!\almsetHour|s_count\(0) & (!\almsetHour|s_count\(4) & (!\almsetHour|s_count\(3) & !\almsetHour|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(0),
	datab => \almsetHour|s_count\(4),
	datac => \almsetHour|s_count\(3),
	datad => \almsetHour|s_count\(2),
	combout => \almsetHour|Equal0~9_combout\);

-- Location: LCCOMB_X95_Y23_N24
\almsetHour|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Equal0~10_combout\ = (!\almsetHour|s_count\(1) & (\almsetHour|Equal0~9_combout\ & \almsetHour|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datac => \almsetHour|Equal0~9_combout\,
	datad => \almsetHour|Equal0~8_combout\,
	combout => \almsetHour|Equal0~10_combout\);

-- Location: LCCOMB_X96_Y22_N30
\almsetHour|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~62_combout\ = \almsetHour|Add0~61\ $ (!\almsetHour|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count\(31),
	cin => \almsetHour|Add0~61\,
	combout => \almsetHour|Add0~62_combout\);

-- Location: LCCOMB_X94_Y22_N30
\almsetHour|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~65_combout\ = \almsetHour|Add1~64\ $ (\almsetHour|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count\(31),
	cin => \almsetHour|Add1~64\,
	combout => \almsetHour|Add1~65_combout\);

-- Location: LCCOMB_X95_Y23_N20
\almsetHour|s_count[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[31]~0_combout\ = (\almsetHour|process_0~0_combout\ & (!\almsetHour|Equal0~10_combout\ & (\almsetHour|Add0~62_combout\))) # (!\almsetHour|process_0~0_combout\ & (((\almsetHour|Add1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|process_0~0_combout\,
	datab => \almsetHour|Equal0~10_combout\,
	datac => \almsetHour|Add0~62_combout\,
	datad => \almsetHour|Add1~65_combout\,
	combout => \almsetHour|s_count[31]~0_combout\);

-- Location: LCCOMB_X95_Y23_N8
\almsetHour|s_count[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|s_count[31]~feeder_combout\ = \almsetHour|s_count[31]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \almsetHour|s_count[31]~0_combout\,
	combout => \almsetHour|s_count[31]~feeder_combout\);

-- Location: FF_X95_Y23_N9
\almsetHour|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|s_count[31]~feeder_combout\,
	asdata => \almsetHour|s_count\(31),
	sload => \almsetHour|s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(31));

-- Location: LCCOMB_X96_Y19_N12
\almsetHour|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|process_0~0_combout\ = (!\almsetHour|s_count\(31) & (\db1|level~q\ & \setHour~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(31),
	datab => \db1|level~q\,
	datad => \setHour~q\,
	combout => \almsetHour|process_0~0_combout\);

-- Location: LCCOMB_X95_Y23_N16
\almsetHour|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~2_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|Add0~0_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add1~0_combout\,
	datab => \almsetHour|Add0~0_combout\,
	datac => \almsetHour|process_0~0_combout\,
	combout => \almsetHour|Add1~2_combout\);

-- Location: FF_X95_Y23_N17
\almsetHour|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|Add1~2_combout\,
	ena => \almsetHour|ALT_INV_s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(0));

-- Location: LCCOMB_X96_Y23_N2
\almsetHour|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add0~2_combout\ = (\almsetHour|s_count\(1) & (\almsetHour|Add0~1\ & VCC)) # (!\almsetHour|s_count\(1) & (!\almsetHour|Add0~1\))
-- \almsetHour|Add0~3\ = CARRY((!\almsetHour|s_count\(1) & !\almsetHour|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \almsetHour|s_count\(1),
	datad => VCC,
	cin => \almsetHour|Add0~1\,
	combout => \almsetHour|Add0~2_combout\,
	cout => \almsetHour|Add0~3\);

-- Location: LCCOMB_X95_Y23_N6
\almsetHour|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~5_combout\ = (\almsetHour|process_0~0_combout\ & ((\almsetHour|Add0~2_combout\))) # (!\almsetHour|process_0~0_combout\ & (\almsetHour|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add1~3_combout\,
	datab => \almsetHour|Add0~2_combout\,
	datac => \almsetHour|process_0~0_combout\,
	combout => \almsetHour|Add1~5_combout\);

-- Location: FF_X95_Y23_N7
\almsetHour|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|Add1~5_combout\,
	ena => \almsetHour|ALT_INV_s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(1));

-- Location: LCCOMB_X95_Y23_N0
\almsetHour|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \almsetHour|Add1~8_combout\ = (\almsetHour|process_0~0_combout\ & (\almsetHour|Add0~4_combout\)) # (!\almsetHour|process_0~0_combout\ & ((\almsetHour|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|Add0~4_combout\,
	datab => \almsetHour|Add1~6_combout\,
	datac => \almsetHour|process_0~0_combout\,
	combout => \almsetHour|Add1~8_combout\);

-- Location: FF_X95_Y23_N1
\almsetHour|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv3|clkOut~clkctrl_outclk\,
	d => \almsetHour|Add1~8_combout\,
	ena => \almsetHour|ALT_INV_s_count[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \almsetHour|s_count\(2));

-- Location: FF_X110_Y38_N31
\clkIn|freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|Equal0~9_combout\,
	ena => \freqDiv|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|freqDiv|clkOut~q\);

-- Location: CLKCTRL_G5
\clkIn|freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkIn|freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkIn|freqDiv|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X102_Y27_N12
\clkIn|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Add5~0_combout\ = \clkIn|hour\(0) $ (VCC)
-- \clkIn|Add5~1\ = CARRY(\clkIn|hour\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(0),
	datad => VCC,
	combout => \clkIn|Add5~0_combout\,
	cout => \clkIn|Add5~1\);

-- Location: LCCOMB_X102_Y24_N4
\clkIn|min[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|min[0]~6_combout\ = \clkIn|min\(0) $ (VCC)
-- \clkIn|min[0]~7\ = CARRY(\clkIn|min\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|min\(0),
	datad => VCC,
	combout => \clkIn|min[0]~6_combout\,
	cout => \clkIn|min[0]~7\);

-- Location: LCCOMB_X103_Y27_N10
\clkIn|sec[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|sec[0]~6_combout\ = \clkIn|sec\(0) $ (VCC)
-- \clkIn|sec[0]~7\ = CARRY(\clkIn|sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|sec\(0),
	datad => VCC,
	combout => \clkIn|sec[0]~6_combout\,
	cout => \clkIn|sec[0]~7\);

-- Location: FF_X103_Y27_N11
\clkIn|sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|sec[0]~6_combout\,
	sclr => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|sec\(0));

-- Location: LCCOMB_X103_Y27_N12
\clkIn|sec[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|sec[1]~8_combout\ = (\clkIn|sec\(1) & (!\clkIn|sec[0]~7\)) # (!\clkIn|sec\(1) & ((\clkIn|sec[0]~7\) # (GND)))
-- \clkIn|sec[1]~9\ = CARRY((!\clkIn|sec[0]~7\) # (!\clkIn|sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|sec\(1),
	datad => VCC,
	cin => \clkIn|sec[0]~7\,
	combout => \clkIn|sec[1]~8_combout\,
	cout => \clkIn|sec[1]~9\);

-- Location: FF_X103_Y27_N13
\clkIn|sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|sec[1]~8_combout\,
	sclr => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|sec\(1));

-- Location: LCCOMB_X103_Y27_N14
\clkIn|sec[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|sec[2]~10_combout\ = (\clkIn|sec\(2) & (\clkIn|sec[1]~9\ $ (GND))) # (!\clkIn|sec\(2) & (!\clkIn|sec[1]~9\ & VCC))
-- \clkIn|sec[2]~11\ = CARRY((\clkIn|sec\(2) & !\clkIn|sec[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|sec\(2),
	datad => VCC,
	cin => \clkIn|sec[1]~9\,
	combout => \clkIn|sec[2]~10_combout\,
	cout => \clkIn|sec[2]~11\);

-- Location: FF_X103_Y27_N15
\clkIn|sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|sec[2]~10_combout\,
	sclr => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|sec\(2));

-- Location: LCCOMB_X103_Y27_N16
\clkIn|sec[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|sec[3]~12_combout\ = (\clkIn|sec\(3) & (!\clkIn|sec[2]~11\)) # (!\clkIn|sec\(3) & ((\clkIn|sec[2]~11\) # (GND)))
-- \clkIn|sec[3]~13\ = CARRY((!\clkIn|sec[2]~11\) # (!\clkIn|sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|sec\(3),
	datad => VCC,
	cin => \clkIn|sec[2]~11\,
	combout => \clkIn|sec[3]~12_combout\,
	cout => \clkIn|sec[3]~13\);

-- Location: FF_X103_Y27_N17
\clkIn|sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|sec[3]~12_combout\,
	sclr => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|sec\(3));

-- Location: LCCOMB_X103_Y27_N18
\clkIn|sec[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|sec[4]~14_combout\ = (\clkIn|sec\(4) & (\clkIn|sec[3]~13\ $ (GND))) # (!\clkIn|sec\(4) & (!\clkIn|sec[3]~13\ & VCC))
-- \clkIn|sec[4]~15\ = CARRY((\clkIn|sec\(4) & !\clkIn|sec[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|sec\(4),
	datad => VCC,
	cin => \clkIn|sec[3]~13\,
	combout => \clkIn|sec[4]~14_combout\,
	cout => \clkIn|sec[4]~15\);

-- Location: FF_X103_Y27_N19
\clkIn|sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|sec[4]~14_combout\,
	sclr => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|sec\(4));

-- Location: LCCOMB_X103_Y27_N20
\clkIn|sec[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|sec[5]~16_combout\ = \clkIn|sec[4]~15\ $ (\clkIn|sec\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkIn|sec\(5),
	cin => \clkIn|sec[4]~15\,
	combout => \clkIn|sec[5]~16_combout\);

-- Location: FF_X103_Y27_N21
\clkIn|sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|sec[5]~16_combout\,
	sclr => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|sec\(5));

-- Location: LCCOMB_X103_Y27_N8
\clkIn|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|LessThan3~0_combout\ = ((!\clkIn|sec\(2) & ((!\clkIn|sec\(1)) # (!\clkIn|sec\(0))))) # (!\clkIn|sec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|sec\(0),
	datab => \clkIn|sec\(3),
	datac => \clkIn|sec\(2),
	datad => \clkIn|sec\(1),
	combout => \clkIn|LessThan3~0_combout\);

-- Location: LCCOMB_X103_Y27_N26
\clkIn|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|LessThan3~1_combout\ = (\clkIn|sec\(5) & (!\clkIn|LessThan3~0_combout\ & \clkIn|sec\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|sec\(5),
	datac => \clkIn|LessThan3~0_combout\,
	datad => \clkIn|sec\(4),
	combout => \clkIn|LessThan3~1_combout\);

-- Location: FF_X102_Y24_N5
\clkIn|min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|min[0]~6_combout\,
	sclr => \clkIn|LessThan4~1_combout\,
	ena => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|min\(0));

-- Location: LCCOMB_X102_Y24_N6
\clkIn|min[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|min[1]~8_combout\ = (\clkIn|min\(1) & (!\clkIn|min[0]~7\)) # (!\clkIn|min\(1) & ((\clkIn|min[0]~7\) # (GND)))
-- \clkIn|min[1]~9\ = CARRY((!\clkIn|min[0]~7\) # (!\clkIn|min\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(1),
	datad => VCC,
	cin => \clkIn|min[0]~7\,
	combout => \clkIn|min[1]~8_combout\,
	cout => \clkIn|min[1]~9\);

-- Location: FF_X102_Y24_N7
\clkIn|min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|min[1]~8_combout\,
	sclr => \clkIn|LessThan4~1_combout\,
	ena => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|min\(1));

-- Location: LCCOMB_X102_Y24_N8
\clkIn|min[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|min[2]~10_combout\ = (\clkIn|min\(2) & (\clkIn|min[1]~9\ $ (GND))) # (!\clkIn|min\(2) & (!\clkIn|min[1]~9\ & VCC))
-- \clkIn|min[2]~11\ = CARRY((\clkIn|min\(2) & !\clkIn|min[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|min\(2),
	datad => VCC,
	cin => \clkIn|min[1]~9\,
	combout => \clkIn|min[2]~10_combout\,
	cout => \clkIn|min[2]~11\);

-- Location: FF_X102_Y24_N9
\clkIn|min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|min[2]~10_combout\,
	sclr => \clkIn|LessThan4~1_combout\,
	ena => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|min\(2));

-- Location: LCCOMB_X102_Y24_N10
\clkIn|min[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|min[3]~12_combout\ = (\clkIn|min\(3) & (!\clkIn|min[2]~11\)) # (!\clkIn|min\(3) & ((\clkIn|min[2]~11\) # (GND)))
-- \clkIn|min[3]~13\ = CARRY((!\clkIn|min[2]~11\) # (!\clkIn|min\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(3),
	datad => VCC,
	cin => \clkIn|min[2]~11\,
	combout => \clkIn|min[3]~12_combout\,
	cout => \clkIn|min[3]~13\);

-- Location: FF_X102_Y24_N11
\clkIn|min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|min[3]~12_combout\,
	sclr => \clkIn|LessThan4~1_combout\,
	ena => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|min\(3));

-- Location: LCCOMB_X102_Y24_N12
\clkIn|min[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|min[4]~14_combout\ = (\clkIn|min\(4) & (\clkIn|min[3]~13\ $ (GND))) # (!\clkIn|min\(4) & (!\clkIn|min[3]~13\ & VCC))
-- \clkIn|min[4]~15\ = CARRY((\clkIn|min\(4) & !\clkIn|min[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(4),
	datad => VCC,
	cin => \clkIn|min[3]~13\,
	combout => \clkIn|min[4]~14_combout\,
	cout => \clkIn|min[4]~15\);

-- Location: FF_X102_Y24_N13
\clkIn|min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|min[4]~14_combout\,
	sclr => \clkIn|LessThan4~1_combout\,
	ena => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|min\(4));

-- Location: LCCOMB_X102_Y24_N14
\clkIn|min[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|min[5]~16_combout\ = \clkIn|min\(5) $ (\clkIn|min[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|min\(5),
	cin => \clkIn|min[4]~15\,
	combout => \clkIn|min[5]~16_combout\);

-- Location: FF_X102_Y24_N15
\clkIn|min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|min[5]~16_combout\,
	sclr => \clkIn|LessThan4~1_combout\,
	ena => \clkIn|LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|min\(5));

-- Location: LCCOMB_X102_Y24_N2
\clkIn|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|LessThan4~0_combout\ = ((!\clkIn|min\(2) & ((!\clkIn|min\(0)) # (!\clkIn|min\(1))))) # (!\clkIn|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(1),
	datab => \clkIn|min\(0),
	datac => \clkIn|min\(2),
	datad => \clkIn|min\(3),
	combout => \clkIn|LessThan4~0_combout\);

-- Location: LCCOMB_X102_Y24_N16
\clkIn|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|LessThan4~1_combout\ = (\clkIn|min\(4) & (\clkIn|min\(5) & !\clkIn|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(4),
	datac => \clkIn|min\(5),
	datad => \clkIn|LessThan4~0_combout\,
	combout => \clkIn|LessThan4~1_combout\);

-- Location: LCCOMB_X101_Y27_N14
\clkIn|hour[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[3]~13_combout\ = (\clkIn|hour[3]~11_combout\ & ((!\clkIn|LessThan3~1_combout\) # (!\clkIn|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|LessThan4~1_combout\,
	datac => \clkIn|LessThan3~1_combout\,
	datad => \clkIn|hour[3]~11_combout\,
	combout => \clkIn|hour[3]~13_combout\);

-- Location: LCCOMB_X101_Y27_N30
\clkIn|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|LessThan5~1_combout\ = (\clkIn|LessThan5~0_combout\) # (!\clkIn|hour\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkIn|hour\(4),
	datad => \clkIn|LessThan5~0_combout\,
	combout => \clkIn|LessThan5~1_combout\);

-- Location: LCCOMB_X102_Y24_N26
\clkIn|am~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|am~0_combout\ = (\clkIn|am~q\) # ((\clkIn|LessThan4~1_combout\ & (\clkIn|LessThan3~1_combout\ & !\clkIn|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|LessThan4~1_combout\,
	datab => \clkIn|LessThan3~1_combout\,
	datac => \clkIn|am~q\,
	datad => \clkIn|LessThan5~1_combout\,
	combout => \clkIn|am~0_combout\);

-- Location: FF_X102_Y24_N27
\clkIn|am\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|am~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|am~q\);

-- Location: LCCOMB_X102_Y27_N14
\clkIn|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Add5~2_combout\ = (\clkIn|hour\(1) & (!\clkIn|Add5~1\)) # (!\clkIn|hour\(1) & ((\clkIn|Add5~1\) # (GND)))
-- \clkIn|Add5~3\ = CARRY((!\clkIn|Add5~1\) # (!\clkIn|hour\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|hour\(1),
	datad => VCC,
	cin => \clkIn|Add5~1\,
	combout => \clkIn|Add5~2_combout\,
	cout => \clkIn|Add5~3\);

-- Location: LCCOMB_X101_Y27_N20
\clkIn|hour[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[0]~8_combout\ = (\clkIn|Equal2~1_combout\ & ((\clkIn|hour[0]~7_combout\) # ((!\clkIn|LessThan4~1_combout\) # (!\clkIn|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour[0]~7_combout\,
	datab => \clkIn|Equal2~1_combout\,
	datac => \clkIn|LessThan3~1_combout\,
	datad => \clkIn|LessThan4~1_combout\,
	combout => \clkIn|hour[0]~8_combout\);

-- Location: LCCOMB_X102_Y27_N8
\clkIn|hour[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[1]~9_combout\ = (\clkIn|hour[0]~8_combout\ & (((\clkIn|hour\(1))))) # (!\clkIn|hour[0]~8_combout\ & (\clkIn|Add5~2_combout\ & (\clkIn|hour[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|Add5~2_combout\,
	datab => \clkIn|hour[1]~6_combout\,
	datac => \clkIn|hour\(1),
	datad => \clkIn|hour[0]~8_combout\,
	combout => \clkIn|hour[1]~9_combout\);

-- Location: FF_X102_Y27_N9
\clkIn|hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|hour[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|hour\(1));

-- Location: LCCOMB_X101_Y27_N12
\clkIn|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Equal2~0_combout\ = (\clkIn|hour\(1)) # ((\clkIn|hour\(0)) # ((!\clkIn|hour\(3)) # (!\clkIn|hour\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(1),
	datab => \clkIn|hour\(0),
	datac => \clkIn|hour\(2),
	datad => \clkIn|hour\(3),
	combout => \clkIn|Equal2~0_combout\);

-- Location: LCCOMB_X101_Y27_N8
\clkIn|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Equal2~1_combout\ = (\clkIn|hour\(4)) # (\clkIn|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkIn|hour\(4),
	datad => \clkIn|Equal2~0_combout\,
	combout => \clkIn|Equal2~1_combout\);

-- Location: LCCOMB_X101_Y27_N16
\clkIn|hour[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[2]~16_combout\ = (\clkIn|am~q\ & (((\clkIn|hour[0]~7_combout\ & !\clkIn|hour\(2))) # (!\clkIn|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour[0]~7_combout\,
	datab => \clkIn|am~q\,
	datac => \clkIn|Equal2~1_combout\,
	datad => \clkIn|hour\(2),
	combout => \clkIn|hour[2]~16_combout\);

-- Location: LCCOMB_X102_Y27_N16
\clkIn|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Add5~4_combout\ = (\clkIn|hour\(2) & (\clkIn|Add5~3\ $ (GND))) # (!\clkIn|hour\(2) & (!\clkIn|Add5~3\ & VCC))
-- \clkIn|Add5~5\ = CARRY((\clkIn|hour\(2) & !\clkIn|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(2),
	datad => VCC,
	cin => \clkIn|Add5~3\,
	combout => \clkIn|Add5~4_combout\,
	cout => \clkIn|Add5~5\);

-- Location: LCCOMB_X102_Y27_N2
\clkIn|hour[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[2]~15_combout\ = (\clkIn|hour[3]~11_combout\ & (\clkIn|Add5~4_combout\ & ((\clkIn|LessThan5~0_combout\) # (!\clkIn|hour\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|LessThan5~0_combout\,
	datab => \clkIn|hour[3]~11_combout\,
	datac => \clkIn|hour\(4),
	datad => \clkIn|Add5~4_combout\,
	combout => \clkIn|hour[2]~15_combout\);

-- Location: LCCOMB_X102_Y27_N30
\clkIn|hour[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[2]~17_combout\ = (\clkIn|hour[3]~13_combout\ & (((\clkIn|hour\(2))))) # (!\clkIn|hour[3]~13_combout\ & ((\clkIn|hour[2]~16_combout\) # ((\clkIn|hour[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour[3]~13_combout\,
	datab => \clkIn|hour[2]~16_combout\,
	datac => \clkIn|hour\(2),
	datad => \clkIn|hour[2]~15_combout\,
	combout => \clkIn|hour[2]~17_combout\);

-- Location: FF_X102_Y27_N31
\clkIn|hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|hour[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|hour\(2));

-- Location: LCCOMB_X101_Y27_N26
\clkIn|hour[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[0]~7_combout\ = (!\clkIn|hour\(4) & (\clkIn|am~q\ & ((!\clkIn|hour\(3)) # (!\clkIn|hour\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(2),
	datab => \clkIn|hour\(3),
	datac => \clkIn|hour\(4),
	datad => \clkIn|am~q\,
	combout => \clkIn|hour[0]~7_combout\);

-- Location: LCCOMB_X101_Y27_N28
\clkIn|hour[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[3]~11_combout\ = (!\clkIn|hour[0]~7_combout\ & ((\clkIn|hour\(4)) # (\clkIn|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(4),
	datac => \clkIn|hour[0]~7_combout\,
	datad => \clkIn|Equal2~0_combout\,
	combout => \clkIn|hour[3]~11_combout\);

-- Location: LCCOMB_X103_Y27_N24
\clkIn|hour[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[0]~18_combout\ = (\clkIn|sec\(5) & (\clkIn|sec\(4) & (!\clkIn|LessThan3~0_combout\ & \clkIn|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|sec\(5),
	datab => \clkIn|sec\(4),
	datac => \clkIn|LessThan3~0_combout\,
	datad => \clkIn|LessThan4~1_combout\,
	combout => \clkIn|hour[0]~18_combout\);

-- Location: LCCOMB_X102_Y27_N18
\clkIn|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Add5~6_combout\ = (\clkIn|hour\(3) & (!\clkIn|Add5~5\)) # (!\clkIn|hour\(3) & ((\clkIn|Add5~5\) # (GND)))
-- \clkIn|Add5~7\ = CARRY((!\clkIn|Add5~5\) # (!\clkIn|hour\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|hour\(3),
	datad => VCC,
	cin => \clkIn|Add5~5\,
	combout => \clkIn|Add5~6_combout\,
	cout => \clkIn|Add5~7\);

-- Location: LCCOMB_X102_Y27_N20
\clkIn|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Add5~8_combout\ = \clkIn|Add5~7\ $ (!\clkIn|hour\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkIn|hour\(4),
	cin => \clkIn|Add5~7\,
	combout => \clkIn|Add5~8_combout\);

-- Location: LCCOMB_X102_Y27_N0
\clkIn|hour[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[4]~22_combout\ = (\clkIn|Add5~8_combout\ & ((\clkIn|LessThan5~0_combout\) # (!\clkIn|hour\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|hour\(4),
	datac => \clkIn|LessThan5~0_combout\,
	datad => \clkIn|Add5~8_combout\,
	combout => \clkIn|hour[4]~22_combout\);

-- Location: LCCOMB_X102_Y27_N28
\clkIn|hour[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[4]~19_combout\ = (\clkIn|am~q\ & ((\clkIn|hour\(3) & (!\clkIn|hour\(2) & !\clkIn|hour[4]~22_combout\)) # (!\clkIn|hour\(3) & (\clkIn|hour\(2) $ (\clkIn|hour[4]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(3),
	datab => \clkIn|hour\(2),
	datac => \clkIn|am~q\,
	datad => \clkIn|hour[4]~22_combout\,
	combout => \clkIn|hour[4]~19_combout\);

-- Location: LCCOMB_X102_Y27_N6
\clkIn|hour[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[4]~23_combout\ = (\clkIn|hour\(4) & (\clkIn|hour[4]~22_combout\)) # (!\clkIn|hour\(4) & (\clkIn|Equal2~0_combout\ & (\clkIn|hour[4]~22_combout\ $ (\clkIn|hour[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(4),
	datab => \clkIn|hour[4]~22_combout\,
	datac => \clkIn|Equal2~0_combout\,
	datad => \clkIn|hour[4]~19_combout\,
	combout => \clkIn|hour[4]~23_combout\);

-- Location: LCCOMB_X102_Y27_N24
\clkIn|hour[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[4]~20_combout\ = (\clkIn|hour[3]~11_combout\ & ((\clkIn|hour[0]~18_combout\ & ((\clkIn|hour[4]~23_combout\))) # (!\clkIn|hour[0]~18_combout\ & (\clkIn|hour\(4))))) # (!\clkIn|hour[3]~11_combout\ & (((\clkIn|hour[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour[3]~11_combout\,
	datab => \clkIn|hour[0]~18_combout\,
	datac => \clkIn|hour\(4),
	datad => \clkIn|hour[4]~23_combout\,
	combout => \clkIn|hour[4]~20_combout\);

-- Location: FF_X102_Y27_N25
\clkIn|hour[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|hour[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|hour\(4));

-- Location: LCCOMB_X101_Y27_N22
\clkIn|hour[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[1]~6_combout\ = (\clkIn|hour\(4) & (\clkIn|LessThan5~0_combout\)) # (!\clkIn|hour\(4) & ((\clkIn|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|LessThan5~0_combout\,
	datac => \clkIn|hour\(4),
	datad => \clkIn|Equal2~0_combout\,
	combout => \clkIn|hour[1]~6_combout\);

-- Location: LCCOMB_X102_Y27_N10
\clkIn|hour[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[0]~10_combout\ = (\clkIn|hour[0]~8_combout\ & (((\clkIn|hour\(0))))) # (!\clkIn|hour[0]~8_combout\ & (\clkIn|Add5~0_combout\ & (\clkIn|hour[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|Add5~0_combout\,
	datab => \clkIn|hour[1]~6_combout\,
	datac => \clkIn|hour\(0),
	datad => \clkIn|hour[0]~8_combout\,
	combout => \clkIn|hour[0]~10_combout\);

-- Location: FF_X102_Y27_N11
\clkIn|hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|hour[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|hour\(0));

-- Location: LCCOMB_X102_Y27_N26
\clkIn|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|LessThan5~0_combout\ = (!\clkIn|hour\(3) & (((!\clkIn|hour\(2)) # (!\clkIn|hour\(1))) # (!\clkIn|hour\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(0),
	datab => \clkIn|hour\(1),
	datac => \clkIn|hour\(3),
	datad => \clkIn|hour\(2),
	combout => \clkIn|LessThan5~0_combout\);

-- Location: LCCOMB_X102_Y27_N22
\clkIn|hour[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[3]~21_combout\ = (\clkIn|Add5~6_combout\ & (\clkIn|hour[3]~11_combout\ & ((\clkIn|LessThan5~0_combout\) # (!\clkIn|hour\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|LessThan5~0_combout\,
	datab => \clkIn|Add5~6_combout\,
	datac => \clkIn|hour\(4),
	datad => \clkIn|hour[3]~11_combout\,
	combout => \clkIn|hour[3]~21_combout\);

-- Location: LCCOMB_X101_Y27_N6
\clkIn|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|Add15~0_combout\ = \clkIn|hour\(3) $ (\clkIn|hour\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkIn|hour\(3),
	datac => \clkIn|hour\(2),
	combout => \clkIn|Add15~0_combout\);

-- Location: LCCOMB_X101_Y27_N24
\clkIn|hour[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[3]~12_combout\ = (\clkIn|am~q\ & (!\clkIn|hour[3]~11_combout\ & ((!\clkIn|Equal2~1_combout\) # (!\clkIn|Add15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|Add15~0_combout\,
	datab => \clkIn|am~q\,
	datac => \clkIn|Equal2~1_combout\,
	datad => \clkIn|hour[3]~11_combout\,
	combout => \clkIn|hour[3]~12_combout\);

-- Location: LCCOMB_X102_Y27_N4
\clkIn|hour[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkIn|hour[3]~14_combout\ = (\clkIn|hour[3]~13_combout\ & (((\clkIn|hour\(3))))) # (!\clkIn|hour[3]~13_combout\ & ((\clkIn|hour[3]~21_combout\) # ((\clkIn|hour[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour[3]~21_combout\,
	datab => \clkIn|hour[3]~12_combout\,
	datac => \clkIn|hour\(3),
	datad => \clkIn|hour[3]~13_combout\,
	combout => \clkIn|hour[3]~14_combout\);

-- Location: FF_X102_Y27_N5
\clkIn|hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn|freqDiv|clkOut~clkctrl_outclk\,
	d => \clkIn|hour[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkIn|hour\(3));

-- Location: LCCOMB_X101_Y24_N16
\process_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~5_combout\ = (\almsetHour|s_count\(2) & (\clkIn|hour\(2) & (\clkIn|hour\(3) $ (!\almsetHour|s_count\(3))))) # (!\almsetHour|s_count\(2) & (!\clkIn|hour\(2) & (\clkIn|hour\(3) $ (!\almsetHour|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(2),
	datab => \clkIn|hour\(3),
	datac => \almsetHour|s_count\(3),
	datad => \clkIn|hour\(2),
	combout => \process_2~5_combout\);

-- Location: LCCOMB_X102_Y24_N30
\process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (\clkIn|min\(4) & (\almsetMin|s_count\(4) & (\clkIn|min\(5) $ (!\almsetMin|s_count\(5))))) # (!\clkIn|min\(4) & (!\almsetMin|s_count\(4) & (\clkIn|min\(5) $ (!\almsetMin|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(4),
	datab => \clkIn|min\(5),
	datac => \almsetMin|s_count\(5),
	datad => \almsetMin|s_count\(4),
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X102_Y24_N0
\process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (\almsetHour|s_count\(0) & (\clkIn|hour\(0) & (\clkIn|hour\(1) $ (!\almsetHour|s_count\(1))))) # (!\almsetHour|s_count\(0) & (!\clkIn|hour\(0) & (\clkIn|hour\(1) $ (!\almsetHour|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(0),
	datab => \clkIn|hour\(1),
	datac => \almsetHour|s_count\(1),
	datad => \clkIn|hour\(0),
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X99_Y20_N20
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\almsetMin|s_count\(0) & (\clkIn|min\(0) & (\almsetMin|s_count\(1) $ (!\clkIn|min\(1))))) # (!\almsetMin|s_count\(0) & (!\clkIn|min\(0) & (\almsetMin|s_count\(1) $ (!\clkIn|min\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(0),
	datab => \almsetMin|s_count\(1),
	datac => \clkIn|min\(0),
	datad => \clkIn|min\(1),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X102_Y24_N28
\process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (\clkIn|min\(3) & (\almsetMin|s_count\(3) & (\clkIn|min\(2) $ (!\almsetMin|s_count\(2))))) # (!\clkIn|min\(3) & (!\almsetMin|s_count\(3) & (\clkIn|min\(2) $ (!\almsetMin|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|min\(3),
	datab => \clkIn|min\(2),
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(3),
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X102_Y24_N22
\process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~4_combout\ = (\process_2~2_combout\ & (\process_2~3_combout\ & (\process_2~0_combout\ & \process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~2_combout\,
	datab => \process_2~3_combout\,
	datac => \process_2~0_combout\,
	datad => \process_2~1_combout\,
	combout => \process_2~4_combout\);

-- Location: LCCOMB_X110_Y38_N28
\process_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~6_combout\ = (\freqDiv|clkOut~q\ & (\clkIn|hour\(4) $ (!\almsetHour|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkIn|hour\(4),
	datac => \freqDiv|clkOut~q\,
	datad => \almsetHour|s_count\(4),
	combout => \process_2~6_combout\);

-- Location: LCCOMB_X102_Y24_N20
\process_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~7_combout\ = (\process_2~5_combout\ & (\process_2~4_combout\ & \process_2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~5_combout\,
	datac => \process_2~4_combout\,
	datad => \process_2~6_combout\,
	combout => \process_2~7_combout\);

-- Location: LCCOMB_X96_Y19_N30
\HEX4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = (\SW[1]~input_o\ & ((\process_2~7_combout\) # ((\HEX6~0_combout\ & \setMin~q\)))) # (!\SW[1]~input_o\ & (\HEX6~0_combout\ & ((\setMin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \HEX6~0_combout\,
	datac => \process_2~7_combout\,
	datad => \setMin~q\,
	combout => \HEX4~0_combout\);

-- Location: LCCOMB_X89_Y9_N30
\a_b7segL1|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[0]~1_combout\ = (\a_b7segL1|decOut_n[0]~0_combout\) # (\HEX4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_b7segL1|decOut_n[0]~0_combout\,
	datac => \HEX4~0_combout\,
	combout => \a_b7segL1|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X89_Y9_N28
\a_b7segL1|decOut_n[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[1]~2_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\) # (!\almsetMin|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \a_b7segL1|decOut_n[1]~2_combout\);

-- Location: LCCOMB_X89_Y9_N18
\a_b7segL1|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[1]~3_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & \almsetMin|s_count\(0)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ $ (\almsetMin|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \a_b7segL1|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X89_Y6_N12
\a_b7segL1|decOut_n[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[1]~4_combout\ = (\a_b7segL1|decOut_n[1]~2_combout\) # ((\a_b7segL1|decOut_n[1]~3_combout\) # (\HEX4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_b7segL1|decOut_n[1]~2_combout\,
	datac => \a_b7segL1|decOut_n[1]~3_combout\,
	datad => \HEX4~0_combout\,
	combout => \a_b7segL1|decOut_n[1]~4_combout\);

-- Location: LCCOMB_X89_Y9_N20
\a_b7segL1|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[2]~5_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & !\almsetMin|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \a_b7segL1|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X89_Y6_N6
\a_b7segL1|decOut_n[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[2]~6_combout\ = (\a_b7segL1|decOut_n[1]~2_combout\) # ((\a_b7segL1|decOut_n[2]~5_combout\) # (\HEX4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_b7segL1|decOut_n[1]~2_combout\,
	datac => \a_b7segL1|decOut_n[2]~5_combout\,
	datad => \HEX4~0_combout\,
	combout => \a_b7segL1|decOut_n[2]~6_combout\);

-- Location: LCCOMB_X89_Y9_N12
\HEX4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~4_combout\ = (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\almsetMin|s_count\(0) & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ $ 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \HEX4~4_combout\);

-- Location: LCCOMB_X89_Y9_N22
\HEX4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~3_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & 
-- \almsetMin|s_count\(0)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & 
-- !\almsetMin|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \HEX4~3_combout\);

-- Location: LCCOMB_X89_Y9_N10
\HEX4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~5_combout\ = (!\HEX4~4_combout\ & (!\HEX4~0_combout\ & !\HEX4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~4_combout\,
	datab => \HEX4~0_combout\,
	datac => \HEX4~3_combout\,
	combout => \HEX4~5_combout\);

-- Location: LCCOMB_X89_Y9_N8
\HEX4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~6_combout\ = (!\HEX4~0_combout\ & \HEX4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX4~0_combout\,
	datac => \HEX4~3_combout\,
	combout => \HEX4~6_combout\);

-- Location: LCCOMB_X89_Y9_N14
\HEX4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & 
-- \almsetMin|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \HEX4~1_combout\);

-- Location: LCCOMB_X89_Y9_N24
\HEX4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~2_combout\ = (!\almsetMin|s_count\(0) & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & 
-- \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\)) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \HEX4~2_combout\);

-- Location: LCCOMB_X89_Y9_N26
\HEX4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~7_combout\ = (\HEX4~5_combout\ & (\HEX4~2_combout\ & ((\HEX4~1_combout\) # (!\HEX4~6_combout\)))) # (!\HEX4~5_combout\ & (((\HEX4~1_combout\)) # (!\HEX4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~5_combout\,
	datab => \HEX4~6_combout\,
	datac => \HEX4~1_combout\,
	datad => \HEX4~2_combout\,
	combout => \HEX4~7_combout\);

-- Location: LCCOMB_X89_Y9_N4
\a_b7segL1|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[4]~7_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & ((\almsetMin|s_count\(0))))) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\)) # 
-- (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & ((\almsetMin|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \a_b7segL1|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X89_Y6_N8
\a_b7segL1|decOut_n[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[4]~8_combout\ = (\a_b7segL1|decOut_n[4]~7_combout\) # (\HEX4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_b7segL1|decOut_n[4]~7_combout\,
	datad => \HEX4~0_combout\,
	combout => \a_b7segL1|decOut_n[4]~8_combout\);

-- Location: LCCOMB_X89_Y9_N6
\a_b7segL1|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[5]~9_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (\almsetMin|s_count\(0) & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ $ 
-- (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\)))) # (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & 
-- ((\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\) # (\almsetMin|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \a_b7segL1|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X89_Y6_N14
\a_b7segL1|decOut_n[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL1|decOut_n[5]~10_combout\ = (\a_b7segL1|decOut_n[5]~9_combout\) # (\HEX4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_b7segL1|decOut_n[5]~9_combout\,
	datad => \HEX4~0_combout\,
	combout => \a_b7segL1|decOut_n[5]~10_combout\);

-- Location: LCCOMB_X89_Y9_N16
\HEX4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~8_combout\ = (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\ & (\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\ & (!\a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\ & 
-- !\almsetMin|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[59]~47_combout\,
	datab => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[58]~49_combout\,
	datac => \a_bin2BCD|Mod0|auto_generated|divider|divider|StageOut[57]~48_combout\,
	datad => \almsetMin|s_count\(0),
	combout => \HEX4~8_combout\);

-- Location: LCCOMB_X89_Y9_N2
\HEX4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~9_combout\ = (\HEX4~5_combout\ & (\HEX4~8_combout\ & ((!\HEX4~6_combout\) # (!\HEX4~1_combout\)))) # (!\HEX4~5_combout\ & (((!\HEX4~6_combout\)) # (!\HEX4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~5_combout\,
	datab => \HEX4~1_combout\,
	datac => \HEX4~6_combout\,
	datad => \HEX4~8_combout\,
	combout => \HEX4~9_combout\);

-- Location: LCCOMB_X91_Y15_N10
\a_b7segH1|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[0]~1_combout\ = (\almsetMin|s_count\(3) & ((\almsetMin|s_count\(2)) # (\almsetMin|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(3),
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(1),
	combout => \a_b7segH1|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X91_Y15_N28
\a_b7segH1|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[0]~0_combout\ = (!\almsetMin|s_count\(2) & !\almsetMin|s_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(3),
	combout => \a_b7segH1|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X91_Y15_N24
\a_b7segH1|decOut_n[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[0]~2_combout\ = (\almsetMin|s_count\(4) & (((\almsetMin|s_count\(5)) # (\a_b7segH1|decOut_n[0]~0_combout\)))) # (!\almsetMin|s_count\(4) & (\a_b7segH1|decOut_n[0]~1_combout\ & (!\almsetMin|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_b7segH1|decOut_n[0]~1_combout\,
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|s_count\(5),
	datad => \a_b7segH1|decOut_n[0]~0_combout\,
	combout => \a_b7segH1|decOut_n[0]~2_combout\);

-- Location: LCCOMB_X97_Y19_N16
\a_b7segH1|decOut_n[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[0]~3_combout\ = (\a_b7segH1|decOut_n[0]~2_combout\ & (((\almsetMin|Equal0~0_combout\) # (!\almsetMin|s_count\(5))))) # (!\a_b7segH1|decOut_n[0]~2_combout\ & (\almsetMin|s_count\(3) & ((\almsetMin|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_b7segH1|decOut_n[0]~2_combout\,
	datab => \almsetMin|s_count\(3),
	datac => \almsetMin|Equal0~0_combout\,
	datad => \almsetMin|s_count\(5),
	combout => \a_b7segH1|decOut_n[0]~3_combout\);

-- Location: LCCOMB_X96_Y16_N20
\a_b7segH1|decOut_n[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[0]~4_combout\ = (\HEX4~0_combout\) # (\a_b7segH1|decOut_n[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HEX4~0_combout\,
	datad => \a_b7segH1|decOut_n[0]~3_combout\,
	combout => \a_b7segH1|decOut_n[0]~4_combout\);

-- Location: LCCOMB_X91_Y15_N30
\HEX5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = (\almsetMin|s_count\(3)) # ((\almsetMin|s_count\(2)) # (\almsetMin|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(3),
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(1),
	combout => \HEX5~0_combout\);

-- Location: LCCOMB_X91_Y15_N8
\HEX5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~1_combout\ = (\HEX4~0_combout\) # ((\almsetMin|s_count\(5) & (\almsetMin|s_count\(4) & \HEX5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(5),
	datab => \almsetMin|s_count\(4),
	datac => \HEX4~0_combout\,
	datad => \HEX5~0_combout\,
	combout => \HEX5~1_combout\);

-- Location: LCCOMB_X91_Y15_N2
\a_b7segH1|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[2]~5_combout\ = (\almsetMin|s_count\(3) & ((!\almsetMin|s_count\(1)) # (!\almsetMin|s_count\(2)))) # (!\almsetMin|s_count\(3) & (\almsetMin|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(3),
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(1),
	combout => \a_b7segH1|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X91_Y15_N16
\a_b7segH1|decOut_n[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[2]~6_combout\ = (\HEX4~0_combout\) # ((\almsetMin|s_count\(4) & (!\almsetMin|s_count\(5) & \a_b7segH1|decOut_n[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX4~0_combout\,
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|s_count\(5),
	datad => \a_b7segH1|decOut_n[2]~5_combout\,
	combout => \a_b7segH1|decOut_n[2]~6_combout\);

-- Location: LCCOMB_X91_Y15_N22
\HEX5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~4_combout\ = (!\almsetMin|s_count\(4) & (!\almsetMin|s_count\(5) & !\a_b7segH1|decOut_n[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|s_count\(5),
	datad => \a_b7segH1|decOut_n[0]~1_combout\,
	combout => \HEX5~4_combout\);

-- Location: LCCOMB_X91_Y15_N20
\HEX5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~3_combout\ = (\almsetMin|s_count\(3) & (((!\almsetMin|s_count\(4))))) # (!\almsetMin|s_count\(3) & (!\almsetMin|s_count\(5) & ((!\almsetMin|s_count\(2)) # (!\almsetMin|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(5),
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(3),
	combout => \HEX5~3_combout\);

-- Location: LCCOMB_X91_Y15_N26
\HEX5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~2_combout\ = (\almsetMin|s_count\(5) & (!\almsetMin|s_count\(1) & (\almsetMin|s_count\(4) & \a_b7segH1|decOut_n[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(5),
	datab => \almsetMin|s_count\(1),
	datac => \almsetMin|s_count\(4),
	datad => \a_b7segH1|decOut_n[0]~0_combout\,
	combout => \HEX5~2_combout\);

-- Location: LCCOMB_X91_Y15_N0
\HEX5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~5_combout\ = (\HEX4~0_combout\) # ((!\HEX5~4_combout\ & ((\HEX5~3_combout\) # (\HEX5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~4_combout\,
	datab => \HEX5~3_combout\,
	datac => \HEX4~0_combout\,
	datad => \HEX5~2_combout\,
	combout => \HEX5~5_combout\);

-- Location: LCCOMB_X91_Y15_N18
\HEX5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~6_combout\ = (\almsetMin|s_count\(3) & ((\almsetMin|s_count\(2) & (!\almsetMin|s_count\(5) & \almsetMin|s_count\(1))) # (!\almsetMin|s_count\(2) & (\almsetMin|s_count\(5))))) # (!\almsetMin|s_count\(3) & (((\almsetMin|s_count\(5))) # 
-- (!\almsetMin|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(3),
	datab => \almsetMin|s_count\(2),
	datac => \almsetMin|s_count\(5),
	datad => \almsetMin|s_count\(1),
	combout => \HEX5~6_combout\);

-- Location: LCCOMB_X91_Y15_N4
\HEX5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~7_combout\ = (\HEX4~0_combout\) # ((!\HEX5~4_combout\ & ((\HEX5~6_combout\) # (!\almsetMin|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~4_combout\,
	datab => \HEX5~6_combout\,
	datac => \HEX4~0_combout\,
	datad => \almsetMin|s_count\(4),
	combout => \HEX5~7_combout\);

-- Location: LCCOMB_X91_Y15_N6
\a_b7segH1|decOut_n[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[5]~7_combout\ = (\almsetMin|s_count\(4) & (((!\almsetMin|s_count\(5))))) # (!\almsetMin|s_count\(4) & ((\almsetMin|s_count\(5) & (!\almsetMin|s_count\(3))) # (!\almsetMin|s_count\(5) & ((\a_b7segH1|decOut_n[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(3),
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|s_count\(5),
	datad => \a_b7segH1|decOut_n[0]~1_combout\,
	combout => \a_b7segH1|decOut_n[5]~7_combout\);

-- Location: LCCOMB_X87_Y11_N4
\a_b7segH1|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH1|decOut_n[5]~8_combout\ = (\a_b7segH1|decOut_n[5]~7_combout\) # (\HEX4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_b7segH1|decOut_n[5]~7_combout\,
	datad => \HEX4~0_combout\,
	combout => \a_b7segH1|decOut_n[5]~8_combout\);

-- Location: LCCOMB_X91_Y15_N12
\HEX5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~8_combout\ = (!\almsetMin|s_count\(5) & (((!\almsetMin|s_count\(2) & !\almsetMin|s_count\(3))) # (!\almsetMin|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetMin|s_count\(5),
	datab => \almsetMin|s_count\(4),
	datac => \almsetMin|s_count\(2),
	datad => \almsetMin|s_count\(3),
	combout => \HEX5~8_combout\);

-- Location: LCCOMB_X91_Y15_N14
\HEX5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~9_combout\ = (\HEX5~4_combout\) # ((\HEX4~0_combout\) # (\HEX5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5~4_combout\,
	datac => \HEX4~0_combout\,
	datad => \HEX5~8_combout\,
	combout => \HEX5~9_combout\);

-- Location: LCCOMB_X89_Y18_N12
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \almsetHour|s_count\(2) $ (VCC)
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\almsetHour|s_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(2),
	datad => VCC,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X89_Y18_N14
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\almsetHour|s_count\(3) & (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\almsetHour|s_count\(3) & 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\almsetHour|s_count\(3) & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(3),
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X89_Y18_N16
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\almsetHour|s_count\(4) & (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\almsetHour|s_count\(4) & 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\almsetHour|s_count\(4) & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(4),
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X89_Y18_N18
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X89_Y18_N20
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X89_Y18_N22
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X89_Y18_N24
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X89_Y18_N2
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~6_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~6_combout\);

-- Location: LCCOMB_X88_Y18_N26
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~7_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~7_combout\);

-- Location: LCCOMB_X89_Y18_N28
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~8_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~8_combout\);

-- Location: LCCOMB_X88_Y18_N0
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~10_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~10_combout\);

-- Location: LCCOMB_X89_Y18_N10
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~9_combout\ = (\almsetHour|s_count\(4) & \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetHour|s_count\(4),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~9_combout\);

-- Location: LCCOMB_X89_Y18_N30
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\);

-- Location: LCCOMB_X89_Y18_N4
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\ = (\almsetHour|s_count\(3) & \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetHour|s_count\(3),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\);

-- Location: LCCOMB_X88_Y18_N28
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\);

-- Location: LCCOMB_X89_Y18_N8
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\ = (\almsetHour|s_count\(2) & \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetHour|s_count\(2),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\);

-- Location: LCCOMB_X88_Y18_N30
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4_combout\ = (\almsetHour|s_count\(1) & \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetHour|s_count\(1),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4_combout\);

-- Location: LCCOMB_X88_Y18_N24
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5_combout\ = (\almsetHour|s_count\(1) & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \almsetHour|s_count\(1),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5_combout\);

-- Location: LCCOMB_X88_Y18_N8
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4_combout\) # (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5_combout\)))
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4_combout\) # (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~4_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[48]~5_combout\,
	datad => VCC,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X88_Y18_N10
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\) # 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\ & 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\)))
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\ & 
-- !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X88_Y18_N12
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\) # 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\) # 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\)))))
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\) # 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X88_Y18_N14
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~10_combout\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~9_combout\ & 
-- !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~10_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[51]~9_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X88_Y18_N16
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~8_combout\) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[52]~8_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X88_Y18_N18
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~7_combout\ & !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[53]~7_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X88_Y18_N20
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~6_combout\) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[54]~6_combout\,
	datad => VCC,
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X88_Y18_N22
\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X88_Y18_N2
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\) # 
-- ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~3_combout\,
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[49]~2_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\);

-- Location: LCCOMB_X88_Y18_N4
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\almsetHour|s_count\(1))) # 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\);

-- Location: LCCOMB_X88_Y18_N6
\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\) # 
-- ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~0_combout\,
	datac => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[50]~1_combout\,
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\);

-- Location: LCCOMB_X82_Y4_N28
\a_b7segL2|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[0]~0_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\almsetHour|s_count\(0) $ 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\almsetHour|s_count\(0) & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ 
-- $ (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \a_b7segL2|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X96_Y19_N4
\HEX6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~1_combout\ = (\setHour~q\ & ((\HEX6~0_combout\) # ((\process_2~7_combout\ & \SW[1]~input_o\)))) # (!\setHour~q\ & (((\process_2~7_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \setHour~q\,
	datab => \HEX6~0_combout\,
	datac => \process_2~7_combout\,
	datad => \SW[1]~input_o\,
	combout => \HEX6~1_combout\);

-- Location: LCCOMB_X82_Y4_N6
\a_b7segL2|decOut_n[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[0]~1_combout\ = (\a_b7segL2|decOut_n[0]~0_combout\) # (\HEX6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_b7segL2|decOut_n[0]~0_combout\,
	datac => \HEX6~1_combout\,
	combout => \a_b7segL2|decOut_n[0]~1_combout\);

-- Location: LCCOMB_X82_Y4_N4
\a_b7segL2|decOut_n[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[1]~2_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\almsetHour|s_count\(0) & ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\))) # (!\almsetHour|s_count\(0) & 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\almsetHour|s_count\(0) 
-- $ (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \a_b7segL2|decOut_n[1]~2_combout\);

-- Location: LCCOMB_X82_Y4_N22
\a_b7segL2|decOut_n[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[1]~3_combout\ = (\HEX6~1_combout\) # (\a_b7segL2|decOut_n[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX6~1_combout\,
	datac => \a_b7segL2|decOut_n[1]~2_combout\,
	combout => \a_b7segL2|decOut_n[1]~3_combout\);

-- Location: LCCOMB_X82_Y4_N24
\a_b7segL2|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[2]~4_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ & 
-- ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\) # (!\almsetHour|s_count\(0))))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (!\almsetHour|s_count\(0) & !\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \a_b7segL2|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X82_Y4_N14
\a_b7segL2|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[2]~5_combout\ = (\a_b7segL2|decOut_n[2]~4_combout\) # (\HEX6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_b7segL2|decOut_n[2]~4_combout\,
	datac => \HEX6~1_combout\,
	combout => \a_b7segL2|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X82_Y4_N10
\HEX6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~3_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & 
-- !\almsetHour|s_count\(0)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ $ (((!\almsetHour|s_count\(0)) # 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~3_combout\);

-- Location: LCCOMB_X82_Y4_N8
\HEX6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~2_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\almsetHour|s_count\(0) & 
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~2_combout\);

-- Location: LCCOMB_X82_Y4_N20
\HEX6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~4_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (\almsetHour|s_count\(0) & 
-- \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (!\almsetHour|s_count\(0) 
-- & !\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~4_combout\);

-- Location: LCCOMB_X82_Y4_N2
\HEX6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~5_combout\ = (\HEX6~1_combout\) # ((\HEX6~4_combout\ & ((\HEX6~2_combout\))) # (!\HEX6~4_combout\ & (\HEX6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX6~3_combout\,
	datab => \HEX6~2_combout\,
	datac => \HEX6~1_combout\,
	datad => \HEX6~4_combout\,
	combout => \HEX6~5_combout\);

-- Location: LCCOMB_X82_Y4_N16
\a_b7segL2|decOut_n[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[4]~6_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & (((\almsetHour|s_count\(0) & !\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))) # 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & ((!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\))) # 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\almsetHour|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \a_b7segL2|decOut_n[4]~6_combout\);

-- Location: LCCOMB_X82_Y4_N18
\a_b7segL2|decOut_n[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[4]~7_combout\ = (\a_b7segL2|decOut_n[4]~6_combout\) # (\HEX6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a_b7segL2|decOut_n[4]~6_combout\,
	datac => \HEX6~1_combout\,
	combout => \a_b7segL2|decOut_n[4]~7_combout\);

-- Location: LCCOMB_X82_Y4_N12
\a_b7segL2|decOut_n[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[5]~8_combout\ = (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (\almsetHour|s_count\(0) & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ $ 
-- (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))) # (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ & 
-- ((\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\) # (\almsetHour|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \a_b7segL2|decOut_n[5]~8_combout\);

-- Location: LCCOMB_X82_Y4_N26
\a_b7segL2|decOut_n[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segL2|decOut_n[5]~9_combout\ = (\a_b7segL2|decOut_n[5]~8_combout\) # (\HEX6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_b7segL2|decOut_n[5]~8_combout\,
	datac => \HEX6~1_combout\,
	combout => \a_b7segL2|decOut_n[5]~9_combout\);

-- Location: LCCOMB_X82_Y4_N0
\HEX6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~6_combout\ = (\almsetHour|s_count\(0) & (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\ & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ $ 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\)))) # (!\almsetHour|s_count\(0) & (\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\ & 
-- (!\a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\ & \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[58]~13_combout\,
	datab => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[57]~12_combout\,
	datac => \almsetHour|s_count\(0),
	datad => \a_bin2BCD|Mod1|auto_generated|divider|divider|StageOut[59]~11_combout\,
	combout => \HEX6~6_combout\);

-- Location: LCCOMB_X82_Y4_N30
\HEX6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~7_combout\ = (\HEX6~1_combout\) # ((\HEX6~4_combout\ & ((!\HEX6~2_combout\))) # (!\HEX6~4_combout\ & (\HEX6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX6~6_combout\,
	datab => \HEX6~2_combout\,
	datac => \HEX6~1_combout\,
	datad => \HEX6~4_combout\,
	combout => \HEX6~7_combout\);

-- Location: LCCOMB_X91_Y19_N0
\HEX7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~0_combout\ = (!\almsetHour|s_count\(4) & (((!\almsetHour|s_count\(1) & !\almsetHour|s_count\(2))) # (!\almsetHour|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|s_count\(2),
	datac => \almsetHour|s_count\(4),
	datad => \almsetHour|s_count\(3),
	combout => \HEX7~0_combout\);

-- Location: LCCOMB_X91_Y19_N2
\HEX7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~1_combout\ = (!\HEX6~1_combout\ & (\almsetHour|s_count\(4) & ((\almsetHour|s_count\(2)) # (\almsetHour|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX6~1_combout\,
	datab => \almsetHour|s_count\(2),
	datac => \almsetHour|s_count\(4),
	datad => \almsetHour|s_count\(3),
	combout => \HEX7~1_combout\);

-- Location: LCCOMB_X91_Y19_N28
\HEX7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~2_combout\ = (!\HEX7~1_combout\ & ((\HEX6~1_combout\) # (!\HEX7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX7~0_combout\,
	datac => \HEX6~1_combout\,
	datad => \HEX7~1_combout\,
	combout => \HEX7~2_combout\);

-- Location: LCCOMB_X91_Y19_N18
\HEX7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~3_combout\ = (\almsetHour|s_count\(4) & ((\almsetHour|s_count\(2) & ((!\almsetHour|s_count\(3)) # (!\almsetHour|s_count\(1)))) # (!\almsetHour|s_count\(2) & ((\almsetHour|s_count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|s_count\(2),
	datac => \almsetHour|s_count\(4),
	datad => \almsetHour|s_count\(3),
	combout => \HEX7~3_combout\);

-- Location: LCCOMB_X91_Y19_N4
\HEX7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~4_combout\ = (\HEX6~1_combout\) # ((!\HEX7~0_combout\ & \HEX7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX7~0_combout\,
	datac => \HEX6~1_combout\,
	datad => \HEX7~3_combout\,
	combout => \HEX7~4_combout\);

-- Location: LCCOMB_X91_Y19_N10
\HEX7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~5_combout\ = (\almsetHour|s_count\(1) & (\almsetHour|s_count\(2) & \almsetHour|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|s_count\(2),
	datac => \almsetHour|s_count\(3),
	combout => \HEX7~5_combout\);

-- Location: LCCOMB_X91_Y19_N8
\HEX7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~6_combout\ = (\HEX7~5_combout\ & (((\HEX6~1_combout\) # (!\HEX7~0_combout\)))) # (!\HEX7~5_combout\ & (!\HEX7~1_combout\ & ((\HEX6~1_combout\) # (!\HEX7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7~5_combout\,
	datab => \HEX7~1_combout\,
	datac => \HEX6~1_combout\,
	datad => \HEX7~0_combout\,
	combout => \HEX7~6_combout\);

-- Location: LCCOMB_X91_Y19_N22
\a_b7segH2|decOut_n[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_b7segH2|decOut_n[1]~0_combout\ = (\almsetHour|s_count\(4)) # ((\almsetHour|s_count\(3) & ((\almsetHour|s_count\(1)) # (\almsetHour|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \almsetHour|s_count\(1),
	datab => \almsetHour|s_count\(2),
	datac => \almsetHour|s_count\(4),
	datad => \almsetHour|s_count\(3),
	combout => \a_b7segH2|decOut_n[1]~0_combout\);

-- Location: LCCOMB_X91_Y19_N12
\HEX7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~7_combout\ = (\a_b7segH2|decOut_n[1]~0_combout\) # (\HEX6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_b7segH2|decOut_n[1]~0_combout\,
	datac => \HEX6~1_combout\,
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

-- Location: LCCOMB_X83_Y69_N18
\db2|sampled_dirty~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \db2|sampled_dirty~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \db2|sampled_dirty~0_combout\);

-- Location: FF_X83_Y69_N19
\db2|sampled_dirty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \db2|sampled_dirty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \db2|sampled_dirty~q\);

-- Location: LCCOMB_X83_Y69_N24
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

-- Location: FF_X83_Y69_N25
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

-- Location: LCCOMB_X102_Y24_N24
\LEDG[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[8]$latch~combout\ = (\SW[1]~input_o\ & ((\process_2~7_combout\))) # (!\SW[1]~input_o\ & (\LEDG[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDG[8]$latch~combout\,
	datac => \SW[1]~input_o\,
	datad => \process_2~7_combout\,
	combout => \LEDG[8]$latch~combout\);

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

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


